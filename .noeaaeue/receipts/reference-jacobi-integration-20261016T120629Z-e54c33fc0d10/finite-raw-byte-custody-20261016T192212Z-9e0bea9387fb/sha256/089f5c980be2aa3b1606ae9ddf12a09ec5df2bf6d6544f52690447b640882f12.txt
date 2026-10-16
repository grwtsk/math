#!/usr/bin/env python3
"""Content-addressed Lean command reuse, subordinate to the caller's proof oracle.

Only callers can decide that a command's output passed their complete checks.
They must validate cached diagnostics again, and publish only after acceptance.
No project object from .lake is used. External graph edges come from the actual
compiled ModuleData headers, not from possibly unrelated dependency sources.
"""
from __future__ import annotations

import ast
from dataclasses import dataclass
import hashlib
import json
import math
import os
from pathlib import Path
import re
import selectors
import stat
import struct
import subprocess
import sys
import time
import types
import uuid

import cache_math
import monitor_math
from cache_math import imports as source_imports
from monitor_math import lean_code

SCHEMA = "verified-lean-command-v1"
GRAPH_SCHEMA = "lean-object-imports-v1"
ORIGIN_SCHEMA = "proof-validation-origin-v1"
COMPILER_RUNTIME_SCHEMA = "lean-compiler-runtime-v1"
OBJECT_SUFFIXES = (".olean", ".olean.server", ".olean.private", ".ir.sig", ".ir")
MODULE = re.compile(r"(?:[^\W\d][\w']*)(?:\.(?:[^\W\d][\w']*))*\Z")


class CacheError(RuntimeError):
    pass


def encoded(value):
    return (json.dumps(value, sort_keys=True, separators=(",", ":"), ensure_ascii=True) + "\n").encode()


def sha(data):
    return hashlib.sha256(data).hexdigest()


def content_key(value):
    return sha(encoded(value))


def _macho_image(data, path):
    """Read thin 64-bit Mach-O dependency commands without loading any image.

    This deliberately rejects ELF, fat images and loader directives outside the
    bounded pinned-toolchain model. SDK mach-o/loader.h defines these layouts.
    """
    endian = {b"\xcf\xfa\xed\xfe": "<", b"\xfe\xed\xfa\xcf": ">"}.get(data[:4])
    if endian is None or len(data) < 32:
        raise CacheError("unsupported compiler runtime format (thin 64-bit Mach-O required): " + str(path))
    _, cpu, subtype, kind, count, size, _, _ = struct.unpack_from(endian + "8I", data)
    if kind not in (2, 6) or count > 65536 or size > len(data) - 32:
        raise CacheError("invalid Mach-O runtime header: " + str(path))
    position, limit = 32, 32 + size
    loads, rpaths, linker = [], [], []
    dylib_commands = {0xc, 0x80000018, 0x8000001f, 0x20, 0x80000023}
    known_required = dylib_commands | {0x8000001c, 0x80000022, 0x80000028,
                                       0x80000033, 0x80000034}
    for _ in range(count):
        if position + 8 > limit:
            raise CacheError("truncated Mach-O load command: " + str(path))
        command, length = struct.unpack_from(endian + "II", data, position)
        if length < 8 or length % 8 or position + length > limit:
            raise CacheError("invalid Mach-O load command bounds: " + str(path))
        if command in {0x6, 0x9, 0x10, 0x27, 0x80000035} or (
                command & 0x80000000 and command not in known_required):
            raise CacheError("unsupported Mach-O loader directive: " + str(path))
        if command in dylib_commands | {0x8000001c, 0xe, 0xd}:
            minimum = 24 if command in dylib_commands | {0xd} else 12
            if length < minimum:
                raise CacheError("truncated Mach-O path command: " + str(path))
            offset = struct.unpack_from(endian + "I", data, position + 8)[0]
            if offset < minimum or offset >= length:
                raise CacheError("invalid Mach-O path offset: " + str(path))
            raw = data[position + offset:position + length]
            if b"\0" not in raw:
                raise CacheError("unterminated Mach-O load path: " + str(path))
            try:
                name = raw.split(b"\0", 1)[0].decode("utf-8")
            except UnicodeError as error:
                raise CacheError("invalid Mach-O load path: " + str(path)) from error
            if not name or any(ord(c) < 32 or ord(c) == 127 for c in name):
                raise CacheError("invalid Mach-O load path: " + str(path))
            if command in dylib_commands:
                loads.append({"command": command, "name": name, "weak": command == 0x80000018})
            elif command == 0x8000001c:
                rpaths.append(name)
            elif command == 0xe:
                linker.append(name)
        position += length
    if position != limit:
        raise CacheError("Mach-O command count/size differs: " + str(path))
    return {"cpu_type": cpu, "cpu_subtype": subtype, "file_type": kind,
            "loads": loads, "rpaths": rpaths, "dynamic_linkers": linker}


def _runtime_exists(path, *, directory=False):
    """NOFOLLOW every component; absent directories are genuine absences."""
    path = _absolute(path)
    descriptor = os.open(path.anchor, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW)
    try:
        for part in path.parts[1:-1]:
            try:
                child = os.open(part, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW,
                                dir_fd=descriptor)
            except FileNotFoundError:
                return False
            except OSError as error:
                raise CacheError("unsafe compiler runtime ancestor: " + str(path)) from error
            os.close(descriptor)
            descriptor = child
        try:
            observed = os.stat(path.name, dir_fd=descriptor, follow_symlinks=False)
        except FileNotFoundError:
            return False
        expected = stat.S_ISDIR if directory else stat.S_ISREG
        if not expected(observed.st_mode):
            raise CacheError("nonregular or linked compiler runtime path: " + str(path))
        return True
    finally:
        os.close(descriptor)


def _runtime_environment(env):
    environment = dict(os.environ if env is None else env)
    overrides = {name: value for name, value in environment.items()
                 if (name.startswith("DYLD_") or name.startswith("LD_")
                     or name == "LEAN_SYSROOT") and value}
    if overrides:
        raise CacheError("unsupported compiler loader environment: " + ", ".join(sorted(overrides)))
    return {name: value for name, value in sorted(environment.items())
            if name.startswith("DYLD_") or name.startswith("LD_") or name == "LEAN_SYSROOT"}


def validate_runtime_environment(env=None):
    """Reject loader/resource overrides before even native compiler discovery."""
    return _runtime_environment(env)


