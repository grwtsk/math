"""Mock compiler integration checks for legacy and catalog validation reuse.

No Lean, Lake, Git, or native header-inspection subprocess is launched. Real
content keys, object-family custody, terminal origins, and cache restoration run.
"""
import contextlib
import hashlib
import io
import json
import os
from pathlib import Path
import runpy
import struct
import subprocess
import sys
import tempfile
import unittest
from unittest import mock

import incremental_lean
import run_lean_validation as driver


REPOSITORY = Path(__file__).resolve().parents[2]


def macho_image(*, loads=(), rpaths=(), kind=2, payload=b""):
    """Handcrafted thin64 fixture bytes; never executable test programs."""
    commands = []
    for command, name, offset in ([(0x8000001c, name, 12) for name in rpaths]
                                 + [(0xc, name, 24) for name in loads]):
        value = name.encode() + b"\0"
        length = (offset + len(value) + 7) // 8 * 8
        commands.append(struct.pack("<III", command, length, offset)
                        + bytes(offset - 12) + value + bytes(length - offset - len(value)))
    body = b"".join(commands)
    return struct.pack("<8I", 0xfeedfacf, 0x100000c, 0, kind,
                       len(commands), len(body), 0, 0) + body + payload


class Fixture:
    def __init__(self, folder):
        self.root = Path(folder).resolve()
        self.lean = self.root / "toolchain/bin/lean"
        self.runtime = self.root / "toolchain/lib/lean"
        self.write("toolchain/bin/lean", macho_image(
            loads=["@rpath/libLean.dylib"],
            rpaths=["@executable_path/../lib", "@executable_path/../lib/lean"],
            payload=b"mock compiler identity"))
        self.runtime_library = self.write("toolchain/lib/lean/libLean.dylib", macho_image(
            kind=6, loads=["/usr/lib/libSystem.B.dylib"], payload=b"runtime-v1"))
        self.write("toolchain/lib/lean/Init.olean", b"mock runtime object")
        for name in ("repository_paths.py", "check_math_trust.py", "project_replay.py"):
            self.write(".noeaaeue/scripts/" + name, b"# frozen fixture policy\n")
        for name in ("incremental_lean.py", "cache_math.py", "monitor_math.py"):
            self.write(".noeaaeue/scripts/" + name, (REPOSITORY / ".noeaaeue/scripts" / name).read_bytes())
        self.write("lake-manifest.json", b'{"packages":[]}\n')
        self.write(".noeaaeue/evidence/expected-declarations.json", b"[]\n")
        self.calls, self.variants, self.hook = [], {}, None
        self.discovery, self.command_argvs, self.discovery_hook = [], [], None
        self.selected_result = (0, "")

    def write(self, relative, data):
        path = self.root / relative
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_bytes(data.encode() if isinstance(data, str) else data)
        return path

    def graph(self, *args, **kwargs):
        kwargs["external_imports"] = {self.runtime / "Init.olean": []}
        return incremental_lean.DependencyGraph(*args, **kwargs)

    def check_output(self, argv, **kwargs):
        self.discovery.append(list(argv))
        incremental_lean.validate_runtime_environment(kwargs["env"])
        if self.discovery_hook is not None:
            self.discovery_hook(argv)
        if argv == ["elan", "which", "lean"]:
            return str(self.lean) + "\n"
        if argv == [str(self.lean), "--version"]:
            return "Lean 4.33.0 d8b18978322de05a8f3dba51ef03cf5461676c17\n"
        if argv == ["lake", "env", "printenv", "LEAN_PATH"]:
            return str(self.runtime) + "\n"
        raise AssertionError("unexpected subprocess: " + repr(argv))

    def command(self, argv, **kwargs):
        self.command_argvs.append(list(argv))
        incremental_lean.validate_runtime_environment(kwargs["env"])
        if argv[0] == sys.executable:
            return subprocess.CompletedProcess(argv, 0, "", "")
        if argv[0] != str(self.lean):
            raise AssertionError("unexpected native subprocess: " + repr(argv))
        path = Path(argv[-1])
        absolute = path if path.is_absolute() else Path(kwargs["cwd"]) / path
        relative = path.as_posix() if not path.is_absolute() else path.relative_to(self.root).as_posix()
        self.calls.append(relative)
        code, diagnostic = 0, ""
        if "-o" in argv:
            target = Path(argv[argv.index("-o") + 1])
            target.parent.mkdir(parents=True, exist_ok=True)
            target.write_bytes(absolute.read_bytes() + self.variants.get(relative, b""))
            Path(str(target) + ".private").write_bytes(b"private:" + target.read_bytes())
        elif relative.endswith("Prime/Checks/Audit.lean"):
            diagnostic = "a' depends on axioms: [propext]\nb' depends on axioms: [propext]\nc' depends on axioms: [propext]\n"
        elif relative.endswith("PrimeOneFalse.lean"):
            code, diagnostic = 1, "error: proposition is false\n"
        elif relative.endswith("LowerBoundFalse.lean"):
            code, diagnostic = 1, "error: Type mismatch\n"
        else:
            code, diagnostic = self.selected_result
        if self.hook is not None:
            self.hook(relative, absolute)
        return subprocess.CompletedProcess(argv, code, diagnostic, "")

    def catalog(self, role="positive-check"):
        sources = {
            "GRWTSK/A.lean": "def a : Nat := 1\n",
            "GRWTSK/B.lean": "import GRWTSK.A\ndef b : Nat := a\n",
            "GRWTSK/Independent.lean": "def independent : Nat := 3\n",
            "GRWTSK/Checks/Selected.lean": "import GRWTSK.B\nimport GRWTSK.Independent\nexample : True := True.intro\n",
        }
        for relative, raw in sources.items():
            self.write(relative, raw)
        self.selected = "GRWTSK/Checks/Selected.lean"
        self.layout = self.write(".noeaaeue/documentation/math-layout.json", json.dumps({
            "active_sources": [{"path": relative, "source_role": role if relative == self.selected else "library"}
                               for relative in sources]}))

    def run_catalog(self, cold=False):
        self.calls.clear()
        argv = ["run_lean_validation.py", self.selected] + (["--cold"] if cold else [])
        with mock.patch.object(driver, "ROOT", self.root), mock.patch.object(driver, "LAYOUT", self.layout), \
             mock.patch.object(driver, "DependencyGraph", side_effect=self.graph), \
             mock.patch.object(subprocess, "check_output", side_effect=self.check_output), \
             mock.patch.object(subprocess, "run", side_effect=self.command), \
             mock.patch.object(sys, "argv", argv), contextlib.redirect_stdout(io.StringIO()) as output:
            code = driver.main()
        summary = json.loads(output.getvalue().splitlines()[-1])
        return code, json.loads(Path(summary["receipt"]).read_bytes())

    def legacy(self):
        self.script = self.write(".noeaaeue/scripts/check.py", (REPOSITORY / ".noeaaeue/scripts/check.py").read_bytes())
        sources = {"GRWTSK.lean": "import GRWTSK.A\nimport GRWTSK.Independent\n",
                   "GRWTSK/A.lean": "def a : Nat := 1\n",
                   "GRWTSK/Independent.lean": "def independent : Nat := 3\n",
                   "GRWTSK/NumberTheory/Prime/Checks/Audit.lean": "import GRWTSK.A\n",
                   "GRWTSK/NumberTheory/Prime/Checks/Negative/PrimeOneFalse.lean": "import GRWTSK.A\n",
                   "GRWTSK/NumberTheory/Prime/Checks/Negative/LowerBoundFalse.lean": "import GRWTSK.A\n"}
        for relative, raw in sources.items():
            self.write(relative, raw)
        self.manifest_sources = list(sources)
        self.refresh_manifest()

    def refresh_manifest(self):
        files = {relative: hashlib.sha256((self.root / relative).read_bytes()).hexdigest()
                 for relative in self.manifest_sources}
        self.write(".noeaaeue/evidence/source-manifest.json", json.dumps({
            "profile": "least-natural-prime-fixture", "files": files}))

    def run_legacy(self, cold=False):
        self.calls.clear()
        with mock.patch("incremental_lean.DependencyGraph", side_effect=self.graph_factory), \
             mock.patch.object(subprocess, "check_output", side_effect=self.check_output), \
             mock.patch.object(subprocess, "run", side_effect=self.command), \
             mock.patch.object(sys, "argv", [str(self.script)] + (["--cold"] if cold else [])), \
             mock.patch.dict(os.environ, {"LEAN_PATH": str(self.runtime)}), \
             contextlib.redirect_stdout(io.StringIO()):
            result = runpy.run_path(str(self.script))
        return json.loads((result["run_directory"] / "receipt.json").read_bytes())

    def graph_factory(self, *args, **kwargs):
        kwargs["external_imports"] = {self.runtime / "Init.olean": []}
        return ORIGINAL_GRAPH(*args, **kwargs)


