#!/usr/bin/env bash
# checked-upload.sh — загрузка с проверкой контрольной суммы на приёме
# ВПИШИТЕ пароль и сумму из вывода: shasum -a 256 myapp-1.0.1.tar.gz
PASSWORD="Vorop1612)"
SUM="0000"

curl -u admin:$PASSWORD \
  -H "X-Checksum-Sha256:$SUM" \
  -T myapp-1.0.1.tar.gz \
  -w "\nHTTP-код: %{http_code}\n" \
  http://localhost:8081/artifactory/myapp-local/myapp/1.0.1-checked/myapp-1.0.1.tar.gz