def _runtime_path_state(path, *, directory=False):
    """Record nofollow ancestry and local parent custody without reading bytes."""
    path = _absolute(path)
    descriptor = os.open(path.anchor, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW)
    fields = lambda value: (value.st_dev, value.st_ino, value.st_mode, value.st_size,
                            value.st_mtime_ns, value.st_ctime_ns)
    ancestors = []
    try:
        for part in path.parts[1:-1]:
            current = os.fstat(descriptor)
            ancestors.append((current.st_dev, current.st_ino, current.st_mode))
            try:
                child = os.open(part, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW,
                                dir_fd=descriptor)
            except FileNotFoundError:
                return ("absent-parent", tuple(ancestors), fields(current))
            except OSError as error:
                raise CacheError("unsafe compiler runtime ancestor: " + str(path)) from error
            os.close(descriptor)
            descriptor = child
        before = fields(os.fstat(descriptor))
        try:
            value = os.stat(path.name, dir_fd=descriptor, follow_symlinks=False)
        except FileNotFoundError:
            result = ("absent", tuple(ancestors), before)
        else:
            expected = stat.S_ISDIR if directory else stat.S_ISREG
            if not expected(value.st_mode):
                raise CacheError("nonregular or linked compiler runtime path: " + str(path))
            result = ("present", tuple(ancestors), before, fields(value))
        if before != fields(os.fstat(descriptor)):
            raise CacheError("compiler runtime parent changed while observing: " + str(path))
        return result
    finally:
        os.close(descriptor)


def _compiler_runtime_snapshot(compiler, *, env=None):
    """Fingerprint pinned Mach-O Lean runtime bytes without executing the target.

    Explicit dylib loads, inherited rpath order and candidate absence/shadowing
    are bound. The direct lib/lean dylib inventory is conservatively bound too,
    including its dependency closures. Clean DYLD_*/LD_* environments are the
    only supported loader policy. OS dyld, /usr/lib and /System/Library images
    (often supplied by the dyld shared cache) are trusted and NOT fingerprinted.
    This is a bounded cache identity, not confinement against a hostile loader,
    filesystem, OS, dynamic plugins or unrecorded native command options.
    """
    compiler = _absolute(compiler)
    loader_environment = _runtime_environment(env)
    objects, images, resolutions, contexts, states = {}, {}, [], set(), {}
    executable_directory = compiler.parent

    def capture(path, directory=False):
        token = (str(path), directory)
        observed = _runtime_path_state(path, directory=directory)
        if states.setdefault(token, observed) != observed:
            raise CacheError("compiler runtime path changed during initial read: " + str(path))
        return observed

    def image(path):
        path = _absolute(path)
        key = str(path)
        if key not in images:
            capture(path)
            if not _runtime_exists(path):
                return None
            raw = regular_bytes(path)
            images[key] = _macho_image(raw, path)
            objects[key] = {"sha256": sha(raw), "bytes": len(raw)}
            capture(path)
        return images[key]

    def expand(name, owner):
        for token, directory in (("@loader_path", owner.parent),
                                 ("@executable_path", executable_directory)):
            if name == token or name.startswith(token + "/"):
                return str(_absolute(directory / name[len(token):].lstrip("/")))
        if name.startswith("/"):
            return str(_absolute(name))
        raise CacheError("unsupported relative Mach-O load/rpath: " + name)

    def system_path(path):
        return path.startswith("/usr/lib/") or path.startswith("/System/Library/")

    main = image(compiler)
    if main is None or main["file_type"] != 2:
        raise CacheError("missing Mach-O compiler executable: " + str(compiler))
    root_rpaths = tuple(expand(name, compiler) for name in main["rpaths"])

    def visit(path, inherited):
        path = _absolute(path)
        current = image(path)
        if current is None:
            raise CacheError("missing compiler runtime image: " + str(path))
        if current["cpu_type"] != main["cpu_type"]:
            raise CacheError("compiler runtime architecture differs: " + str(path))
        rpaths = tuple(dict.fromkeys([*(expand(name, path) for name in current["rpaths"]), *inherited]))
        context = (str(path), rpaths)
        if context in contexts:
            return
        contexts.add(context)
        if len(contexts) > 1024 or len(objects) > 1024:
            raise CacheError("compiler runtime closure exceeds bounded model")
        for name in current["dynamic_linkers"]:
            if name != "/usr/lib/dyld":
                raise CacheError("unsupported Mach-O dynamic linker: " + name)
        for load in current["loads"]:
            name = load["name"]
            if name.startswith("@rpath/"):
                candidates = [str(_absolute(Path(base) / name[len("@rpath/"):])) for base in rpaths]
                if any(system_path(candidate) for candidate in candidates):
                    # A system image may exist only in dyld's shared cache. We
                    # cannot tell statically whether it wins over a private
                    # fallback, so never infer presence/search precedence here.
                    raise CacheError("ambiguous system @rpath compiler runtime resolution: " + name)
            else:
                candidates = [expand(name, path)]
            if not candidates:
                raise CacheError("Mach-O @rpath has no search path: " + name)
            states, selected = [], None
            for candidate in dict.fromkeys(candidates):
                if system_path(candidate):
                    state = {"path": candidate, "state": "trusted-os-runtime-unfingerprinted"}
                else:
                    present = image(candidate)
                    state = {"path": candidate, "state": "present" if present is not None else "absent"}
                    if present is not None:
                        state.update(objects[candidate])
                states.append(state)
                if selected is None and state["state"] != "absent":
                    selected = candidate
            if selected is None and not load["weak"]:
                raise CacheError("missing required compiler runtime library: " + name)
            resolutions.append({"loader": str(path), "rpaths": list(rpaths), **load,
                                "candidates": states, "selected": selected})
            # Bind every present private candidate's closure. dyld may reject a
            # first-present image for compatibility and continue searching; we
            # do not emulate those OS-dependent compatibility decisions.
            for candidate in states:
                if candidate["state"] == "present":
                    target = candidate["path"]
                    if images[target]["file_type"] != 6:
                        raise CacheError("compiler runtime dependency is not a dylib: " + target)
                    visit(Path(target), rpaths)

    visit(compiler, ())
    # Known Lean distributions put runtime/plugin dylibs directly here. Binding
    # this inventory also notices a newly introduced native Lean library. Nested
    # plugin loading is outside the explicitly declared static-load scope.
    library_directory = compiler.parent.parent / "lib/lean"
    inventory = []
    capture(library_directory, directory=True)
    inventory_present = _runtime_exists(library_directory, directory=True)
    if inventory_present:
        descriptor = _directory(library_directory)
        try:
            names = sorted(name for name in os.listdir(descriptor) if name.endswith(".dylib"))
        finally:
            os.close(descriptor)
        for name in names:
            path = library_directory / name
            if image(path) is None:
                raise CacheError("compiler runtime inventory changed during read")
            inventory.append({"path": str(path), **objects[str(path)]})
            visit(path, root_rpaths)
    descriptor = {"schema": COMPILER_RUNTIME_SCHEMA,
                  "executable": {"path": str(compiler), **objects[str(compiler)]},
                  "format": "thin-64-bit-mach-o", "cpu_type": main["cpu_type"],
                  "cpu_subtype": main["cpu_subtype"], "objects": dict(sorted(objects.items())),
                  "resolutions": resolutions,
                  "lean_library_inventory": {"path": str(library_directory),
                      "present": inventory_present, "files": inventory},
                  "loader_environment": loader_environment,
                  "scope": {"loader_overrides": "reject-nonempty-DYLD_*-LD_*-and-LEAN_SYSROOT",
                      "system_runtime": "trusted-unfingerprinted-/usr/lib-and-/System/Library-and-/usr/lib/dyld",
                      "native_loading": "static-Mach-O-closure-plus-direct-lib/lean-dylib-inventory",
                      "resolution": "ordered-first-present-hint;all-present-private-candidate-closures-bound",
                      "hostile_loader_confinement": False}}
    for (path, directory), before in states.items():
        if _runtime_path_state(path, directory=directory) != before:
            raise CacheError("compiler runtime path changed during initial read: " + path)
    if _runtime_environment(env) != loader_environment:
        raise CacheError("compiler loader environment changed during initial read")
    return descriptor, states


