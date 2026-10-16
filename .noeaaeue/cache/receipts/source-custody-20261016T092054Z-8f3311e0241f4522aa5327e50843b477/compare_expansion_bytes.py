#!/usr/bin/env python3
"""Read-only independent all-file comparison; run with Python -I -B.

No project module imports, subprocesses, live source discovery, cache writes,
code execution from the expansion, or theorem admission. Only an explicitly
named cache manifest, its exact stored objects, pinned schema/adapter files,
and the explicitly named external expansion are read.
"""
import sys

if not sys.flags.isolated:
    raise SystemExit("REFUSED: invoke python3 -I -B to exclude expansion/environment imports")
sys.dont_write_bytecode = True

import argparse
import hashlib
import json
import os
from pathlib import Path, PurePosixPath
import re
import stat
import zlib

MAX_BYTES = 64 * 1024 * 1024
MAX_ENTRIES = 100000
MAX_DEPTH = 128
HASH = re.compile(r"[0-9a-f]{64}\Z")
SCHEMA = "mathematical-source-cache-v1"
SCOPE = "git-visible-first-party-GRWTSK-lean-v1"
PROOF = "unknown-unreplayed"
CATALOGS = ("docs/math-layout.json", "evidence/source-intake.json")
CONTEXT = ("lean-toolchain", "lakefile.toml", "lake-manifest.json", "LICENSE", "NOTICE")
HERE = Path(__file__).absolute().parent

# Exact bounded adapter from repository_paths.py, whose source is bound below.
# This is a physical filesystem-name map, not a rewrite of logical identities.
_PROCESS_ROOTS = frozenset({"scripts", "tests", "tools", "checks", "cache", "evidence",
    "examples", "asbn-p04", "euler-p04-rh", "hssc-p04", "ppnc-p04", ".local"})
_REFERENCE_FILES = frozenset({"content-cache.md", "documentation-history.md",
    "documentation-layout-controls.json", "documentation-layout.json",
    "documentation-review-controls.json", "lean-consolidation-report.md",
    "legacy-inventory.json", "reconstruction-recipes.json", "reconstruction.md",
    "repository-artifact-catalog.json", "rigor-and-reconstruction-report.md",
    "source-layout.md", "source-verification.md", "trust-boundary.md",
    "verification-interfaces.md"})


class Rejected(ValueError):
    pass


def require(condition, message):
    if not condition:
        raise Rejected(message)


def digest(raw):
    return hashlib.sha256(raw).hexdigest()


def canonical(value):
    return (json.dumps(value, sort_keys=True, ensure_ascii=True,
                       separators=(",", ":")) + "\n").encode("ascii")


def duplicate_free(pairs):
    result = {}
    for key, value in pairs:
        require(key not in result, "duplicate JSON key")
        result[key] = value
    return result


def decoded(raw):
    try:
        return json.loads(raw.decode("utf-8"), object_pairs_hook=duplicate_free,
                          parse_constant=lambda _: (_ for _ in ()).throw(Rejected("nonfinite JSON")))
    except (UnicodeError, json.JSONDecodeError) as error:
        raise Rejected("invalid UTF-8 JSON") from error


def safe_relative(value):
    return (isinstance(value, str) and bool(value) and "\\" not in value
            and "\x00" not in value and not value.startswith("/")
            and all(p not in {"", ".", "..", ".git"} for p in value.split("/")))


def source_path(value):
    return safe_relative(value) and (value == "GRWTSK.lean" or
           value.startswith("GRWTSK/") and value.endswith(".lean"))


def relocated_name(relative):
    name = str(relative)
    require(safe_relative(name), "noncanonical logical/physical name")
    parts = PurePosixPath(name).parts
    if parts[0] == ".noeaaeue":
        return name
    if parts[0] in _PROCESS_ROOTS:
        return ".noeaaeue/" + name
    if name == "docs/math-layout.json":
        return ".noeaaeue/documentation/math-layout.json"
    if len(parts) >= 2 and parts[:2] in {("docs", "explanation"), ("docs", "how-to")}:
        return ".noeaaeue/documentation/" + "/".join(parts[1:])
    if len(parts) >= 3 and parts[:2] == ("docs", "reference") and (
            parts[2] in _REFERENCE_FILES or parts[2] in {"rules", "taxonomy"}):
        return ".noeaaeue/documentation/" + "/".join(parts[1:])
    return name


def identity(value):
    # Access time is intentionally excluded: reading can change it.
    return (value.st_dev, value.st_ino, value.st_mode, value.st_nlink,
            value.st_size, value.st_mtime_ns, value.st_ctime_ns)


