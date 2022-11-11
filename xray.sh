#!/bin/sh
if [ ! -f UUID ]; then
  UUID="104e9052-0bf3-4f3f-9e94-16a42a4b3b0f"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