def compiler_runtime_identity(compiler, *, env=None):
    """Return the source-only static runtime descriptor; never execute the target.

    Only thin 64-bit Mach-O and clean loader/LEAN_SYSROOT environments are
    supported. OS shared-cache/system images and dynamic plugins are explicitly
    outside this bounded identity. Use RuntimeIdentityGuard for per-run custody.
    """
    return _compiler_runtime_snapshot(compiler, env=env)[0]


def compiler_runtime_digest(descriptor):
    if not isinstance(descriptor, dict) or descriptor.get("schema") != COMPILER_RUNTIME_SCHEMA:
        raise CacheError("unsupported compiler runtime identity schema")
    try:
        raw = (json.dumps(descriptor, sort_keys=True, separators=(",", ":"),
                          ensure_ascii=True, allow_nan=False) + "\n").encode()
    except (ValueError, TypeError, UnicodeError) as error:
        raise CacheError("invalid compiler runtime identity encoding") from error
    return sha(raw)


def assert_compiler_runtime_unchanged(compiler, descriptor, *, env=None):
    expected = compiler_runtime_digest(descriptor)
    if compiler_runtime_digest(compiler_runtime_identity(compiler, env=env)) != expected:
        raise CacheError("compiler runtime identity changed during validation")


class RuntimeIdentityGuard:
    """Fast per-hop custody and full terminal byte checks for one actual runtime."""
    def __init__(self, compiler, *, env=None):
        self.compiler = _absolute(compiler)
        self.env = os.environ if env is None else env
        self.identity, self._states = _compiler_runtime_snapshot(self.compiler, env=self.env)
        self.descriptor = self.identity
        self.sha256 = compiler_runtime_digest(self.identity)

    def assert_stable(self, *, env=None):
        if _runtime_environment(self.env) != self.identity["loader_environment"]:
            raise CacheError("compiler loader environment changed during validation")
        if env is not None and _runtime_environment(env) != self.identity["loader_environment"]:
            raise CacheError("actual command loader environment differs from compiler runtime identity")
        for (path, directory), before in self._states.items():
            if _runtime_path_state(path, directory=directory) != before:
                raise CacheError("compiler runtime custody changed during validation: " + path)

    def assert_unchanged(self, *, env=None):
        self.assert_stable(env=env)
        assert_compiler_runtime_unchanged(self.compiler, self.identity, env=self.env)
        self.assert_stable(env=env)


def _absolute(path):
    return Path(os.path.abspath(os.fspath(path)))


def _directory(path, create=False):
    """Open every directory through NOFOLLOW descriptors, including ancestors."""
    path = _absolute(path)
    descriptor = os.open(path.anchor, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW)
    try:
        for part in path.parts[1:]:
            if create:
                try:
                    os.mkdir(part, mode=0o700, dir_fd=descriptor)
                except FileExistsError:
                    pass
            try:
                child = os.open(part, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW,
                                dir_fd=descriptor)
            except OSError as error:
                raise CacheError("unsafe or missing directory: " + str(path)) from error
            os.close(descriptor)
            descriptor = child
        return descriptor
    except BaseException:
        os.close(descriptor)
        raise


def regular_bytes(path):
    path = _absolute(path)
    descriptor = _directory(path.parent)
    try:
        try:
            fd = os.open(path.name, os.O_RDONLY | os.O_NOFOLLOW | os.O_NONBLOCK,
                         dir_fd=descriptor)
        except FileNotFoundError:
            raise
        except OSError as error:
            raise CacheError("unsafe input: " + str(path)) from error
        with os.fdopen(fd, "rb") as stream:
            before = os.fstat(stream.fileno())
            if not stat.S_ISREG(before.st_mode):
                raise CacheError("non-regular input: " + str(path))
            data = stream.read()
            after = os.fstat(stream.fileno())
        current = os.stat(path.name, dir_fd=descriptor, follow_symlinks=False)
        fields = lambda value: (value.st_dev, value.st_ino, value.st_size,
                                value.st_mtime_ns, value.st_ctime_ns)
        if fields(before) != fields(after) or fields(after) != fields(current) or len(data) != after.st_size:
            raise CacheError("input changed while reading: " + str(path))
        return data
    finally:
        os.close(descriptor)


def _exists(path):
    path = _absolute(path)
    descriptor = _directory(path.parent)
    try:
        try:
            mode = os.stat(path.name, dir_fd=descriptor, follow_symlinks=False).st_mode
        except FileNotFoundError:
            return False
        if not stat.S_ISREG(mode):
            raise CacheError("non-regular file rejected: " + str(path))
        return True
    finally:
        os.close(descriptor)


def _regular_state(path):
    """Cheap no-follow identity used only between full origin byte checks."""
    path = _absolute(path)
    parent = _directory(path.parent)
    try:
        descriptor = os.open(path.name, os.O_RDONLY | os.O_NOFOLLOW | os.O_NONBLOCK,
                             dir_fd=parent)
        try:
            observed = os.fstat(descriptor)
            current = os.stat(path.name, dir_fd=parent, follow_symlinks=False)
            fields = lambda value: (value.st_dev, value.st_ino, value.st_size,
                                    value.st_mtime_ns, value.st_ctime_ns, value.st_mode)
            if not stat.S_ISREG(observed.st_mode) or fields(observed) != fields(current):
                raise CacheError("unsafe or changing proof-validation origin: " + str(path))
            return fields(observed)
        finally:
            os.close(descriptor)
    except OSError as error:
        raise CacheError("unreadable proof-validation origin: " + str(path)) from error
    finally:
        os.close(parent)