def open_absolute_directory(value):
    name = os.fspath(value)
    require(os.path.isabs(name) and os.path.normpath(name) == name,
            "directory must be explicit absolute canonical path")
    parts = Path(name).parts
    fd = os.open(parts[0], os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW)
    try:
        for part in parts[1:]:
            before = os.stat(part, dir_fd=fd, follow_symlinks=False)
            require(stat.S_ISDIR(before.st_mode), "symlink/non-directory ancestor")
            child = os.open(part, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW, dir_fd=fd)
            if identity(before) != identity(os.fstat(child)):
                os.close(child)
                raise Rejected("directory changed during open")
            os.close(fd)
            fd = child
        return fd
    except BaseException:
        os.close(fd)
        raise


def read_regular(base_fd, relative, expected_identity=None):
    require(safe_relative(relative), "unsafe relative read")
    parts = relative.split("/")
    parent = os.dup(base_fd)
    try:
        for part in parts[:-1]:
            before_dir = os.stat(part, dir_fd=parent, follow_symlinks=False)
            require(stat.S_ISDIR(before_dir.st_mode), "symlink/non-directory read ancestor")
            child = os.open(part, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW, dir_fd=parent)
            if identity(before_dir) != identity(os.fstat(child)):
                os.close(child)
                raise Rejected("read ancestor changed")
            os.close(parent)
            parent = child
        before = os.stat(parts[-1], dir_fd=parent, follow_symlinks=False)
        require(stat.S_ISREG(before.st_mode), "nonregular/symlink file rejected: " + relative)
        require(before.st_size <= MAX_BYTES, "file exceeds bounded read: " + relative)
        require(expected_identity is None or identity(before) == expected_identity,
                "enumerated file changed: " + relative)
        fd = os.open(parts[-1], os.O_RDONLY | os.O_NOFOLLOW, dir_fd=parent)
        with os.fdopen(fd, "rb") as stream:
            opened = os.fstat(stream.fileno())
            require(identity(opened) == identity(before), "file replaced during open")
            raw = stream.read(MAX_BYTES + 1)
            after_read = os.fstat(stream.fileno())
        after = os.stat(parts[-1], dir_fd=parent, follow_symlinks=False)
        require(len(raw) <= MAX_BYTES and identity(before) == identity(after_read)
                and identity(before) == identity(after), "file changed during read: " + relative)
        return raw, identity(before)
    finally:
        os.close(parent)


def enumerate_tree(root_fd):
    files, directories = {}, {"": identity(os.fstat(root_fd))}
    count = 0

    def visit(fd, prefix, depth):
        nonlocal count
        require(depth <= MAX_DEPTH, "expansion exceeds directory depth bound")
        start = identity(os.fstat(fd))
        names = sorted(os.listdir(fd))
        for name in names:
            relative = prefix + name
            require(safe_relative(relative), "unsafe expansion entry name")
            count += 1
            require(count <= MAX_ENTRIES, "expansion exceeds entry bound")
            before = os.stat(name, dir_fd=fd, follow_symlinks=False)
            if stat.S_ISREG(before.st_mode):
                files[relative] = identity(before)
            elif stat.S_ISDIR(before.st_mode):
                child = os.open(name, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW, dir_fd=fd)
                try:
                    require(identity(before) == identity(os.fstat(child)), "enumerated directory changed")
                    directories[relative] = identity(before)
                    visit(child, relative + "/", depth + 1)
                finally:
                    os.close(child)
                require(identity(before) == identity(os.stat(name, dir_fd=fd, follow_symlinks=False)),
                        "enumerated directory replaced")
            else:
                raise Rejected("symlink or special expansion entry: " + relative)
        require(names == sorted(os.listdir(fd)) and start == identity(os.fstat(fd)),
                "expansion directory changed during enumeration")
    visit(root_fd, "", 0)
    return files, directories


def load_selected_manifest(repo_fd, revision):
    require(isinstance(revision, str) and HASH.fullmatch(revision), "invalid explicit revision")
    raw, state = read_regular(repo_fd, ".noeaaeue/cache/manifests/" + revision + ".json")
    require(digest(raw) == revision, "manifest content identity mismatch")
    value = decoded(raw)
    require(canonical(value) == raw, "noncanonical manifest bytes")
    require(isinstance(value, dict) and value.get("schema") == SCHEMA
            and value.get("scope") == SCOPE and value.get("proof_status") == PROOF
            and value.get("mathematical_acceptance") is False, "schema/scope/status mismatch")
    require(value.get("parent") is None or isinstance(value.get("parent"), str)
            and HASH.fullmatch(value["parent"]), "invalid parent identity")
    return value, raw, state


