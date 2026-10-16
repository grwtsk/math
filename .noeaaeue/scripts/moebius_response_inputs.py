#!/usr/bin/env python3
"""Bound policy, dependency inputs and an exclusive native verification lease.

These checks establish input identities, not object-to-source provenance. Cached
dependencies are checked by Lean's kernel; their source is not replayed here.
"""
from __future__ import annotations

from contextlib import contextmanager
import builtins
import types
import ctypes
import errno
import fcntl
import hashlib
import json
import os
from pathlib import Path
import re
import stat
import subprocess
import sys


OBJECT_SUFFIXES = (".olean", ".olean.private", ".olean.server", ".ir", ".ir.sig")


def command(arguments, root=None, timeout=60):
    result = subprocess.run(arguments, cwd=root, capture_output=True, text=True,
                            timeout=timeout, env=dict(os.environ, GIT_OPTIONAL_LOCKS="0"))
    if result.returncode:
        raise ValueError("Input check failed: " + " ".join(map(str, arguments)) + "\n" + result.stderr)
    return result.stdout.strip()


def policy_module(root, read_regular):
    """Use the shared canonical rule implementation; do not duplicate its lists."""
    relative = ".noeaaeue/scripts/check_math_layout.py"
    data = read_regular(root, relative)
    # Resolve operational sibling imports from the frozen source, even if a
    # live module with that name is already present in this Python process.
    bound_modules={}
    for module, path in (("repository_paths", ".noeaaeue/scripts/repository_paths.py"),
                         ("source_observations", ".noeaaeue/scripts/source_observations.py")):
        if not any(token in data for token in (("import "+module).encode(),
                                               ("from "+module+" import").encode())):
            continue
        raw=read_regular(root,path)
        value=types.ModuleType("moebius_bound_"+module)
        value.__file__=str(root/path)
        exec(compile(raw,str(root/path),"exec"),value.__dict__)
        bound_modules[module]=value
    def bound_import(name,globals=None,locals=None,fromlist=(),level=0):
        if level==0 and name in bound_modules:
            return bound_modules[name]
        return builtins.__import__(name,globals,locals,fromlist,level)
    namespace = {"__name__": "moebius_bound_math_layout", "__file__": str(root / relative),
                 "__builtins__": {**vars(builtins), "__import__": bound_import}}
    exec(compile(data, str(root / relative), "exec"), namespace)
    return namespace, data


def require_layout(root, frozen, read_regular):
    relative = ".noeaaeue/scripts/check_math_layout.py"
    original = read_regular(root, relative)
    frozen_data = read_regular(frozen, relative)
    if original != frozen_data:
        raise ValueError("Shared mathematical layout checker changed before the gate")
    adapter_relative = ".noeaaeue/scripts/repository_paths.py"
    adapter = None
    if b"from repository_paths import" in original:
        adapter = read_regular(root, adapter_relative)
        if adapter != read_regular(frozen, adapter_relative):
            raise ValueError("Physical path adapter changed before the layout gate")
    support_relative = ".noeaaeue/scripts/source_observations.py"
    support = None
    if b"import source_observations" in original:
        support=read_regular(root,support_relative)
        if support!=read_regular(frozen,support_relative):
            raise ValueError("Current source-observation helper changed before the layout gate")
    result = subprocess.run([sys.executable, "-B", str(frozen / relative), "--root", str(root), "--json"],
                            capture_output=True, text=True, timeout=60)
    report = json.loads(result.stdout)
    if read_regular(root, relative) != original:
        raise ValueError("Shared mathematical layout checker changed during the gate")
    if adapter is not None and (read_regular(root, adapter_relative) != adapter or
            read_regular(frozen, adapter_relative) != adapter):
        raise ValueError("Physical path adapter changed during the layout gate")
    record = {"checker_sha256": hashlib.sha256(original).hexdigest(),
              "exit_code": result.returncode, "report": report,
              "scope": "Complete Git tracked and nonignored untracked source inventory; this is distinct from the manifested proof scope."}
    if adapter is not None:
        record["relocation_adapter_sha256"] = hashlib.sha256(adapter).hexdigest()
    if support is not None:
        if support!=read_regular(root,support_relative) or support!=read_regular(frozen,support_relative):
            raise ValueError("Current source-observation helper changed during the layout gate")
        record["source_observation_helper_sha256"] = hashlib.sha256(support).hexdigest()
    if result.returncode or report.get("status") != "PASS" or report.get("report_only"):
        raise ValueError("Fatal shared mathematical layout gate failed: " + json.dumps(record))
    return record


