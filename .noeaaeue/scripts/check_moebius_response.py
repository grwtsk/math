#!/usr/bin/env python3
"""Fresh scoped kernel replay of manifested immutable mathematical source bytes.

Compile only private 0400 copies preserving the original logical module paths.
Receipts, snapshots and logs stay under ignored .noeaaeue/.local/checks. The checker does
not install dependencies, mutate Git, or replay dependency source files.
"""
from __future__ import annotations

import argparse
from dataclasses import dataclass
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import stat
import subprocess
import sys
import threading
import time
import uuid

from repository_paths import relocated_name

NAMESPACES = ("ASBNP04", "PPNC", "PPNCP04", "EulerP04RH", "HSSCP04")
FORBIDDEN_ASSETS = {".pdf", ".tex"}
MODULE_PATTERN = re.compile(r"GRWTSK(?:\.[A-Za-z_][A-Za-z0-9_]*)*")


def required_asset_keys(assets):
    """Keep each manifest's exact logical key while locating relocated inputs."""
    required = {"scripts/moebius_response_inputs.py", "scripts/moebius_owner_census.py",
                "scripts/check_math_layout.py", "lake-manifest.json", "lakefile.toml", "lean-toolchain"}
    keys = {}
    for logical in required:
        matches = {name for name in (logical, relocated_name(logical)) if name in assets}
        if len(matches) != 1:
            raise ValueError("Manifest must bind the canonical policy, dependency pin or owner audit helper exactly once: " + logical)
        keys[logical] = matches.pop()
    return keys


