#!/usr/bin/env python3
"""Hostile fixtures for command reuse and exact Lean dependency invalidation."""
import json
import io
import os
from pathlib import Path
import subprocess
import struct
import sys
import tempfile
import time
import unittest
from types import SimpleNamespace
from unittest import mock

import cache_math
import incremental_lean
import monitor_math
from incremental_lean import (CacheError, CommandCache, DependencyGraph,
                              GRAPH_SCHEMA, OBJECT_SUFFIXES, _HEADER_HELPER,
                              artifact_family, content_key, create_origin, encoded,
                              sha, validate_origin, verify_loaded_parser_sources,
                              compiler_runtime_identity, compiler_runtime_digest,
                              assert_compiler_runtime_unchanged, RuntimeIdentityGuard,
                              validate_runtime_environment)


def macho_image(*, loads=(), rpaths=(), kind=2, payload=b"", extra=()):
    commands = []
    for command, name, offset in ([(0x8000001c, name, 12) for name in rpaths]
                                 + [(command, name, 24) for command, name in loads]
                                 + list(extra)):
        value = name.encode() + b"\0"
        length = (offset + len(value) + 7) // 8 * 8
        commands.append(struct.pack("<III", command, length, offset)
                        + bytes(offset - 12) + value + bytes(length - offset - len(value)))
    body = b"".join(commands)
    return struct.pack("<8I", 0xfeedfacf, 0x100000c, 0, kind,
                       len(commands), len(body), 0, 0) + body + payload


class PipeProcess:
    """Real pipe protocol fixture with no child process or executable."""
    def __init__(self, stdout=b"", stderr=b"", returncode=None):
        self.stdin = io.BytesIO()
        self.writers = []
        for name, content in (("stdout", stdout), ("stderr", stderr)):
            reader, writer = os.pipe()
            setattr(self, name, os.fdopen(reader, "rb", buffering=0))
            self.writers.append(writer)
            os.write(writer, content)
        self.returncode = returncode
        if returncode is not None:
            self.close_writers()

    def close_writers(self):
        for descriptor in self.writers:
            os.close(descriptor)
        self.writers = []

    def poll(self):
        return self.returncode

    def kill(self):
        self.returncode = -9
        self.close_writers()

    def wait(self, timeout=None):
        if self.returncode is None:
            self.returncode = 0
        self.close_writers()
        return self.returncode


