"""Pinned native Lean source-command counts; never a proof acceptance census.

The parser uses the Mathlib+Lean grammar without elaborating project commands.
File-local notation, imported project syntax, and custom command invocations can
therefore be unsupported. Such files have no counts, rather than a zero count.
Every invocation preserves frozen caller bytes, driver, diagnostics, and receipt.
"""
from pathlib import Path
import argparse
import datetime
import hashlib
import json
import re
import shutil
import subprocess
import uuid


LEAN_VERSION = "4.33.0"
LEAN_COMMIT = "d8b18978322de05a8f3dba51ef03cf5461676c17"
METHOD = "pinned-lean-parser-explicit-source-commands-v1"
LIMITATIONS = (
    "Syntax inventory only; no project elaboration, macro expansion, generated "
    "declaration census, theorem verification, axiom audit, or proof acceptance. "
    "Grammar: Mathlib and Lean; source imports and local syntax commands are not "
    "elaborated. Any parser diagnostic excludes the entire file from totals. "
    "Counts include explicit def, theorem, lemma, abbrev, opaque, instance, axiom, "
    "inductive, coinductive, structure and class commands; examples are recorded "
    "separately in kinds and excluded. Only mutual, in, with_weak_namespace, "
    "#with_exporting and #guard_msgs command wrappers are descended."
)
PREFIX = "LEAN_SOURCE_CENSUS::"


class CensusError(RuntimeError):
    pass


