"""Native end-to-end regressions for incremental proof acceptance.

Small isolated sources use the pinned compiler and the unchanged native audit;
no project build, mathematical source edit, or public receipt is performed.
"""
import contextlib
import hashlib
import io
import json
import os
from pathlib import Path
import subprocess
import tempfile
from types import SimpleNamespace
import unittest
from unittest import mock

import check_math_trust as guard
import incremental_math_trust as incremental


class PublicParserCustody(unittest.TestCase):
    def test_parser_sources_are_in_the_full_frozen_input_contract(self):
        for relative in (".noeaaeue/scripts/cache_math.py", ".noeaaeue/scripts/monitor_math.py"):
            self.assertIn(relative, guard.INCREMENTAL_INPUTS)
            self.assertIn(relative, incremental.INPUTS)

    def test_public_snapshot_rejects_live_and_frozen_parser_drift(self):
        base = guard.ROOT / ".noeaaeue/.local"
        base.mkdir(exist_ok=True)
        with tempfile.TemporaryDirectory(prefix="parser-custody-", dir=base) as temporary:
            root = Path(temporary)
            frozen = root / "frozen"
            for relative in guard.INCREMENTAL_INPUTS:
                path = root / relative
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_bytes(guard.read_source(guard.ROOT, relative))
            snapshot = guard.source_snapshot(root, [], "fixture-head",
                extras=guard.INCREMENTAL_INPUTS, destination=frozen)
            for relative in incremental.INPUTS[3:]:
                with self.subTest(parser=relative):
                    original = guard.read_source(root, relative)
                    self.assertEqual(snapshot["sha256"][relative], hashlib.sha256(original).hexdigest())
                    self.assertEqual(guard.read_source(frozen, relative), original)
                    (root / relative).write_bytes(original + b"\n# fixture live drift\n")
                    with self.assertRaisesRegex(RuntimeError, "input changed during replay"):
                        guard.verify_snapshot(root, snapshot, sources=[], head="fixture-head", deleted_sources=[])
                    (root / relative).write_bytes(original)
                    copy = frozen / relative
                    copy.chmod(0o600)
                    copy.write_bytes(original + b"\n# fixture frozen drift\n")
                    with self.assertRaisesRegex(RuntimeError, "frozen compiler input changed"):
                        guard.verify_frozen(frozen, snapshot)
                    copy.write_bytes(original)
                    copy.chmod(0o444)

    def test_frozen_loaded_parser_guard_precedes_any_dependency_graph(self):
        source = guard.ROOT / ".noeaaeue/.local/custody-no-execution-fixture"
        raw = {relative: guard.read_source(guard.ROOT, relative) for relative in incremental.INPUTS[3:]}
        fixture = SimpleNamespace(ROOT=guard.ROOT,
                                  read_source=lambda root, relative: raw[relative])
        with mock.patch.object(incremental, "DependencyGraph", side_effect=RuntimeError("fixture graph boundary")) as graph:
            with self.assertRaisesRegex(RuntimeError, "fixture graph boundary"):
                incremental.replay(fixture, frozen=source, modules={}, paths=[], lean="unused")
            graph.assert_called_once()
        with mock.patch.object(incremental, "verify_loaded_parser_sources", side_effect=RuntimeError("fixture stale parser")), \
                mock.patch.object(incremental, "DependencyGraph") as graph:
            with self.assertRaisesRegex(RuntimeError, "fixture stale parser"):
                incremental.replay(fixture, frozen=source, modules={}, paths=[], lean="unused")
            graph.assert_not_called()

    def test_public_receipt_runtime_mismatch_blocks_cache_and_execution(self):
        graph = SimpleNamespace(compiler_runtime_identity={"runtime": "current"},
                                compiler_runtime_sha256="current-digest")
        fixture = SimpleNamespace(ROOT=guard.ROOT)
        arguments = dict(run=None, results=[], snapshot=None, modules=None, order=None,
                         lean=None, binary_hash=None, env={}, paths=None, pins=None,
                         frozen=None, build=None, audit_source=None, native_profiles=None,
                         memory_mib=4096, graph=graph)
        for field, value in (("compiler_runtime_identity", {"runtime": "stale"}),
                             ("compiler_runtime_sha256", "stale-digest")):
            with self.subTest(field=field), mock.patch.object(incremental, "CommandCache") as cache, \
                    mock.patch.object(subprocess, "run") as native:
                with self.assertRaisesRegex(RuntimeError, "runtime differs"):
                    incremental._replay(fixture, state={field: value}, **arguments)
                cache.assert_not_called()
                native.assert_not_called()

    def test_public_preflight_runtime_guard_precedes_graph_identity_adoption(self):
        runtime = SimpleNamespace(identity={"runtime": "initial"}, assert_stable=mock.Mock())
        graph = SimpleNamespace(compiler_runtime_identity={"runtime": "later"})
        fixture = SimpleNamespace(ROOT=guard.ROOT)
        with mock.patch.object(incremental, "CommandCache") as cache, \
                mock.patch.object(subprocess, "run") as native:
            with self.assertRaisesRegex(RuntimeError, "changed before incremental replay"):
                incremental._replay(fixture, run=None, state={}, results=[], snapshot=None,
                    modules=None, order=None, lean=None, binary_hash=None, env={}, paths=None,
                    pins=None, frozen=None, build=None, audit_source=None, native_profiles=None,
                    memory_mib=4096, graph=graph, runtime_guard=runtime)
            runtime.assert_stable.assert_called_once_with(env={})
            cache.assert_not_called()
            native.assert_not_called()