def _write(path, data):
    path = _absolute(path)
    descriptor = _directory(path.parent, create=True)
    try:
        fd = os.open(path.name, os.O_WRONLY | os.O_CREAT | os.O_EXCL | os.O_NOFOLLOW,
                     0o600, dir_fd=descriptor)
        with os.fdopen(fd, "wb") as stream:
            stream.write(data)
            stream.flush()
            os.fsync(stream.fileno())
    finally:
        os.close(descriptor)


def _replace_file(path, data):
    """Atomically replace regular metadata, rejecting symlinks and special files."""
    path = _absolute(path)
    parent = _directory(path.parent, create=True)
    temporary = ".pending-" + uuid.uuid4().hex
    try:
        try:
            mode = os.stat(path.name, dir_fd=parent, follow_symlinks=False).st_mode
        except FileNotFoundError:
            mode = None
        if mode is not None and not stat.S_ISREG(mode):
            raise CacheError("unsafe metadata destination: " + str(path))
        _write(path.parent / temporary, data)
        os.replace(temporary, path.name, src_dir_fd=parent, dst_dir_fd=parent)
        os.fsync(parent)
    finally:
        os.close(parent)


def _decoded(data):
    def unique(pairs):
        result = {}
        for key, value in pairs:
            if key in result:
                raise ValueError("duplicate JSON key")
            result[key] = value
        return result
    return json.loads(data, object_pairs_hook=unique)


def _json(path):
    return _decoded(regular_bytes(path))


def _artifact_schema(family):
    return (isinstance(family, dict) and (not family or ".olean" in family)
            and all(suffix in OBJECT_SUFFIXES and isinstance(identity, dict)
                    and set(identity) == {"sha256", "bytes"}
                    and isinstance(identity["sha256"], str)
                    and re.fullmatch(r"[0-9a-f]{64}", identity["sha256"])
                    and type(identity["bytes"]) is int and identity["bytes"] >= 0
                    for suffix, identity in family.items()))


def _command_schema(record):
    return (isinstance(record, dict)
            and set(record) == {"cache_key", "stdout_sha256", "stderr_sha256", "returncode", "artifacts"}
            and all(isinstance(record[name], str) and re.fullmatch(r"[0-9a-f]{64}", record[name])
                    for name in ("cache_key", "stdout_sha256", "stderr_sha256"))
            and type(record["returncode"]) is int and _artifact_schema(record["artifacts"]))


def _origin_payload(payload):
    if (not isinstance(payload, dict)
            or set(payload) != {"schema", "attempt_id", "outcome", "terminal", "evidence"}
            or payload.get("schema") != ORIGIN_SCHEMA
            or payload.get("terminal") is not True or payload.get("outcome") != "passed"
            or not isinstance(payload.get("attempt_id"), str)
            or not re.fullmatch(r"[^\x00-\x20\x7f/\\]{1,256}", payload["attempt_id"])
            or not isinstance(payload.get("evidence"), dict) or not payload["evidence"]
            or not isinstance(payload["evidence"].get("commands"), list)):
        raise CacheError("origin is not a terminal successful proof-validation attempt")
    commands = payload["evidence"]["commands"]
    if (any(not _command_schema(record) for record in commands)
            or len({record["cache_key"] for record in commands}) != len(commands)):
        raise CacheError("origin has malformed or duplicate command evidence")
    return payload


def _origin_identity(identity):
    if (not isinstance(identity, dict) or set(identity) != {"path", "sha256", "bytes", "attempt_id"}
            or not isinstance(identity.get("path"), str)
            or not Path(identity["path"]).is_absolute()
            or not isinstance(identity.get("sha256"), str)
            or not re.fullmatch(r"[0-9a-f]{64}", identity["sha256"])
            or type(identity.get("bytes")) is not int or identity["bytes"] < 1):
        raise CacheError("invalid proof-validation origin identity")


def validate_origin(identity):
    """Read the exact immutable terminal origin identified by a cache entry."""
    _origin_identity(identity)
    try:
        data = regular_bytes(identity["path"])
        if sha(data) != identity["sha256"] or len(data) != identity["bytes"]:
            raise CacheError("proof-validation origin bytes changed")
        payload = _origin_payload(_decoded(data))
    except (OSError, UnicodeError, ValueError, TypeError) as error:
        raise CacheError("unreadable or malformed proof-validation origin") from error
    if payload["attempt_id"] != identity["attempt_id"]:
        raise CacheError("proof-validation origin attempt differs")
    return payload


def create_origin(path, payload):
    """Finalize one passed attempt with atomic, exclusive whole-file visibility.

    The caller supplies attempt_id/outcome='passed'/terminal=True and exact
    evidence.commands records computed from previously checked artifacts. This
    never replaces any prior receipt, and an interrupted preparation is no origin.
    """
    if not isinstance(payload, dict):
        raise CacheError("origin payload must be an object")
    document = dict(payload)
    if document.setdefault("schema", ORIGIN_SCHEMA) != ORIGIN_SCHEMA:
        raise CacheError("unexpected proof-validation origin schema")
    _origin_payload(document)
    data = encoded(document)
    path = _absolute(path)
    parent = _directory(path.parent, create=True)
    temporary = ".origin-pending-" + uuid.uuid4().hex
    try:
        descriptor = os.open(temporary, os.O_WRONLY | os.O_CREAT | os.O_EXCL | os.O_NOFOLLOW,
                             0o400, dir_fd=parent)
        with os.fdopen(descriptor, "wb") as stream:
            stream.write(data)
            stream.flush()
            os.fsync(stream.fileno())
            prepared = os.fstat(stream.fileno())
            current = os.stat(temporary, dir_fd=parent, follow_symlinks=False)
            if ((prepared.st_dev, prepared.st_ino) != (current.st_dev, current.st_ino)
                    or not stat.S_ISREG(current.st_mode)):
                raise CacheError("origin preparation identity changed")
            # link is an exclusive publication: existing files, directories and
            # symlinks all make it fail. No partially written final file exists.
            os.link(temporary, path.name, src_dir_fd=parent, dst_dir_fd=parent,
                    follow_symlinks=False)
            published = os.stat(path.name, dir_fd=parent, follow_symlinks=False)
            if ((prepared.st_dev, prepared.st_ino) != (published.st_dev, published.st_ino)
                    or not stat.S_ISREG(published.st_mode)):
                raise CacheError("origin publication identity changed")
        os.fsync(parent)
    finally:
        try:
            os.unlink(temporary, dir_fd=parent)
        except FileNotFoundError:
            pass
        os.close(parent)
    identity = {"path": str(path), "sha256": sha(data), "bytes": len(data),
                "attempt_id": document["attempt_id"]}
    validate_origin(identity)
    return identity


