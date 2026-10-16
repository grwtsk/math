#!/usr/bin/env python3
"""Verify or restore this relocatable mathematical evidence archive, using only stdlib.

Usage: python3 restore.py --verify
       python3 restore.py --destination /absolute/path/to/absent-directory

Restoration is data only: it never imports, executes, replays, or admits archived
sources or receipts. macOS/Linux descriptor-based filesystem operations are
required; hosts without no-follow directory operations fail closed.

Copyright (c) 2026 grwtsk contributors. MIT license.
Human mathematical direction: grwtsk contributors. Assistance: OpenAI Codex.
"""

import argparse
import gzip
import hashlib
import json
import os
from pathlib import Path
import re
import stat
import sys
import zlib


SCHEMA = "mathematical-evidence-archive-v1"
MAX_RAW_BYTES = 64 * 1024 * 1024
MAX_GZIP_BYTES = MAX_RAW_BYTES + 1024 * 1024
MAX_INDEX_BYTES = 64 * 1024 * 1024
CHUNK_BYTES = 64 * 1024
SHA256 = re.compile(r"[0-9a-f]{64}\Z")


class ArchiveError(Exception):
    """An invalid archive or unsafe restoration request."""


def fail(message):
    raise ArchiveError(message)


def require_platform():
    required = (os.open, os.mkdir, os.stat)
    if (not hasattr(os, "O_NOFOLLOW") or not hasattr(os, "O_DIRECTORY")
            or any(function not in os.supports_dir_fd for function in required)
            or os.listdir not in os.supports_fd or not hasattr(os, "fchmod")):
        fail("this host lacks the required no-follow descriptor operations")


def open_directory(parent_fd, name):
    fd = os.open(name, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW, dir_fd=parent_fd)
    if not stat.S_ISDIR(os.fstat(fd).st_mode):
        os.close(fd)
        fail("expected a directory: " + name)
    return fd


def open_regular_file(parent_fd, name):
    fd = os.open(name, os.O_RDONLY | os.O_NOFOLLOW | getattr(os, "O_NONBLOCK", 0), dir_fd=parent_fd)
    if not stat.S_ISREG(os.fstat(fd).st_mode):
        os.close(fd)
        fail("expected a regular file: " + name)
    return fd


def no_duplicate_json_keys(pairs):
    result = {}
    for key, value in pairs:
        if key in result:
            fail("duplicate JSON key: " + key)
        result[key] = value
    return result


def integer(value, label, maximum=None):
    if type(value) is not int or value < 0 or (maximum is not None and value > maximum):
        fail("invalid nonnegative integer: " + label)
    return value


def digest(value, label):
    if not isinstance(value, str) or SHA256.fullmatch(value) is None:
        fail("invalid SHA256: " + label)
    return value


def path_parts(value):
    if not isinstance(value, str) or "\\" in value or any(ord(c) < 32 or ord(c) == 127 for c in value):
        fail("invalid original_path")
    parts = value.split("/")
    if any(p in ("", ".", "..") for p in parts):
        fail("original_path must be a safe relative path inside the historical source root")
    return tuple(parts)