def expected_files(manifest):
    expected, sources = {}, manifest.get("sources")
    require(isinstance(sources, list) and sources and type(manifest.get("source_count")) is int
            and manifest["source_count"] == len(sources), "invalid source inventory count")
    for section in ("sources", "catalogs", "context_files"):
        entries = manifest.get(section)
        require(isinstance(entries, list), "missing file section")
        seen = set()
        for entry in entries:
            require(isinstance(entry, dict), "invalid file record")
            path = entry.get("path")
            require(safe_relative(path) and path not in expected and path not in seen,
                    "unsafe/duplicate logical file identity")
            seen.add(path)
            if section == "sources":
                require(source_path(path) and entry.get("id") == "source:" + path
                        and entry.get("module") == path[:-5].replace("/", "."), "source identity mismatch")
            elif section == "catalogs":
                require(path in CATALOGS, "unexpected catalog identity")
            else:
                require(path in CONTEXT or path.startswith("LICENSES/") and path.endswith(".txt"),
                        "unexpected context identity")
            metadata = entry.get("blob")
            require(isinstance(metadata, dict) and metadata.get("compression") == "zlib", "invalid blob metadata")
            for key in ("raw_bytes", "compressed_bytes"):
                require(type(metadata.get(key)) is int and 0 <= metadata[key] <= MAX_BYTES, "invalid object size")
            for key in ("raw_sha256", "compressed_sha256"):
                require(isinstance(metadata.get(key), str) and HASH.fullmatch(metadata[key]), "invalid object hash")
            expected[path] = {"section": section, "blob": metadata, "physical": relocated_name(path)}
    require([x["path"] for x in sources] == sorted(x["path"] for x in sources), "noncanonical source order")
    require(manifest.get("source_inventory") == [{"id": x["id"], "path": x["path"],
            "raw_sha256": x["blob"]["raw_sha256"]} for x in sources], "source identity coverage mismatch")
    physical = [x["physical"] for x in expected.values()]
    require(len(physical) == len(set(physical)), "logical-to-physical relocation is not one-to-one")
    directories = {""}
    for name in physical:
        parts = name.split("/")
        directories.update("/".join(parts[:i]) for i in range(1, len(parts)))
    require(not (set(physical) & directories), "file/directory prefix collision")
    require(len(expected) <= MAX_ENTRIES and len(directories) <= MAX_ENTRIES, "manifest entry bound exceeded")
    return expected, directories