def policy_identity():
    """Bind all implementations used for graph discovery and cache validation."""
    directory = Path(__file__).resolve().parent
    return {name: sha(regular_bytes(directory / name))
            for name in ("incremental_lean.py", "cache_math.py", "monitor_math.py")}


def verify_loaded_parser_sources(sources):
    """Bind the functions actually parsing imports to exact frozen Python inputs.

    Compilation here creates code objects without executing the frozen modules.
    Checking loaded bytecode, location tables, globals and regex values detects
    stale imports even when the on-disk helper has already changed. Source hashes
    separately bind comments and other bytes without affecting parser behavior.
    """
    required = {"cache_math.py", "monitor_math.py"}
    if (not isinstance(sources, dict) or set(sources) != required
            or any(not isinstance(raw, bytes) for raw in sources.values())):
        raise CacheError("loaded parser binding needs both exact frozen helper byte strings")
    if (source_imports is not cache_math.imports or lean_code is not monitor_math.lean_code
            or not isinstance(source_imports, types.FunctionType)
            or not isinstance(lean_code, types.FunctionType)
            or source_imports.__globals__ is not vars(cache_math)
            or lean_code.__globals__ is not vars(monitor_math)
            or source_imports.__globals__.get("lean_code") is not lean_code
            or source_imports.__globals__.get("require") is not cache_math.require
            or not isinstance(cache_math.require, types.FunctionType)
            or cache_math.require.__globals__ is not vars(cache_math)):
        raise CacheError("loaded parser function or global bindings differ from the frozen parser")

    compiled = {}
    syntax = {}
    for name, function in (("cache_math.py", source_imports), ("monitor_math.py", lean_code)):
        try:
            syntax[name] = ast.parse(sources[name], filename=function.__code__.co_filename)
            compiled[name] = compile(sources[name], function.__code__.co_filename, "exec",
                                     dont_inherit=True, optimize=sys.flags.optimize)
        except (SyntaxError, UnicodeError, ValueError, TypeError) as error:
            raise CacheError("frozen parser source cannot be compiled: " + name) from error

    for module, name, actual in (("cache_math.py", "imports", source_imports),
                                 ("cache_math.py", "require", cache_math.require),
                                 ("monitor_math.py", "lean_code", lean_code)):
        definitions = [node for node in syntax[module].body
                       if isinstance(node, (ast.FunctionDef, ast.AsyncFunctionDef)) and node.name == name]
        expected = [code for code in compiled[module].co_consts
                    if isinstance(code, types.CodeType) and code.co_name == name]
        if (len(definitions) != 1 or len(expected) != 1 or definitions[0].decorator_list
                or actual.__defaults__ is not None or actual.__kwdefaults__ is not None
                or actual.__closure__ is not None):
            raise CacheError("unsupported or stale loaded parser definition: " + name)
        observed = actual.__code__
        wanted = expected[0]
        # CodeType equality recursively covers instructions, constants, names,
        # variables and future flags. Explicit location checks also bind the
        # source layout used for the loaded function and its diagnostics.
        if (observed != wanted or observed.co_filename != wanted.co_filename
                or observed.co_firstlineno != wanted.co_firstlineno
                or observed.co_lnotab != wanted.co_lnotab
                or getattr(observed, "co_linetable", None) != getattr(wanted, "co_linetable", None)
                or getattr(observed, "co_exceptiontable", None) != getattr(wanted, "co_exceptiontable", None)):
            raise CacheError("loaded parser code differs from frozen source: " + module + ":" + name)

    assignments = [node.value for node in syntax["cache_math.py"].body
                   if isinstance(node, ast.Assign)
                   and any(isinstance(target, ast.Name) and target.id == "MODULE" for target in node.targets)]
    if (len(assignments) != 1 or not isinstance(assignments[0], ast.Call)
            or not isinstance(assignments[0].func, ast.Attribute)
            or not isinstance(assignments[0].func.value, ast.Name)
            or assignments[0].func.value.id != "re" or assignments[0].func.attr != "compile"
            or len(assignments[0].args) != 1 or assignments[0].keywords):
        raise CacheError("unsupported frozen parser module-name regex")
    try:
        pattern = ast.literal_eval(assignments[0].args[0])
        expected_regex = re.compile(pattern)
    except (ValueError, TypeError, re.error) as error:
        raise CacheError("invalid frozen parser module-name regex") from error
    loaded_regex = source_imports.__globals__.get("MODULE")
    if (not isinstance(loaded_regex, type(expected_regex))
            or loaded_regex.pattern != expected_regex.pattern or loaded_regex.flags != expected_regex.flags
            or source_imports.__globals__.get("re") is not re):
        raise CacheError("loaded parser module-name regex or regex binding differs from frozen source")


def artifact_family(destination, *, require_main=True):
    """Hash every present Lean loadable sibling; absence is part of identity."""
    destination = _absolute(destination)
    if destination.suffix != ".olean":
        raise CacheError("artifact destination must end in .olean")
    stem = str(destination)[:-len(".olean")]
    result = {}
    for suffix in OBJECT_SUFFIXES:
        path = Path(stem + suffix)
        if _exists(path):
            data = regular_bytes(path)
            result[suffix] = {"sha256": sha(data), "bytes": len(data)}
    if require_main and ".olean" not in result:
        raise CacheError("missing compiled object: " + str(destination))
    return result


@dataclass
class CacheResult:
    process: subprocess.CompletedProcess
    hit: bool
    key: str
    artifacts: dict
    provenance: dict


