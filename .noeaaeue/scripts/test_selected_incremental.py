"""Selected validators reuse only commands from complete accepted replays."""
import hashlib
import json
import ast
import os
from pathlib import Path
import subprocess
import struct
import tempfile
from types import SimpleNamespace
import unittest
from unittest.mock import patch

from incremental_lean import CacheError, DependencyGraph, create_origin
from selected_incremental import SelectedReplayCache, SelectedCompilerDiscovery


def fixture_macho(kind=2, *, loads=(), rpaths=()):
    commands = []
    for code, offset, name in [(0x8000001c, 12, name) for name in rpaths] + [
            (0xc, 24, name) for name in loads]:
        raw = name.encode() + b"\0"
        size = (offset + len(raw) + 7) // 8 * 8
        commands.append(struct.pack("<III", code, size, offset) + b"\0" * (offset - 12)
                        + raw + b"\0" * (size - offset - len(raw)))
    body = b"".join(commands)
    return struct.pack("<8I", 0xfeedfacf, 0x100000c, 0, kind, len(commands), len(body), 0, 0) + body


class SelectedIncremental(unittest.TestCase):
    def setUp(self):
        for name in ("subprocess.Popen", "subprocess.run", "subprocess.call",
                     "subprocess.check_call", "subprocess.check_output", "os.system",
                     "os.posix_spawn", "os.posix_spawnp", "os.fork", "os.killpg"):
            patcher = patch(name, side_effect=AssertionError("external process route blocked: " + name))
            patcher.start()
            self.addCleanup(patcher.stop)
        self.temporary = tempfile.TemporaryDirectory()
        self.addCleanup(self.temporary.cleanup)
        self.root = Path(self.temporary.name).resolve()
        self.compiler = self.root / "toolchain/bin/lean"
        self.compiler.parent.mkdir(parents=True)
        self.runtime = self.root / "toolchain/lib/lean/libFixture.dylib"
        self.runtime.parent.mkdir(parents=True)
        self.runtime.write_bytes(fixture_macho(6))
        self.compiler.write_bytes(fixture_macho(
            loads=("@rpath/libFixture.dylib",),
            rpaths=("@executable_path/../lib", "@executable_path/../lib/lean")))
        self.dependency = self.root / "dependencies"
        self.dependency.mkdir()
        self.init = self.dependency / "Init.olean"
        self.init.write_bytes(b"pinned Init")
        self.bodies = {
            "GRWTSK/A.lean": b"def a := 1\n",
            "GRWTSK/B.lean": b"import GRWTSK.A\ndef b := a\n",
            "GRWTSK/C.lean": b"def c := 3\n",
            "SelectedAudit.lean": b"import GRWTSK.B GRWTSK.C\n#check b\n",
            "Negative.lean": b"import GRWTSK.B\nexample : b = 0 := rfl\n",
            "validator.py": b"complete audit and exact negative oracle version 1",
        }
        self.calls = []
        self.counter = 0
        self.flags = {}
        self.object_prefix = b"checked object\n"

    def replay(self, *, cold=False, runtime_guard=None):
        self.counter += 1
        run = self.root / ("run-" + str(self.counter))
        source, build = run / "source", run / "build"
        source.mkdir(parents=True)
        build.mkdir()
        for relative, body in self.bodies.items():
            path = source / relative
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_bytes(body)
        guard = SimpleNamespace(
            read_source=lambda root, relative: (root / relative).read_bytes(),
            write_bytes=lambda path, raw: path.write_bytes(raw),
            ALLOWED_AXIOMS={"propext", "Classical.choice", "Quot.sound"})
        receipt = {
            "schema": "fixture-selected-replay-v1", "outcome": "running",
            "compiler_sha256": hashlib.sha256(self.compiler.read_bytes()).hexdigest(),
            "allowed_axioms": sorted(guard.ALLOWED_AXIOMS), "trust": 0, "fatal_warnings": True,
            "library_order": ["GRWTSK/A.lean", "GRWTSK/B.lean", "GRWTSK/C.lean"],
            "declarations": [], "modules": [], "results": [],
        }
        adapter = SelectedReplayCache(
            self.root, guard, source, build, dict(self.bodies),
            [str(self.dependency)], self.compiler, receipt, cold=cold, runtime_guard=runtime_guard)
        local = {path.relative_to(source).with_suffix("").as_posix().replace("/", "."): path
                 for path in source.rglob("*.lean")}
        adapter.graph = DependencyGraph(
            local, [str(self.dependency)], self.compiler,
            cache_root=self.root / "graph", external_imports={self.init: []})
        self.addCleanup(adapter.close)
        return adapter, source, build, receipt

    def discover(self):
        discovery = SelectedCompilerDiscovery()
        discovery.reset()
        with patch("selected_incremental.subprocess.check_output", return_value=str(self.compiler)):
            discovery.command(("elan", "which", "lean"), cwd=self.root)
        return discovery

    def test_discovery_rejects_ambient_loader_environment_before_any_child(self):
        for variable in ("DYLD_LIBRARY_PATH", "LD_PRELOAD", "LEAN_SYSROOT"):
            with self.subTest(variable=variable), patch.dict(os.environ, {variable: "/override"}, clear=True):
                discovery = SelectedCompilerDiscovery()
                with patch("selected_incremental.subprocess.check_output") as child:
                    with self.assertRaisesRegex(CacheError, "loader environment"):
                        discovery.reset()
                    with self.assertRaisesRegex(CacheError, "loader environment"):
                        discovery.command(("elan", "which", "lean"), cwd=self.root)
                    child.assert_not_called()

    def test_discovery_retains_same_runtime_through_version_lake_and_adoption(self):
        discovery = self.discover()
        guard = discovery.require_guard(str(self.compiler))
        with patch("selected_incremental.subprocess.check_output", side_effect=["Lean version pinned", str(self.dependency)]) as child:
            self.assertEqual(discovery.command((str(self.compiler), "--version"), cwd=self.root), "Lean version pinned")
            discovery.command(("lake", "env", "printenv", "LEAN_PATH"), cwd=self.root)
            self.assertTrue(all("env" in call.kwargs for call in child.call_args_list))
        adapter, _, _, receipt = self.replay(runtime_guard=discovery.require_guard(str(self.compiler)))
        self.assertIs(adapter.runtime_guard, guard)
        self.assertEqual(receipt["compiler_runtime_sha256"], guard.sha256)
        discovery.reset()
        self.assertIsNone(discovery.runtime_guard)

    def test_discovery_detects_runtime_edit_restore_during_version(self):
        discovery = self.discover()
        def changed(*args, **kwargs):
            raw = self.runtime.read_bytes()
            self.runtime.write_bytes(raw + b"temporary replacement")
            self.runtime.write_bytes(raw)
            return "Lean version pinned"
        with patch("selected_incremental.subprocess.check_output", side_effect=changed) as child:
            with self.assertRaisesRegex(CacheError, "custody changed"):
                discovery.command((str(self.compiler), "--version"), cwd=self.root)
            self.assertEqual(child.call_count, 1)
        with self.assertRaisesRegex(CacheError, "custody changed"):
            discovery.require_guard(str(self.compiler))

    def test_discovery_rejects_pre_lake_drift_and_late_ambient_override(self):
        discovery = self.discover()
        with patch.dict(os.environ, {"DYLD_INSERT_LIBRARIES": "/override"}):
            with patch("selected_incremental.subprocess.check_output") as child:
                with self.assertRaisesRegex(CacheError, "loader environment"):
                    discovery.command(("lake", "env", "printenv", "LEAN_PATH"), cwd=self.root)
                child.assert_not_called()
        self.runtime.write_bytes(self.runtime.read_bytes() + b"adoption drift")
        with patch("selected_incremental.subprocess.check_output") as child:
            with self.assertRaisesRegex(CacheError, "custody changed"):
                discovery.command(("lake", "env", "printenv", "LEAN_PATH"), cwd=self.root)
            child.assert_not_called()
        with self.assertRaisesRegex(CacheError, "custody changed"):
            self.replay(runtime_guard=discovery.runtime_guard)

    def test_discovery_rejects_unobserved_version_and_changed_executable(self):
        discovery = SelectedCompilerDiscovery()
        with patch("selected_incremental.subprocess.check_output") as child:
            with self.assertRaisesRegex(RuntimeError, "discovered compiler"):
                discovery.command((str(self.compiler), "--version"), cwd=self.root)
            child.assert_not_called()
        discovery = self.discover()
        other = self.root / "other-lean"
        other.write_bytes(self.compiler.read_bytes())
        with patch("selected_incremental.subprocess.check_output", return_value=str(other)):
            with self.assertRaisesRegex(RuntimeError, "discovery changed executable"):
                discovery.command(("elan", "which", "lean"), cwd=self.root)

    def test_adapter_rejects_empty_other_and_alias_executables_before_native(self):
        adapter, source, _, _ = self.replay()
        for option in ("--plugin", "--load-dynlib=/unbound", "--setup=/unbound"):
            with self.subTest(option=option), patch("selected_incremental.subprocess.run") as child:
                with self.assertRaisesRegex(RuntimeError, "unbound native loading"):
                    adapter.run("GRWTSK/A.lean", argv=[str(self.compiler), option], cwd=source, env={})
                child.assert_not_called()
        alias = self.compiler.with_name("lean-alias")
        alias.symlink_to(self.compiler)
        for executable in (None, "/different/lean", str(alias)):
            with self.subTest(executable=executable), patch("selected_incremental.subprocess.run") as child:
                with self.assertRaisesRegex(RuntimeError, "observed compiler"):
                    adapter.run("GRWTSK/A.lean", argv=[] if executable is None else [executable],
                                cwd=source, env={})
                child.assert_not_called()

    def test_selected_runners_all_route_discovery_and_retain_original_guard(self):
        files = []
        for path in Path(__file__).parent.glob("check_*.py"):
            source = path.read_text()
            if "SelectedReplayCache" not in source:
                continue
            files.append(path)
            with self.subTest(path=path.name):
                tree = ast.parse(source)
                functions = {node.name: node for node in tree.body if isinstance(node, ast.FunctionDef)}
                for name in ("main", "replay"):
                    self.assertEqual(ast.dump(functions[name].body[0]),
                                     ast.dump(ast.parse("_compiler_discovery.reset()").body[0]))
                self.assertIn("return _compiler_discovery.command(args, cwd=ROOT)", source)
                self.assertIn("runtime_guard=_compiler_discovery.require_guard(lean)", source)
                self.assertIn("SelectedCompilerDiscovery", source)
        self.assertEqual(len(files), 59)

    def native(self, argv, **_):
        source = Path(argv[-1])
        self.calls.append(source.name)
        if "-o" in argv:
            output = Path(argv[argv.index("-o") + 1])
            output.parent.mkdir(parents=True, exist_ok=True)
            output.write_bytes(self.object_prefix + source.read_bytes())
        rejected = source.name == "Negative.lean"
        return subprocess.CompletedProcess(
            argv, 1 if rejected else 0,
            "error: type mismatch intended bound" if rejected else "native audit passed", "")

    def commands(self, adapter, source, build):
        for relative in self.bodies:
            if not relative.endswith(".lean"):
                continue
            output = relative.startswith("GRWTSK/")
            expected = ("intended", "bound") if relative == "Negative.lean" else None
            argv = [str(self.compiler), "--trust=0", "-DwarningAsError=true", "--root=" + str(source)]
            argv += self.flags.get(relative, [])
            if output:
                argv += ["-o", str(build / Path(relative).with_suffix(".olean"))]
            argv.append(str(source / relative))
            process = adapter.run(
                relative, argv=argv, cwd=source, env={}, output=output, expected=expected)
            # This stands for each caller's unchanged audit/rejection oracle.
            self.assertEqual(process.returncode, 1 if expected else 0)
            if expected:
                self.assertTrue(all(fragment in process.stdout for fragment in expected))
            log = source.parent / (str(len(adapter.records) - 1) + ".log")
            log.write_text(process.stdout + process.stderr)
            result = {"path": relative, "exit_code": process.returncode,
                      "output_sha256": hashlib.sha256(log.read_bytes()).hexdigest()}
            adapter.receipt["results"].append(result)
            adapter.annotate_result(result)
            self.assertIn("freshly_elaborated_this_run", result["incremental_validation"])
            self.assertEqual(result["incremental_validation"]["freshly_elaborated_this_run"],
                             result["incremental_validation"]["fresh_execution_this_run"]
                             and process.returncode == 0)

    def test_warm_replay_then_affected_dependents_only(self):
        with patch("selected_incremental.subprocess.run", side_effect=self.native):
            adapter, source, build, _ = self.replay()
            self.commands(adapter, source, build)
            adapter.accept()
            self.assertEqual(len(self.calls), 5)
            self.calls.clear()
            adapter, source, build, receipt = self.replay()
            self.commands(adapter, source, build)
            adapter.accept()
            self.assertEqual(self.calls, [])
            self.assertEqual(receipt["incremental_validation"]["cached_commands"], 5)
            for record in adapter.records:
                origin = record["origin_receipt"]
                raw = Path(origin["path"]).read_bytes()
                self.assertEqual(hashlib.sha256(raw).hexdigest(), origin["sha256"])
                self.assertTrue(any(command["cache_key"] == record["cache_key"]
                                    for command in json.loads(raw)["evidence"]["commands"]))
                self.assertIn("audit_digest", record)
                self.assertIn("partition_digest", record)
            self.bodies["GRWTSK/A.lean"] = b"def a := 2\n"
            adapter, source, build, receipt = self.replay()
            self.commands(adapter, source, build)
            adapter.accept()
            self.assertEqual(self.calls, ["A.lean", "B.lean", "SelectedAudit.lean", "Negative.lean"])
            self.assertEqual(receipt["incremental_validation"]["cached_commands"], 1)

    def test_unaccepted_replay_does_not_publish_any_command(self):
        with patch("selected_incremental.subprocess.run", side_effect=self.native):
            adapter, source, build, _ = self.replay()
            self.commands(adapter, source, build)
            # The caller's final native census or exact oracle fails: no accept().
            adapter.close()
            self.calls.clear()
            adapter, source, build, _ = self.replay()
            self.commands(adapter, source, build)
            self.assertEqual(len(self.calls), 5)

    def test_explicit_cold_recompiles_every_command(self):
        with patch("selected_incremental.subprocess.run", side_effect=self.native):
            adapter, source, build, _ = self.replay()
            self.commands(adapter, source, build)
            adapter.accept()
            self.calls.clear()
            adapter, source, build, receipt = self.replay(cold=True)
            self.commands(adapter, source, build)
            adapter.accept()
            self.assertEqual(len(self.calls), 5)
            self.assertEqual(receipt["validation_mode"], "cold")

    def test_policy_change_invalidates_commands(self):
        with patch("selected_incremental.subprocess.run", side_effect=self.native):
            adapter, source, build, _ = self.replay()
            self.commands(adapter, source, build)
            adapter.accept()
            self.calls.clear()
            self.bodies["validator.py"] += b" changed exact oracle"
            adapter, source, build, _ = self.replay()
            self.commands(adapter, source, build)
            adapter.accept()
            self.assertEqual(len(self.calls), 5)

    def test_runtime_only_change_invalidates_every_selected_command(self):
        with patch("selected_incremental.subprocess.run", side_effect=self.native):
            adapter, source, build, first = self.replay()
            self.commands(adapter, source, build)
            adapter.accept()
            compiler_bytes = self.compiler.read_bytes()
            self.calls.clear()
            self.runtime.write_bytes(fixture_macho(6) + b"changed runtime payload")
            adapter, source, build, current = self.replay()
            self.commands(adapter, source, build)
            adapter.accept()
            self.assertEqual(self.compiler.read_bytes(), compiler_bytes)
            self.assertNotEqual(first["compiler_runtime_sha256"], current["compiler_runtime_sha256"])
            self.assertEqual(len(self.calls), 5)
            origin = json.loads(Path(current["proof_validation_origin"]["path"]).read_bytes())
            self.assertEqual(origin["evidence"]["selected_proof_validation"]["compiler_runtime_identity"],
                             current["compiler_runtime_identity"])

    def test_runtime_drift_or_loader_override_blocks_native_and_origin(self):
        for kind in ("drift", "edit-restore", "shadow-restore", "loader"):
            with self.subTest(kind=kind):
                adapter, source, build, receipt = self.replay()
                original = self.runtime.read_bytes()
                if kind in ("drift", "edit-restore"):
                    self.runtime.write_bytes(original + b"drift")
                    if kind == "edit-restore":
                        self.runtime.write_bytes(original)
                if kind == "shadow-restore":
                    shadow = self.runtime.parent.parent / self.runtime.name
                    shadow.write_bytes(original)
                    shadow.unlink()
                with patch("selected_incremental.subprocess.run") as native:
                    if kind == "loader":
                        with self.assertRaises(RuntimeError):
                            adapter.run("GRWTSK/A.lean", argv=[], cwd=source,
                                        env={"DYLD_LIBRARY_PATH": "/override"})
                    else:
                        with self.assertRaises(RuntimeError):
                            self.commands(adapter, source, build)
                    native.assert_not_called()
                with self.assertRaises(RuntimeError):
                    adapter.accept()
                self.assertFalse((source.parent / "proof-validation-origin.json").exists())
                self.assertNotIn("proof_validation_origin", receipt)
                self.runtime.write_bytes(original)

    def test_child_compiler_flags_invalidate_importers(self):
        with patch("selected_incremental.subprocess.run", side_effect=self.native):
            adapter, source, build, _ = self.replay()
            self.commands(adapter, source, build)
            adapter.accept()
            self.calls.clear()
            self.flags["GRWTSK/A.lean"] = ["--memory=8192"]
            adapter, source, build, _ = self.replay()
            self.commands(adapter, source, build)
            adapter.accept()
            self.assertEqual(self.calls, ["A.lean", "B.lean", "SelectedAudit.lean", "Negative.lean"])

    def test_regenerated_child_object_bytes_invalidate_importers(self):
        with patch("selected_incremental.subprocess.run", side_effect=self.native):
            adapter, source, build, _ = self.replay()
            self.commands(adapter, source, build)
            adapter.accept()
            self.calls.clear()
            self.object_prefix = b"regenerated checked object\n"
            adapter, source, build, _ = self.replay()
            lookup = adapter.cache.lookup
            with patch.object(adapter.cache, "lookup", side_effect=lambda material, **kw:
                              None if material["source"] == "GRWTSK/A.lean" else lookup(material, **kw)):
                self.commands(adapter, source, build)
            adapter.accept()
            self.assertEqual(self.calls, ["A.lean", "B.lean", "SelectedAudit.lean", "Negative.lean"])

    def test_added_loadable_artifact_blocks_acceptance(self):
        with patch("selected_incremental.subprocess.run", side_effect=self.native):
            adapter, source, build, _ = self.replay()
            self.commands(adapter, source, build)
            (build / "GRWTSK/A.ir").write_bytes(b"unexpected IR")
            with self.assertRaises(RuntimeError):
                adapter.accept()

    def test_dependency_drift_blocks_acceptance(self):
        with patch("selected_incremental.subprocess.run", side_effect=self.native):
            adapter, source, build, _ = self.replay()
            self.commands(adapter, source, build)
            self.init.write_bytes(b"changed imported object")
            with self.assertRaises(CacheError):
                adapter.accept()

    def test_origin_is_terminal_and_bound_to_exact_command_evidence(self):
        with patch("selected_incremental.subprocess.run", side_effect=self.native):
            adapter, source, build, receipt = self.replay()
            self.commands(adapter, source, build)
            adapter.accept()
            identity = receipt["proof_validation_origin"]
            raw = Path(identity["path"]).read_bytes()
            origin = json.loads(raw)
            self.assertEqual(identity["sha256"], hashlib.sha256(raw).hexdigest())
            self.assertEqual(identity["bytes"], len(raw))
            self.assertEqual(origin["attempt_id"], identity["attempt_id"])
            self.assertEqual(origin["outcome"], "passed")
            self.assertIs(origin["terminal"], True)
            for execution in adapter.executions:
                evidence = adapter.cache.command_evidence(
                    execution["material"], process=execution["process"], artifacts=execution["artifacts"])
                self.assertIn(evidence, origin["evidence"]["commands"])
            self.assertEqual(len(origin["evidence"]["command_diagnostic_logs"]), 5)

    def test_missing_or_corrupt_origin_causes_fresh_execution(self):
        with patch("selected_incremental.subprocess.run", side_effect=self.native):
            for mutation in ("delete", "corrupt", "nonterminal"):
                with self.subTest(mutation=mutation):
                    adapter, source, build, receipt = self.replay()
                    self.commands(adapter, source, build)
                    adapter.accept()
                    origin = Path(receipt["proof_validation_origin"]["path"])
                    if mutation == "delete":
                        origin.unlink()
                    elif mutation == "corrupt":
                        origin.chmod(0o600)
                        origin.write_bytes(b"truncated origin")
                    else:
                        payload = json.loads(origin.read_bytes())
                        payload["terminal"] = False
                        origin.chmod(0o600)
                        origin.write_text(json.dumps(payload))
                    self.calls.clear()
                    adapter, source, build, _ = self.replay()
                    self.commands(adapter, source, build)
                    self.assertEqual(len(self.calls), 5)

    def test_failed_cache_publication_preserves_terminal_proof_origin(self):
        with patch("selected_incremental.subprocess.run", side_effect=self.native):
            adapter, source, build, receipt = self.replay()
            self.commands(adapter, source, build)
            with patch.object(adapter.cache, "publish", side_effect=RuntimeError("publication failed")):
                with self.assertRaisesRegex(RuntimeError, "publication failed"):
                    adapter.accept()
            origin = json.loads(Path(receipt["proof_validation_origin"]["path"]).read_bytes())
            publication = json.loads((source.parent / "cache-publication.json").read_bytes())
            self.assertEqual(origin["outcome"], "passed")
            self.assertEqual(publication["outcome"], "failed")
            self.assertEqual(receipt["proof_validation_outcome"], "passed")
            self.assertFalse(receipt["incremental_validation"][
                "cache_entries_published_after_complete_acceptance"])

    def test_artifact_mutation_after_origin_cannot_be_published(self):
        with patch("selected_incremental.subprocess.run", side_effect=self.native):
            adapter, source, build, receipt = self.replay()
            self.commands(adapter, source, build)

            def finalize_then_mutate(path, payload):
                identity = create_origin(path, payload)
                (build / "GRWTSK/A.olean").write_bytes(b"mutated after final byte guard")
                return identity

            with patch("selected_incremental.create_origin", side_effect=finalize_then_mutate):
                with self.assertRaises(CacheError):
                    adapter.accept()
            self.assertEqual(json.loads(Path(receipt["proof_validation_origin"]["path"]).read_bytes())[
                "outcome"], "passed")
            self.assertEqual(json.loads((source.parent / "cache-publication.json").read_bytes())[
                "outcome"], "failed")

    def test_log_drift_prevents_terminal_origin(self):
        with patch("selected_incremental.subprocess.run", side_effect=self.native):
            adapter, source, build, _ = self.replay()
            self.commands(adapter, source, build)
            (source.parent / "0.log").write_bytes(b"changed diagnostic")
            with self.assertRaisesRegex(RuntimeError, "diagnostic log drift"):
                adapter.accept()
            self.assertFalse((source.parent / "proof-validation-origin.json").exists())

    def test_reused_origin_drift_at_admission_prevents_new_origin(self):
        with patch("selected_incremental.subprocess.run", side_effect=self.native):
            adapter, source, build, receipt = self.replay()
            self.commands(adapter, source, build)
            adapter.accept()
            old_origin = Path(receipt["proof_validation_origin"]["path"])
            adapter, source, build, _ = self.replay()
            self.commands(adapter, source, build)
            self.assertTrue(all(record["status"] == "cached" for record in adapter.records))
            old_origin.chmod(0o600)
            old_origin.write_bytes(b"changed after cached command checks")
            with self.assertRaises(CacheError):
                adapter.accept()
            self.assertFalse((source.parent / "proof-validation-origin.json").exists())


if __name__ == "__main__":
    unittest.main()
