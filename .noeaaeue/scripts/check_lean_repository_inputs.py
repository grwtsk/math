#!/usr/bin/env python3
"""Reject PDF/TeX library inputs outside the process-custody boundary.

This is an artifact policy check, not Lean proof acceptance. Lean's kernel and
the declaration axiom audit provide the mathematical acceptance checks.
"""
import argparse
from pathlib import Path
import subprocess


def rejected_document_paths(paths):
    return sorted(p for p in paths if Path(p).parts[0] != '.noeaaeue'
                  and Path(p).suffix.casefold() in {'.pdf', '.tex'})


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parents[2])
    args = parser.parse_args()
    result = subprocess.run(
        ["git", "-C", str(args.root), "ls-files", "-z", "--cached", "--others",
         "--exclude-standard"], capture_output=True, check=True)
    paths = {p.decode("utf-8", "surrogateescape") for p in result.stdout.split(b"\0") if p}
    rejected = rejected_document_paths(paths)
    if rejected:
        for path in rejected:
            print("REJECTED:", path)
        return 1
    print("PASSED: no PDF or TeX library inputs outside .noeaaeue process custody.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