class IncrementalLeanTests(unittest.TestCase):
    def setUp(self):
        for name in ("subprocess.Popen", "subprocess.run", "subprocess.call",
                     "subprocess.check_call", "subprocess.check_output", "os.system",
                     "os.posix_spawn", "os.posix_spawnp", "os.fork", "os.killpg"):
            patcher = mock.patch(name, side_effect=AssertionError("external process route blocked: " + name))
            patcher.start()
            self.addCleanup(patcher.stop)
        local = Path(__file__).resolve().parents[2] / ".noeaaeue/.local"
        local.mkdir(parents=True, exist_ok=True)
        self.temp = tempfile.TemporaryDirectory(prefix="incremental-lean-fixture-", dir=local)
        self.root = Path(self.temp.name)
        self.compiler = self.root / "compiler/bin/lean"
        self.compiler.parent.mkdir(parents=True)
        self.compiler.write_bytes(macho_image(payload=b"compiler-v1"))
        self.external = self.root / "external"
        self.external.mkdir()
        self.init = self.external / "Init.olean"
        self.init.write_bytes(b"init-object")
        self.meta = {self.init: []}
        self.cache = CommandCache(self.root / "cache")
        self.material = {"source": "exact-source-hash", "flags": ["--trust=0"],
                         "policy": "audit-v1"}
        self.origin_count = 0

    def tearDown(self):
        self.temp.cleanup()

    def graph(self, sources=None, paths=None):
        return DependencyGraph(sources or {}, paths or [self.external], self.compiler,
                               cache_root=self.root / "cache", external_imports=self.meta)

    def source(self, name, body):
        path = self.root / (name.replace(".", "/") + ".lean")
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(body)
        return path

    def process(self, code=0, out="proof-checked\n", err=""):
        return subprocess.CompletedProcess(["lean"], code, out, err)

    def origin(self, cache, material=None, process=None, artifacts=None):
        self.origin_count += 1
        material = self.material if material is None else material
        process = self.process() if process is None else process
        payload = {"attempt_id": "fixture-attempt-" + str(self.origin_count),
                   "outcome": "passed", "terminal": True,
                   "evidence": {"commands": [cache.command_evidence(
                       material, process=process, artifacts=artifacts or {})],
                       "source_scope": {"A.lean": "exact-source-hash"}}}
        return create_origin(self.root / ("origin-" + str(self.origin_count) + ".json"), payload)

    def rewrite_metadata(self, cache, key, update):
        entry = cache.base / key
        payload = json.loads((entry / "metadata.json").read_text())
        update(payload)
        data = encoded(payload)
        (entry / "metadata.json").write_bytes(data)
        (entry / "metadata.sha256").write_text(sha(data) + "\n")

    def output(self, directory="build", family=OBJECT_SUFFIXES):
        destination = self.root / directory / "A.olean"
        destination.parent.mkdir(parents=True, exist_ok=True)
        for suffix in family:
            (destination.parent / ("A" + suffix)).write_bytes(("payload:" + suffix).encode())
        return destination

    def test_noop_replays_diagnostics_without_invoking_compiler(self):
        self.cache.publish(self.material, process=self.process(), provenance={"run": "first"})
        checked = []
        with mock.patch("incremental_lean.subprocess.run", side_effect=AssertionError("invoked Lean")):
            result = self.cache.run(self.material, argv=["lean", "new-path"], cwd=self.root,
                                    env={}, validate=lambda p: checked.append(p.stdout))
        self.assertTrue(result.hit)
        self.assertEqual(checked, ["proof-checked\n"])
        self.assertEqual(result.process.args, ["lean", "new-path"])
        self.assertEqual(result.provenance, {"run": "first"})

    def test_complete_output_family_is_restored_and_hashed(self):
        output = self.output()
        self.cache.publish(self.material, process=self.process(), destination=output)
        target = self.root / "new-build" / "A.olean"
        hit = self.cache.lookup(self.material, destination=target)
        self.assertTrue(hit.hit)
        self.assertEqual(artifact_family(target), artifact_family(output))
        self.assertEqual(set(hit.artifacts), set(OBJECT_SUFFIXES))

    def test_corruption_missing_and_extra_artifacts_are_cache_misses(self):
        for operation in ("corrupt", "missing", "extra"):
            with self.subTest(operation=operation):
                output = self.output(operation, family=(".olean", ".olean.private"))
                material = dict(self.material, operation=operation)
                result = self.cache.publish(material, process=self.process(), destination=output)
                entry = self.cache.base / result.key
                if operation == "corrupt":
                    (entry / "object.olean").write_bytes(b"tampered")
                elif operation == "missing":
                    (entry / "object.olean.private").unlink()
                else:
                    (entry / "object.ir").write_bytes(b"unrecorded")
                self.assertIsNone(self.cache.lookup(material, destination=self.root / "restored" / "A.olean"))
                self.assertFalse((self.root / "restored" / "A.olean").exists())

    def test_diagnostic_corruption_is_a_miss(self):
        result = self.cache.publish(self.material, process=self.process())
        (self.cache.base / result.key / "stdout").write_text("forged diagnostic")
        self.assertIsNone(self.cache.lookup(self.material))

    def test_metadata_exit_code_corruption_is_a_miss(self):
        result = self.cache.publish(self.material, process=self.process(1, err="rejected"))
        metadata = self.cache.base / result.key / "metadata.json"
        payload = json.loads(metadata.read_text())
        payload["returncode"] = 0
        metadata.write_text(json.dumps(payload))
        self.assertIsNone(self.cache.lookup(self.material))

    def test_malformed_metadata_and_utf8_do_not_install_objects(self):
        output = self.output()
        for malformed in (b"[]", b"null", b"{broken"):
            result = self.cache.publish(self.material, process=self.process(), destination=output)
            (self.cache.base / result.key / "metadata.json").write_bytes(malformed)
            target = self.root / "restored" / "A.olean"
            self.assertIsNone(self.cache.lookup(self.material, destination=target))
            self.assertFalse(target.exists())
        result = self.cache.publish(self.material, process=self.process(), destination=output)
        entry = self.cache.base / result.key
        (entry / "stdout").write_bytes(b"\xff")
        metadata = json.loads((entry / "metadata.json").read_text())
        import hashlib
        metadata["stdout_sha256"] = hashlib.sha256(b"\xff").hexdigest()
        (entry / "metadata.json").write_text(json.dumps(metadata))
        target = self.root / "restored" / "A.olean"
        self.assertIsNone(self.cache.lookup(self.material, destination=target))
        self.assertFalse(target.exists())

    def test_cold_bypasses_lookup_and_warms_verified_cache(self):
        self.cache.publish(self.material, process=self.process(out="old"))
        cache = CommandCache(self.root / "cache", cold=True)
        with mock.patch("incremental_lean.subprocess.run", return_value=self.process(out="new")) as invoke:
            result = cache.run(self.material, argv=["lean"], cwd=self.root, env={},
                               validate=lambda p: self.assertEqual(p.stdout, "new"))
        self.assertFalse(result.hit)
        self.assertEqual(invoke.call_count, 1)
        self.assertEqual(self.cache.lookup(self.material).process.stdout, "new")

    def test_flags_policy_and_rejection_oracle_scope_are_separate(self):
        self.cache.publish(self.material, process=self.process(1, err="expected marker"))
        for field, changed in (("flags", ["--trust=1"]), ("policy", "audit-v2"),
                               ("expected_rejection", ["different marker"])):
            self.assertIsNone(self.cache.lookup(dict(self.material, **{field: changed})))
        observed = []
        result = self.cache.run(self.material, argv=["lean"], cwd=self.root, env={},
                                validate=lambda p: observed.append((p.returncode, p.stderr)))
        self.assertTrue(result.hit)
        self.assertEqual(observed, [(1, "expected marker")])

    def test_validation_failure_never_publishes(self):
        def reject(_):
            raise RuntimeError("wrong rejection")
        with mock.patch("incremental_lean.subprocess.run", return_value=self.process(1)):
            with self.assertRaisesRegex(RuntimeError, "wrong rejection"):
                self.cache.run(self.material, argv=["lean"], cwd=self.root, env={}, validate=reject)
        self.assertIsNone(self.cache.lookup(self.material))

    def test_hit_is_revalidated_by_current_oracle(self):
        self.cache.publish(self.material, process=self.process(1, err="wrong failure"))
        def reject(process):
            if "correct marker" not in process.stderr:
                raise RuntimeError("wrong rejection")
        with self.assertRaisesRegex(RuntimeError, "wrong rejection"):
            self.cache.run(self.material, argv=["lean"], cwd=self.root, env={}, validate=reject)

    def test_interrupted_and_discarded_staged_runs_do_not_publish(self):
        pending = self.cache.base / ".pending-interrupted"
        pending.mkdir()
        (pending / "metadata.json").write_text("{}")
        self.assertIsNone(self.cache.lookup(self.material))
        with mock.patch("incremental_lean.subprocess.run", return_value=self.process()):
            self.cache.run(self.material, argv=["lean"], cwd=self.root, env={},
                           validate=lambda _: None, publish=False)
        self.assertIsNone(self.cache.lookup(self.material))
        self.cache.discard()
        self.assertEqual(self.cache.commit(), [])
        self.assertIsNone(self.cache.lookup(self.material))

    def test_staged_success_publishes_only_at_commit(self):
        with mock.patch("incremental_lean.subprocess.run", return_value=self.process()):
            self.cache.run(self.material, argv=["lean"], cwd=self.root, env={},
                           validate=lambda _: None, publish=False)
        self.assertIsNone(self.cache.lookup(self.material))
        self.cache.commit()
        self.assertIsNotNone(self.cache.lookup(self.material))

    def test_symlink_cache_entry_artifact_and_ancestors_fail_closed(self):
        outside = self.root / "outside"
        outside.mkdir()
        (self.cache.base / self.cache.key(self.material)).symlink_to(outside, target_is_directory=True)
        with self.assertRaises(CacheError):
            self.cache.lookup(self.material)
        linked = self.root / "linked"
        linked.symlink_to(outside, target_is_directory=True)
        with self.assertRaises(CacheError):
            CommandCache(linked / "cache")
        output = self.output()
        Path(str(output) + ".private").unlink()
        Path(str(output) + ".private").symlink_to(output)
        with self.assertRaises(CacheError):
            artifact_family(output)

    def test_source_change_rebuilds_exact_downstream_closure(self):
        sources = {"A": self.source("A", "def x := 0\n"),
                   "B": self.source("B", "import A\ndef y := x\n"),
                   "C": self.source("C", "def z := 0\n")}
        first = self.graph(sources)
        keys = {name: first.key(name) for name in sources}
        sources["A"].write_text("def x := 1\n")
        second = self.graph(sources)
        self.assertNotEqual(keys["A"], second.key("A"))
        self.assertNotEqual(keys["B"], second.key("B"))
        self.assertEqual(keys["C"], second.key("C"))
        with self.assertRaisesRegex(CacheError, "local source changed"):
            first.assert_unchanged()

    def test_compiler_and_transitive_external_family_changes_invalidate(self):
        external = self.external / "External.olean"
        external.write_bytes(b"object")
        self.meta[external] = ["Init"]
        sources = {"A": self.source("A", "import External\ndef x := 0\n")}
        first = self.graph(sources)
        key = first.key("A")
        private = self.external / "Init.olean.private"
        private.write_bytes(b"new private header")
        self.assertNotEqual(key, self.graph(sources).key("A"))
        with self.assertRaisesRegex(CacheError, "external imported object family changed"):
            first.assert_unchanged()
        private.unlink()
        self.compiler.write_bytes(macho_image(payload=b"compiler-v2"))
        self.assertNotEqual(key, self.graph(sources).key("A"))

    def test_unrelated_external_edits_do_not_invalidate(self):
        sources = {"A": self.source("A", "def x := 0\n")}
        key = self.graph(sources).key("A")
        (self.external / "Unrelated.olean").write_bytes(b"irrelevant")
        self.assertEqual(key, self.graph(sources).key("A"))

    def runtime_fixture(self):
        library = self.compiler.parent.parent / "lib/lean/libLean.dylib"
        library.parent.mkdir(parents=True, exist_ok=True)
        library.write_bytes(macho_image(kind=6, loads=[(0xc, "/usr/lib/libSystem.B.dylib")],
                                       payload=b"runtime-v1"))
        self.compiler.write_bytes(macho_image(
            rpaths=["@executable_path/../lib", "@executable_path/../lib/lean"],
            loads=[(0xc, "@rpath/libLean.dylib")]))
        return library

    def test_runtime_static_closure_binds_exact_paths_hashes_absences_and_scope(self):
        library = self.runtime_fixture()
        identity = compiler_runtime_identity(self.compiler, env={})
        self.assertEqual(identity["executable"], {"path": str(self.compiler),
            "sha256": sha(self.compiler.read_bytes()), "bytes": self.compiler.stat().st_size})
        self.assertEqual(identity["objects"][str(library)], {
            "sha256": sha(library.read_bytes()), "bytes": library.stat().st_size})
        edge = identity["resolutions"][0]
        self.assertEqual(edge["selected"], str(library))
        self.assertEqual([row["state"] for row in edge["candidates"]], ["absent", "present"])
        self.assertEqual(edge["candidates"][0]["path"], str(library.parent.parent / library.name))
        self.assertFalse(identity["scope"]["hostile_loader_confinement"])
        self.assertIn("unfingerprinted", identity["scope"]["system_runtime"])
        self.assertTrue(any(row["candidates"][0]["state"] == "trusted-os-runtime-unfingerprinted"
                            for row in identity["resolutions"][1:]))
        self.assertEqual(compiler_runtime_digest(identity), content_key(identity))
        assert_compiler_runtime_unchanged(self.compiler, identity, env={})

    def test_runtime_library_drift_invalidates_graph_without_executable_change(self):
        library = self.runtime_fixture()
        sources = {"A": self.source("A", "def x := 0\n")}
        first = self.graph(sources)
        key = first.key("A")
        executable = self.compiler.read_bytes()
        library.write_bytes(library.read_bytes() + b"different runtime proof checker")
        second = self.graph(sources)
        self.assertEqual(first.compiler_hash, second.compiler_hash)
        self.assertEqual(self.compiler.read_bytes(), executable)
        self.assertNotEqual(first.compiler_runtime_sha256, second.compiler_runtime_sha256)
        self.assertNotEqual(key, second.key("A"))
        with self.assertRaisesRegex(CacheError, "compiler runtime"):
            first.assert_unchanged()

    def test_runtime_new_earlier_shadow_and_terminal_absence_are_bound(self):
        library = self.runtime_fixture()
        before = compiler_runtime_identity(self.compiler, env={})
        shadow = library.parent.parent / library.name
        shadow.write_bytes(macho_image(kind=6, payload=b"earlier shadow"))
        after = compiler_runtime_identity(self.compiler, env={})
        self.assertEqual(after["resolutions"][0]["selected"], str(shadow))
        self.assertNotEqual(compiler_runtime_digest(before), compiler_runtime_digest(after))
        with self.assertRaisesRegex(CacheError, "runtime identity changed"):
            assert_compiler_runtime_unchanged(self.compiler, before, env={})
        shadow.unlink()
        assert_compiler_runtime_unchanged(self.compiler, before, env={})
        library.unlink()
        with self.assertRaisesRegex(CacheError, "missing required"):
            compiler_runtime_identity(self.compiler, env={})

    def test_runtime_transitive_loader_rpaths_and_inventory_are_bound(self):
        library = self.runtime_fixture()
        child = library.parent / "libChild.dylib"
        child.write_bytes(macho_image(kind=6))
        library.write_bytes(macho_image(kind=6, rpaths=["@loader_path"],
            loads=[(0x8000001f, "@rpath/libChild.dylib"), (0xc, "@loader_path/libChild.dylib")]))
        before = compiler_runtime_identity(self.compiler, env={})
        self.assertIn(str(child), before["objects"])
        self.assertTrue(any(row["loader"] == str(library)
                            and row["rpaths"][0] == str(library.parent)
                            for row in before["resolutions"]))
        extra = library.parent / "libNewLeanPlugin.dylib"
        extra.write_bytes(macho_image(kind=6, payload=b"inventory-only addition"))
        after = compiler_runtime_identity(self.compiler, env={})
        self.assertIn(str(extra), after["objects"])
        self.assertNotEqual(compiler_runtime_digest(before), compiler_runtime_digest(after))

    def test_runtime_rejects_symlink_images_ancestors_and_absent_candidates(self):
        library = self.runtime_fixture()
        shadow = library.parent.parent / library.name
        shadow.symlink_to(self.root / "missing-shadow")
        with self.assertRaisesRegex(CacheError, "linked compiler runtime"):
            compiler_runtime_identity(self.compiler, env={})
        shadow.unlink()
        alias = self.root / "compiler-alias"
        alias.symlink_to(self.compiler.parent)
        with self.assertRaisesRegex(CacheError, "unsafe compiler runtime ancestor"):
            compiler_runtime_identity(alias / "lean", env={})
        content = library.read_bytes()
        library.unlink()
        target = self.root / "actual-dylib"
        target.write_bytes(content)
        library.symlink_to(target)
        with self.assertRaises(CacheError):
            compiler_runtime_identity(self.compiler, env={})

    def test_runtime_loader_overrides_fail_closed_and_empty_policy_is_bound(self):
        self.runtime_fixture()
        self.assertEqual(validate_runtime_environment({}), {})
        with mock.patch("incremental_lean.regular_bytes", side_effect=AssertionError("unexpected file read")):
            with self.assertRaisesRegex(CacheError, "LEAN_SYSROOT"):
                validate_runtime_environment({"LEAN_SYSROOT": "/other-toolchain"})
        for name in ("DYLD_LIBRARY_PATH", "DYLD_INSERT_LIBRARIES", "DYLD_IMAGE_SUFFIX",
                     "DYLD_ROOT_PATH", "LD_LIBRARY_PATH", "LD_PRELOAD", "DYLD_UNKNOWN_FUTURE"):
            with self.subTest(name=name), self.assertRaisesRegex(CacheError, "loader environment"):
                compiler_runtime_identity(self.compiler, env={name: "/hostile"})
        before = compiler_runtime_identity(self.compiler, env={})
        empty = compiler_runtime_identity(self.compiler, env={"DYLD_LIBRARY_PATH": "", "PATH": "/unused"})
        self.assertNotEqual(compiler_runtime_digest(before), compiler_runtime_digest(empty))
        with self.assertRaises(CacheError):
            assert_compiler_runtime_unchanged(self.compiler, before, env={"LD_PRELOAD": "injected"})
        self.assertEqual(compiler_runtime_identity(self.compiler, env={"PATH": "/changed"}), before)
        with self.assertRaisesRegex(CacheError, "LEAN_SYSROOT"):
            compiler_runtime_identity(self.compiler, env={"LEAN_SYSROOT": "/other-toolchain"})

    def test_runtime_fast_guard_never_rehashes_and_full_guard_rehashes(self):
        self.runtime_fixture()
        guard = RuntimeIdentityGuard(self.compiler, env={})
        self.assertEqual(guard.sha256, compiler_runtime_digest(guard.identity))
        self.assertIs(guard.identity, guard.descriptor)
        with mock.patch("incremental_lean.regular_bytes", side_effect=AssertionError("unexpected full byte read")):
            guard.assert_stable()
            with self.assertRaisesRegex(AssertionError, "full byte read"):
                guard.assert_unchanged()
        guard.assert_unchanged()

    def test_runtime_guard_rejects_byte_edit_restore_and_shadow_create_remove(self):
        library = self.runtime_fixture()
        guard = RuntimeIdentityGuard(self.compiler, env={})
        before = library.stat()
        raw = library.read_bytes()
        library.write_bytes(raw + b"edit")
        library.write_bytes(raw)
        os.utime(library, ns=(before.st_atime_ns, before.st_mtime_ns))
        self.assertEqual(compiler_runtime_identity(self.compiler, env={}), guard.identity)
        with self.assertRaisesRegex(CacheError, "custody changed"):
            guard.assert_stable()
        guard = RuntimeIdentityGuard(self.compiler, env={})
        shadow = library.parent.parent / library.name
        shadow.write_bytes(raw)
        shadow.unlink()
        self.assertEqual(compiler_runtime_identity(self.compiler, env={}), guard.identity)
        with self.assertRaisesRegex(CacheError, "custody changed"):
            guard.assert_stable()

    def test_runtime_guard_tracks_effective_environment_and_directory_continuity(self):
        library = self.runtime_fixture()
        environment = {}
        guard = RuntimeIdentityGuard(self.compiler, env=environment)
        environment["DYLD_LIBRARY_PATH"] = ""
        with self.assertRaisesRegex(CacheError, "loader environment changed"):
            guard.assert_stable()
        environment.clear()
        guard.assert_stable()
        guard.assert_stable(env={"LEAN_PATH": "a different sealed object path"})
        guard.assert_unchanged(env={"LEAN_SRC_PATH": "a different nonloader source path"})
        with self.assertRaisesRegex(CacheError, "actual command loader environment differs"):
            guard.assert_stable(env={"LD_LIBRARY_PATH": ""})
        with self.assertRaisesRegex(CacheError, "loader environment"):
            guard.assert_stable(env={"DYLD_INSERT_LIBRARIES": "/injection"})
        moved = library.parent.with_name("lean-replaced")
        library.parent.rename(moved)
        library.parent.mkdir()
        library.write_bytes((moved / library.name).read_bytes())
        with self.assertRaisesRegex(CacheError, "custody changed"):
            guard.assert_stable()

    def test_runtime_initial_read_cannot_adopt_late_mutated_library_state(self):
        library = self.runtime_fixture()
        parser = incremental_lean._macho_image
        def changing(data, path):
            result = parser(data, path)
            if path == library:
                library.write_bytes(data + b"changed while hashing")
            return result
        with mock.patch("incremental_lean._macho_image", side_effect=changing):
            with self.assertRaisesRegex(CacheError, "changed during initial read"):
                RuntimeIdentityGuard(self.compiler, env={})

    def test_runtime_unsupported_and_malformed_formats_fail_closed(self):
        cases = [b"\x7fELF" + bytes(100), b"\xca\xfe\xba\xbe" + bytes(100),
                 b"compiler-v1", macho_image()[:31],
                 struct.pack("<8I", 0xfeedfacf, 0x100000c, 0, 2, 1, 0, 0, 0),
                 macho_image(extra=[(0x27, "DYLD_LIBRARY_PATH=/hostile", 12)]),
                 macho_image(loads=[(0xc, "relative-library.dylib")]),
                 macho_image(loads=[(0xc, "@rpath/libMissing.dylib")]),
                 macho_image(extra=[(0xe, "/private/dyld", 12)])]
        for data in cases:
            with self.subTest(data=data[:32]):
                self.compiler.write_bytes(data)
                with self.assertRaises(CacheError):
                    compiler_runtime_identity(self.compiler, env={})

    def test_runtime_optional_missing_library_and_install_id_are_not_dependencies(self):
        library = self.runtime_fixture()
        library.write_bytes(macho_image(kind=6, extra=[(0xd, "@rpath/libLean.dylib", 24)],
                                       loads=[(0x80000018, "@loader_path/optional.dylib")]))
        identity = compiler_runtime_identity(self.compiler, env={})
        missing = [row for row in identity["resolutions"] if row["name"].endswith("optional.dylib")]
        self.assertEqual(len(missing), 1)
        self.assertTrue(missing[0]["weak"])
        self.assertIsNone(missing[0]["selected"])
        self.assertEqual(len(identity["objects"]), 2)

    def test_runtime_rejects_ambiguous_system_rpath_before_private_fallback(self):
        library = self.runtime_fixture()
        for system in ("/usr/lib", "/System/Library/Frameworks"):
            self.compiler.write_bytes(macho_image(rpaths=[system, "@executable_path/../lib/lean"],
                loads=[(0xc, "@rpath/libLean.dylib")]))
            with self.subTest(system=system), self.assertRaisesRegex(CacheError, "ambiguous system @rpath"):
                compiler_runtime_identity(self.compiler, env={})
        self.assertTrue(library.is_file())

    def test_runtime_binds_transitives_of_later_present_search_candidate(self):
        library = self.runtime_fixture()
        first = library.parent.parent / library.name
        first.write_bytes(macho_image(kind=6))
        alternate = library.parent.parent / "alternate"
        alternate.mkdir()
        later = alternate / library.name
        later.write_bytes(macho_image(kind=6, loads=[(0xc, "@loader_path/libLaterChild.dylib")]))
        child = alternate / "libLaterChild.dylib"
        child.write_bytes(macho_image(kind=6))
        self.compiler.write_bytes(macho_image(
            rpaths=["@executable_path/../lib", "@executable_path/../lib/alternate"],
            loads=[(0xc, "@rpath/libLean.dylib")]))
        identity = compiler_runtime_identity(self.compiler, env={})
        self.assertEqual(identity["resolutions"][0]["selected"], str(first))
        self.assertIn(str(later), identity["objects"])
        self.assertIn(str(child), identity["objects"])
        child.write_bytes(child.read_bytes() + b"new later candidate child")
        self.assertNotEqual(compiler_runtime_digest(identity), compiler_runtime_digest(
            compiler_runtime_identity(self.compiler, env={})))

    def test_runtime_big_endian_thin_header_supported_and_wrong_architecture_rejected(self):
        self.compiler.write_bytes(struct.pack(">8I", 0xfeedfacf, 0x100000c, 0, 2, 0, 0, 0, 0))
        self.assertEqual(compiler_runtime_identity(self.compiler, env={})["cpu_type"], 0x100000c)
        library = self.runtime_fixture()
        data = bytearray(library.read_bytes())
        struct.pack_into("<I", data, 4, 0x1000007)
        library.write_bytes(data)
        with self.assertRaisesRegex(CacheError, "architecture differs"):
            compiler_runtime_identity(self.compiler, env={})

    def test_runtime_descriptor_comparison_is_typed_and_rejects_nonfinite(self):
        self.runtime_fixture()
        identity = compiler_runtime_identity(self.compiler, env={})
        hostile = json.loads(json.dumps(identity))
        hostile["cpu_subtype"] = False
        self.assertEqual(hostile, identity)  # Python equality aliases False and 0.
        self.assertNotEqual(compiler_runtime_digest(hostile), compiler_runtime_digest(identity))
        with self.assertRaisesRegex(CacheError, "identity changed"):
            assert_compiler_runtime_unchanged(self.compiler, hostile, env={})
        hostile = json.loads(json.dumps(identity))
        hostile["resolutions"][0]["weak"] = 0
        with self.assertRaisesRegex(CacheError, "identity changed"):
            assert_compiler_runtime_unchanged(self.compiler, hostile, env={})
        for value in (float("nan"), float("inf"), float("-inf")):
            with self.subTest(value=value):
                hostile = dict(identity, cpu_subtype=value)
                with self.assertRaisesRegex(CacheError, "identity encoding"):
                    compiler_runtime_digest(hostile)

    def test_search_precedence_and_shadowing_are_bound(self):
        earlier = self.root / "earlier"
        earlier.mkdir()
        sources = {"A": self.source("A", "def x := 0\n")}
        first = self.graph(sources, [earlier, self.external])
        key = first.key("A")
        shadow = earlier / "Init.olean"
        shadow.write_bytes(b"same-name-new-provider")
        self.meta[shadow] = []
        self.assertNotEqual(key, self.graph(sources, [earlier, self.external]).key("A"))
        with self.assertRaisesRegex(CacheError, "external imported object family changed"):
            first.assert_unchanged()

    def test_implicit_compiler_library_fallback_after_explicit_paths(self):
        compiler = self.root / "toolchain/bin/lean"
        compiler.parent.mkdir(parents=True)
        compiler.write_bytes(macho_image(payload=b"toolchain compiler"))
        standard = self.root / "toolchain/lib/lean"
        standard.mkdir(parents=True)
        init = standard / "Init.olean"
        init.write_bytes(b"standard init")
        graph = DependencyGraph({}, [self.root / "absent"], compiler,
                                external_imports={init: []})
        graph.key("Init")
        self.assertEqual(graph.identities()["Init"]["path"], str(init))

    def test_missing_import_cycle_and_symlink_external_are_rejected(self):
        with self.assertRaisesRegex(CacheError, "cannot resolve"):
            self.graph().key("Missing.Module")
        self.meta[self.init] = ["Init"]
        with self.assertRaisesRegex(CacheError, "cyclic"):
            self.graph().key("Init")
        self.meta[self.init] = []
        alias = self.external / "Alias.olean"
        alias.symlink_to(self.init)
        with self.assertRaises(CacheError):
            self.graph().key("Alias")

    def test_corrupt_external_import_metadata_is_reinspected(self):
        graph = DependencyGraph({}, [self.external], self.compiler,
                                cache_root=self.root / "graph-cache")
        family = artifact_family(self.init)
        material = {"schema": GRAPH_SCHEMA, "helper": sha(_HEADER_HELPER.encode()),
                    "compiler": graph.compiler_hash,
                    "compiler_runtime_sha256": graph.compiler_runtime_sha256, "family": family}
        payload = {"material": material, "imports": ["Init.Prelude"]}
        metadata = graph.cache_root / "object-imports" / (content_key(material) + ".json")
        metadata.parent.mkdir(parents=True)
        # Change a valid JSON dependency list without changing its checksum.
        metadata.write_text(json.dumps({"material": material, "imports": [],
                                        "payload_sha256": content_key(payload)}))
        helper = self.root / "HeaderReader.lean"
        helper.write_text(_HEADER_HELPER)
        graph._inspector_source = helper
        graph._inspector = SimpleNamespace(stdin=io.BytesIO())
        with mock.patch.object(graph, "_read_inspector_response", return_value=b'["Init.Prelude"]'):
            self.assertEqual(graph._inspect(self.init, family), ["Init.Prelude"])
        self.assertEqual(json.loads(metadata.read_text())["imports"], ["Init.Prelude"])

    def test_origin_is_exclusive_terminal_and_exact_command_bound(self):
        cache = CommandCache(self.root / "proof-cache", require_origin=True)
        process = self.process()
        origin = self.origin(cache, process=process)
        self.assertEqual(validate_origin(origin)["outcome"], "passed")
        result = cache.publish(self.material, process=process, provenance={"origin_receipt": origin})
        self.assertEqual(cache.lookup(self.material).provenance["origin_receipt"], origin)
        with self.assertRaises(FileExistsError):
            create_origin(origin["path"], validate_origin(origin))
        self.assertIsNotNone(cache.lookup(self.material))
        self.assertEqual(result.key, cache.key(self.material))

    def test_origin_payload_is_parsed_once_then_fully_checked_at_final_gate(self):
        cache = CommandCache(self.root / "proof-cache", require_origin=True)
        origin = self.origin(cache)
        with mock.patch("incremental_lean.validate_origin", wraps=validate_origin) as verify:
            cache.publish(self.material, process=self.process(), provenance={"origin_receipt": origin})
            for _ in range(10):
                self.assertIsNotNone(cache.lookup(self.material))
            self.assertEqual(verify.call_count, 1)
            cache.assert_origins_unchanged()
            self.assertEqual(verify.call_count, 2)

    def test_same_size_mtime_origin_tamper_rechecks_ctime_and_fails_final_gate(self):
        cache = CommandCache(self.root / "proof-cache", require_origin=True)
        origin = self.origin(cache)
        cache.publish(self.material, process=self.process(), provenance={"origin_receipt": origin})
        path = Path(origin["path"])
        before = path.stat()
        path.chmod(0o600)
        data = path.read_bytes().replace(b'"outcome":"passed"', b'"outcome":"failed"')
        path.write_bytes(data)
        os.utime(path, ns=(before.st_atime_ns, before.st_mtime_ns))
        after = path.stat()
        self.assertEqual(before.st_size, after.st_size)
        self.assertEqual(before.st_mtime_ns, after.st_mtime_ns)
        self.assertNotEqual(before.st_ctime_ns, after.st_ctime_ns)
        self.assertIsNone(cache.lookup(self.material))
        with self.assertRaisesRegex(CacheError, "origin bytes changed"):
            cache.assert_origins_unchanged()

    def test_final_origin_byte_gate_rejects_even_if_stat_identity_is_hidden(self):
        cache = CommandCache(self.root / "proof-cache", require_origin=True)
        origin = self.origin(cache)
        cache.publish(self.material, process=self.process(), provenance={"origin_receipt": origin})
        recorded = next(iter(cache._origins.values()))["stat"]
        path = Path(origin["path"])
        path.chmod(0o600)
        path.write_bytes(path.read_bytes().replace(b'"outcome":"passed"', b'"outcome":"failed"'))
        with mock.patch("incremental_lean._regular_state", return_value=recorded):
            self.assertIsNotNone(cache.lookup(self.material))
            with self.assertRaisesRegex(CacheError, "origin bytes changed"):
                cache.assert_origins_unchanged()

    def test_required_origin_cannot_be_missing_on_publication_or_lookup(self):
        generic = CommandCache(self.root / "shared-cache")
        generic.publish(self.material, process=self.process())
        cache = CommandCache(self.root / "shared-cache", require_origin=True)
        self.assertIsNone(cache.lookup(self.material))
        with self.assertRaisesRegex(CacheError, "origin identity"):
            cache.publish(self.material, process=self.process())

    def test_deleted_corrupt_nonterminal_and_mismatched_origins_are_misses(self):
        for mode in ("deleted", "corrupt", "nonterminal", "attempt"):
            with self.subTest(mode=mode):
                cache = CommandCache(self.root / ("cache-" + mode), require_origin=True)
                origin = self.origin(cache)
                result = cache.publish(self.material, process=self.process(),
                                       provenance={"origin_receipt": origin})
                path = Path(origin["path"])
                if mode == "deleted":
                    path.unlink()
                elif mode in {"corrupt", "nonterminal"}:
                    path.chmod(0o600)
                    if mode == "corrupt":
                        path.write_text("{broken")
                    else:
                        payload = json.loads(path.read_text())
                        payload["terminal"] = False
                        data = encoded(payload)
                        path.write_bytes(data)
                        # Even a checksum-consistent reference to a nonterminal
                        # origin cannot inherit its earlier proof acceptance.
                        changed = dict(origin, sha256=sha(data), bytes=len(data))
                        self.rewrite_metadata(cache, result.key,
                            lambda p: p["provenance"].update(origin_receipt=changed))
                else:
                    changed = dict(origin, attempt_id="unrelated-attempt")
                    self.rewrite_metadata(cache, result.key,
                        lambda p: p["provenance"].update(origin_receipt=changed))
                self.assertIsNone(cache.lookup(self.material))

    def test_unrelated_origin_and_changed_command_evidence_cannot_publish(self):
        cache = CommandCache(self.root / "proof-cache", require_origin=True)
        process = self.process()
        origin = self.origin(cache, process=process)
        for material, candidate in ((dict(self.material, source="other"), process),
                                    (dict(self.material, flags=["--trust=1"]), process),
                                    (dict(self.material, expected_rejection=["other"]), process),
                                    (self.material, self.process(1)),
                                    (self.material, self.process(out="other output"))):
            with self.subTest(material=material, process=candidate):
                with self.assertRaisesRegex(CacheError, "exact command evidence"):
                    cache.publish(material, process=candidate, provenance={"origin_receipt": origin})
                self.assertIsNone(cache.lookup(material))

    def test_post_guard_artifact_drift_cannot_be_adopted_by_publication(self):
        cache = CommandCache(self.root / "proof-cache", require_origin=True)
        output = self.output()
        checked_family = artifact_family(output)
        origin = self.origin(cache, artifacts=checked_family)
        output.write_bytes(b"changed after final guard")
        with self.assertRaisesRegex(CacheError, "exact command evidence"):
            cache.publish(self.material, process=self.process(), destination=output,
                          provenance={"origin_receipt": origin})
        target = self.root / "restored" / "A.olean"
        self.assertIsNone(cache.lookup(self.material, destination=target))
        self.assertFalse(target.exists())

    def test_origin_failure_or_unpassed_attempt_never_becomes_visible(self):
        cache = CommandCache(self.root / "proof-cache", require_origin=True)
        commands = [cache.command_evidence(self.material, process=self.process(), artifacts={})]
        payload = {"attempt_id": "failing-finalization", "outcome": "passed", "terminal": True,
                   "evidence": {"commands": commands}}
        target = self.root / "proof-validation-origin.json"
        with mock.patch("incremental_lean.os.link", side_effect=OSError("interrupted publication")):
            with self.assertRaisesRegex(OSError, "interrupted publication"):
                create_origin(target, payload)
        self.assertFalse(target.exists())
        for key, value in (("outcome", "failed"), ("terminal", False)):
            with self.assertRaisesRegex(CacheError, "terminal successful"):
                create_origin(target, dict(payload, **{key: value}))
            self.assertFalse(target.exists())
        with self.assertRaisesRegex(CacheError, "terminal successful"):
            create_origin(target, dict(payload, unrelated_top_level_status="passed"))
        self.assertFalse(target.exists())
        self.assertIsNone(cache.lookup(self.material))

    def test_origin_symlink_or_wrong_artifact_snapshot_cannot_authorize(self):
        cache = CommandCache(self.root / "proof-cache", require_origin=True)
        output = self.output()
        origin = self.origin(cache, artifacts={})
        with self.assertRaisesRegex(CacheError, "exact command evidence"):
            cache.publish(self.material, process=self.process(), destination=output,
                          provenance={"origin_receipt": origin})
        linked = self.root / "linked-origin.json"
        linked.symlink_to(origin["path"])
        with self.assertRaises(CacheError):
            cache.publish(self.material, process=self.process(),
                          provenance={"origin_receipt": dict(origin, path=str(linked))})

    def test_native_inspector_timeout_and_failure_are_bounded(self):
        for stdout, stderr, code, marker in ((b"", b"", None, "timed out"),
                               (b"", b"corrupt object header", 7, "corrupt object header"),
                               (b"[partial", b"", None, "timed out")):
            with self.subTest(marker=marker):
                graph = DependencyGraph({}, [self.external], self.compiler,
                                        cache_root=self.root / "graph-cache", inspector_timeout=0.1)
                process = PipeProcess(stdout, stderr, code)
                graph._inspector = process
                started = time.monotonic()
                try:
                    with self.assertRaisesRegex(CacheError, marker):
                        graph._read_inspector_response(self.init)
                    self.assertLess(time.monotonic() - started, 5)
                    self.assertIsNotNone(process.poll())
                    self.assertIsNone(graph._inspector)
                finally:
                    graph.close()

    def test_native_inspector_success_accepts_partial_reads(self):
        graph = DependencyGraph({}, [self.external], self.compiler, inspector_timeout=2)
        process = PipeProcess(b'["Init.Prelude"]\n', returncode=0)
        graph._inspector = process
        try:
            original_read = os.read
            with mock.patch("incremental_lean.os.read", side_effect=lambda fd, count: original_read(fd, min(count, 6))):
                self.assertEqual(graph._read_inspector_response(self.init), b'["Init.Prelude"]')
        finally:
            graph.close()

    def parser_sources(self):
        directory = Path(__file__).resolve().parent
        return {name: (directory / name).read_bytes()
                for name in ("cache_math.py", "monitor_math.py")}

    def test_loaded_parser_matches_exact_current_frozen_inputs(self):
        verify_loaded_parser_sources(self.parser_sources())

    def test_modified_frozen_parser_function_source_is_rejected(self):
        changes = (("cache_math.py", b"return sorted(set(result))", b"return []"),
                   ("cache_math.py", b"if not condition:", b"if condition:"),
                   ("monitor_math.py", b"out = list(text)", b"out = []"))
        for name, original, replacement in changes:
            with self.subTest(name=name, original=original):
                sources = self.parser_sources()
                self.assertIn(original, sources[name])
                sources[name] = sources[name].replace(original, replacement, 1)
                with self.assertRaisesRegex(CacheError, "code differs from frozen source"):
                    verify_loaded_parser_sources(sources)

    def test_stale_loaded_parser_code_is_rejected_with_unchanged_disk_bytes(self):
        for function, alternate in ((cache_math.imports, lambda raw: []),
                                    (cache_math.require, lambda condition, message: None),
                                    (monitor_math.lean_code, lambda text: text)):
            with self.subTest(function=function.__name__):
                original = function.__code__
                try:
                    function.__code__ = alternate.__code__
                    with self.assertRaisesRegex(CacheError, "code differs from frozen source"):
                        verify_loaded_parser_sources(self.parser_sources())
                finally:
                    function.__code__ = original

    def test_stale_or_mocked_parser_aliases_and_globals_are_rejected(self):
        changes = ((incremental_lean, "source_imports", lambda raw: []),
                   (cache_math, "lean_code", lambda text: text),
                   (cache_math, "require", lambda condition, message: None),
                   (monitor_math, "lean_code", lambda text: text))
        for module, name, replacement in changes:
            with self.subTest(module=module.__name__, name=name):
                with mock.patch.object(module, name, replacement):
                    with self.assertRaises(CacheError):
                        verify_loaded_parser_sources(self.parser_sources())

    def test_frozen_and_loaded_module_name_regex_are_both_bound(self):
        sources = self.parser_sources()
        original = b'MODULE = re.compile(r"(?:[^\\W\\d][\\w\']*)(?:\\.(?:[^\\W\\d][\\w\']*))*\\Z")'
        self.assertIn(original, sources["cache_math.py"])
        sources["cache_math.py"] = sources["cache_math.py"].replace(original, b'MODULE = re.compile(r".*")')
        with self.assertRaisesRegex(CacheError, "regex.*differs"):
            verify_loaded_parser_sources(sources)
        with mock.patch.object(cache_math, "MODULE", cache_math.re.compile(r".*")):
            with self.assertRaisesRegex(CacheError, "regex.*differs"):
                verify_loaded_parser_sources(self.parser_sources())

    def test_loaded_parser_binding_rejects_incomplete_or_invalid_frozen_sources(self):
        sources = self.parser_sources()
        with self.assertRaisesRegex(CacheError, "both exact frozen"):
            verify_loaded_parser_sources({"cache_math.py": sources["cache_math.py"]})
        with self.assertRaisesRegex(CacheError, "both exact frozen"):
            verify_loaded_parser_sources(dict(sources, extra=b"unexpected"))
        sources["cache_math.py"] = b"def imports(:\n"
        with self.assertRaisesRegex(CacheError, "cannot be compiled"):
            verify_loaded_parser_sources(sources)

    def test_prelude_and_import_modifiers_have_complete_edges(self):
        sources = {"A": self.source("A", "module\nprelude\ndef x := 0\n"),
                   "B": self.source("B", "module\npublic meta import all A\ndef z := 1\n")}
        graph = self.graph(sources)
        self.assertEqual(graph.dependencies(sources["A"].read_bytes()), [])
        self.assertEqual([row["module"] for row in graph.dependencies(sources["B"].read_bytes())],
                         ["Init", "A"])


if __name__ == "__main__":
    unittest.main()
