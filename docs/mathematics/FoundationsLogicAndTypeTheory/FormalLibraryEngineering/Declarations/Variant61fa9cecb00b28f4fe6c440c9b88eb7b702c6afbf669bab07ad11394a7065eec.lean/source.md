# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Declarations.Variant61fa9cecb00b28f4fe6c440c9b88eb7b702c6afbf669bab07ad11394a7065eec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86bab82c88e195c280de3e3780416447fe361bac` · SHA-256 `46a585ac8b85e9bfa4c0445c57bd7f21f246cc9d8f24ddb2661bfd626c09a2dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RunStdout.Variante11ed9dcbd336df18ef61c9eaae1c4651b4a491aedbc4bbe2a3c8a87c0822ae5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e11ed9dcbd336df18ef61c9eaae1c4651b4a491aedbc4bbe2a3c8a87c0822ae5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.RunStdout.Variante11ed9dcbd336df18ef61c9eaae1c4651b4a491aedbc4bbe2a3c8a87c0822ae5","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"e11ed9dcbd336df18ef61c9eaae1c4651b4a491aedbc4bbe2a3c8a87c0822ae5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/dependency-recovery-source/source/e11ed9dcbd336df18ef61c9eaae1c4651b4a491aedbc4bbe2a3c8a87c0822ae5.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["late_preamble_command","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RunStdout.Variante11ed9dcbd336df18ef61c9eaae1c4651b4a491aedbc4bbe2a3c8a87c0822ae5

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
