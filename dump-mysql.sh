#!/bin/sh

finename=mysqldump-$(date "+%Y-%m-%d-%H-%M-%S").db

mysqldump -u root -prooooot -h 192.168.100.101 handson > /Users/kabu/hashicorp/nomad/snapshots-r2-demo/mysql-backup/${finename}

aws s3 cp /Users/kabu/hashicorp/nomad/snapshots-r2-demo/mysql-backup/${finename} s3://mysql-dump-tkaburagi/ --acl public-read