def read_index(root_fd):
    fd = open_regular_file(root_fd, "archive-index.json")
    with os.fdopen(fd, "rb") as stream:
        if os.fstat(stream.fileno()).st_size > MAX_INDEX_BYTES:
            fail("archive index exceeds the size limit")
        raw = stream.read(MAX_INDEX_BYTES + 1)
        if len(raw) > MAX_INDEX_BYTES:
            fail("archive index exceeds the size limit")
    index = json.loads(raw.decode("utf-8"), object_pairs_hook=no_duplicate_json_keys)
    if not isinstance(index, dict) or index.get("schema") != SCHEMA:
        fail("unsupported archive schema")
    files = index.get("files")
    objects = index.get("objects")
    if not isinstance(files, list) or not isinstance(objects, dict):
        fail("files must be a list and objects must be a mapping")
    for sha, entry in objects.items():
        digest(sha, "object key")
        if not isinstance(entry, dict):
            fail("invalid object metadata: " + sha)
        digest(entry.get("gzip_sha256"), "gzip_sha256")
        integer(entry.get("gzip_bytes"), "gzip_bytes", MAX_GZIP_BYTES)
        integer(entry.get("bytes"), "object bytes", MAX_RAW_BYTES)
    names = set()
    referenced = set()
    total = 0
    for entry in files:
        if not isinstance(entry, dict):
            fail("invalid file entry")
        parts = path_parts(entry.get("original_path"))
        if parts in names:
            fail("duplicate original_path: " + entry["original_path"])
        names.add(parts)
        sha = digest(entry.get("sha256"), "file sha256")
        size = integer(entry.get("bytes"), "file bytes", MAX_RAW_BYTES)
        integer(entry.get("mode"), "file mode", 0o777)
        if sha not in objects or size != objects[sha]["bytes"]:
            fail("file/object size or reference mismatch: " + entry["original_path"])
        referenced.add(sha)
        total += size
    for parts in names:
        if any(parts[:length] in names for length in range(1, len(parts))):
            fail("file/directory path collision: " + "/".join(parts))
    if referenced != set(objects):
        fail("the object mapping must equal the referenced object set")
    expected = {
        "source_file_count": len(files),
        "unique_object_count": len(objects),
        "total_file_bytes": total,
        "unique_object_bytes": sum(entry["bytes"] for entry in objects.values()),
    }
    for key, value in expected.items():
        if integer(index.get(key), key) != value:
            fail("archive index count/total mismatch: " + key)
    return index


def verify_object_inventory(root_fd, objects):
    objects_fd = open_directory(root_fd, "objects")
    try:
        shards = {sha[:2] for sha in objects}
        if set(os.listdir(objects_fd)) != shards:
            fail("objects directory has missing or unindexed shard entries")
        for shard in sorted(shards):
            shard_fd = open_directory(objects_fd, shard)
            try:
                expected = {sha + ".gz" for sha in objects if sha.startswith(shard)}
                if set(os.listdir(shard_fd)) != expected:
                    fail("object shard has missing or unindexed entries: " + shard)
            finally:
                os.close(shard_fd)
    finally:
        os.close(objects_fd)


def stat_identity(info):
    return (info.st_dev, info.st_ino, info.st_size, info.st_mtime_ns, info.st_ctime_ns)


def stream_object(root_fd, sha, entry, output=None):
    objects_fd = open_directory(root_fd, "objects")
    try:
        shard_fd = open_directory(objects_fd, sha[:2])
        try:
            fd = open_regular_file(shard_fd, sha + ".gz")
        finally:
            os.close(shard_fd)
    finally:
        os.close(objects_fd)
    with os.fdopen(fd, "rb") as stream:
        before = os.fstat(stream.fileno())
        if before.st_size != entry["gzip_bytes"]:
            fail("compressed size mismatch: " + sha)
        compressed = hashlib.sha256()
        compressed_size = 0
        first = True
        while True:
            chunk = stream.read(CHUNK_BYTES)
            if not chunk:
                break
            if first:
                if len(chunk) < 10 or chunk[:3] != b"\x1f\x8b\x08" or chunk[4:8] != b"\0\0\0\0":
                    fail("invalid gzip header or nonzero gzip mtime: " + sha)
                first = False
            compressed_size += len(chunk)
            if compressed_size > entry["gzip_bytes"]:
                fail("compressed data exceeds its declared size: " + sha)
            compressed.update(chunk)
        if compressed_size != entry["gzip_bytes"] or compressed.hexdigest() != entry["gzip_sha256"]:
            fail("compressed SHA256/size mismatch: " + sha)
        stream.seek(0)
        raw = hashlib.sha256()
        raw_size = 0
        with gzip.GzipFile(fileobj=stream, mode="rb") as decoder:
            while True:
                chunk = decoder.read(min(CHUNK_BYTES, entry["bytes"] - raw_size + 1))
                if not chunk:
                    break
                raw_size += len(chunk)
                if raw_size > entry["bytes"] or raw_size > MAX_RAW_BYTES:
                    fail("decompressed data exceeds its declared size or 64 MiB cap: " + sha)
                raw.update(chunk)
                if output is not None:
                    output.write(chunk)
            if decoder.mtime != 0:
                fail("nonzero gzip member mtime: " + sha)
        if raw_size != entry["bytes"] or raw.hexdigest() != sha:
            fail("raw SHA256/size mismatch: " + sha)
        if stat_identity(before) != stat_identity(os.fstat(stream.fileno())):
            fail("object changed during verification: " + sha)