def digest(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def file_identity(value: os.stat_result) -> tuple[int, ...]:
    return (value.st_dev, value.st_ino, value.st_size, value.st_mtime_ns,
            value.st_ctime_ns, value.st_mode, value.st_nlink)


def safe_absolute(path: Path) -> Path:
    path = path.absolute()
    if ".." in path.parts:
        raise ValueError(f"Parent traversal is not a replay input: {path}")
    return path


def safe_relative(value: str) -> Path:
    path = Path(value)
    if not value or not path.parts or path.is_absolute() or ".." in path.parts:
        raise ValueError(f"Expected a repository-relative file: {value}")
    return path


@dataclass(frozen=True)
class StableRead:
    path: Path
    data: bytes
    identity: tuple[int, ...]
    ancestry: tuple[tuple[str, int, int], ...]


def stable_read(path: Path) -> StableRead:
    """Anchored no-follow read; bind the path, all parents and one bytes read."""
    if not hasattr(os, "O_NOFOLLOW") or not hasattr(os, "O_DIRECTORY"):
        raise ValueError("Anchored no-follow replay is unavailable on this platform")
    path = safe_absolute(path)
    flags = os.O_RDONLY | os.O_NOFOLLOW | getattr(os, "O_NONBLOCK", 0)
    descriptors, parents, ancestry = [], [], []
    try:
        directory = os.open("/", flags | os.O_DIRECTORY)
        descriptors.append(directory)
        for component in path.parts[1:-1]:
            before = os.stat(component, dir_fd=directory, follow_symlinks=False)
            if not stat.S_ISDIR(before.st_mode):
                raise ValueError(f"Linked or non-directory input ancestor: {path}")
            child = os.open(component, flags | os.O_DIRECTORY, dir_fd=directory)
            descriptors.append(child)
            opened = os.fstat(child)
            if (before.st_dev, before.st_ino) != (opened.st_dev, opened.st_ino):
                raise ValueError(f"Input ancestor changed while opening: {path}")
            parents.append((directory, component, opened))
            ancestry.append((component, opened.st_dev, opened.st_ino))
            directory = child
        before = os.stat(path.name, dir_fd=directory, follow_symlinks=False)
        if not stat.S_ISREG(before.st_mode):
            raise ValueError(f"Linked or nonregular replay input: {path}")
        source = os.open(path.name, flags, dir_fd=directory)
        descriptors.append(source)
        opened = os.fstat(source)
        if not stat.S_ISREG(opened.st_mode) or file_identity(before) != file_identity(opened):
            raise ValueError(f"Replay input changed while opening: {path}")
        chunks = []
        while True:
            chunk = os.read(source, 1024 * 1024)
            if not chunk:
                break
            chunks.append(chunk)
        after_read = os.fstat(source)
        after_path = os.stat(path.name, dir_fd=directory, follow_symlinks=False)
        if file_identity(before) != file_identity(after_read) or file_identity(before) != file_identity(after_path):
            raise ValueError(f"Replay input changed during read: {path}")
        for parent, component, opened_parent in parents:
            current = os.stat(component, dir_fd=parent, follow_symlinks=False)
            if not stat.S_ISDIR(current.st_mode) or (current.st_dev, current.st_ino) != (
                    opened_parent.st_dev, opened_parent.st_ino):
                raise ValueError(f"Input ancestor changed during read: {path}")
        return StableRead(path, b"".join(chunks), file_identity(opened), tuple(ancestry))
    except OSError as error:
        raise ValueError(f"Missing, linked or inaccessible replay input: {path}") from error
    finally:
        for descriptor in reversed(descriptors):
            os.close(descriptor)


def read_regular(root: Path, relative: str) -> StableRead:
    return stable_read(safe_absolute(root) / safe_relative(relocated_name(relative)))


def relative_file(root: Path, value: str) -> Path:
    # Keep the logical path; never resolve a source alias to a physical target.
    return read_regular(root, value).path


def sha256(path: Path) -> str:
    return digest(stable_read(path).data)


def directory_descriptor(path: Path, create: bool = False) -> int:
    path = safe_absolute(path)
    descriptor = os.open("/", os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW)
    try:
        for component in path.parts[1:]:
            if create:
                try:
                    os.mkdir(component, mode=0o700, dir_fd=descriptor)
                except FileExistsError:
                    pass
            child = os.open(component, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW,
                            dir_fd=descriptor)
            os.close(descriptor)
            descriptor = child
        return descriptor
    except OSError as error:
        os.close(descriptor)
        raise ValueError(f"Linked or inaccessible output directory: {path}") from error


def make_directory(path: Path, exclusive: bool = False) -> None:
    parent = directory_descriptor(path.parent, create=True)
    try:
        try:
            os.mkdir(path.name, mode=0o700, dir_fd=parent)
        except FileExistsError:
            if exclusive:
                raise ValueError(f"Refusing existing run directory: {path}")
        child = os.open(path.name, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW, dir_fd=parent)
        os.close(child)
    except OSError as error:
        raise ValueError(f"Linked or inaccessible output directory: {path}") from error
    finally:
        os.close(parent)


def write_exclusive(path: Path, data: bytes, readonly: bool = False) -> None:
    parent = directory_descriptor(path.parent, create=True)
    descriptor = None
    try:
        descriptor = os.open(path.name, os.O_WRONLY | os.O_CREAT | os.O_EXCL | os.O_NOFOLLOW,
                             0o600, dir_fd=parent)
        if not stat.S_ISREG(os.fstat(descriptor).st_mode):
            raise ValueError(f"Refusing nonregular output: {path}")
        with os.fdopen(descriptor, "wb", closefd=False) as stream:
            stream.write(data)
            stream.flush()
        if readonly:
            os.fchmod(descriptor, 0o400)
        os.fsync(descriptor)
    except OSError as error:
        raise ValueError(f"Existing, linked or inaccessible output: {path}") from error
    finally:
        if descriptor is not None:
            os.close(descriptor)
        os.close(parent)


def atomic_json(path: Path, value: dict) -> None:
    """Durable progress replacement through a no-follow parent descriptor."""
    parent = directory_descriptor(path.parent)
    temporary = path.name + "." + uuid.uuid4().hex + ".tmp"
    try:
        try:
            old = os.stat(path.name, dir_fd=parent, follow_symlinks=False)
        except FileNotFoundError:
            old = None
        if old is not None and (not stat.S_ISREG(old.st_mode) or old.st_nlink != 1):
            raise ValueError(f"Linked or nonregular receipt destination: {path}")
        descriptor = os.open(temporary, os.O_WRONLY | os.O_CREAT | os.O_EXCL | os.O_NOFOLLOW,
                             0o600, dir_fd=parent)
        with os.fdopen(descriptor, "w", encoding="utf-8") as stream:
            stream.write(json.dumps(value, indent=2) + "\n")
            stream.flush()
            os.fsync(stream.fileno())
        os.replace(temporary, path.name, src_dir_fd=parent, dst_dir_fd=parent)
        os.fsync(parent)
    finally:
        os.close(parent)


@dataclass(frozen=True)
class FrozenInput:
    original: StableRead
    logical_path: str
    snapshot: StableRead


def freeze_input(read: StableRead, frozen: Path, logical_path: str) -> FrozenInput:
    target = frozen / safe_relative(relocated_name(logical_path))
    write_exclusive(target, read.data, readonly=True)
    snapshot = stable_read(target)
    if snapshot.data != read.data or stat.S_IMODE(snapshot.identity[5]) != 0o400 or snapshot.identity[6] != 1:
        raise ValueError(f"Immutable input copy did not preserve bytes: {logical_path}")
    return FrozenInput(read, logical_path, snapshot)


def verify_input(record: FrozenInput) -> None:
    current = stable_read(record.original.path)
    if current.identity != record.original.identity or current.ancestry != record.original.ancestry or current.data != record.original.data:
        raise ValueError(f"Original replay input changed: {record.original.path}")
    copied = stable_read(record.snapshot.path)
    if copied.identity != record.snapshot.identity or copied.ancestry != record.snapshot.ancestry or copied.data != record.original.data:
        raise ValueError(f"Immutable replay copy changed: {record.logical_path}")
    if stat.S_IMODE(copied.identity[5]) != 0o400 or copied.identity[6] != 1:
        raise ValueError(f"Replay copy lost private read-only identity: {record.logical_path}")


def verify_stable(read: StableRead) -> None:
    current = stable_read(read.path)
    if current.identity != read.identity or current.ancestry != read.ancestry or current.data != read.data:
        raise ValueError(f"Pinned runtime or dependency input changed: {read.path}")


def diagnostic_records(text: str) -> list[dict]:
    """Parse every Lean error/warning header, including location-free failures."""
    result = []
    for line in text.splitlines():
        match = re.match(r"^(?:(.+?):(\d+):(\d+):\s*)?(error|warning)(?:\(([^()\r\n]+)\))?:\s*(.*)$", line)
        if match:
            result.append({"path":match[1], "line":int(match[2]) if match[2] else None,
                           "column":int(match[3]) if match[3] else None,
                           "kind":match[4], "code":match[5], "message":match[6]})
    return result


def strict_custom_axiom_diagnostic(text: str, relative: str, namespace: str) -> tuple[bool, str]:
    records = diagnostic_records(text)
    if len(records) != 1 or records[0]["kind"] != "error":
        return False, "Expected exactly one intended custom-axiom error and no unrelated error or warning"
    record = records[0]
    if record["path"] != relative or record["line"] != 5 or record["column"] != 0 or record["code"] is not None:
        return False, "The rejection must be at the frozen control's audit command"
    name = re.escape(namespace) + r"\.hostileCustomAxiom"
    qualified = r"(?:_private\.[A-Za-z0-9_.]+\.)?" + name
    intended = re.fullmatch(r"Unapproved axiom ("+qualified+r") in ("+qualified+r")", record["message"])
    if intended is None or intended[1] != intended[2]:
        return False, "The sole error must identify exactly the injected custom axiom and its owner"
    # A second multiline/unsupported failure must not disappear in the oracle.
    other = [line.strip() for line in text.splitlines() if line.strip() and
             line != next(line for line in text.splitlines() if line.endswith(record["message"]))]
    if any(re.search(r"(?:error(?:\([^()\r\n]+\))?:|warning(?:\([^()\r\n]+\))?:|unknown constant|failed to import|unsupported|panic|uncaught)", line, re.I)
           for line in other):
        return False, "An additional unrelated diagnostic accompanies the intended rejection"
    return True, "Exactly the intended source-linked custom axiom was rejected"


def code_mask(text: str) -> str:
    """Blank Lean comments and strings, preserving offsets and newlines."""
    chars = list(text)
    i, depth, quoted = 0, 0, False
    while i < len(text):
        if depth:
            if text.startswith("/-", i):
                depth += 1
                chars[i:i + 2] = "  "
                i += 2
            elif text.startswith("-/", i):
                depth -= 1
                chars[i:i + 2] = "  "
                i += 2
            else:
                if text[i] not in "\r\n":
                    chars[i] = " "
                i += 1
        elif quoted:
            if text[i] == "\\" and i + 1 < len(text):
                chars[i:i + 2] = "  "
                i += 2
            else:
                if text[i] == '"':
                    quoted = False
                if text[i] not in "\r\n":
                    chars[i] = " "
                i += 1
        elif text.startswith("/-", i):
            depth = 1
            chars[i:i + 2] = "  "
            i += 2
        elif text.startswith("--", i):
            end = text.find("\n", i)
            if end < 0:
                end = len(text)
            for j in range(i, end):
                if text[j] != "\r":
                    chars[j] = " "
            i = end
        elif text[i] == '"':
            quoted = True
            chars[i] = " "
            i += 1
        else:
            i += 1
    if depth or quoted:
        raise ValueError("Unterminated Lean comment or string")
    return "".join(chars)


def imports(text: str) -> list[str]:
    masked = code_mask(text)
    result = []
    statements = list(re.finditer(
        r"(?m)^[ \t]*(?:public[ \t]+)?(?:meta[ \t]+)?import[ \t]+([^\r\n]*)", masked))
    # This published scope uses one-line imports. Reject unsupported syntax
    # instead of silently leaving a dependency out of the fresh build graph.
    for keyword in re.finditer(r"(?<![A-Za-z0-9_.])import(?![A-Za-z0-9_])", masked):
        if not any(statement.start() <= keyword.start() < statement.start(1)
                   for statement in statements):
            raise ValueError("Unsupported import syntax; use a complete one-line import statement")
    for statement in statements:
        result.extend(re.findall(r"[A-Za-z_][A-Za-z0-9_.]*", statement.group(1)))
        if not statement.group(1).strip():
            raise ValueError("Empty or multiline import statement is outside the manifested source scope")
    return sorted(set(result))




def reject_document_assets(root: Path) -> None:
    for directory, subdirs, filenames in os.walk(root, followlinks=False):
        excluded={".git", ".lake", ".local"}
        if Path(directory)==root:
            excluded.add(".noeaaeue")
        subdirs[:] = [name for name in subdirs if name not in excluded]
        for filename in filenames:
            path = Path(directory) / filename
            if path.suffix.lower() in FORBIDDEN_ASSETS:
                raise ValueError(f"Forbidden mathematical repository asset: {path.relative_to(root)}")


def source_assets(source_dirs: set[Path], *, umbrella_root: Path | None = None) -> set[Path]:
    """Bind recursive subject assets and immediate umbrella-adjacent files.

    GRWTSK.lean lives at the repository root, whose subdirectories have separate
    roles (project sources, operational inputs, evidence and caches). Its asset
    adjacency is therefore immediate regular non-Lean files, not every nested
    repository file. Subject source directories retain their recursive scope.
    The caller separately freezes the manifest and .gitignore as intrinsic
    inputs; all other adjacent assets require exact manifest pins.
    """
    result = set()
    for source_dir in source_dirs:
        descriptor = directory_descriptor(source_dir)
        os.close(descriptor)
        if source_dir == umbrella_root:
            for child in source_dir.iterdir():
                information = os.stat(child, follow_symlinks=False)
                if stat.S_ISLNK(information.st_mode):
                    raise ValueError(f"Linked umbrella inventory entry: {child}")
                if stat.S_ISREG(information.st_mode) and child.suffix != ".lean":
                    result.add(child)
            continue
        for directory, subdirs, filenames in os.walk(source_dir, followlinks=False):
            subdirs[:] = [name for name in subdirs if name not in {".git", ".lake", ".local"}]
            for child in subdirs:
                information = os.stat(Path(directory) / child, follow_symlinks=False)
                if not stat.S_ISDIR(information.st_mode):
                    raise ValueError(f"Linked source inventory directory: {Path(directory)/child}")
            result.update(Path(directory) / name for name in filenames if Path(name).suffix != ".lean")
    return result


@dataclass
class Node:
    relative: str
    read: StableRead
    source_hash: str
    imports: list[str]
    dependencies: set[str]
    frozen: FrozenInput | None = None


class CommandRunner:
    """Persist exact command/source identities before and after every child."""
    def __init__(self, state: Path, frozen: Path, receipt: dict, guard,
                 environment: dict, timeout: int = 600):
        self.state, self.frozen, self.receipt = state, frozen, receipt
        self.guard, self.environment, self.timeout = guard, environment, timeout
        self.mutex = threading.RLock()
        self.receipt.setdefault("commands", [])

    def save(self) -> None:
        with self.mutex:
            atomic_json(self.state / "receipt.json", self.receipt)

    def run(self, label: str, argv: list[str], bindings: dict[str,str], timeout: int | None = None,
            cwd: Path | None = None, environment: dict | None = None) -> dict:
        import signal
        if not re.fullmatch(r"[A-Za-z0-9_.-]+", label):
            raise ValueError(f"Unsafe command label: {label}")
        command_root = safe_absolute(cwd or self.frozen)
        command_environment = environment or self.environment
        contract = {"argv":argv, "cwd":str(command_root), "source_sha256":bindings,
                    "LEAN_PATH":command_environment.get("LEAN_PATH", ""),
                    "timeout_seconds":timeout or self.timeout}
        entry = {"label":label, **contract,
                 "command_sha256":digest(json.dumps(contract,sort_keys=True,separators=(",",":")).encode()),
                 "status":"precheck", "exit_code":None}
        self.receipt["commands"].append(entry)
        self.receipt.update(status="running", active_command=label, kernel_checked=False)
        self.save()
        started, text, stdout, stderr, process, interrupted = time.monotonic(), "", "", "", None, False
        try:
            self.guard()
            entry["status"] = "running"
            self.save()
            process = subprocess.Popen(argv, cwd=command_root, env=command_environment,
                                       stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                                       text=True, start_new_session=True)
            entry["child_pid"] = process.pid
            self.save()
            stdout, stderr = process.communicate(timeout=timeout or self.timeout)
            text = stdout + stderr
            entry.update(exit_code=process.returncode, status="completed")
        except subprocess.TimeoutExpired:
            text += "\nChecker command timed out.\n"
            entry.update(status="timed-out", error="bounded native command timeout")
        except KeyboardInterrupt:
            interrupted = True
            text += "\nChecker interrupted; native child terminated.\n"
            entry.update(status="interrupted", error="KeyboardInterrupt")
        except (OSError, ValueError, subprocess.SubprocessError) as error:
            text += str(error) + "\n"
            entry.update(status="failed", error=str(error))
        finally:
            if process is not None:
                try:
                    if entry["status"] != "completed":
                        # The session's descendants can outlive the parent and
                        # keep its pipes open after poll() reports an exit.
                        try:
                            os.killpg(process.pid, signal.SIGKILL)
                        except ProcessLookupError:
                            pass
                        try:
                            stdout, stderr = process.communicate(timeout=30)
                            text = stdout + stderr + text
                        except (OSError, ValueError, subprocess.SubprocessError) as error:
                            entry["cleanup_output_error"] = str(error)
                            text += "\nChild cleanup output failure: " + str(error) + "\n"
                    child_exit = process.wait(timeout=30)
                    entry.update(child_reaped=True, child_exit_code=child_exit)
                except (OSError, ValueError, subprocess.SubprocessError) as error:
                    entry.update(status="cleanup-failed", child_reaped=False, cleanup_error=str(error))
                    text += "\nChild termination/reap failure: " + str(error) + "\n"
            try:
                self.guard()
                entry["postcheck_passed"] = True
            except (OSError, ValueError) as error:
                entry.update(status="input-changed", postcheck_passed=False, error=str(error))
                text += "\nPost-command integrity failure: " + str(error) + "\n"
            log = self.state / "logs" / (label + ".log")
            write_exclusive(log, text.encode())
            entry.update(elapsed_seconds=time.monotonic()-started,
                         log=str(log.relative_to(self.state)), log_sha256=digest(text.encode()),
                         diagnostics=diagnostic_records(text))
            self.receipt.update(active_command=None,
                status="command-completed" if entry["status"] == "completed" else entry["status"])
            self.save()
        if interrupted:
            raise KeyboardInterrupt
        return {**entry, "text":text, "stdout":stdout, "stderr":stderr}



def freeze_native_artifacts(artifact: Path, compiled_reads: list[StableRead]) -> dict:
    stem = str(artifact)[:-len(".olean")]
    families = {}
    for suffix in (".olean", ".olean.private", ".olean.server", ".ir", ".ir.sig"):
        path = Path(stem + suffix)
        if not path.exists() and not path.is_symlink():
            continue
        parent = directory_descriptor(path.parent)
        try:
            descriptor = os.open(path.name,os.O_RDONLY|os.O_NOFOLLOW,dir_fd=parent)
            try:
                information = os.fstat(descriptor)
                if not stat.S_ISREG(information.st_mode) or information.st_nlink != 1:
                    raise ValueError("Nonregular fresh compiled object family")
                os.fchmod(descriptor,0o400)
            finally:
                os.close(descriptor)
        finally:
            os.close(parent)
        read = stable_read(path)
        compiled_reads.append(read)
        families[suffix] = {"sha256":digest(read.data),"bytes":len(read.data),
                            "identity":list(read.identity)}
    if ".olean" not in families:
        raise ValueError(f"Fresh native command did not produce its declared object: {artifact}")
    return families


def seal_frozen_source(frozen: Path) -> dict[str,list[int]]:
    """Seal the complete source tree once, including all generated controls."""
    directories=[]
    for directory,subdirs,_ in os.walk(frozen,followlinks=False):
        for name in subdirs:
            if not stat.S_ISDIR(os.stat(Path(directory)/name,follow_symlinks=False).st_mode):
                raise ValueError("Linked directory in immutable source tree")
        directories.append(Path(directory))
    records={}
    for path in reversed(directories):
        descriptor=directory_descriptor(path)
        try:
            os.fchmod(descriptor,0o500)
            records[path.relative_to(frozen).as_posix()]=list(file_identity(os.fstat(descriptor)))
        finally:
            os.close(descriptor)
    return records


def verify_sealed_source(frozen: Path, records: dict[str,list[int]]) -> None:
    for relative,expected in records.items():
        path=frozen if relative=="." else frozen/safe_relative(relative)
        descriptor=directory_descriptor(path)
        try:
            if list(file_identity(os.fstat(descriptor)))!=expected:
                raise ValueError(f"Sealed source directory changed: {relative}")
        finally:
            os.close(descriptor)


def resolve_runtime_policy(owner_contract: dict, census: dict, nodes: dict) -> tuple[bool, str, dict | None]:
    """Opt in only to the exact native exception and its frozen source owner."""
    enabled = owner_contract.get("runtime_exceptions_allowed")
    if type(enabled) is not bool:
        raise ValueError("Runtime exception policy must be an explicit Boolean")
    if not enabled:
        if "runtime_exception_policy" in owner_contract:
            raise ValueError("Disabled runtime policy must retain the original contract without an exception descriptor")
        return False, "", None
    declared = owner_contract.get("runtime_exception_policy")
    if isinstance(declared,dict) and declared.get("kind") == "pinned-lean-generated-partial-recursor-profile":
        census["_validate_generated_partial_profile_constants"]()
        entries = list(census["GENERATED_PARTIAL_PROFILE"])
        profile_sha = census["GENERATED_PARTIAL_PROFILE_SHA256"]
        expected = {"kind":"pinned-lean-generated-partial-recursor-profile",
                    "profile_sha256":profile_sha,"entries":entries}
        if (set(declared)!=set(expected) or declared!=expected or not entries or
                digest(json.dumps(entries,sort_keys=True,separators=(",",":")).encode())!=profile_sha):
            raise ValueError("Generated-partial policy must declare the exact canonical generated-partial profile and SHA-256")
        pins={}
        for entry in entries:
            if set(entry)!={"helper","original","owner","owner_source_sha256"}:
                raise ValueError("Malformed controlled generated-partial profile entry")
            owner=entry["owner"]
            relative=owner.replace(".","/")+".lean"
            if owner in pins and pins[owner]!=entry["owner_source_sha256"]:
                raise ValueError("Conflicting generated-partial owner source pins")
            pins[owner]=entry["owner_source_sha256"]
            node=nodes.get(owner)
            if node is None or node.relative!=relative or node.source_hash!=entry["owner_source_sha256"]:
                raise ValueError("Generated-partial owner is absent or differs from the actually frozen manifested source")
        if pins!=census["GENERATED_PARTIAL_OWNER_SHA256"]:
            raise ValueError("Controlled generated-partial profile must pin the exact canonical owner inventory")
        return True,"",expected
    expected = {"declaration": census["RUNTIME_NAME"],
                "owner_module": census["RUNTIME_OWNER"],
                "source_path": census["RUNTIME_SOURCE"],
                "source_sha256": census["RUNTIME_SOURCE_SHA256"]}
    if type(declared) is not dict or set(declared) != set(expected) or declared != expected:
        raise ValueError("Runtime exception must declare the exact native canonical name, owner, path and source SHA-256")
    owner = nodes.get(expected["owner_module"])
    if owner is None or owner.relative != expected["source_path"] or owner.source_hash != expected["source_sha256"]:
        raise ValueError("Runtime exception owner is absent or differs from the actually frozen manifested source")
    return True, expected["source_sha256"], expected


PROFILE_CONTROL_CASES=("default-disabled","unpaired-partial","fake-paired-suffix",
                       "unrelated-unsafe","owner-custom-axiom","wrong-profile-sha")


def generated_partial_control_plan(owners: list[str], census: dict, profile_sha: str) -> list[dict]:
    """Prepare every hostile source and wrapper before immutable-source sealing.

    These are operational control sources in the private replay tree. Their
    declarations never enter the final base-owner wrapper or mathematical scope.
    Manual partial injection tests the environment flag itself, independently of
    the syntax used by ordinary recursive definitions.
    """
    if profile_sha!=census["GENERATED_PARTIAL_PROFILE_SHA256"]:
        raise ValueError("Control generation requires the exact controlled profile")
    plan=[]
    for case in PROFILE_CONTROL_CASES:
        leaf="".join(part.title() for part in case.split("-"))
        module="GRWTSK.Logic.Verification.Controls.GeneratedPartial"+leaf
        namespace=module
        fixture="import Lean\nopen Lean Elab Command\n"
        if case in {"unpaired-partial","fake-paired-suffix"}:
            original=namespace+".hostilePartial"
            if case=="fake-paired-suffix":
                fixture+=f"def {original} : Nat := 0\n"
            fixture+=("run_cmd liftCoreM do\n  addDecl <| .mutualDefnDecl [{\n"
                      f"    name := `{original}._unsafe_rec\n"
                      "    levelParams := []\n    type := mkConst ``Nat\n"
                      "    value := mkNatLit 0\n    hints := .opaque\n    safety := .partial\n  }]\n")
        elif case=="unrelated-unsafe":
            fixture+=f"unsafe def {namespace}.hostileUnsafe : Nat := 0\n"
        elif case=="owner-custom-axiom":
            fixture+=(f"axiom {namespace}.hostileAxiom : False\n"
                      f"theorem {namespace}.consumesHostileAxiom : False := {namespace}.hostileAxiom\n")
        else:
            fixture+=f"def {namespace}.safeWitness : Nat := 0\n"
        expected_owners=sorted([*owners,module])
        if case=="default-disabled":
            wrapper=census["generate_audit_source"](expected_owners)
        else:
            wrapper=census["generate_audit_source"](expected_owners,generated_partial_profile_sha256=profile_sha)
            if case=="wrong-profile-sha":
                wrong_sha="0"*64 if profile_sha!="0"*64 else "1"*64
                final=f'#audit_math_trust "" "{profile_sha}"\n'
                if not wrapper.endswith(final):
                    raise ValueError("Controlled wrapper profile command syntax changed")
                wrapper=wrapper[:-len(final)]+f'#audit_math_trust "" "{wrong_sha}"\n'
        plan.append({"case":case,"fixture_module":module,
                     "fixture_relative":module.replace(".","/")+".lean","fixture_source":fixture.encode(),
                     "wrapper_relative":"MoebiusProfileControls/"+leaf+"Audit.lean",
                     "wrapper_source":wrapper.encode(),"expected_owners":expected_owners})
    return plan


def generated_partial_control_oracle(case: str, command: dict, wrapper: bytes, relative: str,
                                    fixture_module: str, owners: list[str], hashes: dict, census: dict) -> dict:
    """Require only the intended rejection, with complete census before semantics."""
    if command["status"]!="completed" or command["exit_code"] is None or command["exit_code"]<=0 or not command.get("postcheck_passed"):
        raise ValueError("Generated-partial control audit did not complete with an integrity-checked rejection")
    diagnostics=diagnostic_records(command["text"])
    line=len(wrapper.decode().splitlines())
    if (len(diagnostics)!=1 or diagnostics[0]["kind"]!="error" or diagnostics[0]["code"] is not None or
            diagnostics[0]["path"]!=relative or diagnostics[0]["line"]!=line or diagnostics[0]["column"]!=0):
        raise ValueError("Generated-partial control must fail only at its exact frozen audit command")
    output_lines=command["text"].splitlines()
    header=next(i for i,value in enumerate(output_lines) if diagnostic_records(value))
    message=re.sub(r"\s+"," ",diagnostics[0]["message"]+" "+" ".join(output_lines[header+1:])).strip()
    if case=="wrong-profile-sha":
        if message!="unapproved generated-partial profile permission" or "MATH_TRUST_" in command["text"]:
            raise ValueError("Wrong profile SHA must fail only the explicit pre-census permission gate")
        return {"rejected":True,"permission_gate":True,"complete_census_required":False,"matched_errors":[message]}
    declarations,modules=census["_strict_records"](command["text"],owners)
    if set(hashes)!=set(owners):
        raise ValueError("Control source-hash coverage is incomplete")
    by_name={row["name"]:row for row in declarations}
    expected=[]
    if case=="default-disabled":
        table=census["GENERATED_PARTIAL_PROFILE"]
        for entry in table:
            row=by_name.get(entry["helper"])
            if not row or row["module"]!=entry["owner"] or row["kind"]!="definition" or not row["partial"] or row["unsafe"] or row["known_generated_runtime_helper"]:
                raise ValueError("Disabled-profile control did not expose every controlled partial helper as rejected")
            expected.append("partial declaration: "+entry["helper"])
    elif case in {"unpaired-partial","fake-paired-suffix"}:
        original=fixture_module+".hostilePartial"; helper=original+"._unsafe_rec"
        row=by_name.get(helper)
        if not row or row["module"]!=fixture_module or row["kind"]!="definition" or not row["partial"] or row["unsafe"] or row["known_generated_runtime_helper"] or row["direct_value_reference_to_runtime_helper"] or row["axioms"]:
            raise ValueError("Partial fixture is absent or was incorrectly promoted into the exact profile")
        if case=="unpaired-partial" and original in by_name:
            raise ValueError("Unpaired partial fixture unexpectedly has a safe original")
        if case=="fake-paired-suffix":
            safe=by_name.get(original)
            if not safe or safe["module"]!=fixture_module or safe["kind"]!="definition" or safe["unsafe"] or safe["partial"] or safe["known_generated_runtime_helper"] or safe["direct_value_reference_to_runtime_helper"] or safe["axioms"] or safe["type"]!=row["type"]:
                raise ValueError("Fake suffix fixture did not supply the intended same-owner/type safe original")
        expected=["partial declaration: "+helper]
    elif case=="unrelated-unsafe":
        name=fixture_module+".hostileUnsafe"; row=by_name.get(name)
        if not row or row["module"]!=fixture_module or row["kind"]!="definition" or not row["unsafe"] or row["partial"] or row["known_generated_runtime_helper"] or row["direct_value_reference_to_runtime_helper"] or row["axioms"]:
            raise ValueError("Unsafe fixture is absent or was incorrectly classified")
        expected=["unsafe declaration: "+name]
    elif case=="owner-custom-axiom":
        axiom=fixture_module+".hostileAxiom"; theorem=fixture_module+".consumesHostileAxiom"
        if (by_name.get(axiom,{}).get("kind")!="axiom" or by_name.get(theorem,{}).get("kind")!="theorem" or
                any(by_name[name]["module"]!=fixture_module or by_name[name]["unsafe"] or by_name[name]["partial"] or
                    by_name[name]["known_generated_runtime_helper"] or by_name[name]["direct_value_reference_to_runtime_helper"] or
                    by_name[name]["type"]!="False" or by_name[name]["axioms"]!=[axiom] for name in (axiom,theorem))):
            raise ValueError("Custom-axiom control did not exercise its actual consuming theorem")
        expected=["new axiom: "+axiom,"unapproved axiom "+axiom+" in "+axiom,
                  "unapproved axiom "+axiom+" in "+theorem]
    else:
        raise ValueError("Unknown generated-partial native control case")
    prefix="project trust audit failed: ["
    if not message.startswith(prefix) or not message.endswith("]") or sorted(message[len(prefix):-1].split(", "))!=sorted(expected):
        raise ValueError("Native profile control failed for an additional or unintended trust violation")
    try:
        census["validate_owner_census"]("\n".join(output_lines[:header])+"\n",owners,hashes,
            returncode=0,allow_generated_partial_profile=case!="default-disabled",
            generated_partial_profile_sha256=census["GENERATED_PARTIAL_PROFILE_SHA256"] if case!="default-disabled" else "")
    except RuntimeError as error:
        reason=str(error)
    else:
        raise ValueError("Hostile control unexpectedly passed the independent census parser")
    intended_parser_prefix=("unsafe, partial, or axiom declaration: " if case=="default-disabled" else
                            "unsafe, unpaired partial, or axiom declaration: ")
    if not reason.startswith(intended_parser_prefix) and not reason.startswith("unapproved transitive axiom: "):
        raise ValueError("Independent profile parser rejected for an unintended reason: "+reason)
    return {"rejected":True,"permission_gate":False,"complete_census_required":True,
            "declaration_count":len(declarations),"owner_count":len(modules),
            "matched_errors":[message],"expected_violations":expected,"independent_parser_reason":reason}


def validate_terminal_profile_controls(receipt: dict, state: Path, census: dict,
                                       owner_hashes: dict, profile_sha: str, *,
                                       expected_lean: Path, expected_memory_mb: int,
                                       expected_timeout: int, expected_lean_path: str,
                                       expected_controls: list[dict] | None = None) -> dict:
    """Read-only terminal revalidation of all six exact native profile controls.

    Rejected booleans are summaries. Acceptance requires the sealed prepared
    bytes, recorded native lifecycle/contracts, current object/log bytes, and
    freshly recomputed strict oracles to agree. This is evidence consistency,
    not authentication of arbitrary externally manufactured process records.
    """
    state = safe_absolute(state)
    frozen, build = state / "source", state / "build"
    expected_lean = safe_absolute(expected_lean)
    if (type(expected_memory_mb) is not int or not 1024 <= expected_memory_mb <= 16384 or
            type(expected_timeout) is not int or not 1 <= expected_timeout <= 3600 or
            type(expected_lean_path) is not str or type(owner_hashes) is not dict or not owner_hashes):
        raise ValueError("Terminal profile control context is not the exact bounded replay context")
    for owner, source_hash in owner_hashes.items():
        if type(owner) is not str or type(source_hash) is not str or not re.fullmatch(r"[0-9a-f]{64}", source_hash):
            raise ValueError("Terminal profile owner source bindings are malformed")
    for key, value in (("native_memory_limit_megabytes", expected_memory_mb),
                       ("native_jobs", 1), ("native_threads", 1), ("kernel_trust_level", 0),
                       ("command_timeout_seconds", expected_timeout)):
        if type(receipt.get(key)) is not int or receipt[key] != value:
            raise ValueError("Terminal profile replay envelope mismatch: " + key)
    if receipt.get("warnings_as_errors") is not True:
        raise ValueError("Terminal profile replay requires literal fatal warnings")
    controls = generated_partial_control_plan(sorted(owner_hashes), census, profile_sha)
    if expected_controls is not None and expected_controls != controls:
        raise ValueError("Terminal profile prepared control plan differs from canonical frozen generation")
    rows, commands = receipt.get("runtime_profile_negative_controls"), receipt.get("commands")
    if (type(rows) is not list or len(rows) != len(PROFILE_CONTROL_CASES) or
            any(type(row) is not dict for row in rows) or
            [row.get("case") for row in rows] != list(PROFILE_CONTROL_CASES)):
        raise ValueError("Terminal profile control cases are not the exact prepared six")
    if type(commands) is not list or any(type(command) is not dict for command in commands):
        raise ValueError("Terminal profile commands ledger is missing or malformed")
    labels = [command.get("label") for command in commands]
    if any(type(label) is not str for label in labels) or len(labels) != len(set(labels)):
        raise ValueError("Terminal profile commands ledger has missing or duplicate labels")
    expected_labels = {"profile-control-" + case + "-" + hop
                       for case in PROFILE_CONTROL_CASES for hop in ("source", "audit")}
    if {label for label in labels if label.startswith("profile-control-")} != expected_labels:
        raise ValueError("Terminal profile command labels are not the exact twelve native hops")
    by_label = {command["label"]:command for command in commands}
    seals = receipt.get("sealed_source_directory_records")
    if type(seals) is not dict or not seals:
        raise ValueError("Terminal profile controls require the sealed prepared source inventory")
    verify_sealed_source(frozen, seals)
    projection_keys = ("label", "status", "child_pid", "exit_code", "command_sha256",
                       "log", "log_sha256", "postcheck_passed")
    base_argv = [str(expected_lean), "--trust=0", f"--memory={expected_memory_mb}",
                 "--threads=1", "-DwarningAsError=true"]
    canonical_json = lambda value: json.dumps(value, sort_keys=True, separators=(",", ":"), allow_nan=False)
    validated = []
    for control, row in zip(controls, rows):
        case = control["case"]
        if (row.get("status") != "intended-native-rejection" or row.get("rejected") is not True or
                row.get("unsafe_control_accepted") is not False or "error" in row):
            raise ValueError("Terminal profile result is not an actual intended rejection: " + case)
        metadata = {"fixture_module":control["fixture_module"],
                    "fixture_source_sha256":digest(control["fixture_source"]),
                    "wrapper_source_sha256":digest(control["wrapper_source"]),
                    "expected_owners":control["expected_owners"]}
        expected_row_keys = {"case", "status", "rejected", "unsafe_control_accepted", "fixture_module",
            "fixture_source_sha256", "wrapper_source_sha256", "expected_owners", "fixture_artifact_families",
            "source_command", "audit_command", "verdict"}
        if set(row) != expected_row_keys or any(row.get(key) != value for key, value in metadata.items()):
            raise ValueError("Terminal profile case/source/owner binding drift: " + case)
        for relative, source in ((control["fixture_relative"], control["fixture_source"]),
                                 (control["wrapper_relative"], control["wrapper_source"])):
            prepared = stable_read(frozen / safe_relative(relative))
            if (prepared.data != source or prepared.identity[5] & 0o777 != 0o400 or
                    prepared.identity[6] != 1):
                raise ValueError("Terminal profile immutable source binding drift: " + relative)
        artifact = build / (control["fixture_module"].replace(".", "/") + ".olean")
        families = row.get("fixture_artifact_families")
        suffixes = {".olean", ".olean.private", ".olean.server", ".ir", ".ir.sig"}
        if type(families) is not dict or ".olean" not in families or not set(families) <= suffixes:
            raise ValueError("Terminal profile fixture lacks its exact fresh object family: " + case)
        available = {suffix for suffix in suffixes
                     if Path(str(artifact)[:-len(".olean")] + suffix).exists()
                     or Path(str(artifact)[:-len(".olean")] + suffix).is_symlink()}
        if set(families) != available:
            raise ValueError("Terminal profile fixture object-family membership drift: " + case)
        for suffix, record in families.items():
            if type(record) is not dict or set(record) != {"sha256", "bytes", "identity"}:
                raise ValueError("Terminal profile fixture object record is malformed: " + case)
            path = Path(str(artifact)[:-len(".olean")] + suffix)
            compiled = stable_read(path)
            if (type(record["bytes"]) is not int or record["bytes"] != len(compiled.data) or
                    type(record["sha256"]) is not str or record["sha256"] != digest(compiled.data) or
                    canonical_json(record["identity"]) != canonical_json(list(compiled.identity)) or
                    compiled.identity[5] & 0o777 != 0o400 or compiled.identity[6] != 1):
                raise ValueError("Terminal profile fixture object hash/identity drift: " + case)
        fresh_commands = {}
        for hop in ("source", "audit"):
            label = "profile-control-" + case + "-" + hop
            command = by_label[label]
            relative = control["fixture_relative"] if hop == "source" else control["wrapper_relative"]
            source = control["fixture_source"] if hop == "source" else control["wrapper_source"]
            argv = [*base_argv, "-o", str(artifact), relative] if hop == "source" else [*base_argv, relative]
            contract = {"argv":argv, "cwd":str(frozen), "source_sha256":{relative:digest(source)},
                        "LEAN_PATH":expected_lean_path, "timeout_seconds":expected_timeout}
            if (any(command.get(key) != value for key, value in contract.items()) or
                    type(command.get("timeout_seconds")) is not int or
                    command.get("command_sha256") != digest(canonical_json(contract).encode())):
                raise ValueError("Terminal profile exact command contract/hash drift: " + label)
            code = command.get("exit_code")
            if (command.get("status") != "completed" or type(code) is not int or
                    (code != 0 if hop == "source" else code <= 0) or
                    command.get("postcheck_passed") is not True or command.get("child_reaped") is not True or
                    type(command.get("child_exit_code")) is not int or command["child_exit_code"] != code or
                    type(command.get("child_pid")) is not int or command["child_pid"] <= 0 or
                    any(key in command for key in ("error", "cleanup_error", "cleanup_output_error"))):
                raise ValueError("Terminal profile command lacks actual integrity-checked completed lifecycle: " + label)
            log_relative = "logs/" + label + ".log"
            if command.get("log") != log_relative:
                raise ValueError("Terminal profile command/log label binding drift: " + label)
            log = stable_read(state / safe_relative(log_relative))
            text = log.data.decode("utf-8")
            diagnostics = diagnostic_records(text)
            if (command.get("log_sha256") != digest(log.data) or log.identity[6] != 1 or
                    canonical_json(command.get("diagnostics")) != canonical_json(diagnostics)):
                raise ValueError("Terminal profile command/log hash or diagnostic drift: " + label)
            if hop == "source" and (diagnostics or "sorryAx" in text):
                raise ValueError("Terminal profile fixture source is not a strict successful compile: " + label)
            projection = row.get(hop + "_command")
            expected_projection = {key:command[key] for key in projection_keys}
            if (type(projection) is not dict or set(projection) != set(projection_keys) or
                    canonical_json(projection) != canonical_json(expected_projection)):
                raise ValueError("Terminal profile result/commands-ledger binding drift: " + label)
            fresh_commands[hop] = {**command, "text":text}
        hashes = {**owner_hashes, control["fixture_module"]:digest(control["fixture_source"])}
        verdict = generated_partial_control_oracle(case, fresh_commands["audit"], control["wrapper_source"],
            control["wrapper_relative"], control["fixture_module"], control["expected_owners"], hashes, census)
        if type(row.get("verdict")) is not dict or canonical_json(row["verdict"]) != canonical_json(verdict):
            raise ValueError("Terminal profile stored verdict differs from the recomputed strict oracle: " + case)
        validated.append({"case":case, "fixture_source_sha256":metadata["fixture_source_sha256"],
            "wrapper_source_sha256":metadata["wrapper_source_sha256"],
            "source_command_sha256":fresh_commands["source"]["command_sha256"],
            "audit_command_sha256":fresh_commands["audit"]["command_sha256"],
            "source_log_sha256":fresh_commands["source"]["log_sha256"],
            "audit_log_sha256":fresh_commands["audit"]["log_sha256"],
            "verdict_sha256":digest(canonical_json(verdict).encode())})
    return {"status":"all-six-native-profile-controls-terminally-revalidated",
            "profile_sha256":profile_sha, "control_count":len(validated),
            "source_command_count":len(validated), "audit_command_count":len(validated),
            "strict_oracles_recomputed":True, "controls":validated}


def validate_terminal_custom_axiom_controls(receipt: dict, state: Path, *,
                                            expected_audit_module: str, expected_lean: Path,
                                            expected_memory_mb: int, expected_timeout: int,
                                            expected_lean_path: str) -> dict:
    """Revalidate the ten exact source-linked namespace rejection commands.

    Each canonical source declares the hostile axiom and runs the application
    audit in one compiler command. That completed positive-exit command is the
    rejection evidence; there is no separate successful fixture compilation.
    """
    state = safe_absolute(state)
    frozen = state / "source"
    expected_lean = safe_absolute(expected_lean)
    if (type(expected_audit_module) is not str or
            re.fullmatch(r"[A-Za-z_][A-Za-z0-9_]*(?:\.[A-Za-z_][A-Za-z0-9_]*)*", expected_audit_module) is None or
            type(expected_memory_mb) is not int or not 1024 <= expected_memory_mb <= 16384 or
            type(expected_timeout) is not int or not 1 <= expected_timeout <= 3600 or
            type(expected_lean_path) is not str):
        raise ValueError("Terminal custom-axiom control context is not the exact bounded replay context")
    for key, value in (("native_memory_limit_megabytes", expected_memory_mb),
                       ("native_jobs", 1), ("native_threads", 1), ("kernel_trust_level", 0),
                       ("command_timeout_seconds", expected_timeout)):
        if type(receipt.get(key)) is not int or receipt[key] != value:
            raise ValueError("Terminal custom-axiom replay envelope mismatch: " + key)
    if receipt.get("warnings_as_errors") is not True:
        raise ValueError("Terminal custom-axiom replay requires literal fatal warnings")
    cases = [(namespace, visibility) for namespace in NAMESPACES for visibility in ("public", "private")]
    rows, commands = receipt.get("custom_axiom_negative_controls"), receipt.get("commands")
    if (type(rows) is not list or len(rows) != len(cases) or any(type(row) is not dict for row in rows) or
            [(row.get("namespace"), row.get("visibility")) for row in rows] != cases):
        raise ValueError("Terminal custom-axiom cases are not the exact prepared ten")
    if type(commands) is not list or any(type(command) is not dict for command in commands):
        raise ValueError("Terminal custom-axiom commands ledger is missing or malformed")
    labels = [command.get("label") for command in commands]
    if any(type(label) is not str for label in labels) or len(labels) != len(set(labels)):
        raise ValueError("Terminal custom-axiom commands ledger has missing or duplicate labels")
    expected_labels = {"control_" + namespace + "_" + visibility for namespace, visibility in cases}
    if {label for label in labels if label.startswith("control_")} != expected_labels:
        raise ValueError("Terminal custom-axiom command labels are not the exact ten native hops")
    by_label = {command["label"]:command for command in commands}
    seals = receipt.get("sealed_source_directory_records")
    if type(seals) is not dict or not seals:
        raise ValueError("Terminal custom-axiom controls require the sealed prepared source inventory")
    verify_sealed_source(frozen, seals)
    canonical_json = lambda value: json.dumps(value, sort_keys=True, separators=(",", ":"), allow_nan=False)
    base_argv = [str(expected_lean), "--trust=0", f"--memory={expected_memory_mb}",
                 "--threads=1", "-DwarningAsError=true"]
    validated = []
    for (namespace, visibility), row in zip(cases, rows):
        relative = f"MoebiusControls/{namespace}_{visibility}.lean"
        modifier = "private " if visibility == "private" else ""
        source = (f"import {expected_audit_module}\nnamespace {namespace}\n{modifier}axiom hostileCustomAxiom : False\n"
                  f"end {namespace}\nrun_cmd P04Audit.check\n").encode()
        label = "control_" + namespace + "_" + visibility
        expected_keys = {"namespace", "visibility", "rejected", "exit_code", "source_sha256",
                         "oracle_reason", "command_sha256", "log", "log_sha256"}
        if set(row) != expected_keys or row.get("rejected") is not True:
            raise ValueError("Terminal custom-axiom row is not an exact intended rejection: " + label)
        prepared = stable_read(frozen / safe_relative(relative))
        if (prepared.data != source or prepared.identity[5] & 0o777 != 0o400 or prepared.identity[6] != 1):
            raise ValueError("Terminal custom-axiom immutable source binding drift: " + relative)
        command = by_label[label]
        contract = {"argv":[*base_argv, relative], "cwd":str(frozen), "source_sha256":{relative:digest(source)},
                    "LEAN_PATH":expected_lean_path, "timeout_seconds":expected_timeout}
        if (any(command.get(key) != value for key, value in contract.items()) or
                type(command.get("timeout_seconds")) is not int or
                command.get("command_sha256") != digest(canonical_json(contract).encode())):
            raise ValueError("Terminal custom-axiom exact command contract/hash drift: " + label)
        code = command.get("exit_code")
        if (command.get("status") != "completed" or type(code) is not int or code <= 0 or
                command.get("postcheck_passed") is not True or command.get("child_reaped") is not True or
                type(command.get("child_exit_code")) is not int or command["child_exit_code"] != code or
                type(command.get("child_pid")) is not int or command["child_pid"] <= 0 or
                any(key in command for key in ("error", "cleanup_error", "cleanup_output_error"))):
            raise ValueError("Terminal custom-axiom command lacks actual integrity-checked completed lifecycle: " + label)
        log_relative = "logs/" + label + ".log"
        if command.get("log") != log_relative:
            raise ValueError("Terminal custom-axiom command/log label binding drift: " + label)
        log = stable_read(state / safe_relative(log_relative))
        text = log.data.decode("utf-8")
        diagnostics = diagnostic_records(text)
        if (command.get("log_sha256") != digest(log.data) or log.identity[6] != 1 or
                canonical_json(command.get("diagnostics")) != canonical_json(diagnostics)):
            raise ValueError("Terminal custom-axiom command/log hash or diagnostic drift: " + label)
        exact, reason = strict_custom_axiom_diagnostic(text, relative, namespace)
        if not exact:
            raise ValueError("Terminal custom-axiom strict oracle rejected the log: " + label + ": " + reason)
        axiom_name = namespace + ".hostileCustomAxiom"
        if visibility == "private":
            axiom_name = "_private.MoebiusControls." + namespace + "_private.0." + axiom_name
        if diagnostics[0]["message"] != "Unapproved axiom " + axiom_name + " in " + axiom_name:
            raise ValueError("Terminal custom-axiom exact visibility/module/name binding drift: " + label)
        expected_row = {"namespace":namespace, "visibility":visibility, "rejected":True, "exit_code":code,
                        "source_sha256":digest(source), "oracle_reason":reason,
                        "command_sha256":command["command_sha256"], "log":log_relative,
                        "log_sha256":command["log_sha256"]}
        if canonical_json(row) != canonical_json(expected_row):
            raise ValueError("Terminal custom-axiom row/command/source/log/oracle binding drift: " + label)
        validated.append({"namespace":namespace, "visibility":visibility, "source_sha256":digest(source),
                          "command_sha256":command["command_sha256"], "log_sha256":command["log_sha256"],
                          "oracle_reason":reason})
    return {"status":"all-ten-native-custom-axiom-controls-terminally-revalidated",
            "control_count":len(validated), "audit_command_count":len(validated),
            "strict_oracles_recomputed":True, "controls":validated}


def record_failure(receipt: dict, stage: str, error: str, **details) -> None:
    """Keep the first cause primary; later incomplete gates remain evidence."""
    failure = {"stage":stage, "error":error, **details}
    receipt.setdefault("failures", []).append(failure)
    if "primary_failure" not in receipt:
        receipt["primary_failure"] = failure
        receipt["error"] = error
    receipt["kernel_checked"] = False


DEFAULT_CURRENT_MANIFEST = ".noeaaeue/bindings/moebius-current-inputs-v5.json"

def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, default=Path(__file__).absolute().parents[2])
    parser.add_argument("--manifest", type=Path, help="Default: ROOT/" + DEFAULT_CURRENT_MANIFEST + " (current observation, not proof acceptance)")
    parser.add_argument("--lean", type=Path, default=Path(shutil.which("lean") or "lean"))
    parser.add_argument("--packages", type=Path, help="Default: ROOT/.lake/packages")
    parser.add_argument("--jobs", type=int, default=1, help="Scoped native replay currently requires one process")
    parser.add_argument("--timeout", type=int, default=600, help="Per-command timeout in seconds, at most3600")
    parser.add_argument("--memory-mb", type=int, default=4096,
                        help="Per-native-command memory limit in MiB,1024..16384; default4096")
    parser.add_argument("--validate-only", action="store_true", help="No Lean source replay or kernel acceptance claim")
    parser.add_argument("--native-lease", type=Path, action="append", default=[],
                        help="Additional existing shared native replay lock; no directory is created there")
    parser.add_argument("--wait-for-native-slot", action="store_true",
                        help="While holding native leases, wait on BUSY and recheck frozen inputs before each native hop")
    args = parser.parse_args()
    root = safe_absolute(args.root)
    manifest_path = safe_absolute(args.manifest or root / DEFAULT_CURRENT_MANIFEST)
    packages = safe_absolute(args.packages or root / ".lake/packages")
    if args.jobs != 1 or not 1 <= args.timeout <= 3600:
        parser.error("Use --jobs1 and a bounded --timeout of1..3600 seconds")
    if not 1024 <= args.memory_mb <= 16384:
        parser.error("Use a bounded --memory-mb of1024..16384 MiB")
    state, receipt, runner, lease_context, lease_held = None, None, None, None, False
    try:
        descriptor = directory_descriptor(root)
        os.close(descriptor)
        manifest_read = stable_read(manifest_path)
        checker_read = stable_read(Path(__file__).absolute())
        ignore_read = read_regular(root,".gitignore")
        if not {"/.noeaaeue/.local/", ".noeaaeue/.local/", "/.local", ".local"}.intersection(ignore_read.data.decode().splitlines()):
            raise ValueError("Repository .gitignore must explicitly ignore .local")
        stamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
        state = root / ".noeaaeue/.local/checks" / ("moebius-response-" + stamp + "-" + uuid.uuid4().hex[:12])
        make_directory(state, exclusive=True)
        frozen, build = state / "source", state / "build"
        for directory in (frozen, build, state / "logs"):
            make_directory(directory, exclusive=True)
        receipt = {"status":"initializing", "kernel_checked":False, "root":str(root),
                   "manifest":str(manifest_path), "manifest_sha256":digest(manifest_read.data),
                   "checker":str(checker_read.path), "checker_sha256":digest(checker_read.data),
                   "source_records":{}, "snapshot_records":[], "checked_modules":[],
                   "custom_axiom_negative_controls":[], "commands":[],
                   "native_jobs":1, "command_timeout_seconds":args.timeout,
                   "kernel_trust_level":0, "warnings_as_errors":True,
                   "native_memory_limit_megabytes":args.memory_mb, "native_threads":1,
                   "native_busy_policy":"wait-with-frozen-input-guards" if args.wait_for_native_slot else "fail-closed",
                   "native_busy_wait_seconds":30 if args.wait_for_native_slot else 0,
                   "fresh_project_build":True, "immutable_project_source_copies":True,
                   "snapshot_mode":"0400 exclusive regular files; no-follow logical paths",
                   "scope":"Manifested project replay only. No open arithmetic obligation is supplied.",
                   "dependency_provenance_scope":"Declared package anchors and direct cached dependency objects are identified. No transitive artifact census, dependency checkout pin/cleanliness claim, source replay, or object-to-source provenance is asserted by this driver."}
        atomic_json(state / "receipt.json", receipt)
        manifest = json.loads(manifest_read.data)
        if manifest.get("schema_version") != 1:
            raise ValueError("Expected manifest schema_version1")
        records = manifest.get("modules")
        if not isinstance(records, dict) or not records:
            raise ValueError("Manifest modules must be a nonempty module-to-record map")
        frozen_inputs, frozen_by_logical = [], {}
        generated, runtime_reads, compiled_reads = [], [], []
        dependency_roots, dependency_record = [], None
        sealed_directories={}
        def freeze(read: StableRead, logical: str) -> FrozenInput:
            if logical in frozen_by_logical:
                result = frozen_by_logical[logical]
                if result.original.path != read.path or result.original.data != read.data:
                    raise ValueError(f"Frozen logical path collision: {logical}")
                return result
            result = freeze_input(read,frozen,logical)
            frozen_by_logical[logical] = result
            frozen_inputs.append(result)
            receipt["snapshot_records"].append({"logical_path":logical,
                "sha256":digest(read.data),"original_path":str(read.path),
                "original_identity":list(read.identity),"snapshot_identity":list(result.snapshot.identity),
                "snapshot_relative_path":"source/"+str(result.snapshot.path.relative_to(frozen))})
            return result
        freeze(manifest_read,"VerificationInputs/manifest.json")
        freeze(checker_read,"VerificationInputs/check_moebius_response.py")
        freeze(ignore_read,".gitignore")
        assets = manifest.get("assets",{})
        if not isinstance(assets,dict):
            raise ValueError("Assets must map relative file paths to SHA-256 strings")
        asset_keys = required_asset_keys(assets)
        asset_paths = {}
        for relative, expected in assets.items():
            read=read_regular(root,relative)
            if read.path.suffix.lower() in FORBIDDEN_ASSETS or read.path.suffix==".lean":
                raise ValueError(f"Invalid non-source manifest asset: {relative}")
            if digest(read.data)!=expected:
                raise ValueError(f"Manifest asset hash mismatch: {relative}")
            asset_paths[read.path]=expected
            freeze(read,relative)
        # The relocation adapter is an operational checker input, like this
        # driver itself. Bind its exact bytes without rewriting historical
        # manifest keys or hashes. Frozen policy subprocesses import this copy.
        adapter_keys = [name for name in assets
            if relocated_name(name) == ".noeaaeue/scripts/repository_paths.py"]
        if len(adapter_keys) > 1:
            raise ValueError("Manifest binds ambiguous physical path adapters")
        adapter_logical = adapter_keys[0] if adapter_keys else "scripts/repository_paths.py"
        runtime_adapter = stable_read(Path(__file__).absolute().with_name("repository_paths.py"))
        adapter_read = read_regular(root, adapter_logical) if adapter_keys else runtime_adapter
        if adapter_read.data != runtime_adapter.data:
            raise ValueError("Manifest path adapter differs from the invoked checker's adapter")
        runtime_reads.append(runtime_adapter)
        adapter = freeze(adapter_read, adapter_logical)
        receipt["relocation_path_adapter"] = {
            "logical_path": adapter_logical,
            "sha256": digest(adapter.original.data),
            "snapshot_relative_path": "source/" + str(adapter.snapshot.path.relative_to(frozen)),
            "scope": "Physical process locations only; preserved manifest and receipt identities remain exact."}
        def load_bound_helper(relative):
            bound=frozen_by_logical[asset_keys.get(relative, relative)]
            namespace={"__name__":"moebius_frozen_"+Path(relative).stem,
                       "__file__":str(bound.snapshot.path)}
            exec(compile(bound.original.data,str(bound.snapshot.path),"exec"),namespace)
            return namespace
        owner_contract=manifest.get("owner_census")
        if (not isinstance(owner_contract,dict) or owner_contract.get("helper_module")!="MoebiusResponseOwnerAudit" or
                owner_contract.get("parser_asset")!=asset_keys["scripts/moebius_owner_census.py"] or
                type(owner_contract.get("runtime_exceptions_allowed")) is not bool):
            raise ValueError("Declare the exact operational owner_census contract and an explicit Boolean runtime policy")
        helper_record=owner_contract.get("helper")
        if (not isinstance(helper_record,dict) or relocated_name(helper_record.get("path", "")) not in {"GRWTSK/NumberTheory/Moebius/Checks/OwnerAudit.lean", ".noeaaeue/checks/MoebiusResponseOwnerAudit.lean", ".noeaaeue/checks/MoebiusResponseOwnerAuditCurrent.lean"} or
                helper_record.get("imports")!=["Lean"]):
            raise ValueError("Pin the operational owner-census observer source separately from mathematical modules/assets")
        helper_read=read_regular(root,helper_record["path"])
        if digest(helper_read.data)!=helper_record.get("sha256") or imports(helper_read.data.decode())!=["Lean"]:
            raise ValueError("Operational owner-census observer source/import pin mismatch")
        freeze(helper_read,helper_record["path"])
        receipt["operational_owner_census_contract"]=owner_contract
        # The current policy can use a separate exact source-observation
        # helper/readset. Bind those operational bytes before any frozen import.
        policy_read=frozen_by_logical[asset_keys["scripts/check_math_layout.py"]].original
        support_records=[]
        if b"import source_observations" in policy_read.data:
            for support in (".noeaaeue/scripts/source_observations.py",
                            ".noeaaeue/bindings/current-source-observations.json"):
                support_read=read_regular(root,support)
                freeze(support_read,support)
                support_records.append({"path":support,"sha256":digest(support_read.data)})
        receipt["current_source_observation_inputs"]=support_records
        inputs=load_bound_helper("scripts/moebius_response_inputs.py")
        census=load_bound_helper("scripts/moebius_owner_census.py")
        if relocated_name(helper_record["path"])!=census["HELPER_RELATIVE"]:
            raise ValueError("Owner-census observer path differs from its source-bound current profile")
        profile_relative=census["CURRENT_PROFILE_RELATIVE"]
        profile_read=read_regular(root,profile_relative)
        if digest(profile_read.data)!=census["CURRENT_PROFILE_METADATA_SHA256"]:
            raise ValueError("Current owner-census profile metadata byte pin changed")
        profile_metadata=json.loads(profile_read.data)
        if (profile_metadata.get("entries")!=list(census["GENERATED_PARTIAL_PROFILE"]) or
                profile_metadata.get("profile_sha256")!=census["GENERATED_PARTIAL_PROFILE_SHA256"]):
            raise ValueError("Current owner-census profile differs from its exact reviewed whitelist")
        freeze(profile_read,profile_relative)
        receipt["current_runtime_profile_binding"]={"path":profile_relative,
            "sha256":digest(profile_read.data),"profile_sha256":profile_metadata["profile_sha256"],
            "scope":"Current source observation/permission; fresh native qualification is required separately."}
        bytes_reader=lambda directory,relative: read_regular(directory,relative).data
        policy,policy_bytes=inputs["policy_module"](frozen,bytes_reader)
        subjects,forbidden=policy["SUBJECT_ROOTS"],policy["LEGACY_SEGMENTS"]
        receipt["shared_layout_policy_sha256"]=digest(policy_bytes)
        nodes = {}
        for module, record in records.items():
            if not MODULE_PATTERN.fullmatch(module) or not isinstance(record,dict):
                raise ValueError(f"Invalid mathematical source module: {module}")
            parts = module.split(".")
            if module != "GRWTSK" and (len(parts)<3 or parts[1] not in subjects or forbidden.intersection(parts)):
                raise ValueError(f"Expected a mathematical subject/object module: {module}")
            relative = module.replace(".","/")+".lean"
            if record.get("path") != relative:
                raise ValueError(f"Source path must identify its actual module: {module}")
            read = read_regular(root,relative)
            source_hash = digest(read.data)
            if record.get("sha256") != source_hash:
                raise ValueError(f"Manifest source hash mismatch: {module}")
            actual_imports = imports(read.data.decode("utf-8"))
            declared = record.get("imports")
            if not isinstance(declared,list) or any(not isinstance(i,str) for i in declared):
                raise ValueError(f"Exact direct import inventory required: {module}")
            if sorted(set(declared)) != actual_imports or len(declared)!=len(set(declared)):
                raise ValueError(f"Added, missing or duplicated manifest import: {module}")
            dependencies = {i for i in actual_imports if i == "GRWTSK" or i.startswith("GRWTSK.")}
            if dependencies - set(records):
                raise ValueError(f"Unmanifested project imports in {module}: {sorted(dependencies-set(records))}")
            nodes[module] = Node(relative,read,source_hash,actual_imports,dependencies,freeze(read,relative))
        runtime_allowed,runtime_owner_hash,runtime_policy=resolve_runtime_policy(owner_contract,census,nodes)
        generated_profile_sha=(runtime_policy["profile_sha256"] if runtime_policy and
            runtime_policy.get("kind")=="pinned-lean-generated-partial-recursor-profile" else "")
        legacy_runtime_allowed=runtime_allowed and not generated_profile_sha
        receipt["resolved_native_runtime_exception_policy"]=runtime_policy
        audit, aggregator = manifest.get("audit_module"),manifest.get("aggregator_module")
        if audit not in nodes or aggregator not in nodes or audit==aggregator:
            raise ValueError("Declare distinct manifested audit_module and aggregator_module")
        reachable, stack = set(),[audit]
        while stack:
            name=stack.pop()
            if name not in reachable:
                reachable.add(name)
                stack.extend(nodes[name].dependencies)
        if set(nodes)-reachable-{aggregator}:
            raise ValueError(f"Sources unreachable from application kernel audit: {sorted(set(nodes)-reachable-{aggregator})}")
        if nodes[aggregator].dependencies!={audit}:
            raise ValueError("Aggregator must import exactly the manifested application kernel audit")
        source_dirs={node.read.path.parent for node in nodes.values()}
        umbrella_root=root if "GRWTSK" in nodes else None
        actual_assets=source_assets(source_dirs,umbrella_root=umbrella_root)
        intrinsic_assets={manifest_read.path,ignore_read.path}
        receipt["source_adjacent_asset_policy"]={
            "subject_directories":"Recursive non-Lean files, excluding repository/.noeaaeue/cache/state directories as before.",
            "umbrella_module":"GRWTSK" if umbrella_root else None,
            "umbrella_scope":"Immediate non-Lean regular root files only; subdirectories retain their source/input/.noeaaeue/evidence/cache roles.",
            "intrinsic_frozen_inputs":[{"role":"manifest","sha256":digest(manifest_read.data)},
                                       {"role":"gitignore","sha256":digest(ignore_read.data)}],
            "complete_layout_gate_required":True}
        if actual_assets-set(asset_paths)-intrinsic_assets:
            raise ValueError("Unmanifested assets beside mathematical sources: "+
                             ", ".join(str(p.relative_to(root)) for p in sorted(actual_assets-set(asset_paths)-intrinsic_assets)))
        reject_document_assets(root)
        directory=directory_descriptor(packages)
        os.close(directory)
        lean=args.lean.absolute()
        # The elan shim may install. Identify it without executing it; only an
        # already-installed compiler is admitted as the actual native input.
        elan_binary=lean.parent/"elan"
        shim=lean.is_file() and (lean.resolve().name=="elan" or
             (elan_binary.is_file() and digest(lean.read_bytes())==digest(elan_binary.read_bytes())))
        if shim:
            toolchain_read=read_regular(root,"lean-toolchain")
            freeze(toolchain_read,"lean-toolchain")
            toolchain=toolchain_read.data.decode().strip()
            elan_home=Path(os.environ.get("ELAN_HOME",str(Path.home()/".elan")))
            lean=elan_home/"toolchains"/toolchain.replace("/","--").replace(":","---")/"bin/lean"
        lean=safe_absolute(lean)
        lean_read=stable_read(lean)
        if not os.access(lean,os.X_OK):
            raise ValueError("Supply an installed executable --lean; no toolchain installation is attempted")
        if manifest.get("lean_sha256") and manifest["lean_sha256"]!=digest(lean_read.data):
            raise ValueError("Pinned Lean executable hash mismatch")
        runtime_reads.append(lean_read)
        roots=[]
        for package in sorted(packages.iterdir()):
            candidate=package/".lake/build/lib/lean"
            if candidate.is_dir():
                descriptor=directory_descriptor(candidate)
                os.close(descriptor)
                roots.append(candidate)
        anchors=manifest.get("package_anchors")
        if not isinstance(anchors,list) or not anchors:
            raise ValueError("Pinned package_anchors are required")
        anchor_paths={}
        for anchor in anchors:
            read=read_regular(packages,anchor["path"])
            if digest(read.data)!=anchor["sha256"]:
                raise ValueError(f"Pinned package anchor mismatch: {anchor['path']}")
            anchor_paths[read.path]=anchor["sha256"]
            runtime_reads.append(read)
        mathlib={p/"Mathlib.olean" for p in roots if (p/"Mathlib.olean").is_file()}
        if not mathlib.intersection(anchor_paths):
            raise ValueError("Pin the actual cached Mathlib.olean anchor")
        environment=dict(os.environ)
        environment.pop("LEAN_SRC_PATH",None)
        environment["LEAN_PATH"]=os.pathsep.join(map(str,[build,*roots]))
        def guard():
            if sealed_directories:
                verify_sealed_source(frozen,sealed_directories)
            for record in frozen_inputs:
                verify_input(record)
            for read in [*runtime_reads,*generated,*compiled_reads]:
                verify_stable(read)
            if dependency_record is not None:
                inputs["verify_dependency_snapshot"](dependency_roots,dependency_record,bytes_reader,check_bytes=False)
            if source_assets(source_dirs,umbrella_root=umbrella_root)!=actual_assets:
                raise ValueError("Source-adjacent asset membership changed during replay")
            reject_document_assets(root)
        runner=CommandRunner(state,frozen,receipt,guard,environment,args.timeout)
        receipt.update(source_records=records,asset_records=assets,package_anchors=anchors,
                       audit_module=audit,aggregator_module=aggregator,
                       lean_executable=str(lean),lean_sha256=digest(lean_read.data),packages=str(packages),
                       import_search_roots=[str(build),*map(str,roots)])
        runner.save()
        # Route all helper subprocesses through the same durable command runner.
        # This includes source/Git policy checks and dependency metadata commands.
        helper_command_count=0
        class LoggedSubprocess:
            @staticmethod
            def run(argv, cwd=None, capture_output=False, text=False, timeout=None, env=None, **kwargs):
                nonlocal helper_command_count
                if kwargs or not capture_output or not text:
                    raise ValueError("Unsupported helper subprocess contract")
                helper_command_count+=1
                actual_argv=list(map(str,argv))
                if actual_argv and actual_argv[0]==str(lean):
                    # freeze_dependencies also queries the native prefix.
                    # Route that helper hop through the same scheduling gate.
                    invoke=native_run
                elif actual_argv and Path(actual_argv[0]).name.casefold() in {"lean","lake"}:
                    raise ValueError("Input helper requested an unpinned native executable")
                else:
                    invoke=runner.run
                entry=invoke("input-command-"+str(helper_command_count),actual_argv,{},
                             timeout=timeout or 60,cwd=cwd,environment=env)
                if entry["status"]!="completed":
                    raise ValueError("Input helper command did not complete: "+entry["status"])
                return subprocess.CompletedProcess(argv,entry["exit_code"],entry["stdout"],entry["stderr"])
        inputs["subprocess"]=LoggedSubprocess
        def inspect_native_slot(inspection):
            if not lease_held:
                raise ValueError("Native scheduling inspection requires the held replay leases")
            while True:
                try:
                    inspection["competing_jobs"]=inputs["competing_native_jobs"]()
                    inspection["status"]="clear"
                    break
                except (OSError,ValueError,subprocess.SubprocessError) as error:
                    # A late external job is a scheduling obstacle, not a
                    # permission to launch concurrently or accept partial work.
                    # Opt-in waits retain both leases and all frozen evidence.
                    # Inspection failures and all integrity errors still fail.
                    if (args.wait_for_native_slot and isinstance(error,ValueError)
                            and str(error).startswith("BUSY:")):
                        inspection.update(status="waiting",last_busy_error=str(error),
                                          wait_count=inspection.get("wait_count",0)+1)
                        runner.save()
                        guard()
                        time.sleep(30)
                        guard()
                        continue
                    inspection.update(status="blocked",error=str(error))
                    runner.save()
                    raise
            runner.save()
        def native_run(label,argv,bindings,**options):
            # Process inspection is intentionally outside the generic integrity
            # guard: the inspector itself uses LoggedSubprocess/runner.run.
            # Recheck immediately before every real compiler invocation, after
            # long dependency snapshots as well as before identity commands.
            inspection={"native_command":label,"status":"inspecting"}
            receipt.setdefault("native_schedule_checks",[]).append(inspection)
            runner.save()
            inspect_native_slot(inspection)
            return runner.run(label,argv,bindings,**options)
        # Input validation still asks the actual compiler for its identity and
        # prefix. Those native identity calls require the same leases as source
        # replay; --validate-only never bypasses the native scheduler.
        own_lock=root/".noeaaeue/.local/math-trust/replay.lock"
        make_directory(own_lock.parent)
        if not own_lock.exists():
            write_exclusive(own_lock,b"")
        else:
            stable_read(own_lock)
        locks=sorted({safe_absolute(own_lock),*(safe_absolute(p) for p in args.native_lease)})
        lease_context=inputs["native_lease"](locks)
        lease_context.__enter__()
        lease_held=True
        receipt["shared_native_locks"]=[str(p) for p in locks]
        runner.save()
        if args.wait_for_native_slot:
            initial_inspection={"native_command":"initial-readiness","status":"inspecting"}
            receipt.setdefault("native_schedule_checks",[]).append(initial_inspection)
            runner.save()
            inspect_native_slot(initial_inspection)
            receipt["competing_native_jobs"]=initial_inspection["competing_jobs"]
        else:
            receipt["competing_native_jobs"]=inputs["competing_native_jobs"]()
        runner.save()
        receipt["shared_math_layout_gate"]=inputs["require_layout"](root,frozen,bytes_reader)
        runner.save()
        pins,checkout_states,lock_hash=inputs["package_pins"](root,packages,bytes_reader)
        if manifest.get("dependency_revisions") != pins or manifest.get("dependency_lock_sha256") != lock_hash:
            raise ValueError("Manifest dependency revisions/lock hash differ from the actual pinned inputs")
        receipt.update(dependency_source_revisions=pins,dependency_checkout_states=checkout_states,
                       lake_lock_sha256=lock_hash)
        roots=[p for p in roots if p.relative_to(packages).parts[0] in pins]
        environment["LEAN_PATH"]=os.pathsep.join(map(str,[build,*roots]))
        receipt["import_search_roots"]=[str(build),*map(str,roots)]
        runner.save()
        version_entry=native_run("compiler-version",[str(lean),"--version"],{},timeout=30)
        if version_entry["status"]!="completed" or version_entry["exit_code"]!=0 or version_entry["diagnostics"]:
            raise ValueError("Installed compiler identity command failed")
        version=version_entry["text"].strip()
        if not isinstance(manifest.get("lean_version"),str) or manifest["lean_version"]!=version:
            raise ValueError(f"Pinned Lean version mismatch: {version!r}")
        receipt["lean_version"]=version
        prefix_entry=native_run("compiler-prefix",[str(lean),"--print-prefix"],{},timeout=30)
        if prefix_entry["status"]!="completed" or prefix_entry["exit_code"]!=0 or prefix_entry["diagnostics"]:
            raise ValueError("Installed compiler prefix command failed")
        prefix=Path(prefix_entry["text"].strip())
        directory=directory_descriptor(prefix/"lib/lean")
        os.close(directory)
        package_imports={}
        for name in sorted({i for n in nodes.values() for i in n.imports}-set(nodes)):
            candidates=[p/(name.replace(".","/")+".olean") for p in [*roots,prefix/"lib/lean"]]
            found=next((p for p in candidates if p.is_file()),None)
            if found is None:
                raise ValueError(f"Unresolved cached dependency: {name}")
            read=stable_read(found)
            package_imports[read.path]=digest(read.data)
            runtime_reads.append(read)
        receipt["direct_cached_dependencies"]=[{"path":str(p),"sha256":h} for p,h in sorted(package_imports.items())]
        runner.save()
        guard()
        if args.validate_only:
            receipt.update(status="inputs-validated",kernel_checked=False)
            runner.save()
            print(f"Inputs and immutable snapshots validated; no kernel claim. Receipt: {state/'receipt.json'}",flush=True)
            return 0
        # No source directory may remain writable during a Lean source command.
        # Prepare every operational/control source before the one-time seal.
        helper_data=census["helper_source"]()
        if helper_data!=frozen_by_logical[helper_record["path"]].original.data:
            raise ValueError("Owner audit helper differs from the frozen manifest pin")
        helper_relative="MoebiusResponseOwnerAudit.lean"
        owner_relative="MoebiusResponseOwnerCensus.lean"
        owner_hashes={name:node.source_hash for name,node in nodes.items()}
        owner_options=({"generated_partial_profile_sha256":generated_profile_sha} if generated_profile_sha else
                       {"runtime_owner_source_hash":runtime_owner_hash})
        owner_source=census["generate_audit_source"](sorted(nodes),**owner_options).encode()
        control_sources={}
        for relative,data in ((helper_relative,helper_data),(owner_relative,owner_source)):
            write_exclusive(frozen/relative,data,readonly=True)
            generated.append(stable_read(frozen/relative))
        for namespace in NAMESPACES:
            for visibility in ("public","private"):
                relative=f"MoebiusControls/{namespace}_{visibility}.lean"
                modifier="private " if visibility=="private" else ""
                data=(f"import {audit}\nnamespace {namespace}\n{modifier}axiom hostileCustomAxiom : False\n"
                      f"end {namespace}\nrun_cmd P04Audit.check\n").encode()
                write_exclusive(frozen/relative,data,readonly=True)
                generated.append(stable_read(frozen/relative))
                control_sources[namespace,visibility]=(relative,data)
        profile_controls=(generated_partial_control_plan(sorted(nodes),census,generated_profile_sha)
                          if generated_profile_sha else [])
        receipt["runtime_profile_negative_controls"]=[]
        for control in profile_controls:
            for relative,data in ((control["fixture_relative"],control["fixture_source"]),
                                  (control["wrapper_relative"],control["wrapper_source"])):
                write_exclusive(frozen/relative,data,readonly=True)
                generated.append(stable_read(frozen/relative))
            receipt["runtime_profile_negative_controls"].append({"case":control["case"],"status":"prepared",
                "fixture_module":control["fixture_module"],"fixture_source_sha256":digest(control["fixture_source"]),
                "wrapper_source_sha256":digest(control["wrapper_source"]),"expected_owners":control["expected_owners"],
                "rejected":False,"unsafe_control_accepted":False})
        sealed_directories=seal_frozen_source(frozen)
        receipt["sealed_source_directory_records"]=sealed_directories
        receipt.update(status="freezing-dependency-objects",kernel_checked=False)
        runner.save()
        def snapshot_progress(update):
            receipt["dependency_snapshot_progress"]=update
            runner.save()
        dependency_roots,dependency_record=inputs["freeze_dependencies"](
            root,packages,lean,state,bytes_reader,progress=snapshot_progress)
        inputs["verify_dependency_snapshot"](dependency_roots,dependency_record,bytes_reader,check_bytes=True)
        environment["LEAN_PATH"]=os.pathsep.join(map(str,[build,*dependency_roots]))
        receipt.update(dependency_snapshot=dependency_record,
                       dependency_provenance_scope=dependency_record["scope"],
                       import_search_roots=[str(build),*map(str,dependency_roots)],
                       dependency_guard_cadence="Object membership/identity before and after every command; all object hashes before source elaboration and at final return.")
        runner.save()
        guard()
        started, completed, pending, failed=time.monotonic(),set(),set(nodes),False
        def native_argv(relative: str, artifact: Path | None = None) -> list[str]:
            if not sealed_directories:
                raise ValueError("Refusing Lean source elaboration without a sealed source tree")
            argv=[str(lean),"--trust=0",f"--memory={args.memory_mb}","--threads=1","-DwarningAsError=true"]
            if artifact is not None:
                make_directory(artifact.parent)
                if artifact.exists() or artifact.is_symlink():
                    raise ValueError(f"Refusing preexisting native output: {artifact}")
                argv.extend(["-o",str(artifact)])
            return [*argv,relative]
        # Fail early on the controlled observer's syntax/API before spending
        # time elaborating the mathematical owner graph.
        helper_artifact=build/"MoebiusResponseOwnerAudit.olean"
        helper_command=native_run("owner-census-helper",native_argv(helper_relative,helper_artifact),
                                  {helper_relative:digest(helper_data)})
        if helper_command["status"]!="completed" or helper_command["exit_code"]!=0 or helper_command["diagnostics"]:
            raise ValueError("Owner census helper failed its fresh trust-zero compilation")
        helper_families=freeze_native_artifacts(helper_artifact,compiled_reads)
        while pending:
            ready=sorted(name for name in pending if nodes[name].dependencies<=completed)
            if not ready:
                raise ValueError("Dependency cycle or failed prerequisite: "+", ".join(sorted(pending)))
            name=ready[0]
            node=nodes[name]
            artifact=build/(name.replace(".","/")+".olean")
            command=native_run(name,native_argv(node.relative,artifact),{node.relative:node.source_hash})
            passed=command["status"]=="completed" and command["exit_code"]==0 and not command["diagnostics"] and "sorryAx" not in command["text"]
            artifact_hash=None
            artifact_families={}
            if passed:
                artifact_families=freeze_native_artifacts(artifact,compiled_reads)
                artifact_hash=artifact_families[".olean"]["sha256"]
            result={"module":name,"dependencies":sorted(node.dependencies),"source_sha256":node.source_hash,
                    "compiled_snapshot_path":node.relative,"source_unchanged":command.get("postcheck_passed",False),
                    "exit_code":command["exit_code"],"passed":passed,"command_sha256":command["command_sha256"],
                    "log":"logs/"+name+".log","log_sha256":command["log_sha256"],"artifact_sha256":artifact_hash,
                    "artifact_families":artifact_families}
            receipt["checked_modules"].append(result)
            runner.save()
            print(f"{name}: {'kernel-checked' if passed else 'FAILED'}",flush=True)
            pending.remove(name)
            if not passed:
                failed=True
                record_failure(receipt,"source-replay",
                    f"Source replay failed: {name} (status={command['status']}, exit_code={command['exit_code']})",
                    module=name,source_sha256=node.source_hash,command_status=command["status"],
                    exit_code=command["exit_code"],command_sha256=command["command_sha256"],
                    log=result["log"],log_sha256=command["log_sha256"],
                    diagnostics=command["diagnostics"],postcheck_passed=command.get("postcheck_passed",False))
                runner.save()
                break
            completed.add(name)
        if not failed:
            owner_command=native_run("complete-owner-census",native_argv(owner_relative),
                                     {owner_relative:digest(owner_source)})
            if owner_command["status"]!="completed" or owner_command["diagnostics"]:
                raise ValueError("Complete owner census did not produce a clean successful diagnostic")
            verdict_options=({"allow_generated_partial_profile":True,
                              "generated_partial_profile_sha256":generated_profile_sha} if generated_profile_sha else
                             {"allow_pinned_runtime":legacy_runtime_allowed})
            verdict=census["validate_owner_census"](owner_command["text"],sorted(nodes),owner_hashes,
                                                   returncode=owner_command["exit_code"],**verdict_options)
            receipt["complete_owner_census"]={"verdict":verdict,"helper_sha256":digest(helper_data),
                "generated_source_sha256":digest(owner_source),"helper_artifact_families":helper_families,
                "parser_sha256":digest(frozen_by_logical[asset_keys["scripts/moebius_owner_census.py"]].original.data),
                "command_sha256":owner_command["command_sha256"],"runtime_exceptions_allowed":runtime_allowed,
                "runtime_exception_policy":runtime_policy,
                "scope":("Every declared fresh project owner, including private/generated declarations and zero-declaration modules; standard transitive axioms only. Custom axioms and unsafe declarations remain rejected. Partial declarations are rejected except the exact five source-bound generated helpers paired to same-owner, same-type safe originals; theorem references in types or values to those helpers remain rejected. Six fresh native profile rejection controls are mandatory before acceptance." if generated_profile_sha else
                    "Every declared fresh project owner, including private/generated declarations and zero-declaration modules; standard transitive axioms only. Owned partial/custom-axiom declarations remain rejected. Owned unsafe declarations remain rejected except the explicitly pinned native generated runtime helper when enabled. Direct theorem references to that helper remain rejected; no arbitrary transitive unsafe-reference graph is asserted.")}
            runner.save()
        if not failed and generated_profile_sha:
            for control,result in zip(profile_controls,receipt["runtime_profile_negative_controls"]):
                case=control["case"]; relative=control["fixture_relative"]; data=control["fixture_source"]
                artifact=build/(control["fixture_module"].replace(".","/")+".olean")
                source_command=native_run("profile-control-"+case+"-source",native_argv(relative,artifact),{relative:digest(data)})
                result["source_command"]={k:source_command[k] for k in ("label","status","child_pid","exit_code","command_sha256","log","log_sha256","postcheck_passed") if k in source_command}
                if source_command["status"]!="completed" or source_command["exit_code"]!=0 or source_command["diagnostics"] or not source_command.get("postcheck_passed"):
                    result.update(status="failed",error="Hostile fixture source failed strict compilation",rejected=False)
                    record_failure(receipt,"profile-fixture-source",result["error"],case=case,
                        command_status=source_command["status"],exit_code=source_command["exit_code"],
                        command_sha256=source_command["command_sha256"],log=source_command["log"],
                        log_sha256=source_command["log_sha256"])
                    runner.save(); failed=True; break
                result["fixture_artifact_families"]=freeze_native_artifacts(artifact,compiled_reads)
                relative=control["wrapper_relative"]; data=control["wrapper_source"]
                command=native_run("profile-control-"+case+"-audit",native_argv(relative),{relative:digest(data)})
                result["audit_command"]={k:command[k] for k in ("label","status","child_pid","exit_code","command_sha256","log","log_sha256","postcheck_passed") if k in command}
                hashes={**owner_hashes,control["fixture_module"]:digest(control["fixture_source"])}
                try:
                    oracle=generated_partial_control_oracle(case,command,data,relative,control["fixture_module"],control["expected_owners"],hashes,census)
                    result.update(status="intended-native-rejection",rejected=True,verdict=oracle)
                except (ValueError,RuntimeError,KeyError,TypeError) as error:
                    result.update(status="failed",rejected=False,error=str(error)); failed=True
                    record_failure(receipt,"profile-control-oracle",str(error),case=case,
                        command_status=command["status"],exit_code=command["exit_code"],
                        command_sha256=command["command_sha256"],log=command["log"],log_sha256=command["log_sha256"])
                runner.save()
                print(f"generated-partial profile {case}: {'rejected' if result['rejected'] else 'FAILED'}",flush=True)
                if failed:
                    break
        if not failed:
            for namespace in NAMESPACES:
                for visibility in ("public","private"):
                    relative,data=control_sources[namespace,visibility]
                    label=f"control_{namespace}_{visibility}"
                    command=native_run(label,native_argv(relative),{relative:digest(data)})
                    exact,reason=strict_custom_axiom_diagnostic(command["text"],relative,namespace)
                    completed_rejection=(command["status"]=="completed" and
                        type(command["exit_code"]) is int and command["exit_code"]>0 and
                        command.get("postcheck_passed") is True and command.get("child_reaped") is True and
                        type(command.get("child_exit_code")) is int and command["child_exit_code"]==command["exit_code"])
                    rejected=completed_rejection and exact
                    if exact and not completed_rejection:
                        reason="The custom-axiom audit did not complete with an integrity-checked positive-exit rejection"
                    receipt["custom_axiom_negative_controls"].append({"namespace":namespace,"visibility":visibility,
                        "rejected":rejected,"exit_code":command["exit_code"],"source_sha256":digest(data),
                        "oracle_reason":reason,"command_sha256":command["command_sha256"],
                        "log":"logs/"+label+".log","log_sha256":command["log_sha256"]})
                    if not rejected:
                        record_failure(receipt,"custom-axiom-control",
                            f"Custom-axiom control failed: {namespace} {visibility}: {reason}",
                            namespace=namespace,visibility=visibility,command_status=command["status"],
                            exit_code=command["exit_code"],command_sha256=command["command_sha256"],
                            log=command["log"],log_sha256=command["log_sha256"])
                    runner.save()
                    failed=failed or not rejected
                    print(f"{namespace} {visibility} custom axiom: {'rejected' if rejected else 'FAILED'}",flush=True)
        audit_command=next((r for r in receipt["commands"] if r["label"]==audit),None)
        audit_text=stable_read(state/audit_command["log"]).data.decode() if audit_command else ""
        counts=re.findall(r"Kernel axiom audit passed for (\d+) declarations",audit_text)
        if len(counts)!=1:
            failed=True
            record_failure(receipt,"application-axiom-audit","Application declaration axiom audit did not report exactly one successful count")
        guard()
        inputs["verify_dependency_snapshot"](dependency_roots,dependency_record,bytes_reader,check_bytes=True)
        final_pins,final_checkout_states,final_lock_hash=inputs["package_pins"](root,packages,bytes_reader)
        if (final_pins,final_checkout_states,final_lock_hash)!=(pins,checkout_states,lock_hash):
            raise ValueError("Dependency source lock/checkout identities changed during replay")
        final_layout=inputs["require_layout"](root,frozen,bytes_reader)
        receipt["shared_math_layout_gate_final"]=final_layout
        initial_report=receipt["shared_math_layout_gate"]["report"]
        if final_layout["report"] != initial_report:
            before={row["path"]:row["sha256"] for row in initial_report.get("files",[])}
            after={row["path"]:row["sha256"] for row in final_layout["report"].get("files",[])}
            changed=sorted(path for path in set(before)|set(after) if before.get(path)!=after.get(path))
            raise ValueError("Complete Git-visible layout/source inventory changed during replay: "+", ".join(changed))
        guard()
        if "complete_owner_census" not in receipt:
            failed=True
            record_failure(receipt,"owner-census","No complete successful source-linked owner census was recorded")
        if generated_profile_sha:
            try:
                receipt["terminal_profile_control_validation"] = validate_terminal_profile_controls(
                    receipt, state, census, owner_hashes, generated_profile_sha,
                    expected_lean=lean, expected_memory_mb=args.memory_mb,
                    expected_timeout=args.timeout, expected_lean_path=environment["LEAN_PATH"],
                    expected_controls=profile_controls)
            except (OSError, ValueError, RuntimeError, KeyError, TypeError) as error:
                failed=True
                record_failure(receipt,"generated-partial-controls",
                    "The exact generated-partial profile lacks all six fresh intended native rejection controls: "+str(error))
        if not failed or receipt["custom_axiom_negative_controls"]:
            try:
                receipt["terminal_custom_axiom_control_validation"] = validate_terminal_custom_axiom_controls(
                    receipt, state, expected_audit_module=audit, expected_lean=lean,
                    expected_memory_mb=args.memory_mb, expected_timeout=args.timeout,
                    expected_lean_path=environment["LEAN_PATH"])
            except (OSError, ValueError, RuntimeError, KeyError, TypeError) as error:
                failed=True
                record_failure(receipt,"custom-axiom-controls",
                    "The exact namespace audit lacks all ten fresh intended native custom-axiom rejection controls: "+str(error))
        guard()
        receipt.update(all_final_hashes_match=True,audited_declaration_count=int(counts[0]) if len(counts)==1 else None,
                       compiled_module_count=len(completed),elapsed_seconds=time.monotonic()-started,
                       status="kernel-checked" if not failed else "failed",kernel_checked=not failed)
        receipt["checked_modules"].sort(key=lambda row:row["module"])
        runner.save()
        print(f"Receipt: {state/'receipt.json'}",flush=True)
        return int(failed)
    except KeyboardInterrupt:
        if receipt is not None:
            receipt.update(status="interrupted",kernel_checked=False,error="KeyboardInterrupt")
            atomic_json(state/"receipt.json",receipt)
        print(f"Interrupted; durable receipt: {state/'receipt.json' if state else 'not initialized'}",file=sys.stderr)
        return 130
    except (OSError,ValueError,RuntimeError,KeyError,TypeError,subprocess.SubprocessError) as error:
        if receipt is not None:
            receipt.update(status="failed",kernel_checked=False)
            record_failure(receipt,"driver-exception",str(error),exception_type=type(error).__name__)
            atomic_json(state/"receipt.json",receipt)
        print(f"REJECTED: {error}; receipt: {state/'receipt.json' if state else 'not initialized'}",file=sys.stderr)
        return 1
    finally:
        if lease_held:
            lease_context.__exit__(None,None,None)


if __name__ == "__main__":
    raise SystemExit(main())