class NativeIncrementalReplay(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.lean = subprocess.check_output(["elan", "which", "lean"], cwd=guard.ROOT, text=True).strip()
        version = subprocess.check_output([cls.lean, "--version"], text=True)
        if guard.LEAN_VERSION not in version or guard.LEAN_COMMIT not in version:
            raise unittest.SkipTest("pinned Lean is unavailable")
        cls.standard = str(Path(cls.lean).parent.parent / "lib/lean")
        cls.audit = guard.read_source(guard.ROOT, guard.AUDIT)
        cls.profiles = guard.owned_audit_protocol.runtime_profiles(cls.audit, "project")

    def setUp(self):
        base = guard.ROOT / ".noeaaeue/.local"
        base.mkdir(exist_ok=True)
        self.temporary = tempfile.TemporaryDirectory(prefix="incremental-native-", dir=base)
        self.root = Path(self.temporary.name)
        self.sources = {
            "GRWTSK.A": "def base : Nat := 1\n",
            "GRWTSK.B": "import GRWTSK.A\ndef derived : Nat := base + 1\n",
            "GRWTSK.C": "theorem unrelated : True := True.intro\n",
            "GRWTSK": "import GRWTSK.B\nimport GRWTSK.C\n"}
        self.order = ["GRWTSK.A", "GRWTSK.B", "GRWTSK.C", "GRWTSK"]
        self.runs = 0
        for relative in [guard.CHECKER, guard.PROTOCOL, *incremental.INPUTS]:
            path = self.root / relative
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_bytes(guard.read_source(guard.ROOT, relative))
        (self.root / "lean-toolchain").write_text("leanprover/lean4:v" + guard.LEAN_VERSION + "\n")
        (self.root / "lakefile.toml").write_text('name = "fixture"\n')
        self.fixture_guard = SimpleNamespace(**{name: getattr(guard, name) for name in (
            "CHECKER", "PROTOCOL", "read_source", "make_directory", "write_bytes", "write_json",
            "digest", "project_imports", "verify_frozen", "owned_audit_protocol", "census_records")})
        self.fixture_guard.ROOT = self.root
        self.fixture_guard.verify_snapshot = lambda root, snapshot: guard.verify_frozen(root, snapshot)
        self.fixture_guard.output = lambda *args: self.fail("fixture unexpectedly inspected a dependency checkout")

    def tearDown(self):
        self.temporary.cleanup()

    def run_fixture(self, *, cold=False, drift=False):
        self.runs += 1
        modules = {name: name.replace(".", "/") + ".lean" for name in self.sources}
        for name, body in self.sources.items():
            path = self.root / modules[name]
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text(body)
        run = self.root / "runs" / str(self.runs)
        source, build = run / "source", run / "build"
        source.mkdir(parents=True)
        build.mkdir()
        inputs = [*modules.values(), guard.CHECKER, guard.PROTOCOL,
                  *incremental.INPUTS, "lean-toolchain", "lakefile.toml"]
        snapshot = {"sources": list(modules.values()), "sha256": {}}
        for relative in inputs:
            raw = guard.read_source(self.root, relative)
            snapshot["sha256"][relative] = hashlib.sha256(raw).hexdigest()
            path = source / relative
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_bytes(raw)
        state = {"qualified_current_runtime_profile": {"scope": "isolated-fixture"}}
        env = dict(os.environ, LEAN_PATH=os.pathsep.join([str(build), self.standard]))
        env.pop("LEAN_SRC_PATH", None)
        if drift:
            self.fixture_guard.verify_snapshot = lambda *args: (_ for _ in ()).throw(RuntimeError("fixture live source drift"))
        with contextlib.redirect_stdout(io.StringIO()):
            incremental.replay(self.fixture_guard, run=run, state=state, results=[],
                snapshot=snapshot, modules=modules, order=self.order, lean=self.lean,
                binary_hash=guard.digest(Path(self.lean)), env=env, paths=[self.standard],
                pins={}, frozen=source, build=build, audit_source=self.audit,
                native_profiles=self.profiles, memory_mib=4096, cold=cold)
        return json.loads((run / "receipt.json").read_text())

    def test_warm_run_edit_dependents_and_empty_umbrella(self):
        first = self.run_fixture()
        self.assertEqual(first["incremental"]["compiled"], 4)
        self.assertEqual(first["incremental"]["audited_modules"], 4)
        warm = self.run_fixture()
        self.assertEqual(warm["incremental"]["compiled"], 0)
        self.assertEqual(warm["incremental"]["native_audit_commands"], 0)
        self.assertEqual(warm["declarations"], first["declarations"])
        self.sources["GRWTSK.A"] = "def base : Nat := 2\n"
        changed = self.run_fixture()
        self.assertEqual(changed["incremental"]["compiled"], 3)
        self.assertEqual(changed["incremental"]["audited_modules"], 3)
        compiled = {row["name"] for row in changed["results"] if not row["cache_hit"]}
        self.assertEqual(compiled, {"GRWTSK.A", "GRWTSK.B", "GRWTSK", "IncrementalProjectAudit"})
        self.sources["GRWTSK"] = "import GRWTSK.C\nimport GRWTSK.B\n"
        umbrella = self.run_fixture()
        self.assertEqual(umbrella["incremental"]["compiled"], 1)
        self.assertEqual(umbrella["incremental"]["audited_modules"], 1)
        self.assertEqual(umbrella["declaration_count"], first["declaration_count"])
        cold = self.run_fixture(cold=True)
        self.assertEqual(cold["incremental"]["compiled"], 4)
        self.assertEqual(cold["incremental"]["audited_modules"], 4)

    def test_axiom_and_sorry_cannot_be_admitted_or_cached(self):
        for bad_source in ["axiom admittedFalse : False\n", "theorem admittedFalse : False := by sorry\n"]:
            with self.subTest(source=bad_source):
                self.sources["GRWTSK.A"] = bad_source
                # Keep this consumer valid so the axiom test reaches the native audit.
                self.sources["GRWTSK.B"] = "import GRWTSK.A\n"
                with self.assertRaisesRegex(RuntimeError, "did not pass"):
                    self.run_fixture()
                self.assertFalse(list((self.root / ".noeaaeue/.local/incremental-lean/math-trust-compile-v1").glob("*/metadata.json")))
                self.assertFalse((self.root / "runs" / str(self.runs) / "receipt.json").exists())

    def test_live_drift_prevents_cache_publication(self):
        with self.assertRaisesRegex(RuntimeError, "live source drift"):
            self.run_fixture(drift=True)
        cache = self.root / ".noeaaeue/.local/incremental-lean"
        self.assertFalse(list((cache / "math-trust-compile-v1").glob("*/metadata.json")))
        self.assertFalse(list((cache / "math-trust-audit-v1").glob("*/metadata.json")))

    def test_publication_failure_keeps_terminal_origin_and_failed_publication(self):
        with mock.patch.object(incremental.CommandCache, "publish", side_effect=OSError("fixture cache I/O failure")):
            with self.assertRaisesRegex(OSError, "cache I/O failure"):
                self.run_fixture()
        run = self.root / "runs" / str(self.runs)
        origin_path = run / "proof-validation-origin.json"
        origin = json.loads(origin_path.read_text())
        self.assertTrue(origin["terminal"])
        self.assertEqual(origin["outcome"], "passed")
        self.assertTrue(origin["evidence"]["commands"])
        publication = json.loads((run / "cache-publication.json").read_text())
        self.assertEqual(publication["outcome"], "failed")
        self.assertEqual(publication["origin_receipt"]["sha256"], hashlib.sha256(origin_path.read_bytes()).hexdigest())
        self.assertFalse((run / "receipt.json").exists())


if __name__ == "__main__":
    unittest.main()
