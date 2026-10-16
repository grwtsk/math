#!/usr/bin/env python3
"""INERT until an integration owner explicitly passes --apply.

Installs only reviewed byte proposals; never renders, compiles, edits Git,
regenerates observations/catalogs/contracts, or marks validation complete.
There is no multi-file atomic transaction: on later drift, retain the journal,
stop and reconcile the already-applied subset without automatic rollback.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import os
from pathlib import Path, PurePosixPath
import stat
import sys
import tempfile
import uuid


HERE = Path(__file__).absolute().parent
MAX_FILE_BYTES = 32 * 1024 * 1024
ALLOWED_TARGETS = {
    ".noeaaeue/documentation/math-layout.json",
    "docs/reference/object-source-bindings.json",
    ".noeaaeue/documentation/reference/documentation-layout.json",
    "GRWTSK.lean", "NOTICE",
    "docs/mathematics/Combinatorics/DirectedGraph/prefix-reference-transport.md",
    "docs/mathematics/NumberTheory/Cyclotomic/third-cyclotomic-characters.md",
    "docs/mathematics/Combinatorics/DirectedGraph/prefix-compaction-schedule.md",
    "docs/mathematics/NumberTheory/Cyclotomic/third-cyclotomic-reduction.md",
    "docs/mathematics/NumberTheory/Cyclotomic/third-cyclotomic-ideals.md",
}


class Refusal(RuntimeError):
    pass


def sha(raw: bytes) -> str:
    return hashlib.sha256(raw).hexdigest()


def relative_parts(name: str) -> tuple[str, ...]:
    value = PurePosixPath(name)
    if (not isinstance(name, str) or not name or "\\" in name
            or value.is_absolute() or str(value) != name
            or any(part in ("", ".", "..") for part in value.parts)):
        raise Refusal("noncanonical relative path: " + repr(name))
    return value.parts


def directory(base: Path, parts: tuple[str, ...]) -> Path:
    if not base.is_absolute():
        raise Refusal("nonabsolute base")
    target = Path(base.anchor)
    for part in (*base.parts[1:], *parts):
        target = target / part
        mode = os.lstat(target).st_mode
        if not stat.S_ISDIR(mode) or stat.S_ISLNK(mode):
            raise Refusal("non-directory or symlink ancestor: " + str(target))
    return target


def identity(value: os.stat_result) -> tuple[int, ...]:
    return (value.st_dev, value.st_ino, value.st_mode, value.st_size,
            value.st_mtime_ns, value.st_ctime_ns)


def observe(base: Path, name: str) -> tuple[dict, bytes | None]:
    parts = relative_parts(name)
    parent = directory(base, parts[:-1])
    target = parent / parts[-1]
    try:
        before = os.lstat(target)
    except FileNotFoundError:
        return {"state": "absent"}, None
    if not stat.S_ISREG(before.st_mode) or stat.S_ISLNK(before.st_mode):
        raise Refusal("nonregular or symlink target: " + str(target))
    if before.st_size > MAX_FILE_BYTES:
        raise Refusal("input exceeds bound: " + str(target))
    fd = os.open(target, os.O_RDONLY | os.O_NOFOLLOW)
    with os.fdopen(fd, "rb") as stream:
        opened = os.fstat(stream.fileno())
        if identity(opened) != identity(before):
            raise Refusal("input replaced during open: " + str(target))
        raw = stream.read(MAX_FILE_BYTES + 1)
        after_read = os.fstat(stream.fileno())
    after = os.lstat(target)
    if (len(raw) > MAX_FILE_BYTES or identity(before) != identity(after_read)
            or identity(before) != identity(after)):
        raise Refusal("input changed during read: " + str(target))
    return {"state": "regular", "sha256": sha(raw), "bytes": len(raw),
            "mode": stat.S_IMODE(before.st_mode)}, raw


def require_snapshot(base: Path, name: str, expected: dict) -> bytes | None:
    actual, raw = observe(base, name)
    if actual != expected:
        raise Refusal("preimage/input drift: " + name + "\nexpected "
                      + json.dumps(expected, sort_keys=True) + "\nactual "
                      + json.dumps(actual, sort_keys=True))
    return raw


def bundle_bytes(name: str, expected: dict) -> bytes:
    raw = require_snapshot(HERE, name, expected)
    if raw is None:
        raise Refusal("required proposal/archive is absent: " + name)
    return raw


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--apply", action="store_true",
                        help="explicit owner action after static review/quiet handoff")
    args = parser.parse_args()
    manifest_state, manifest_raw = observe(HERE, "change-manifest.json")
    if manifest_raw is None:
        raise Refusal("missing reviewed manifest")
    manifest = json.loads(manifest_raw)
    root = Path(manifest["repository"])
    if not root.is_absolute() or root != Path("/Users/think/Desktop/math"):
        raise Refusal("unexpected repository")
    directory(root, ())
    self_raw = bundle_bytes(manifest["installer"]["path"], manifest["installer"]["snapshot"])
    if sha(self_raw) != sha(Path(__file__).read_bytes()):
        raise Refusal("running helper differs from reviewed helper")
    targets = manifest["targets"]
    if len({row["path"] for row in targets}) != len(targets):
        raise Refusal("duplicate destinations")
    target_names = {row["path"] for row in targets}
    if target_names != ALLOWED_TARGETS:
        raise Refusal("destination set differs from the exact ten reviewed targets")
    blocked = {"docs/reference/math-source-catalog.json",
               ".noeaaeue/bindings/current-source-observations.json"}
    if blocked & target_names or any(name.startswith(".noeaaeue/bindings/")
                                    for name in target_names):
        raise Refusal("generated observation/catalog/contract destination forbidden")
    proposals = {}
    for row in targets:
        if row["before"]["state"] == "regular":
            bundle_bytes(row["preimage"], row["before"])
        proposals[row["path"]] = bundle_bytes(row["proposal"], row["after"])
    for row in manifest["bound_inputs"]:
        if row["path"] in target_names:
            raise Refusal("input/target overlap must be explicitly reconciled")
        bundle_bytes(row["archive"], row["snapshot"])

    def verify_world(applied: set[str]) -> None:
        require_snapshot(HERE, "change-manifest.json", manifest_state)
        bundle_bytes(manifest["installer"]["path"], manifest["installer"]["snapshot"])
        for row in manifest["bound_inputs"]:
            require_snapshot(root, row["path"], row["snapshot"])
        for row in targets:
            if row["before"]["state"] == "regular":
                bundle_bytes(row["preimage"], row["before"])
            bundle_bytes(row["proposal"], row["after"])
            require_snapshot(root, row["path"], row["after"]
                             if row["path"] in applied else row["before"])

    applied: set[str] = set()
    verify_world(applied)  # ALL destinations and ALL bound inputs, before any write.
    if not args.apply:
        print(json.dumps({"mode": "DRY_RUN", "mutations": 0,
                          "manifest_sha256": sha(manifest_raw),
                          "targets": [row["path"] for row in targets],
                          "bound_input_count": len(manifest["bound_inputs"]),
                          "validation_complete": False}, indent=2))
        return 0

    # The create-only local claim prevents duplicate instances of this helper.
    # It remains after interruption/refusal for owner inspection; never auto-unlink it.
    claim = HERE / "apply-owner-claim.json"
    claim_fd = os.open(claim, os.O_WRONLY | os.O_CREAT | os.O_EXCL | os.O_NOFOLLOW, 0o600)
    with os.fdopen(claim_fd, "w") as stream:
        json.dump({"pid": os.getpid(), "manifest_sha256": sha(manifest_raw)}, stream)
        stream.write("\n")
        stream.flush()
        os.fsync(stream.fileno())
    journal = HERE / ("apply-journal-" + uuid.uuid4().hex + ".jsonl")
    journal_fd = os.open(journal, os.O_WRONLY | os.O_CREAT | os.O_EXCL | os.O_NOFOLLOW, 0o600)
    with os.fdopen(journal_fd, "w") as log:
        def record(value: dict) -> None:
            log.write(json.dumps(value, sort_keys=True) + "\n")
            log.flush()
            os.fsync(log.fileno())
        record({"event": "START", "manifest_sha256": sha(manifest_raw),
                "validation_complete": False})
        try:
            for row in targets:
                name = row["path"]
                verify_world(applied)
                parts = relative_parts(name)
                parent = directory(root, parts[:-1])
                parent_fd = os.open(parent, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW)
                temporary = None
                try:
                    fd, temporary = tempfile.mkstemp(prefix=".paired-integration-", dir=parent)
                    with os.fdopen(fd, "wb") as stream:
                        stream.write(proposals[name])
                        stream.flush()
                        os.fchmod(stream.fileno(), row["after"]["mode"])
                        os.fsync(stream.fileno())
                    # Recheck every destination/source after staging, and this exact
                    # destination immediately before the atomic directory operation.
                    verify_world(applied)
                    require_snapshot(root, name, row["before"])
                    if row["before"]["state"] == "absent":
                        # link is an atomic no-clobber installation, including races
                        # where a previously absent file appears after the last check.
                        os.link(Path(temporary).name, parts[-1],
                                src_dir_fd=parent_fd, dst_dir_fd=parent_fd,
                                follow_symlinks=False)
                        os.unlink(Path(temporary).name, dir_fd=parent_fd)
                    else:
                        os.replace(Path(temporary).name, parts[-1],
                                   src_dir_fd=parent_fd, dst_dir_fd=parent_fd)
                    temporary = None
                    os.fsync(parent_fd)
                    applied.add(name)
                    require_snapshot(root, name, row["after"])
                    record({"event": "INSTALLED", "path": name,
                            "before": row["before"], "after": row["after"]})
                finally:
                    if temporary is not None:
                        os.unlink(temporary)
                    os.close(parent_fd)
            verify_world(applied)
            record({"event": "INSTALLED_PENDING_FINAL_VALIDATION",
                    "applied": sorted(applied), "validation_complete": False,
                    "old_request_paid": False})
        except BaseException as error:
            # Preserve the actual observed remaining variants under a new local
            # directory, including foreign bytes; never restore archived preimages.
            variants = HERE / ("stopped-state-" + uuid.uuid4().hex)
            variants.mkdir()
            remaining = []
            for row in targets:
                entry = {"path": row["path"], "was_installed": row["path"] in applied}
                try:
                    actual, raw = observe(root, row["path"])
                    entry["observed"] = actual
                    if raw is not None:
                        archive = variants / row["path"]
                        archive.parent.mkdir(parents=True, exist_ok=True)
                        with archive.open("xb") as saved:
                            saved.write(raw)
                            saved.flush()
                            os.fsync(saved.fileno())
                        os.chmod(archive, actual["mode"])
                        entry["archive"] = str(archive.relative_to(HERE))
                except BaseException as capture_error:
                    entry["capture_error"] = repr(capture_error)
                remaining.append(entry)
            record({"event": "STOPPED_PARTIAL_RECONCILIATION_REQUIRED",
                    "applied": sorted(applied), "error": repr(error),
                    "actual_remaining_state": remaining,
                    "validation_complete": False, "old_request_paid": False})
            raise
    print(json.dumps({"mode": "APPLIED_PENDING_FINAL_VALIDATION",
                      "installed": len(applied), "journal": str(journal),
                      "old_request_paid": False, "validation_complete": False}))
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (Refusal, OSError, ValueError, KeyError, TypeError) as error:
        print("REFUSED: " + str(error), file=sys.stderr)
        raise SystemExit(2)