class CommandCache:
    def __init__(self, root, *, cold=False, namespace="lean", require_origin=False):
        self.root = _absolute(root)
        if not re.fullmatch(r"[A-Za-z0-9_.-]+", namespace):
            raise CacheError("unsafe cache namespace")
        self.base = self.root / namespace
        fd = _directory(self.base, create=True)
        os.close(fd)
        self.cold = bool(cold)
        self.require_origin = bool(require_origin)
        self.pending = []
        self.policy = policy_identity()
        self._origins = {}

    def key(self, key_material):
        return content_key({"schema": SCHEMA, "implementation": self.policy,
                            "material": key_material})

    def command_evidence(self, key_material, *, process, artifacts):
        """Bind one exact command to its caller's earlier checked object snapshot."""
        if (type(process.returncode) is not int or not isinstance(process.stdout, str)
                or not isinstance(process.stderr, str) or not _artifact_schema(artifacts)):
            raise CacheError("command evidence needs completed diagnostics and an exact artifact family")
        return {"cache_key": self.key(key_material), "stdout_sha256": sha(process.stdout.encode()),
                "stderr_sha256": sha(process.stderr.encode()), "returncode": process.returncode,
                "artifacts": json.loads(encoded(artifacts))}

    def _validate_origin(self, key_material, process, family, provenance):
        if not isinstance(provenance, dict):
            raise CacheError("cache provenance must be an object")
        origin = provenance.get("origin_receipt")
        if origin is None and not self.require_origin:
            return
        _origin_identity(origin)
        identity_key = content_key(origin)
        state = _regular_state(origin["path"])
        known = self._origins.get(identity_key)
        if known is None or known["stat"] != state:
            payload = validate_origin(origin)
            if _regular_state(origin["path"]) != state:
                raise CacheError("proof-validation origin changed during verification")
            known = {"identity": json.loads(encoded(origin)), "stat": state,
                     "payload": payload,
                     "commands": {record["cache_key"]: record
                                  for record in payload["evidence"]["commands"]}}
            self._origins[identity_key] = known
        candidate = self.command_evidence(key_material, process=process, artifacts=family)
        if known["commands"].get(candidate["cache_key"]) != candidate:
            raise CacheError("terminal origin does not contain this exact command evidence")

    def assert_origins_unchanged(self):
        """Fully rehash every used origin at the caller's final acceptance gates.

        Per-command checks use exact no-follow stat identity (including ctime)
        and indexed evidence. This final byte pass also catches changes whose
        timestamps were restored, without repeatedly parsing a whole census.
        """
        for known in self._origins.values():
            identity = known["identity"]
            before = _regular_state(identity["path"])
            payload = validate_origin(identity)
            after = _regular_state(identity["path"])
            if before != after or payload != known["payload"]:
                raise CacheError("proof-validation origin changed at final acceptance gate")
            known["stat"] = after

    def lookup(self, key_material, *, destination=None):
        if self.cold:
            return None
        key = self.key(key_material)
        entry = self.base / key
        try:
            fd = _directory(entry)
        except CacheError:
            if entry.is_symlink():
                raise
            if not entry.exists():
                return None
            raise
        else:
            os.close(fd)
        try:
            if (regular_bytes(entry / "metadata.sha256").decode("ascii").strip()
                    != sha(regular_bytes(entry / "metadata.json"))):
                return None
            metadata = _json(entry / "metadata.json")
            if (not isinstance(metadata, dict) or metadata.get("schema") != SCHEMA or metadata.get("key") != key
                    or metadata.get("key_material") != key_material):
                return None
            stdout, stderr = regular_bytes(entry / "stdout"), regular_bytes(entry / "stderr")
            if (sha(stdout) != metadata.get("stdout_sha256")
                    or sha(stderr) != metadata.get("stderr_sha256")
                    or type(metadata.get("returncode")) is not int):
                return None
            stdout_text, stderr_text = stdout.decode("utf-8"), stderr.decode("utf-8")
            family = metadata.get("artifacts")
            if not isinstance(family, dict) or any(name not in OBJECT_SUFFIXES for name in family):
                return None
            present = artifact_family(entry / "object.olean", require_main=False)
            if (present != family or bool(destination) != bool(family)
                    or (family and ".olean" not in family)):
                return None
            payloads = {}
            for suffix, identity in family.items():
                data = regular_bytes(entry / ("object" + suffix))
                if identity != {"sha256": sha(data), "bytes": len(data)}:
                    return None
                payloads[suffix] = data
            process = subprocess.CompletedProcess([], metadata["returncode"], stdout_text, stderr_text)
            try:
                self._validate_origin(key_material, process, family, metadata.get("provenance", {}))
            except CacheError:
                return None
            # Verify the complete family before installing any member. The build
            # directory belongs to the current immutable run, never .lake.
            if destination is not None:
                destination = _absolute(destination)
                fd = _directory(destination.parent, create=True)
                os.close(fd)
                if artifact_family(destination, require_main=False):
                    raise CacheError("refusing preexisting destination family: " + str(destination))
                stem = str(destination)[:-len(".olean")]
                for suffix, data in payloads.items():
                    _write(Path(stem + suffix), data)
                if artifact_family(destination) != family:
                    raise CacheError("restored artifact family changed")
            return CacheResult(process, True, key, family, metadata.get("provenance", {}))
        except (FileNotFoundError, UnicodeError, ValueError, TypeError, KeyError):
            return None

    def publish(self, key_material, *, process, destination=None, provenance=None):
        if (type(process.returncode) is not int or not isinstance(process.stdout, str)
                or not isinstance(process.stderr, str)):
            raise CacheError("cache publication needs a completed text command")
        key = self.key(key_material)
        staging = self.base / (".pending-" + uuid.uuid4().hex)
        fd = _directory(staging, create=True)
        os.close(fd)
        family = artifact_family(destination) if destination is not None else {}
        self._validate_origin(key_material, process, family, provenance or {})
        payloads = {}
        if destination is not None:
            stem = str(_absolute(destination))[:-len(".olean")]
            for suffix, identity in family.items():
                data = regular_bytes(Path(stem + suffix))
                if identity != {"sha256": sha(data), "bytes": len(data)}:
                    raise CacheError("artifact changed before publication")
                payloads[suffix] = data
        metadata = {"schema": SCHEMA, "key": key, "key_material": key_material,
                    "returncode": process.returncode, "artifacts": family,
                    "stdout_sha256": sha(process.stdout.encode()),
                    "stderr_sha256": sha(process.stderr.encode()),
                    "provenance": provenance or {}, "published_unix": time.time()}
        for suffix, data in payloads.items():
            _write(staging / ("object" + suffix), data)
        _write(staging / "stdout", process.stdout.encode())
        _write(staging / "stderr", process.stderr.encode())
        metadata_bytes = encoded(metadata)
        _write(staging / "metadata.json", metadata_bytes)
        _write(staging / "metadata.sha256", (sha(metadata_bytes) + "\n").encode())
        # Publication is one rename. Interrupted preparations cannot be hits.
        parent = _directory(self.base)
        try:
            # Recheck immediately at publication: origin bytes may have changed
            # while the staging family and diagnostics were being written.
            self._validate_origin(key_material, process, family, provenance or {})
            try:
                mode = os.stat(key, dir_fd=parent, follow_symlinks=False).st_mode
            except FileNotFoundError:
                mode = None
            if mode is not None:
                if not stat.S_ISDIR(mode):
                    raise CacheError("unsafe existing cache entry")
                os.rename(key, ".superseded-" + key + "-" + uuid.uuid4().hex,
                          src_dir_fd=parent, dst_dir_fd=parent)
            os.rename(staging.name, key, src_dir_fd=parent, dst_dir_fd=parent)
            os.fsync(parent)
        finally:
            os.close(parent)
        return CacheResult(process, False, key, family, provenance or {})

    def run(self, key_material, *, argv, cwd, env, destination=None,
            validate, timeout=600, publish=True, provenance=None):
        cached = self.lookup(key_material, destination=destination)
        if cached is not None:
            cached.process.args = argv
            validate(cached.process)
            return cached
        process = subprocess.run(argv, cwd=cwd, env=env, capture_output=True,
                                 text=True, timeout=timeout)
        validate(process)
        if publish:
            return self.publish(key_material, process=process, destination=destination,
                                provenance=provenance)
        self.pending.append((key_material, process, destination, provenance))
        return CacheResult(process, False, self.key(key_material),
                           artifact_family(destination) if destination is not None else {},
                           provenance or {})

    def commit(self):
        result = [self.publish(material, process=process, destination=destination,
                               provenance=provenance)
                  for material, process, destination, provenance in self.pending]
        self.pending.clear()
        return result

    def discard(self):
        self.pending.clear()


