FROM alpine

RUN apk update

RUN apk add --no-cache borgbackup

COPY backup /etc/periodic/daily
RUN chmod +x /etc/periodic/daily/backup

CMD /usr/sbin/crond -f -l 0
