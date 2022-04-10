
FROM alpine AS builder
WORKDIR /usr/app
RUN apk add --no-cache go
COPY . /usr/app
RUN go build CFC03-desafio-01.go

FROM scratch
WORKDIR /usr/app
COPY --from=builder /usr/app/CFC03-desafio-01 /usr/app
ENTRYPOINT ["./CFC03-desafio-01"]

