#!/usr/bin/env python3
"""Run one cataloged validation source under its declared outcome policy."""

import argparse
import json
import os
from pathlib import Path
import subprocess


ROOT = Path(__file__).resolve().parents[2]
LAYOUT = ROOT / ".noeaaeue/documentation/math-layout.json"


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("source")
    args = parser.parse_args()
    records = {entry["path"]: entry for entry in json.loads(LAYOUT.read_text())["active_sources"]}
    record = records.get(args.source)
    if record is None or record["source_role"] not in {
            "positive-check", "negative-control", "audit-driver"}:
        raise SystemExit("source is not a cataloged validation source")
    source = ROOT / args.source
    if source.is_symlink() or not source.is_file():
        raise SystemExit("cataloged validation source is missing or unsafe")
    lean = subprocess.check_output(["elan", "which", "lean"], cwd=ROOT, text=True).strip()
    environment = os.environ.copy()
    environment.pop("LEAN_PATH", None)
    environment.pop("LEAN_SRC_PATH", None)
    process = subprocess.run(
        ["lake", "env", lean, "-j1", "--trust=0", "-DwarningAsError=true", args.source],
        cwd=ROOT, env=environment, capture_output=True, text=True, timeout=1800,
    )
    diagnostic = process.stdout + process.stderr
    if record["source_role"] == "negative-control":
        missing_input = any(fragment in diagnostic.casefold() for fragment in (
            "unknown module", "no such file", "file not found", "unknown package"))
        accepted = process.returncode != 0 and "error" in diagnostic.casefold() and not missing_input
    else:
        accepted = process.returncode == 0
    print(diagnostic, end="")
    print(json.dumps({"path": args.source, "source_role": record["source_role"],
                      "exit_code": process.returncode, "outcome": "passed" if accepted else "failed"}))
    return 0 if accepted else 1


if __name__ == "__main__":
    raise SystemExit(main())