def package_pins(root, packages, read_regular):
    lock = read_regular(root, "lake-manifest.json")
    data = json.loads(lock)
    pins = {}
    for row in data["packages"]:
        name, rev = row["name"], row["rev"]
        if (not re.fullmatch(r"[A-Za-z0-9_-]+", name) or name in pins or
                not re.fullmatch(r"[0-9a-f]{40}", rev) or row.get("type") != "git"):
            raise ValueError("Only distinct exact Git dependency revisions are supported")
        pins[name] = rev
    config = read_regular(root, "lakefile.toml").decode()
    declared = re.findall(r'^\s*rev\s*=\s*"([0-9a-f]+)"\s*$', config, re.MULTILINE)
    if declared != [pins.get("mathlib")]:
        raise ValueError("Mathlib source pin does not match the Lake lock")
    states = {}
    for name, rev in sorted(pins.items()):
        package = packages / name
        # Reject a linked checkout and linked parent components before invoking Git.
        with directory_fd(package):
            pass
        observed = command(["git", "rev-parse", "HEAD"], package)
        dirty = command(["git", "status", "--porcelain=v1", "--untracked-files=no"], package)
        if observed != rev or dirty:
            raise ValueError("Dependency checkout pin/cleanliness mismatch: " + name)
        states[name] = {"head": observed, "tracked_dirty_state": dirty}
    return pins, states, hashlib.sha256(lock).hexdigest()


@contextmanager
def directory_fd(path):
    """Open all components from / without following directory links."""
    absolute = Path(os.path.abspath(path))
    descriptors = []
    try:
        descriptor = os.open("/", os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW)
        descriptors.append(descriptor)
        for component in absolute.parts[1:]:
            before = os.stat(component, dir_fd=descriptor, follow_symlinks=False)
            if not stat.S_ISDIR(before.st_mode):
                raise ValueError("Linked or non-directory input component: " + str(absolute))
            descriptor = os.open(component, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW,
                                 dir_fd=descriptor)
            descriptors.append(descriptor)
            opened = os.fstat(descriptor)
            if (before.st_dev, before.st_ino) != (opened.st_dev, opened.st_ino):
                raise ValueError("Directory component changed while opening")
        yield descriptor
    finally:
        for descriptor in reversed(descriptors):
            os.close(descriptor)


def object_inventory(base):
    paths = []
    with directory_fd(base):
        for directory, subdirs, filenames in os.walk(base, followlinks=False):
            for name in subdirs:
                if (Path(directory) / name).is_symlink():
                    raise ValueError("Linked dependency object directory")
            for name in filenames:
                path = Path(directory) / name
                if not name.endswith(OBJECT_SUFFIXES):
                    continue
                if not stat.S_ISREG(path.lstat().st_mode):
                    raise ValueError("Linked or nonregular dependency object")
                paths.append(path.relative_to(base).as_posix())
    return sorted(paths)


def snapshot_file(base, relative, target, read_regular):
    """Copy stable bytes, with optional macOS clone acceleration and byte checking."""
    original = read_regular(base, relative)
    fingerprint = hashlib.sha256(original).hexdigest()
    target.parent.mkdir(parents=True, exist_ok=True, mode=0o700)
    # The private run tree is newly created; no linked destination ancestry is allowed.
    with directory_fd(target.parent) as destination:
        if target.exists() or target.is_symlink():
            raise ValueError("Refusing existing immutable dependency destination")
        cloned = False
        library = ctypes.CDLL(None, use_errno=True)
        clone = getattr(library, "fclonefileat", None)
        if clone is not None:
            clone.argtypes = (ctypes.c_int, ctypes.c_int, ctypes.c_char_p, ctypes.c_uint)
            clone.restype = ctypes.c_int
            source_path = Path(relative)
            with directory_fd(base / source_path.parent) as parent:
                descriptor = os.open(source_path.name, os.O_RDONLY | os.O_NOFOLLOW, dir_fd=parent)
                try:
                    if not stat.S_ISREG(os.fstat(descriptor).st_mode):
                        raise ValueError("Nonregular dependency clone source")
                    result = clone(descriptor, destination, target.name.encode(), 0)
                    if result == 0:
                        cloned = True
                    elif ctypes.get_errno() not in {errno.ENOTSUP, errno.EXDEV, errno.EINVAL}:
                        raise OSError(ctypes.get_errno(), "Immutable dependency clone failed")
                finally:
                    os.close(descriptor)
        if not cloned:
            descriptor = os.open(target.name, os.O_WRONLY | os.O_CREAT | os.O_EXCL | os.O_NOFOLLOW,
                                 0o400, dir_fd=destination)
            with os.fdopen(descriptor, "wb") as stream:
                stream.write(original)
        os.chmod(target.name, 0o400, dir_fd=destination, follow_symlinks=False)
    before = target.lstat()
    frozen = read_regular(target.parent, target.name)
    if hashlib.sha256(frozen).hexdigest() != fingerprint:
        raise ValueError("Dependency changed between stable read and immutable copy")
    after = target.lstat()
    identity = lambda value: [value.st_dev, value.st_ino, value.st_size,
                              value.st_mtime_ns, value.st_ctime_ns, value.st_mode, value.st_nlink]
    if identity(before) != identity(after):
        raise ValueError("Immutable dependency changed while binding its identity")
    return {"sha256": fingerprint, "bytes": len(original), "snapshot_identity": identity(after)}