# Each request names the resolved main .olean. Read all loadable parts in Lean's
# required region order; unions include meta/private and IR imports. No module
# initializers execute. The helper is pinned by its bytes and compiler identity.
_HEADER_HELPER = r'''import Lean
open Lean
def partImports (files : Array System.FilePath) : IO (Array String) := do
  let parts ← readModuleDataParts files
  return parts.flatMap fun p => p.1.imports.map fun i => i.module.toString
def inspect (path : String) : IO (Array String) := do
  let main : System.FilePath := path
  let stem := path.dropEnd 6 |>.toString
  let mut objects := #[main]
  for ext in [".olean.server", ".olean.private"] do
    let p : System.FilePath := stem ++ ext
    if ← p.pathExists then objects := objects.push p
  let mut names ← partImports objects
  let sig : System.FilePath := stem ++ ".ir.sig"
  if ← sig.pathExists then
    let ir : System.FilePath := stem ++ ".ir"
    let files := if ← ir.pathExists then #[sig, ir] else #[sig]
    names := names ++ (← partImports files)
  return names
def main : IO Unit := do
  let input ← IO.getStdin
  let output ← IO.getStdout
  repeat
    let line ← input.getLine
    if line.isEmpty then break
    let path := line.trimAscii.toString
    try
      let names ← inspect path
      output.putStrLn ((toJson names).compress)
      output.flush
    catch error =>
      throw <| IO.userError s!"object header inspection failed for {path}: {error}"
'''