def _dump(path, value):
    path.write_text(json.dumps(value, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def _hash(data):
    return hashlib.sha256(data).hexdigest()


def _source_name(name):
    return (isinstance(name, str) and name and not Path(name).is_absolute()
            and name == Path(name).as_posix() and "\\" not in name
            and all(part not in (".", "..", ".git") for part in name.split("/")))


def _run(argv, root, run, label, timeout=600):
    try:
        result = subprocess.run(argv, cwd=root, stdout=subprocess.PIPE,
                                stderr=subprocess.PIPE, timeout=timeout)
    except subprocess.TimeoutExpired as error:
        (run / (label + ".stdout")).write_bytes(error.stdout or b"")
        (run / (label + ".stderr")).write_bytes(error.stderr or b"")
        raise CensusError(label + " timed out; retained run: " + str(run)) from error
    (run / (label + ".stdout")).write_bytes(result.stdout)
    (run / (label + ".stderr")).write_bytes(result.stderr)
    if result.returncode:
        raise CensusError(label + " failed (" + str(result.returncode)
                          + "); retained run: " + str(run))
    return result.stdout.decode("utf-8")


def _validate_record(record):
    if not isinstance(record, dict) or record.get("status") not in ("parsed", "unparsed"):
        raise CensusError("invalid native census record")
    errors = record.get("errors")
    kinds = record.get("kinds")
    if not isinstance(errors, list) or any(not isinstance(item, str) for item in errors):
        raise CensusError("invalid native census diagnostics")
    if not isinstance(kinds, dict) or any(not isinstance(k, str) or type(v) is not int
                                          or v < 0 for k, v in kinds.items()):
        raise CensusError("invalid native census kind counts")
    if record["status"] == "unparsed":
        if "counts" in record or not errors or kinds:
            raise CensusError("unparsed file has counts or lacks diagnostics")
        return
    counts = record.get("counts")
    if errors or not isinstance(counts, dict) or set(counts) != {"declarations", "theorems"}:
        raise CensusError("invalid complete native census")
    if any(type(value) is not int or value < 0 for value in counts.values()):
        raise CensusError("invalid complete native census totals")
    if counts["declarations"] != sum(v for k, v in kinds.items() if k != "example"):
        raise CensusError("native declaration total disagrees with kinds")
    if counts["theorems"] != kinds.get("theorem", 0) + kinds.get("lemma", 0):
        raise CensusError("native theorem-command total disagrees with kinds")


def count_sources(root: Path, source_bytes: dict[str, bytes]):
    """Return exact-byte-bound parsed/unparsed rows for the caller's source set.

    Unparsed rows omit counts. Returned diagnostic filenames use caller-relative
    source paths; retained local receipt paths are not inserted into these rows.
    """
    root = Path(root).resolve()
    if not isinstance(source_bytes, dict) or any(not _source_name(name)
            or not isinstance(raw, bytes) for name, raw in source_bytes.items()):
        raise CensusError("census requires canonical relative paths and frozen bytes")
    stamp = datetime.datetime.now(datetime.timezone.utc).strftime("%Y%m%dT%H%M%S%fZ")
    run = root / ".noeaaeue/.local/documentation-census" / (stamp + "-" + uuid.uuid4().hex[:12])
    run.mkdir(parents=True, exist_ok=False)
    receipt = {"schema": 1, "method": METHOD, "limitations": LIMITATIONS,
               "status": "running", "sources": [], "lean_version": LEAN_VERSION,
               "lean_commit": LEAN_COMMIT}
    try:
        driver_raw = (Path(__file__).with_suffix(".lean.txt")).read_bytes()
        counter_raw = Path(__file__).read_bytes()
        driver = run / "SourceDeclarationCensus.lean"
        driver.write_bytes(driver_raw)
        (run / "lean_declaration_census.py").write_bytes(counter_raw)
        receipt["driver_sha256"] = _hash(driver_raw)
        receipt["counter_sha256"] = _hash(counter_raw)
        sources = []
        rows = {}
        for name, raw in sorted(source_bytes.items()):
            frozen = run / "sources" / name
            frozen.parent.mkdir(parents=True, exist_ok=True)
            frozen.write_bytes(raw)
            receipt["sources"].append({"path": name, "sha256": _hash(raw), "bytes": len(raw)})
            try:
                raw.decode("utf-8", errors="strict")
            except UnicodeDecodeError:
                rows[name] = {"sha256": _hash(raw), "status": "unparsed", "kinds": {},
                              "errors": [name + ": invalid UTF-8 source"]}
                continue
            sources.append({"path": name, "frozen_path": str(frozen)})
        manifest = run / "manifest.json"
        _dump(manifest, {"sources": sources})
        _dump(run / "receipt.json", receipt)
        toolchain_raw = (root / "lean-toolchain").read_bytes()
        (run / "lean-toolchain").write_bytes(toolchain_raw)
        if toolchain_raw.decode("utf-8").strip() != "leanprover/lean4:v" + LEAN_VERSION:
            raise CensusError("unexpected lean-toolchain pin")
        dependency_manifest_raw = (root / "lake-manifest.json").read_bytes()
        (run / "lake-manifest.json").write_bytes(dependency_manifest_raw)
        dependency_manifest = json.loads(dependency_manifest_raw)
        mathlibs = [entry for entry in dependency_manifest.get("packages", [])
                    if entry.get("name") == "mathlib"]
        if len(mathlibs) != 1 or mathlibs[0].get("type") != "git":
            raise CensusError("missing unique Git Mathlib dependency in lake manifest")
        mathlib_revision = mathlibs[0].get("rev", "")
        if not re.fullmatch(r"[0-9a-f]{40}", mathlib_revision):
            raise CensusError("Mathlib manifest revision is not an exact Git commit")
        packages_dir = dependency_manifest.get("packagesDir", "")
        if not _source_name(packages_dir) or mathlibs[0].get("subDir") is not None:
            raise CensusError("unsupported Mathlib package location")
        git = shutil.which("git")
        if not git:
            raise CensusError("git executable is unavailable")
        dependency_argv = [git, "-C", str(root / packages_dir / "mathlib"), "rev-parse", "HEAD"]
        observed_revision = _run(dependency_argv, root, run, "mathlib-revision-before", 60).strip()
        if observed_revision != mathlib_revision:
            raise CensusError("Mathlib checkout HEAD differs from lake manifest revision")
        receipt["lake_manifest_sha256"] = _hash(dependency_manifest_raw)
        receipt["mathlib_revision"] = mathlib_revision
        lake = shutil.which("lake")
        if not lake:
            raise CensusError("lake executable is unavailable")
        version = _run([lake, "env", "lean", "--version"], root, run, "compiler-version", 60)
        receipt["compiler_version_output"] = version.strip()
        if not re.search(r"\bversion " + re.escape(LEAN_VERSION) + r"\b", version) or LEAN_COMMIT not in version:
            raise CensusError("native compiler identity differs from pinned Lean")
        argv = [lake, "env", "lean", "--trust=0", "--memory=12288", "--threads=1",
                "-DwarningAsError=true", "--run", str(driver), str(manifest)]
        receipt["argv"] = argv
        output = _run(argv, root, run, "native-parser")
        expected = {entry["path"] for entry in sources}
        native = {}
        for line in output.splitlines():
            if not line.startswith(PREFIX):
                if line.strip():
                    raise CensusError("unexpected native parser output")
                continue
            record = json.loads(line[len(PREFIX):])
            _validate_record(record)
            name = record.pop("path", None)
            if name not in expected or name in native:
                raise CensusError("duplicate or unexpected native source record")
            if any(str(run) in error for error in record["errors"]):
                raise CensusError("native diagnostic leaked a frozen local path")
            native[name] = {"sha256": _hash(source_bytes[name]), **record}
        if set(native) != expected:
            raise CensusError("incomplete native census coverage")
        if ((root / "lake-manifest.json").read_bytes() != dependency_manifest_raw
                or (root / "lean-toolchain").read_bytes() != toolchain_raw):
            raise CensusError("dependency manifest or toolchain changed during native census")
        if _run(dependency_argv, root, run, "mathlib-revision-after", 60).strip() != mathlib_revision:
            raise CensusError("Mathlib checkout HEAD changed during native census")
        rows.update(native)
        metadata = {"method": METHOD, "parser_sha256": _hash(driver_raw),
                    "counter_sha256": _hash(counter_raw),
                    "compiler_version": version.strip(),
                    "lake_manifest_sha256": _hash(dependency_manifest_raw),
                    "mathlib_revision": mathlib_revision}
        rows = {name: {**record, **metadata} for name, record in rows.items()}
        receipt["status"] = "complete"
        receipt["parsed_sources"] = sum(row["status"] == "parsed" for row in rows.values())
        receipt["unparsed_sources"] = len(rows) - receipt["parsed_sources"]
        receipt["result_sha256"] = _hash(json.dumps(rows, sort_keys=True).encode("utf-8"))
        _dump(run / "result.json", rows)
        return rows
    except Exception as error:
        receipt["status"] = "failed"
        receipt["error"] = str(error)
        raise
    finally:
        _dump(run / "receipt.json", receipt)


def _self_test(root):
    source = b'''import Mathlib
namespace CensusFixture
/- nested /- theorem fake : False := by contradiction -/ comment -/
def text := "theorem fake : False := by contradiction"
private
theorem first : True := by trivial
lemma second : True := by trivial
@[simp] theorem third : True := by trivial
structure Pair where
  left : Nat
  right : Nat
inductive Flag where
  | yes
  | no
class Marker where
  value : Nat
instance : Inhabited Flag := \xe2\x9f\xa8Flag.yes\xe2\x9f\xa9
example : True := by trivial
mutual
  def even : Nat \xe2\x86\x92 Bool
    | 0 => true
    | n + 1 => odd n
  def odd : Nat \xe2\x86\x92 Bool
    | 0 => false
    | n + 1 => even n
end
set_option maxHeartbeats 100 in
theorem wrapped : True := by trivial
elab "#quoted" : command => do
  let _ \xe2\x86\x90 `(command| theorem fake : True := by trivial)
  pure ()
end CensusFixture
'''
    rows = count_sources(root, {"Fixture.lean": source,
                                "Broken.lean": b"import Mathlib\ntheorem broken : := by\n"})
    good = rows["Fixture.lean"]
    if good["status"] != "parsed" or good.get("counts") != {"declarations": 11, "theorems": 4}:
        raise CensusError("native positive fixture counts differ: " + json.dumps(good))
    if good["kinds"].get("example") != 1 or good["kinds"].get("def") != 3:
        raise CensusError("native fixture included quotations, comments, fields, or constructors")
    bad = rows["Broken.lean"]
    if bad["status"] != "unparsed" or "counts" in bad:
        raise CensusError("native hostile parse fixture received counts")
    print(json.dumps({"status": "passed", "method": METHOD, "fixtures": rows}, sort_keys=True))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parents[2])
    parser.add_argument("--self-test", action="store_true")
    parser.add_argument("sources", nargs="*")
    args = parser.parse_args()
    if args.self_test:
        _self_test(args.root)
    else:
        rows = count_sources(args.root, {name: (args.root / name).read_bytes() for name in args.sources})
        print(json.dumps(rows, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