def object_bytes(repo_fd, metadata):
    raw_hash = metadata["raw_sha256"]
    path = ".noeaaeue/cache/objects/" + raw_hash[:2] + "/" + raw_hash + ".zlib"
    packed, identity_before = read_regular(repo_fd, path)
    require(len(packed) == metadata["compressed_bytes"]
            and digest(packed) == metadata["compressed_sha256"], "compressed stored object mismatch")
    try:
        decoder = zlib.decompressobj()
        raw = decoder.decompress(packed, metadata["raw_bytes"] + 1)
        require(decoder.eof and not decoder.unused_data and not decoder.unconsumed_tail,
                "truncated/trailing/oversized zlib stream")
    except zlib.error as error:
        raise Rejected("invalid zlib object") from error
    require(len(raw) == metadata["raw_bytes"] and digest(raw) == raw_hash, "stored raw object mismatch")
    return raw, path, identity_before


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repository", default="/Users/local/Desktop/math")
    parser.add_argument("--revision", required=True, help="explicit newly returned revision R; no current-ref lookup")
    parser.add_argument("--destination", required=True, help="existing external expansion directory")
    args = parser.parse_args()
    repo_name, dest_name = args.repository, args.destination
    require(os.path.isabs(repo_name) and os.path.isabs(dest_name), "absolute directories required")
    require(os.path.commonpath([repo_name, dest_name]) not in (repo_name, dest_name),
            "destination must be outside repository and not its ancestor")
    local_fd = open_absolute_directory(str(HERE))
    repo_fd = dest_fd = None
    try:
        binding_raw, _ = read_regular(local_fd, "comparison-helper-manifest.json")
        binding = decoded(binding_raw)
        helper_raw, _ = read_regular(local_fd, "compare_expansion_bytes.py")
        require(digest(helper_raw) == binding["helper_sha256"], "reviewed helper bytes changed")
        repo_fd = open_absolute_directory(repo_name)
        dest_fd = open_absolute_directory(dest_name)
        repo_identity, dest_identity = identity(os.fstat(repo_fd)), identity(os.fstat(dest_fd))
        bound_states = {}
        for row in binding["schema_inputs"]:
            raw, state = read_regular(repo_fd, row["path"])
            require(digest(raw) == row["sha256"] and len(raw) == row["bytes"], "schema/adapter source drift")
            bound_states[row["path"]] = state
        prior, prior_raw, prior_state = load_selected_manifest(repo_fd, binding["prior_revision"])
        prior_expected, _ = expected_files(prior)
        manifest, manifest_raw, manifest_state = load_selected_manifest(repo_fd, args.revision)
        expected, expected_dirs = expected_files(manifest)
        actual, actual_dirs = enumerate_tree(dest_fd)
        physical = {x["physical"] for x in expected.values()}
        require(set(actual) == physical, "expanded file set differs: missing="
                + str(len(physical - set(actual))) + " extra=" + str(len(set(actual) - physical)))
        require(set(actual_dirs) == expected_dirs, "expanded directory set differs from exact required parents")
        cache_reads, raw_total = {}, 0
        for logical, row in sorted(expected.items()):
            raw, object_path, object_state = object_bytes(repo_fd, row["blob"])
            if object_path in cache_reads:
                require(cache_reads[object_path][0] == object_state
                        and cache_reads[object_path][1] == row["blob"], "stored object alias mismatch")
            cache_reads[object_path] = object_state, row["blob"]
            expanded, _ = read_regular(dest_fd, row["physical"], actual[row["physical"]])
            require(expanded == raw, "expanded raw bytes differ: " + row["physical"])
            raw_total += len(raw)
        # Re-read only explicitly expected objects and metadata. No live source
        # discovery or source-tree comparison is performed at any point.
        for object_path, (old_state, metadata) in cache_reads.items():
            packed, state = read_regular(repo_fd, object_path, old_state)
            require(len(packed) == metadata["compressed_bytes"]
                    and digest(packed) == metadata["compressed_sha256"], "stored object changed at final guard")
        require(read_regular(repo_fd, ".noeaaeue/cache/manifests/" + args.revision + ".json", manifest_state)[0]
                == manifest_raw, "selected manifest changed")
        require(read_regular(repo_fd, ".noeaaeue/cache/manifests/" + binding["prior_revision"] + ".json", prior_state)[0]
                == prior_raw, "prior manifest changed")
        for row in binding["schema_inputs"]:
            require(digest(read_regular(repo_fd, row["path"], bound_states[row["path"]])[0])
                    == row["sha256"], "schema source changed at final guard")
        require((actual, actual_dirs) == enumerate_tree(dest_fd), "expansion changed during full comparison")
        fresh_repo = open_absolute_directory(repo_name)
        fresh_dest = open_absolute_directory(dest_name)
        try:
            require(identity(os.fstat(repo_fd)) == identity(os.fstat(fresh_repo)) == repo_identity,
                    "repository root changed during comparison")
            require(identity(os.fstat(dest_fd)) == identity(os.fstat(fresh_dest)) == dest_identity,
                    "expansion root changed during comparison")
        finally:
            os.close(fresh_repo)
            os.close(fresh_dest)
        require(read_regular(local_fd, "comparison-helper-manifest.json")[0] == binding_raw,
                "comparison binding changed")
        require(digest(read_regular(local_fd, "compare_expansion_bytes.py")[0]) == binding["helper_sha256"],
                "comparison helper changed")
        print(json.dumps({"status": "ALL_EXPECTED_PHYSICAL_FILES_AND_RAW_BYTES_EQUAL",
            "revision": args.revision, "manifest_sha256": digest(manifest_raw),
            "prior_revision": binding["prior_revision"], "parent_equals_prior": manifest["parent"] == binding["prior_revision"],
            "destination": dest_name, "source_count": len(manifest["sources"]),
            "catalog_count": len(manifest["catalogs"]), "context_count": len(manifest["context_files"]),
            "logical_file_count": len(expected), "physical_file_count": len(actual),
            "physical_directory_count": len(actual_dirs) - 1, "compared_raw_bytes": raw_total,
            "one_to_one_logical_physical_mapping": True,
            "added_logical_paths_since_prior": len(set(expected) - set(prior_expected)),
            "removed_logical_paths_since_prior": len(set(prior_expected) - set(expected)),
            "live_repository_source_scan": False, "expanded_code_executed": False,
            "cache_or_shared_writes": False, "proof_status": PROOF,
            "mathematical_acceptance": False,
            "scope": "Observed physical file/directory sets and every expanded raw byte equal selected stored objects; no global atomic snapshot, revision-chain proof, source freshness, parser refinement or Lean validation."},
            sort_keys=True, indent=2))
        return 0
    finally:
        for fd in (dest_fd, repo_fd, local_fd):
            if fd is not None:
                os.close(fd)


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (Rejected, OSError, ValueError, TypeError, KeyError) as error:
        print(json.dumps({"status": "REJECTED", "error": str(error),
                          "proof_status": PROOF, "mathematical_acceptance": False}), file=sys.stderr)
        raise SystemExit(1)