def freeze_dependencies(root, packages, lean, state, read_regular, progress=None):
    """Snapshot every importable cached object, including the Lean standard library."""
    pins, states, lock_hash = package_pins(root, packages, read_regular)
    prefix = Path(command([str(lean), "--print-prefix"]))
    bases = {name: packages / name / ".lake/build/lib/lean" for name in pins
             if (packages / name / ".lake/build/lib/lean").is_dir()}
    bases["lean-standard-library"] = prefix / "lib/lean"
    inventory = {name: object_inventory(base) for name, base in sorted(bases.items())}
    objects, roots, directories = {}, [], {}
    destination = state / "dependency-objects"
    destination.mkdir(mode=0o700)
    for name, base in sorted(bases.items()):
        target_root = destination / name
        target_root.mkdir(mode=0o700)
        roots.append(target_root)
        for relative in inventory[name]:
            key = name + "/" + relative
            objects[key] = snapshot_file(base, relative, target_root / relative, read_regular)
            if progress and len(objects) % 250 == 0:
                progress({"copied_object_count": len(objects), "active_dependency": name})
        if object_inventory(base) != inventory[name]:
            raise ValueError("Dependency object membership changed during freeze")
        for directory, subdirs, filenames in os.walk(target_root, topdown=False):
            os.chmod(directory, 0o500)
            value = Path(directory).lstat()
            directories[Path(directory).relative_to(destination).as_posix()] = [
                value.st_dev, value.st_ino, value.st_mtime_ns, value.st_ctime_ns, value.st_mode, value.st_nlink]
    if package_pins(root, packages, read_regular)[0:2] != (pins, states):
        raise ValueError("Dependency checkout changed during freeze")
    os.chmod(destination, 0o500)
    value = destination.lstat()
    directories["."] = [value.st_dev, value.st_ino, value.st_mtime_ns, value.st_ctime_ns,
                        value.st_mode, value.st_nlink]
    return roots, {"source_revisions": pins, "tracked_checkout_states": states,
                   "lake_lock_sha256": lock_hash, "immutable_object_families": objects,
                   "sealed_directory_identities": directories,
                   "unmanifested_cache_roots_excluded": sorted(p.name for p in packages.iterdir()
                       if p.name not in pins and (p / ".lake/build/lib/lean").is_dir()),
                   "scope": "All importable cached object families and core objects frozen before any source elaboration. Dependency HEADs match lock and tracked source trees are clean. Cached terms are kernel-checked at trust zero; no dependency source replay or object-to-source provenance theorem is claimed."}


def verify_dependency_snapshot(roots, record, read_regular, *, check_bytes=True):
    if roots:
        destination = roots[0].parent
        for relative, expected in record.get("sealed_directory_identities", {}).items():
            value = (destination / relative).lstat()
            identity = [value.st_dev, value.st_ino, value.st_mtime_ns, value.st_ctime_ns,
                        value.st_mode, value.st_nlink]
            if identity != expected:
                raise ValueError("Immutable dependency directory identity drift")
    for base in roots:
        expected = {key.split("/", 1)[1]: value for key, value in
                    record["immutable_object_families"].items() if key.split("/", 1)[0] == base.name}
        if object_inventory(base) != sorted(expected):
            raise ValueError("Immutable dependency object membership drift")
        for relative, value in expected.items():
            current = (base / relative).lstat()
            identity = [current.st_dev, current.st_ino, current.st_size,
                        current.st_mtime_ns, current.st_ctime_ns, current.st_mode, current.st_nlink]
            if identity != value["snapshot_identity"]:
                raise ValueError("Immutable dependency object identity drift")
            if check_bytes and hashlib.sha256(read_regular(base, relative)).hexdigest() != value["sha256"]:
                raise ValueError("Immutable dependency object bytes drift")


@contextmanager
def native_lease(lock_paths):
    """Acquire every explicit native scheduling lease without waiting or writing."""
    handles = []
    try:
        for path in sorted(map(Path, lock_paths)):
            with directory_fd(path.parent) as parent:
                descriptor = os.open(path.name, os.O_RDONLY | os.O_NOFOLLOW, dir_fd=parent)
                if not stat.S_ISREG(os.fstat(descriptor).st_mode):
                    os.close(descriptor)
                    raise ValueError("Native scheduling lease is not a regular file")
                handle = os.fdopen(descriptor, "rb")
                handles.append(handle)
                try:
                    fcntl.flock(handle, fcntl.LOCK_EX | fcntl.LOCK_NB)
                except BlockingIOError as error:
                    raise ValueError("BUSY: native verification lease held: " + str(path)) from error
        yield
    finally:
        for handle in reversed(handles):
            handle.close()


def competing_native_jobs():
    """Fail closed when native process inspection is unavailable."""
    rows = command(["ps", "-axo", "pid=,args="]).splitlines()
    jobs = []
    for row in rows:
        parts = row.strip().split(None, 1)
        if len(parts) != 2 or int(parts[0]) == os.getpid():
            continue
        executable = Path(parts[1].split(None, 1)[0]).name.casefold()
        if executable in {"lean", "lake"}:
            jobs.append({"pid": int(parts[0]), "argv": parts[1]})
    if jobs:
        raise ValueError("BUSY: existing native Lean/Lake jobs: " + json.dumps(jobs))
    return []