def verify_archive(root_fd, index):
    verify_object_inventory(root_fd, index["objects"])
    for sha, entry in sorted(index["objects"].items()):
        stream_object(root_fd, sha, entry)


def open_absolute_directory(path):
    if not path.is_absolute() or ".." in path.parts:
        fail("destination must be an absolute path without parent traversal")
    fd = os.open(path.anchor, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW)
    try:
        for part in path.parts[1:]:
            next_fd = open_directory(fd, part)
            os.close(fd)
            fd = next_fd
        return fd
    except BaseException:
        os.close(fd)
        raise


def create_destination(value):
    path = Path(value)
    if not path.is_absolute() or ".." in path.parts or not path.name:
        fail("destination must be an absolute path to an absent directory")
    parent_fd = open_absolute_directory(path.parent)
    try:
        try:
            os.mkdir(path.name, 0o700, dir_fd=parent_fd)
        except FileExistsError:
            fail("destination already exists; nothing will be overwritten")
        return open_directory(parent_fd, path.name)
    finally:
        os.close(parent_fd)


def restored_parent(root_fd, parts):
    fd = os.dup(root_fd)
    try:
        for part in parts:
            try:
                os.mkdir(part, 0o755, dir_fd=fd)
            except FileExistsError:
                pass
            next_fd = open_directory(fd, part)
            os.close(fd)
            fd = next_fd
        return fd
    except BaseException:
        os.close(fd)
        raise


def restore_archive(root_fd, index, destination):
    destination_fd = create_destination(destination)
    try:
        for entry in index["files"]:
            parts = path_parts(entry["original_path"])
            parent_fd = restored_parent(destination_fd, parts[:-1])
            try:
                fd = os.open(parts[-1], os.O_WRONLY | os.O_CREAT | os.O_EXCL | os.O_NOFOLLOW,
                             0o600, dir_fd=parent_fd)
            finally:
                os.close(parent_fd)
            with os.fdopen(fd, "wb") as output:
                stream_object(root_fd, entry["sha256"], index["objects"][entry["sha256"]], output)
                output.flush()
                os.fchmod(output.fileno(), entry["mode"] & 0o777)
                os.fsync(output.fileno())
    except BaseException:
        print("Restore failed; the newly created partial destination is preserved: " + destination,
              file=sys.stderr)
        raise
    finally:
        os.close(destination_fd)


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    operation = parser.add_mutually_exclusive_group(required=True)
    operation.add_argument("--verify", action="store_true", help="verify all archive content")
    operation.add_argument("--destination", metavar="ABSENT_DIR",
                           help="verify, then restore into a new absolute directory")
    args = parser.parse_args(argv)
    try:
        require_platform()
        root = Path(__file__).absolute().parent
        root_fd = os.open(str(root), os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW)
        try:
            index = read_index(root_fd)
            verify_archive(root_fd, index)
            if args.destination is not None:
                restore_archive(root_fd, index, args.destination)
        finally:
            os.close(root_fd)
        summary = {key: index[key] for key in
                   ("source_file_count", "unique_object_count", "total_file_bytes", "unique_object_bytes")}
        summary["status"] = "RESTORED_DATA_ONLY" if args.destination is not None else "VERIFIED_DATA_ONLY"
        if args.destination is not None:
            summary["destination"] = args.destination
        print(json.dumps(summary, sort_keys=True))
        return 0
    except (ArchiveError, OSError, ValueError, EOFError, zlib.error) as error:
        print("Archive error: " + str(error), file=sys.stderr)
        return 1


if __name__ == "__main__":
    sys.exit(main())
