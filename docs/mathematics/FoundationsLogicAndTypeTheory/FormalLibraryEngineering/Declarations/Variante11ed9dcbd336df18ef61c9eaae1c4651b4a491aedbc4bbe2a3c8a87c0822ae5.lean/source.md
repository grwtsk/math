# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Declarations.Variante11ed9dcbd336df18ef61c9eaae1c4651b4a491aedbc4bbe2a3c8a87c0822ae5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `450887df8d28de4c57c8cbcbaf9ecf136dd1097d` · SHA-256 `e11ed9dcbd336df18ef61c9eaae1c4651b4a491aedbc4bbe2a3c8a87c0822ae5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
#!/usr/bin/env python3

import json
import os
import subprocess
import sys
from pathlib import Path

upload_url = os.environ.get("LAKEPROF_UPLOAD_URL")
if not upload_url:
    sys.exit(0)
if upload_url.endswith("/"):
    upload_url = upload_url[:-1]

# Determine paths
template_file = Path(__file__).with_name("lakeprof_report_template.html")
root_dir = Path(os.environ["ROOT_DIR"])


def run_stdout(*command: str, cwd: Path | None = None) -> str:
    result = subprocess.run(command, capture_output=True, encoding="utf-8", cwd=cwd)
    if result.returncode != 0:
        print(result.stdout, end="", file=sys.stdout)
        print(result.stderr, end="", file=sys.stderr)
        sys.exit(result.returncode)
    return result.stdout


sha = run_stdout("git", "rev-parse", "@", cwd=root_dir).strip()
base_url = f"{upload_url}/{sha}"
report = run_stdout("lakeprof", "report", "-prc", cwd=root_dir)

template = template_file.read_text()
template = template.replace("__BASE_URL__", json.dumps(base_url))
template = template.replace("__LAKEPROF_REPORT__", report)
(root_dir / "index.html").write_text(template)


def upload(file: Path) -> None:
    subprocess.run(["curl", "-fT", file, f"{base_url}/{file.name}"], check=True)


upload(root_dir / "index.html")
upload(root_dir / "lakeprof.log")
upload(root_dir / "lakeprof.trace_event")
```