class DependencyGraph:
    def __init__(self, local_sources, search_paths, compiler, cache_root=None,
                 external_imports=None, inspector_timeout=60, compiler_env=None):
        self.local_sources = {module: _absolute(path) for module, path in local_sources.items()}
        self.compiler = _absolute(compiler)
        # Lean appends its installation library even when LEAN_PATH lists only
        # Lake package roots. Match that implicit fallback after explicit paths.
        self.search_paths = list(dict.fromkeys(
            str(_absolute(path)) for path in
            [*search_paths, self.compiler.parent.parent / "lib/lean"]))
        self.compiler_hash = sha(regular_bytes(self.compiler))
        self.compiler_env = dict(os.environ if compiler_env is None else compiler_env)
        self.runtime_guard = RuntimeIdentityGuard(self.compiler, env=self.compiler_env)
        self.compiler_runtime_identity = self.runtime_guard.identity
        self.compiler_runtime_sha256 = self.runtime_guard.sha256
        self.policy = policy_identity()
        self.cache_root = _absolute(cache_root or
            Path(__file__).resolve().parents[2] / ".noeaaeue/.local/incremental-lean")
        self.external_imports = external_imports  # Only for deterministic hostile fixtures.
        if (not isinstance(inspector_timeout, (int, float)) or isinstance(inspector_timeout, bool)
                or not math.isfinite(inspector_timeout) or inspector_timeout <= 0):
            raise CacheError("object inspector timeout must be a positive finite number")
        self.inspector_timeout = float(inspector_timeout)
        self._keys, self._active, self._external, self._local = {}, set(), {}, {}
        self._inspector = None
        self._inspector_source = None
        self._inspector_stdout = b""
        self._inspector_stderr = b""

    def _inspector_failure(self, message, path):
        detail = self._inspector_stderr.decode("utf-8", errors="replace")[-65536:]
        if self._inspector is not None and self._inspector.poll() is None:
            self._inspector.kill()
        self.close()
        raise CacheError(message + " for " + str(path) + (": " + detail if detail else ""))

    def _read_inspector_response(self, path):
        """Drain both pipes under a per-request deadline, including partial lines."""
        deadline = time.monotonic() + self.inspector_timeout
        with selectors.DefaultSelector() as selector:
            for stream, label in ((self._inspector.stdout, "stdout"),
                                  (self._inspector.stderr, "stderr")):
                os.set_blocking(stream.fileno(), False)
                selector.register(stream, selectors.EVENT_READ, label)
            while True:
                if b"\n" in self._inspector_stdout:
                    line, self._inspector_stdout = self._inspector_stdout.split(b"\n", 1)
                    return line
                remaining = deadline - time.monotonic()
                if remaining <= 0:
                    self._inspector_failure(
                        "Lean object inspector timed out after " + str(self.inspector_timeout) + " seconds", path)
                ready = selector.select(min(remaining, 1.0))
                for key, _ in ready:
                    try:
                        data = os.read(key.fd, 65536)
                    except BlockingIOError:
                        continue
                    if not data:
                        selector.unregister(key.fileobj)
                        continue
                    if key.data == "stderr":
                        self._inspector_stderr = (self._inspector_stderr + data)[-65536:]
                    else:
                        self._inspector_stdout += data
                        if len(self._inspector_stdout) > 16 * 1024 * 1024:
                            self._inspector_failure("Lean object inspector exceeded its response bound", path)
                if not selector.get_map() and b"\n" not in self._inspector_stdout:
                    self._inspector_failure("Lean object inspector failed without a complete response", path)

    def _resolve(self, module):
        if not MODULE.fullmatch(module):
            raise CacheError("unsupported imported module: " + str(module))
        relative = Path(module.replace(".", "/") + ".olean")
        for base in self.search_paths:
            target = Path(base) / relative
            # A missing module's intermediate directories are ordinary search
            # misses. Existing symlinks/nonregular paths still fail closed.
            try:
                if _exists(target):
                    return target
            except CacheError:
                probe = _absolute(target.parent)
                while not probe.exists() and not probe.is_symlink():
                    probe = probe.parent
                fd = _directory(probe)
                os.close(fd)
                if target.parent.exists():
                    raise
        raise CacheError("cannot resolve imported object: " + module)

    def _inspect(self, path, family):
        self.runtime_guard.assert_stable()
        if self.external_imports is not None:
            return list(self.external_imports[path])
        material = {"schema": GRAPH_SCHEMA, "helper": sha(_HEADER_HELPER.encode()),
                    "compiler": self.compiler_hash,
                    "compiler_runtime_sha256": self.compiler_runtime_sha256, "family": family}
        key = content_key(material)
        metadata = self.cache_root / "object-imports" / (key + ".json")
        try:
            stored = _json(metadata)
            names = stored["imports"]
            if (isinstance(stored, dict) and stored.get("material") == material and isinstance(names, list)
                    and stored.get("payload_sha256") == content_key({"material": material, "imports": names})
                    and all(isinstance(name, str) and MODULE.fullmatch(name) for name in names)):
                return names
        except (FileNotFoundError, ValueError, KeyError, TypeError):
            pass
        except CacheError:
            if metadata.parent.exists():
                raise
        if self._inspector is None:
            helper = self.cache_root / "helpers" / (sha(_HEADER_HELPER.encode()) + ".lean")
            try:
                old = regular_bytes(helper)
            except (FileNotFoundError, CacheError):
                if helper.exists() or helper.is_symlink():
                    raise
                try:
                    _write(helper, _HEADER_HELPER.encode())
                except FileExistsError:
                    if regular_bytes(helper) != _HEADER_HELPER.encode():
                        raise CacheError("object inspector source changed")
            else:
                if old != _HEADER_HELPER.encode():
                    raise CacheError("object inspector source changed")
            env = dict(self.compiler_env, LEAN_PATH=str(self.compiler.parent.parent / "lib/lean"))
            env.pop("LEAN_SRC_PATH", None)
            self._inspector = subprocess.Popen(
                [str(self.compiler), "--trust=0", "--threads=1", "-DwarningAsError=true",
                 "--run", str(helper)], stdin=subprocess.PIPE, stdout=subprocess.PIPE,
                stderr=subprocess.PIPE, bufsize=0, env=env)
            self._inspector_source = helper
        if regular_bytes(self._inspector_source) != _HEADER_HELPER.encode():
            raise CacheError("object inspector source changed")
        try:
            self._inspector.stdin.write((str(path) + "\n").encode())
            self._inspector.stdin.flush()
        except (BrokenPipeError, OSError):
            # Read any native error diagnostics under the same bounded protocol.
            pass
        line = self._read_inspector_response(path)
        self.runtime_guard.assert_stable()
        try:
            names = json.loads(line)
        except ValueError as error:
            raise CacheError("invalid Lean object inspector output: " + line.decode(errors="replace")) from error
        if not isinstance(names, list) or not all(isinstance(name, str) and MODULE.fullmatch(name) for name in names):
            raise CacheError("invalid imported module identity")
        # A change between hashing and native inspection cannot acquire a key.
        if (artifact_family(path) != family
                or regular_bytes(self._inspector_source) != _HEADER_HELPER.encode()):
            raise CacheError("external object changed during header inspection")
        payload = {"material": material, "imports": names}
        _replace_file(metadata, encoded(dict(payload, payload_sha256=content_key(payload))))
        return names

    def dependencies(self, source):
        if not self._active:
            self.runtime_guard.assert_stable()
        try:
            names = source_imports(source)
            code = lean_code(source.decode("utf-8"))
        except (UnicodeError, ValueError) as error:
            raise CacheError("unsupported local Lean header") from error
        if not re.match(r"\s*(?:module\s+)?prelude\b", code):
            names = ["Init"] + names
        return [{"module": name, "key": self.key(name)} for name in dict.fromkeys(names)]

    def key(self, module):
        if not self._active:
            self.runtime_guard.assert_stable()
        if module in self._keys:
            return self._keys[module]
        if module in self._active:
            raise CacheError("cyclic compiled import graph: " + module)
        self._active.add(module)
        try:
            if module in self.local_sources:
                path = self.local_sources[module]
                source = regular_bytes(path)
                self._local[module] = sha(source)
                material = {"schema": "local-lean-closure-v1", "module": module,
                            "source_sha256": sha(source), "compiler": self.compiler_hash,
                            "compiler_runtime_sha256": self.compiler_runtime_sha256,
                            "implementation": self.policy,
                            "dependencies": self.dependencies(source)}
            else:
                path = self._resolve(module)
                family = artifact_family(path)
                self._external[module] = {"path": str(path), "artifacts": family}
                imports = self._inspect(path, family)
                material = {"schema": "external-lean-closure-v1", "module": module,
                            "path": str(path), "artifacts": family,
                            "compiler": self.compiler_hash,
                            "compiler_runtime_sha256": self.compiler_runtime_sha256,
                            "dependencies": [{"module": name, "key": self.key(name)}
                                             for name in dict.fromkeys(imports)]}
            self._keys[module] = content_key(material)
            return self._keys[module]
        finally:
            self._active.remove(module)

    def identities(self):
        return {name: value for name, value in sorted(self._external.items())}

    def assert_unchanged(self):
        if policy_identity() != self.policy:
            raise CacheError("incremental validation implementation changed during run")
        if sha(regular_bytes(self.compiler)) != self.compiler_hash:
            raise CacheError("Lean compiler changed during validation")
        self.runtime_guard.assert_unchanged()
        for name, expected in self._local.items():
            if sha(regular_bytes(self.local_sources[name])) != expected:
                raise CacheError("local source changed during validation: " + name)
        for name, expected in self._external.items():
            path = self._resolve(name)
            if str(path) != expected["path"] or artifact_family(path) != expected["artifacts"]:
                raise CacheError("external imported object family changed: " + name)

    assert_stable = assert_unchanged

    def close(self):
        if self._inspector is not None:
            try:
                self._inspector.stdin.close()
            except (BrokenPipeError, OSError):
                pass
            try:
                self._inspector.wait(timeout=5)
            except subprocess.TimeoutExpired:
                self._inspector.kill()
                self._inspector.wait(timeout=5)
            self._inspector.stdout.close()
            self._inspector.stderr.close()
            self._inspector = None

    def __enter__(self):
        return self

    def __exit__(self, *_):
        self.close()