ORIGINAL_GRAPH = incremental_lean.DependencyGraph


class IncrementalValidationDrivers(unittest.TestCase):
    def setUp(self):
        self.no_native = contextlib.ExitStack()
        self.addCleanup(self.no_native.close)
        def blocked(*args, **kwargs):
            raise AssertionError("unmocked native/process/signal route is forbidden")
        for name in ("Popen", "run", "call", "check_call", "check_output"):
            self.no_native.enter_context(mock.patch.object(subprocess, name, side_effect=blocked))
        for name in dir(os):
            if name in ("system", "popen", "kill", "killpg", "fork", "forkpty") or name.startswith(("exec", "spawn", "posix_spawn")):
                self.no_native.enter_context(mock.patch.object(os, name, side_effect=blocked))

    def test_catalog_cold_warm_and_leaf_dependents_only(self):
        with tempfile.TemporaryDirectory() as folder:
            fixture = Fixture(folder)
            fixture.catalog()
            code, first = fixture.run_catalog()
            self.assertEqual(code, 0)
            self.assertEqual(len(fixture.calls), 4)
            origin = first["proof_validation_origin"]
            self.assertEqual(hashlib.sha256(Path(origin["path"]).read_bytes()).hexdigest(), origin["sha256"])
            self.assertFalse(Path(origin["path"]).stat().st_mode & 0o222)
            self.assertEqual(fixture.run_catalog()[0], 0)
            self.assertEqual(fixture.calls, [])
            fixture.write("GRWTSK/A.lean", "def a : Nat := 2\n")
            self.assertEqual(fixture.run_catalog()[0], 0)
            self.assertEqual(fixture.calls, ["GRWTSK/A.lean", "GRWTSK/B.lean", fixture.selected])
            self.assertEqual(fixture.run_catalog(cold=True)[0], 0)
            self.assertEqual(len(fixture.calls), 4)

    def test_actual_child_artifact_change_invalidates_dependents(self):
        with tempfile.TemporaryDirectory() as folder:
            fixture = Fixture(folder)
            fixture.catalog()
            fixture.run_catalog()
            base = fixture.root / ".noeaaeue/.local/incremental-lean/catalog-validation-v1"
            for metadata in base.glob("*/metadata.json"):
                if json.loads(metadata.read_bytes())["key_material"]["source"] == "GRWTSK/A.lean":
                    (metadata.parent / "object.olean").write_bytes(b"corrupt")
                    break
            else:
                self.fail("missing compiled leaf cache fixture")
            fixture.variants["GRWTSK/A.lean"] = b"different accepted output bytes"
            fixture.run_catalog()
            self.assertEqual(fixture.calls, ["GRWTSK/A.lean", "GRWTSK/B.lean", fixture.selected])

    def test_missing_origin_forces_fresh_commands(self):
        with tempfile.TemporaryDirectory() as folder:
            fixture = Fixture(folder)
            fixture.catalog()
            _, first = fixture.run_catalog()
            Path(first["proof_validation_origin"]["path"]).unlink()
            fixture.run_catalog()
            self.assertEqual(len(fixture.calls), 4)

    def test_negative_oracle_replayed_and_missing_inputs_never_published(self):
        with tempfile.TemporaryDirectory() as folder:
            fixture = Fixture(folder)
            fixture.catalog("negative-control")
            fixture.selected_result = (1, "error: intended proposition is false\n")
            self.assertEqual(fixture.run_catalog()[0], 0)
            self.assertEqual(fixture.run_catalog()[0], 0)
            self.assertEqual(fixture.calls, [])
        with tempfile.TemporaryDirectory() as folder:
            fixture = Fixture(folder)
            fixture.catalog("negative-control")
            fixture.selected_result = (1, "error: unknown module Broken\n")
            code, result = fixture.run_catalog()
            self.assertEqual(code, 1)
            self.assertFalse(result["cache_entries_published"])
            self.assertNotIn("proof_validation_origin", result)
            self.assertFalse(list((fixture.root / ".noeaaeue/.local/incremental-lean/catalog-validation-v1").glob("*/metadata.json")))

    def test_frozen_top_source_drift_prevents_origin_and_publication(self):
        with tempfile.TemporaryDirectory() as folder:
            fixture = Fixture(folder)
            fixture.catalog()
            def mutate(relative, source):
                if relative == fixture.selected:
                    source.chmod(0o600)
                    source.write_bytes(b"changed snapshot")
            fixture.hook = mutate
            with self.assertRaisesRegex(RuntimeError, "frozen validation source changed"):
                fixture.run_catalog()
            self.assertFalse(list((fixture.root / ".noeaaeue/.local/validation").glob("*/proof-validation-origin.json")))

    def test_cached_diagnostics_still_pass_through_current_oracle(self):
        with tempfile.TemporaryDirectory() as folder:
            fixture = Fixture(folder)
            fixture.catalog()
            fixture.selected_result = (0, "selected proof diagnostic\n")
            fixture.run_catalog()
            original = driver.accepted_diagnostic
            def reject_selected(role, returncode, diagnostic):
                return diagnostic != "selected proof diagnostic\n" and original(role, returncode, diagnostic)
            with mock.patch.object(driver, "accepted_diagnostic", side_effect=reject_selected):
                code, result = fixture.run_catalog()
            self.assertEqual(code, 1)
            self.assertEqual(fixture.calls, [])
            self.assertIs(result["commands"][-1]["cache_hit"], True)
            self.assertEqual(result["commands"][-1]["outcome"], "failed")
            self.assertNotIn("proof_validation_origin", result)

    def test_cached_origin_drift_is_rejected_at_final_validation(self):
        with tempfile.TemporaryDirectory() as folder:
            fixture = Fixture(folder)
            fixture.catalog()
            fixture.run_catalog()
            original = incremental_lean.CommandCache.lookup
            def corrupt_after_lookup(cache, material, **kwargs):
                result = original(cache, material, **kwargs)
                if result is not None and material.get("source") == fixture.selected:
                    origin = Path(result.provenance["origin_receipt"]["path"])
                    origin.chmod(0o600)
                    origin.write_bytes(origin.read_bytes() + b"\n")
                return result
            with mock.patch.object(incremental_lean.CommandCache, "lookup", new=corrupt_after_lookup):
                with self.assertRaises(incremental_lean.CacheError):
                    fixture.run_catalog()
            self.assertEqual(fixture.calls, [])
            self.assertEqual(len(list((fixture.root / ".noeaaeue/.local/validation").glob("*/proof-validation-origin.json"))), 1)

    def test_publication_failure_preserves_terminal_proof_subattempt(self):
        with tempfile.TemporaryDirectory() as folder:
            fixture = Fixture(folder)
            fixture.catalog()
            with mock.patch.object(incremental_lean.CommandCache, "publish", side_effect=RuntimeError("mock export failure")):
                with self.assertRaisesRegex(RuntimeError, "mock export failure"):
                    fixture.run_catalog()
            origin_path = next((fixture.root / ".noeaaeue/.local/validation").glob("*/proof-validation-origin.json"))
            origin = json.loads(origin_path.read_bytes())
            self.assertEqual(origin["outcome"], "passed")
            self.assertIs(origin["terminal"], True)
            report = json.loads((origin_path.parent / "cache-publication.json").read_bytes())
            self.assertEqual(report["outcome"], "failed")
            self.assertNotEqual(origin["attempt_id"], report["attempt_id"])

    def test_legacy_exact_oracles_warm_reuse_and_leaf_dependents(self):
        with tempfile.TemporaryDirectory() as folder:
            fixture = Fixture(folder)
            fixture.legacy()
            first = fixture.run_legacy()
            self.assertEqual(len(fixture.calls), 6)
            self.assertIsNotNone(first["proof_validation_origin"])
            fixture.run_legacy()
            self.assertEqual(fixture.calls, [])
            fixture.write("GRWTSK/A.lean", "def a : Nat := 2\n")
            fixture.refresh_manifest()
            fixture.run_legacy()
            self.assertEqual(len(fixture.calls), 5)
            self.assertNotIn("GRWTSK/Independent.lean", fixture.calls)
            fixture.run_legacy(cold=True)
            self.assertEqual(len(fixture.calls), 6)

    def test_runtime_descriptor_and_digest_bind_receipts_origins_and_command_keys(self):
        for mode in ("catalog", "legacy"):
            with self.subTest(mode=mode), tempfile.TemporaryDirectory() as folder:
                fixture = Fixture(folder)
                getattr(fixture, mode)()
                result = fixture.run_catalog()[1] if mode == "catalog" else fixture.run_legacy()
                runtime = incremental_lean.compiler_runtime_identity(fixture.lean, env={})
                digest = incremental_lean.compiler_runtime_digest(runtime)
                self.assertEqual(result["compiler_runtime_identity"], runtime)
                self.assertEqual(result["compiler_runtime_sha256"], digest)
                origin = json.loads(Path(result["proof_validation_origin"]["path"]).read_bytes())
                self.assertEqual(origin["evidence"]["compiler_runtime_identity"], runtime)
                self.assertEqual(origin["evidence"]["compiler_runtime_sha256"], digest)
                policy = origin["evidence"]["policy"]
                for name in ("incremental_lean.py", "cache_math.py", "monitor_math.py"):
                    self.assertIn(str(fixture.root / ".noeaaeue/scripts" / name), policy)
                namespace = "catalog-validation-v1" if mode == "catalog" else "legacy-validation-v1"
                metadata = list((fixture.root / ".noeaaeue/.local/incremental-lean" / namespace).glob("*/metadata.json"))
                self.assertTrue(metadata)
                self.assertTrue(all(json.loads(path.read_bytes())["key_material"]["compiler_runtime_sha256"] == digest
                                    for path in metadata))

    def test_runtime_library_edit_invalidates_both_drivers_with_unchanged_executable(self):
        for mode, count in (("catalog", 4), ("legacy", 6)):
            with self.subTest(mode=mode), tempfile.TemporaryDirectory() as folder:
                fixture = Fixture(folder)
                getattr(fixture, mode)()
                execute = lambda: fixture.run_catalog()[1] if mode == "catalog" else fixture.run_legacy()
                first = execute()
                execute()
                self.assertEqual(fixture.calls, [])
                binary = fixture.lean.read_bytes()
                fixture.runtime_library.write_bytes(macho_image(
                    kind=6, loads=["/usr/lib/libSystem.B.dylib"], payload=b"runtime-v2"))
                changed = execute()
                self.assertEqual(fixture.lean.read_bytes(), binary)
                self.assertEqual(len(fixture.calls), count)
                self.assertNotEqual(first["compiler_runtime_sha256"], changed["compiler_runtime_sha256"])

    def test_loader_overrides_reject_before_discovery_or_any_child(self):
        for mode in ("catalog", "legacy"):
            for name in ("DYLD_INSERT_LIBRARIES", "LD_LIBRARY_PATH", "LEAN_SYSROOT"):
                with self.subTest(mode=mode, override=name), tempfile.TemporaryDirectory() as folder:
                    fixture = Fixture(folder)
                    getattr(fixture, mode)()
                    with mock.patch.dict(os.environ, {name: "/unbound/runtime"}):
                        with self.assertRaisesRegex(incremental_lean.CacheError, "loader environment"):
                            fixture.run_catalog() if mode == "catalog" else fixture.run_legacy()
                    self.assertEqual(fixture.discovery, [])
                    self.assertEqual(fixture.command_argvs, [])

    def test_runtime_edit_during_proof_prevents_terminal_origin_and_publication(self):
        for mode in ("catalog", "legacy"):
            with self.subTest(mode=mode), tempfile.TemporaryDirectory() as folder:
                fixture = Fixture(folder)
                getattr(fixture, mode)()
                def mutate(relative, source):
                    before = fixture.runtime_library.stat()
                    fixture.runtime_library.write_bytes(fixture.runtime_library.read_bytes().replace(b"runtime-v1", b"runtime-v2"))
                    os.utime(fixture.runtime_library, ns=(before.st_atime_ns, before.st_mtime_ns))
                fixture.hook = mutate
                with self.assertRaisesRegex(incremental_lean.CacheError, "runtime custody changed"):
                    fixture.run_catalog() if mode == "catalog" else fixture.run_legacy()
                self.assertFalse(list(fixture.root.glob(".noeaaeue/.local/**/proof-validation-origin.json")))
                self.assertFalse(list(fixture.root.glob(".noeaaeue/.local/incremental-lean/*/*/metadata.json")))

    def test_legacy_observes_runtime_before_compiler_version_and_rejects_mid_version_drift(self):
        with tempfile.TemporaryDirectory() as folder:
            fixture = Fixture(folder)
            fixture.legacy()
            def mutate(argv):
                if argv == [str(fixture.lean), "--version"]:
                    fixture.runtime_library.write_bytes(fixture.runtime_library.read_bytes() + b"changed")
            fixture.discovery_hook = mutate
            with self.assertRaisesRegex(incremental_lean.CacheError, "runtime custody changed"):
                fixture.run_legacy()
            self.assertEqual(fixture.calls, [])
            self.assertFalse(list(fixture.root.glob(".noeaaeue/.local/**/proof-validation-origin.json")))


if __name__ == "__main__":
    unittest.main()
