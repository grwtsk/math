"""Pure external-fixture controls. No Git, engine, native or real-state routes."""
import builtins
from contextlib import ExitStack, contextmanager
import hashlib
import importlib.util
import json
import os
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest
from types import ModuleType, SimpleNamespace
from unittest.mock import patch

HERE = Path(__file__).absolute().parent
SPEC = importlib.util.spec_from_file_location("inert_runtime_phase_successor",
    HERE / "serial_native_runtime_successor_v1.py")
candidate = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(candidate)


def blocked(*args, **kwargs):
    raise AssertionError("unmocked process/signal/Git route")


class Controls(unittest.TestCase):
    def setUp(self):
        self.stack = ExitStack()
        self.addCleanup(self.stack.close)
        for name in ("Popen", "run", "call", "check_call", "check_output"):
            self.stack.enter_context(patch.object(subprocess, name, blocked))
        for name in ("system", "popen", "kill", "killpg"):
            self.stack.enter_context(patch.object(os, name, blocked))
        for name in dir(os):
            if name.startswith(("exec", "spawn", "posix_spawn")) or name in ("fork", "forkpty"):
                self.stack.enter_context(patch.object(os, name, blocked))
        original_import = builtins.__import__
        def confined_import(name, *args, **kwargs):
            if name.split(".")[0] in {"incremental_lean", "check_math_trust", "check_moebius_response",
                                       "cache_math", "monitor_math", "moebius_owner_census"}:
                raise AssertionError("project runtime import forbidden")
            return original_import(name, *args, **kwargs)
        self.stack.enter_context(patch.object(builtins, "__import__", confined_import))
        self.temp = tempfile.TemporaryDirectory(prefix="serial-phase-pure-")
        self.addCleanup(self.temp.cleanup)
        # macOS /var is a symlink; the preserved no-follow helper correctly
        # requires the real external fixture path, not that ambient alias.
        self.root = Path(self.temp.name).resolve()
        self.caller = self.root / "receipts/caller.py"
        self.helper = self.root / "receipts/serial_native.py"
        self.put(self.caller, (HERE / "serial_native_runtime_successor_v1.py").read_bytes())
        self.put(self.helper, (HERE / "serial_native.py").read_bytes())
        self.old = candidate.load_old_helper(self.helper)
        self.head = "a" * 40
        self.sources = {"GRWTSK/A.lean"}
        self.put(self.root / "GRWTSK/A.lean", b"-- inert fixture source; never compiled\n")
        self.contract = ".noeaaeue/bindings/new-immutable-fixture.json"
        self.runtime_events = []
        self.runtime_dir = self.root.parent / (self.root.name + "-external-runtime")
        self.runtime_dir.mkdir()
        self.addCleanup(lambda: __import__("shutil").rmtree(self.runtime_dir))
        self.compiler = self.runtime_dir / "lean-fixture-never-executed"
        self.absent = self.runtime_dir / "absent-private-library"
        self.put(self.compiler, b"fake compiler bytes; never executed\n")
        self.runtime_descriptor = self.describe_runtime()
        self.contract_data = {"compiler_runtime_identity": self.runtime_descriptor,
            "compiler_runtime_sha256": candidate.sha(candidate.runtime_canonical(self.runtime_descriptor))}
        self.put(self.root / self.contract, json.dumps(self.contract_data).encode())
        fixture_modules = {
            "repository_paths": b'VALUE = "frozen-paths"\n',
            "monitor_math": b'from repository_paths import VALUE\nlean_code = VALUE + ":frozen-monitor"\n',
            "cache_math": b'from monitor_math import lean_code\nfrom repository_paths import VALUE\nimports = VALUE + ":frozen-cache"\n',
            "incremental_lean": b'from dataclasses import dataclass\nimport cache_math\nimport monitor_math\nfrom cache_math import imports\n@dataclass\nclass Fixture:\n    value: str = imports\nRuntimeIdentityGuard = None\ndef verify_loaded_parser_sources(sources):\n    if set(sources) != {"cache_math.py", "monitor_math.py"}:\n        raise RuntimeError("wrong frozen parser closure")\n    if cache_math.imports != "frozen-paths:frozen-cache" or monitor_math.lean_code != "frozen-paths:frozen-monitor":\n        raise RuntimeError("ambient poison reached runtime closure")\n'}
        for name, raw in fixture_modules.items():
            self.put(self.root / ".noeaaeue/scripts" / (name + ".py"), raw)
        self.run = self.caller.parent / "new-phase-run"
        self.readset = self.root / "phase-inputs.json"
        self.release = self.root / "exact-release.json"
        self.data = {"schema": candidate.READSET_SCHEMA, "phase": "public", "root": str(self.root),
            "head": self.head, "source_paths": sorted(self.sources), "contract": self.contract,
            "caller": self.identity(self.caller), "old_helper": self.identity(self.helper),
            "inputs": {p: candidate.sha((self.root / p).read_bytes()) for p in
                       ["receipts/caller.py", "receipts/serial_native.py", "GRWTSK/A.lean", self.contract]},
            "source_origin": None}
        for relative in candidate.RUNTIME_PATHS:
            self.data["inputs"][relative] = candidate.sha((self.root / relative).read_bytes())
        self.calls = []
        self.flush()

    def loader_environment(self, env):
        return {k: v for k, v in env.items()
                if k.startswith(("DYLD_", "LD_")) or k == "LEAN_SYSROOT"}

    def describe_runtime(self):
        raw = self.compiler.read_bytes()
        return {"schema": candidate.RUNTIME_SCHEMA,
            "executable": {"path": str(self.compiler), "bytes": len(raw),
                           "sha256": candidate.sha(raw)},
            "fixture_only": True, "absent_candidate": str(self.absent),
            "absent_candidate_present": self.absent.exists(),
            "typed_fixture_value": 1,
            "loader_environment": self.loader_environment(os.environ)}

    def fake_guard(self, compiler, *, env):
        control = self
        self.assertIs(env, os.environ)
        self.assertEqual(compiler, self.compiler)
        class Guard:
            def __init__(self):
                self.descriptor = control.describe_runtime()
                self.identity = self.descriptor
                self.sha256 = candidate.sha(candidate.runtime_canonical(self.descriptor))
                self.states = {p: self.state(p) for p in (control.compiler, control.absent)}
                self.env = env
                control.runtime_events.append("construct-fake-guard")
            @staticmethod
            def state(path):
                if not path.exists():
                    return None
                st = path.stat()
                return (st.st_ino, st.st_size, st.st_mtime_ns, st.st_ctime_ns)
            def assert_stable(self, *, env=None):
                control.assertIs(env, os.environ)
                control.runtime_events.append("stable")
                if control.loader_environment(env) != self.descriptor["loader_environment"]:
                    raise ValueError("fake actual command loader environment drift")
                if {p: self.state(p) for p in self.states} != self.states:
                    raise ValueError("fake external compiler runtime custody drift")
            def assert_unchanged(self, *, env=None):
                control.assertIs(env, os.environ)
                control.runtime_events.append("full-terminal")
                self.assert_stable(env=env)
                if getattr(control, "fail_full_terminal", False):
                    raise ValueError("fake full terminal runtime byte drift")
                if candidate.runtime_canonical(control.describe_runtime()) != candidate.runtime_canonical(self.identity):
                    raise ValueError("fake full terminal runtime descriptor drift")
        return Guard()

    def replace_contract(self, contract):
        self.put(self.root / self.contract, json.dumps(contract).encode())
        self.data["inputs"][self.contract] = candidate.sha((self.root / self.contract).read_bytes())
        self.flush()

    def put(self, path, raw):
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_bytes(raw)

    def identity(self, path):
        raw = path.read_bytes()
        return {"path": str(path), "sha256": candidate.sha(raw), "bytes": len(raw)}

    def flush(self, cold=False, timeout=21600):
        if self.data["phase"] == "public":
            self.data["source_origin"] = {"kind": "frozen-source-input-set",
                                         "sha256": candidate.source_input_digest(self.data)}
        self.put(self.readset, (json.dumps(self.data) + "\n").encode())
        self.authorization = {"schema": candidate.RELEASE_SCHEMA, "approval": candidate.APPROVAL,
            "attempt_id": "isolated-control", "phase": self.data["phase"],
            "readset": self.identity(self.readset), "root": str(self.root), "head": self.head,
            "caller": self.data["caller"], "old_helper": self.data["old_helper"],
            "source_origin": self.data["source_origin"], "run_directory": str(self.run),
            "cold": cold, "timeout_seconds": timeout}
        self.reauthorize()

    def reauthorize(self):
        self.put(self.release, (json.dumps(self.authorization) + "\n").encode())
        self.release_sha = candidate.sha(self.release.read_bytes())

    def prepared(self, **kwargs):
        return candidate.prepare(self.old, readset_path=self.readset, release_path=self.release,
            release_sha=kwargs.pop("release_sha", self.release_sha), phase=self.data["phase"],
            caller_path=self.caller, old_path=self.helper,
            head_probe=lambda _: self.head, universe_probe=lambda _: self.sources,
            _test_runtime_guard_factory=kwargs.pop("_test_runtime_guard_factory", self.fake_guard),
            **kwargs)

    def application(self):
        self.data["phase"] = "application"
        payload = {"schema": "proof-validation-origin-v1", "attempt_id": "approved-public-fixture",
            "terminal": True, "outcome": "passed", "evidence": {"commands": [], "validation": {
                "mode": "all-project-replay", "status": "ALL_PROJECT_SOURCE_AND_AXIOM_CHECKS_PASSED"}}}
        self.origin = self.root / "public-origin.json"
        self.put(self.origin, json.dumps(payload).encode())
        identity = {**self.identity(self.origin), "attempt_id": payload["attempt_id"]}
        self.descriptor = self.root / "approved-public-descriptor.json"
        self.put(self.descriptor, json.dumps(identity).encode())
        self.data["source_origin"] = {"kind": "approved-public-terminal-origin",
            "descriptor": self.identity(self.descriptor), "origin": identity}
        self.put(self.root / self.contract, json.dumps({**self.contract_data,
            "incremental_validation": {"public_compilation_origin": identity}}).encode())
        self.data["inputs"][self.contract] = candidate.sha((self.root / self.contract).read_bytes())
        self.flush()

    @contextmanager
    def lane(self, root):
        self.calls.append("mock-build-lane")
        yield

    def executor(self, stage, root, log, timeout):
        self.calls.append(stage["name"])
        log.write_bytes(b"mock execution; no native process\n")
        return {"status": "completed", "exit_code": 0, "mock_only": True}

    def execute(self, frozen, executor=None, lane=None):
        return candidate.execute_prepared(self.old, frozen, executor=executor or self.executor,
            lane=lane or self.lane, receipt_scan=lambda _: {}, receipt_collect=lambda *_: [])

    def test_execute_alone_inert_before_helper(self):
        with patch.object(candidate, "load_old_helper", blocked):
            with self.assertRaisesRegex(ValueError, "explicit coordinator release"):
                candidate.main(["--phase", "public", "--frozen-inputs", "/absent", "--execute"])

    def test_no_execute_inert_even_with_release_options(self):
        with patch.object(candidate, "load_old_helper", blocked):
            with self.assertRaises(ValueError):
                candidate.main(["--phase", "public", "--frozen-inputs", "/absent",
                                "--release", "/absent", "--release-sha256", "a" * 64])

    def test_exact_old_helper_required(self):
        self.helper.write_bytes(b"not reviewed helper")
        with self.assertRaisesRegex(ValueError, "old helper"):
            candidate.load_old_helper(self.helper)

    def test_release_digest_required(self):
        with self.assertRaisesRegex(ValueError, "release bytes"):
            self.prepared(release_sha="0" * 64)

    def test_closed_release_and_approval(self):
        for key, value in (("extra", 1), ("schema", "other"), ("approval", "pending")):
            saved = dict(self.authorization)
            self.authorization[key] = value
            self.reauthorize()
            with self.assertRaises(ValueError):
                self.prepared()
            self.authorization = saved

    def test_release_phase_and_head_mismatch(self):
        for key, value in (("phase", "application"), ("head", "b" * 40)):
            saved = dict(self.authorization)
            self.authorization[key] = value
            self.reauthorize()
            with self.assertRaises(ValueError):
                self.prepared()
            self.authorization = saved

    def test_boolean_timeout_not_integer_authority(self):
        self.authorization["timeout_seconds"] = True
        self.reauthorize()
        with self.assertRaises(ValueError):
            self.prepared(timeout=True)

    def test_new_caller_bound_in_input_set(self):
        del self.data["inputs"]["receipts/caller.py"]
        self.flush()
        with self.assertRaisesRegex(ValueError, "caller/helper missing"):
            self.prepared()

    def test_source_origin_input_digest(self):
        self.data["source_origin"]["sha256"] = "0" * 64
        self.put(self.readset, json.dumps(self.data).encode())
        self.authorization["readset"] = self.identity(self.readset)
        self.authorization["source_origin"] = self.data["source_origin"]
        self.reauthorize()
        with self.assertRaisesRegex(ValueError, "source-input origin"):
            self.prepared()

    def test_public_plan_three_original_stages(self):
        plan = candidate.stages_for(self.old, self.prepared())
        self.assertEqual([s["name"] for s in plan], ["ordinary-build", "native-self-test", "public-replay"])
        self.assertEqual(plan[0]["argv"], ["lake", "build", "GRWTSK"])
        self.assertEqual([s["parent_lock"] for s in plan], [True, False, False])
        self.assertFalse(any("--cold" in s["argv"] or "clean" in s["argv"] for s in plan))

    def test_cold_only_project_replay(self):
        self.flush(cold=True)
        plan = candidate.stages_for(self.old, self.prepared(cold=True), cold=True)
        self.assertNotIn("--cold", plan[0]["argv"])
        self.assertNotIn("--cold", plan[1]["argv"])
        self.assertIn("--cold", plan[2]["argv"])

    def test_public_fake_run_preserves_old_receipt_pipeline(self):
        self.assertEqual(self.execute(self.prepared()), 0)
        summary = json.loads((self.run / "summary.json").read_bytes())
        self.assertEqual(len(summary["results"]), 3)
        self.assertEqual(self.calls, ["mock-build-lane", "ordinary-build", "native-self-test", "public-replay"])
        self.assertEqual(summary["native_acceptance"], "PENDING_ROOT_RECEIPT_REVIEW")
        self.assertFalse(summary["proof_or_rh_claim"])

    def test_released_run_directory_single_use(self):
        self.run.mkdir()
        with self.assertRaisesRegex(ValueError, "absent release-bound"):
            self.prepared()

    def test_release_drift_before_executor(self):
        frozen = self.prepared()
        self.release.write_bytes(b"changed")
        with self.assertRaisesRegex(ValueError, "authority/source-origin drift"):
            self.execute(frozen)
        self.assertEqual(self.calls, [])

    def test_source_drift_before_executor(self):
        frozen = self.prepared()
        (self.root / "GRWTSK/A.lean").write_bytes(b"changed source")
        with self.assertRaises(self.old.Stopped):
            self.execute(frozen)
        self.assertEqual(self.calls, [])

    def test_head_and_membership_guards(self):
        frozen = self.prepared()
        original = self.head
        self.head = "b" * 40
        with self.assertRaises(self.old.Stopped):
            frozen.check()
        self.head = original
        self.sources = set()
        with self.assertRaises(self.old.Stopped):
            frozen.check()

    def test_application_requires_origin(self):
        self.data["phase"] = "application"
        self.flush()
        with self.assertRaisesRegex(ValueError, "approved public origin"):
            self.prepared()

    def test_application_one_stage_new_exact_contract(self):
        self.application()
        plan = candidate.stages_for(self.old, self.prepared())
        self.assertEqual([s["name"] for s in plan], ["application-replay"])
        self.assertEqual(plan[0]["argv"][plan[0]["argv"].index("--manifest") + 1],
                         str(self.root / self.contract))
        self.assertNotIn("--cold", plan[0]["argv"])
        self.assertEqual(self.execute(self.prepared()), 0)
        self.assertEqual(self.calls, ["application-replay"])

    def test_application_contract_origin_must_match(self):
        self.application()
        self.put(self.root / self.contract, b'{"incremental_validation":{}}')
        self.data["inputs"][self.contract] = candidate.sha((self.root / self.contract).read_bytes())
        self.flush()
        with self.assertRaisesRegex(ValueError, "contract/public-origin mismatch"):
            self.prepared()

    def test_application_descriptor_drift_after_gate(self):
        self.application()
        frozen = self.prepared()
        self.descriptor.write_bytes(b"changed")
        with self.assertRaisesRegex(ValueError, "authority/source-origin drift"):
            self.execute(frozen)

    def test_application_descriptor_mismatch_refuses_before_process(self):
        self.application()
        self.data["source_origin"]["origin"]["attempt_id"] = "different"
        self.flush()
        with self.assertRaisesRegex(ValueError, "descriptor identity mismatch"):
            self.prepared()
        self.assertEqual(self.calls, [])

    def test_unsuccessful_public_origin_refuses_before_process(self):
        self.application()
        payload = json.loads(self.origin.read_bytes())
        payload["outcome"] = "failed"
        self.origin.write_bytes(json.dumps(payload).encode())
        identity = {**self.identity(self.origin), "attempt_id": payload["attempt_id"]}
        self.descriptor.write_bytes(json.dumps(identity).encode())
        self.data["source_origin"].update(descriptor=self.identity(self.descriptor), origin=identity)
        self.flush()
        with self.assertRaisesRegex(ValueError, "successful public attempt"):
            self.prepared()
        self.assertEqual(self.calls, [])

    def test_native_failure_retains_old_stop_records(self):
        def failed(stage, root, log, timeout):
            return {"status": "completed", "exit_code": 7, "mock_only": True}
        self.assertEqual(self.execute(self.prepared(), executor=failed), 1)
        self.assertTrue((self.run / "stop.json").is_file())
        self.assertEqual(len(json.loads((self.run / "summary.json").read_bytes())["results"]), 1)

    def test_busy_lane_never_invokes_executor(self):
        @contextmanager
        def busy(_):
            raise self.old.Busy("owned mock lane busy")
            yield
        self.assertEqual(self.execute(self.prepared(), lane=busy), 1)
        self.assertEqual(self.calls, [])

    def test_duplicate_json_rejected(self):
        with self.assertRaisesRegex(ValueError, "duplicate JSON"):
            candidate.decoded(b'{"a":1,"a":2}')


    def test_full_runtime_contract_required(self):
        for value in ({}, {"compiler_executable": str(self.compiler)},
                      {"compiler_runtime_identity": self.runtime_descriptor},
                      {"compiler_runtime_sha256": self.contract_data["compiler_runtime_sha256"]}):
            self.replace_contract(value)
            with self.assertRaisesRegex(ValueError, "full compiler runtime contract"):
                self.prepared()
        self.assertEqual(self.calls, [])

    def test_wrong_runtime_digest_independently_rejected(self):
        self.replace_contract({**self.contract_data, "compiler_runtime_sha256": "0" * 64})
        with self.assertRaisesRegex(ValueError, "contract digest differs"):
            self.prepared()
        self.assertEqual(self.runtime_events, [])

    def test_wrong_live_runtime_descriptor_rejected(self):
        changed = dict(self.runtime_descriptor, different_released_value="wrong")
        self.replace_contract({"compiler_runtime_identity": changed,
            "compiler_runtime_sha256": candidate.sha(candidate.runtime_canonical(changed))})
        with self.assertRaisesRegex(ValueError, "live compiler runtime typed descriptor"):
            self.prepared()
        self.assertEqual(self.calls, [])

    def test_typed_bool_int_and_float_int_are_not_equal_descriptors(self):
        for value in (True, 1.0):
            changed = dict(self.runtime_descriptor, typed_fixture_value=value)
            self.replace_contract({"compiler_runtime_identity": changed,
                "compiler_runtime_sha256": candidate.sha(candidate.runtime_canonical(changed))})
            with self.assertRaisesRegex(ValueError, "typed descriptor differs"):
                self.prepared()
        self.assertEqual(self.calls, [])

    def test_nonfinite_and_nonjson_runtime_descriptor_rejected(self):
        for value in (float("nan"), float("inf"), {1: "nonstring-key"}, (1, 2)):
            with self.assertRaises((ValueError, TypeError)):
                candidate.runtime_canonical({"schema": candidate.RUNTIME_SCHEMA, "bad": value})

    def test_malformed_descriptor_schema_and_path(self):
        values = [None, [], {"schema": "old-executable-only"},
            {"schema": candidate.RUNTIME_SCHEMA, "executable": {"path": "relative/lean"}},
            {"schema": candidate.RUNTIME_SCHEMA, "executable": {"path": 1}}]
        for descriptor in values:
            self.replace_contract({"compiler_runtime_identity": descriptor,
                "compiler_runtime_sha256": "0" * 64})
            with self.assertRaises(ValueError):
                self.prepared()

    def test_fake_guard_wrong_reported_digest_rejected(self):
        def wrong(compiler, *, env):
            guard = self.fake_guard(compiler, env=env)
            guard.sha256 = "0" * 64
            return guard
        with self.assertRaisesRegex(ValueError, "live compiler runtime digest"):
            self.prepared(_test_runtime_guard_factory=wrong)

    def test_descriptor_and_identity_must_both_match(self):
        def wrong(compiler, *, env):
            guard = self.fake_guard(compiler, env=env)
            guard.identity = dict(guard.identity, typed_fixture_value=True)
            return guard
        with self.assertRaisesRegex(ValueError, "typed descriptor"):
            self.prepared(_test_runtime_guard_factory=wrong)

    def test_each_runtime_source_bound_before_loader(self):
        for relative in candidate.RUNTIME_PATHS:
            expected = self.data["inputs"].pop(relative)
            self.flush()
            with self.assertRaisesRegex(ValueError, "runtime helper missing"):
                self.prepared(_test_runtime_loader=blocked)
            self.data["inputs"][relative] = expected
        self.assertEqual(self.runtime_events, [])

    def test_runtime_source_hash_mismatch_before_loader(self):
        relative = candidate.RUNTIME_PATHS[-1]
        self.data["inputs"][relative] = "0" * 64
        self.flush()
        with self.assertRaises(self.old.Stopped):
            self.prepared(_test_runtime_loader=blocked)
        self.assertEqual(self.runtime_events, [])

    def test_runtime_closure_ignores_and_restores_ambient_poison(self):
        poisons = {name: ModuleType("poison-" + name) for name in candidate.RUNTIME_MODULES}
        for module in poisons.values():
            module.__getattr__ = lambda name: blocked()
        with patch.dict(sys.modules, poisons):
            frozen = self.prepared()
            for name, module in poisons.items():
                self.assertIs(sys.modules[name], module)
            self.assertEqual(frozen.runtime_guard.sha256, self.contract_data["compiler_runtime_sha256"])

    def test_runtime_loader_cleans_private_modules_on_failed_import(self):
        sources = {name: (self.root / relative, (self.root / relative).read_bytes())
                   for name, relative in zip(candidate.RUNTIME_MODULES, candidate.RUNTIME_PATHS)}
        sources["cache_math"] = (sources["cache_math"][0], b'raise ValueError("frozen fixture failure")\n')
        before = set(sys.modules)
        with self.assertRaisesRegex(ValueError, "frozen fixture failure"):
            candidate.load_frozen_runtime(sources)
        self.assertEqual(set(sys.modules), before)

    def test_fake_loader_injection_is_not_cli_exposed(self):
        seen = []
        def fake_loader(sources):
            seen.append(tuple(sources))
            return SimpleNamespace(RuntimeIdentityGuard=self.fake_guard)
        frozen = self.prepared(_test_runtime_loader=fake_loader,
            _test_runtime_guard_factory=None)
        self.assertEqual(seen, [candidate.RUNTIME_MODULES])
        self.assertEqual(self.execute(frozen), 0)
        with patch.object(candidate, "load_old_helper", blocked):
            with self.assertRaises(SystemExit):
                candidate.main(["--runtime-loader", "anything"])

    def test_same_guard_actual_environment_and_terminal_full_check(self):
        frozen = self.prepared()
        guard = frozen.runtime_guard
        self.assertEqual(self.execute(frozen), 0)
        self.assertIs(frozen.runtime_guard, guard)
        self.assertEqual(self.runtime_events.count("construct-fake-guard"), 1)
        self.assertEqual(self.runtime_events.count("full-terminal"), 1)
        self.assertGreaterEqual(self.runtime_events.count("stable"), 20)
        context = json.loads((self.run / "phase-context.json").read_bytes())
        self.assertEqual(context["compiler_runtime_identity"], self.runtime_descriptor)
        self.assertEqual(context["compiler_runtime_sha256"], self.contract_data["compiler_runtime_sha256"])

    def test_actual_child_environment_drift_before_native(self):
        frozen = self.prepared()
        with patch.dict(os.environ, {"DYLD_LIBRARY_PATH": "hostile-fake-path"}):
            with self.assertRaisesRegex(ValueError, "actual command loader environment"):
                self.execute(frozen)
        self.assertEqual(self.calls, [])

    def test_actual_child_environment_drift_between_stages(self):
        frozen = self.prepared()
        with patch.dict(os.environ):
            def change(stage, root, log, timeout):
                result = self.executor(stage, root, log, timeout)
                os.environ["LEAN_SYSROOT"] = "hostile-fake-sysroot"
                return result
            self.assertEqual(self.execute(frozen, executor=change), 1)
        self.assertEqual(self.calls, ["mock-build-lane", "ordinary-build"])
        self.assertFalse((self.run / "phase-context.json").exists())

    def test_external_runtime_file_drift_before_native(self):
        frozen = self.prepared()
        self.compiler.write_bytes(b"changed fake external runtime")
        with self.assertRaisesRegex(ValueError, "runtime custody drift"):
            self.execute(frozen)
        self.assertEqual(self.calls, [])

    def test_external_runtime_absence_drift_before_native(self):
        frozen = self.prepared()
        self.absent.write_bytes(b"new external dylib fixture")
        with self.assertRaisesRegex(ValueError, "runtime custody drift"):
            self.execute(frozen)
        self.assertEqual(self.calls, [])

    def runtime_between_stages(self, absence):
        frozen = self.prepared()
        def change(stage, root, log, timeout):
            result = self.executor(stage, root, log, timeout)
            (self.absent if absence else self.compiler).write_bytes(b"changed fake runtime")
            return result
        self.assertEqual(self.execute(frozen, executor=change), 1)
        self.assertEqual(self.calls, ["mock-build-lane", "ordinary-build"])
        self.assertTrue((self.run / "runtime-terminal-stop.json").is_file())
        self.assertFalse((self.run / "phase-context.json").exists())

    def test_external_runtime_file_drift_between_stages(self):
        self.runtime_between_stages(False)

    def test_external_runtime_absence_drift_between_stages(self):
        self.runtime_between_stages(True)

    def runtime_terminal(self, absence):
        frozen = self.prepared()
        original = self.old.run_plan
        def terminal(*args, **kwargs):
            result = original(*args, **kwargs)
            (self.absent if absence else self.compiler).write_bytes(b"changed after old terminal")
            return result
        with patch.object(self.old, "run_plan", terminal):
            self.assertEqual(self.execute(frozen), 1)
        self.assertEqual(self.calls, ["mock-build-lane", "ordinary-build", "native-self-test", "public-replay"])
        self.assertTrue((self.run / "runtime-terminal-stop.json").is_file())
        self.assertFalse((self.run / "phase-context.json").exists())

    def test_external_runtime_file_drift_terminal(self):
        self.runtime_terminal(False)

    def test_external_runtime_absence_drift_terminal(self):
        self.runtime_terminal(True)

    def test_full_terminal_check_failure_is_not_old_summary_success(self):
        frozen = self.prepared()
        self.fail_full_terminal = True
        self.assertEqual(self.execute(frozen), 1)
        self.assertEqual(self.runtime_events.count("full-terminal"), 1)
        self.assertEqual(json.loads((self.run / "summary.json").read_bytes())["execution_status"],
            "ALL_STAGE_COMMANDS_EXITED_ZERO_PENDING_RECEIPT_REVIEW")
        self.assertTrue((self.run / "runtime-terminal-stop.json").is_file())
        self.assertFalse((self.run / "phase-context.json").exists())

    def test_runtime_helper_source_drift_between_stages(self):
        frozen = self.prepared()
        def change(stage, root, log, timeout):
            result = self.executor(stage, root, log, timeout)
            (self.root / candidate.RUNTIME_PATHS[0]).write_bytes(b"new helper bytes")
            return result
        self.assertEqual(self.execute(frozen, executor=change), 1)
        self.assertEqual(self.calls, ["mock-build-lane", "ordinary-build"])
        self.assertFalse((self.run / "phase-context.json").exists())

    def test_closed_readset_stays_ten_fields(self):
        self.assertEqual(len(self.data), 10)
        self.assertEqual(len(self.authorization), 13)
        self.data["runtime_identity_extra"] = {}
        self.flush()
        with self.assertRaisesRegex(ValueError, "closed phase readset"):
            self.prepared()


if __name__ == "__main__":
    unittest.main()
