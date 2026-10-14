#!/usr/bin/env python3
"""Compile the Lean bundle against an existing pinned Mathlib cache.

This is build infrastructure; it performs no mathematical diagnostics.
No packages are installed or fetched. All proof artifacts go to a temporary
directory, and the single JSON receipt records hashes and compiler output.
"""
from __future__ import annotations

import argparse
from concurrent.futures import ThreadPoolExecutor, as_completed
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import sys
import tempfile


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--lean", type=Path, default=Path(
        "/Users/think/.elan/toolchains/leanprover--lean4---v4.33.0/bin/lean"))
    parser.add_argument("--packages", type=Path, default=Path(
        "/Users/think/Desktop/NoeaaeueFormal/.lake/packages"))
    parser.add_argument("--jobs", type=int, default=3)
    args = parser.parse_args()
    if not args.lean.is_file() or not args.packages.is_dir():
        parser.error("Supply installed Lean and the existing compiled package cache.")
    if args.jobs < 1:
        parser.error("--jobs must be positive")
    repository = Path(__file__).resolve().parent.parent
    roots = sorted(str(p / ".lake/build/lib/lean") for p in args.packages.iterdir()
                   if (p / ".lake/build/lib/lean").is_dir())
    if not any(Path(p, "Mathlib.olean").is_file() for p in roots):
        parser.error("No compiled Mathlib.olean in the supplied cache.")
    prohibited = sorted(str(p.relative_to(repository)) for p in repository.rglob("*")
                        if p.is_file() and p.suffix.lower() in {".pdf", ".tex"})
    if prohibited:
        print("Prohibited math repository files:", prohibited, file=sys.stderr)
        return 1
    source_directories = ("asbn-p04", "ppnc-p04", "euler-p04-rh")
    sources = sorted(p for directory in source_directories
                     for p in repository.joinpath(directory).glob("*.lean"))
    modules = {p.stem: p for p in sources}
    if len(modules) != len(sources):
        parser.error("Lean module names must be unique across all source directories.")
    dependencies = {}
    for name, source in modules.items():
        imports = re.findall(r"^import\s+(\S+)", source.read_text(), flags=re.M)
        dependencies[name] = {i for i in imports if i in modules}
    audit_reachable = set()
    audit_pending = ["KernelAudit"]
    while audit_pending:
        name = audit_pending.pop()
        if name in audit_reachable:
            continue
        audit_reachable.add(name)
        audit_pending.extend(dependencies.get(name, ()))
    unaudited = sorted(set(modules) - audit_reachable)
    if unaudited:
        parser.error("KernelAudit does not import these mathematical modules: "
                     + ", ".join(unaudited))
    version = subprocess.run([str(args.lean), "--version"], check=True,
                             capture_output=True, text=True).stdout.strip()
    receipt = {
        "status": "running", "lean_version": version,
        "lean_executable": str(args.lean), "lean_sha256": sha256(args.lean),
        "kernel_trust_level": 0, "warnings_as_errors": True,
        "import_search_roots": roots, "prohibited_pdf_tex_files": prohibited,
        "mathlib_module_anchors": [
            {"path": str(Path(root, "Mathlib.olean")),
             "sha256": sha256(Path(root, "Mathlib.olean"))}
            for root in roots if Path(root, "Mathlib.olean").is_file()
        ],
        "scope": "Compiled definitions and theorem bodies only. Explicit research "
                 "obligations remain open; conditional theorem assumptions are unsupplied.",
        "source_directories": source_directories,
        "terminal_target": "_root_.RiemannHypothesis",
        "audit_reachable_modules": sorted(audit_reachable),
        "modules": [],
    }
    destination = repository / "euler-p04-rh/lean-check.json"
    failed = False
    with tempfile.TemporaryDirectory(prefix="p04-lean-") as staging:
        environment = os.environ.copy()
        environment["LEAN_PATH"] = os.pathsep.join([staging, *roots])
        pending, completed = set(modules), set()

        def compile_module(name: str) -> dict:
            source = modules[name]
            digest = sha256(source)
            result = subprocess.run([
                str(args.lean), "--trust=0", "-DwarningAsError=true",
                "-o", str(Path(staging, name + ".olean")), str(source),
            ], cwd=repository, env=environment, capture_output=True, text=True)
            unchanged = digest == sha256(source)
            passed = result.returncode == 0 and unchanged and "sorryAx" not in result.stdout
            return {
                "module": name, "source": str(source), "source_sha256": digest,
                "source_unchanged_during_check": unchanged,
                "dependencies": sorted(dependencies[name]),
                "exit_code": result.returncode, "passed": passed,
                "stdout": result.stdout, "stderr": result.stderr,
            }

        with ThreadPoolExecutor(max_workers=args.jobs) as executor:
            while pending:
                ready = sorted(name for name in pending
                               if dependencies[name] <= completed)
                if not ready:
                    print("Dependency cycle or failed prerequisite:", sorted(pending))
                    failed = True
                    break
                futures = {executor.submit(compile_module, name): name for name in ready}
                for future in as_completed(futures):
                    checked = future.result()
                    receipt["modules"].append(checked)
                    name = checked["module"]
                    print(f"{name}: {'kernel-checked' if checked['passed'] else 'FAILED'}",
                          flush=True)
                    if checked["passed"]:
                        completed.add(name)
                    else:
                        failed = True
                        print(checked["stdout"], end="", flush=True)
                        print(checked["stderr"], end="", file=sys.stderr, flush=True)
                    pending.remove(name)
                if failed:
                    break
        if not failed and "KernelAudit" in completed:
            controls = []
            for namespace, visibility in (("PPNCP04", "public"),
                                          ("EulerP04RH", "public"),
                                          ("PPNCP04", "private"),
                                          ("EulerP04RH", "private")):
                control = Path(staging, "RejectedAxiom.lean")
                private_modifier = "private " if visibility == "private" else ""
                control.write_text(
                    "import KernelAudit\n"
                    f"namespace {namespace}\n"
                    f"{private_modifier}axiom hostileCustomAxiom : False\n"
                    f"end {namespace}\n"
                    "run_cmd P04Audit.check\n"
                )
                result = subprocess.run(
                    [str(args.lean), "--trust=0", "-DwarningAsError=true", str(control)],
                    cwd=repository, env=environment, capture_output=True, text=True)
                rejected = result.returncode != 0 and "Unapproved axiom" in result.stdout
                controls.append({
                    "namespace": namespace, "rejected": rejected,
                    "visibility": visibility,
                    "exit_code": result.returncode,
                    "stdout": result.stdout, "stderr": result.stderr,
                })
                print(f"{namespace} {visibility} custom axiom control: "
                      f"{'rejected as required' if rejected else 'FAILED'}", flush=True)
                failed = failed or not rejected
            receipt["custom_axiom_negative_controls"] = controls
        final_sources = sorted(p for directory in source_directories
                               for p in repository.joinpath(directory).glob("*.lean"))
        scope_unchanged = final_sources == sources
        final_hashes_match = all(
            sha256(Path(item["source"])) == item["source_sha256"]
            for item in receipt["modules"])
        receipt["source_scope_unchanged_during_check"] = scope_unchanged
        receipt["all_final_source_hashes_match"] = final_hashes_match
        final_prohibited = sorted(str(p.relative_to(repository))
                                  for p in repository.rglob("*")
                                  if p.is_file() and p.suffix.lower() in {".pdf", ".tex"})
        receipt["final_prohibited_pdf_tex_files"] = final_prohibited
        failed = failed or not scope_unchanged or not final_hashes_match or bool(final_prohibited)
        receipt["status"] = "failed" if failed else "kernel-checked"
        receipt["compiled_module_count"] = len(completed)
        receipt["modules"].sort(key=lambda item: item["module"])
        destination.write_text(json.dumps(receipt, indent=2) + "\n")
    print(f"Receipt: {destination}", flush=True)
    return int(failed)


if __name__ == "__main__":
    raise SystemExit(main())
