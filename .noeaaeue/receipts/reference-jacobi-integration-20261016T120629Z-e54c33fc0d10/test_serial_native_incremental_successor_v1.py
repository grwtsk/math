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
from unittest.mock import patch

HERE = Path(__file__).absolute().parent
SPEC = importlib.util.spec_from_file_location("inert_phase_successor",
    HERE / "serial_native_incremental_successor_v1.py")
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
        self.put(self.caller, (HERE / "serial_native_incremental_successor_v1.py").read_bytes())
        self.put(self.helper, (HERE / "serial_native.py").read_bytes())
        self.old = candidate.load_old_helper(self.helper)
        self.head = "a" * 40
        self.sources = {"GRWTSK/A.lean"}
        self.put(self.root / "GRWTSK/A.lean", b"-- inert fixture source; never compiled\n")
        self.contract = ".noeaaeue/bindings/new-immutable-fixture.json"
        self.put(self.root / self.contract, b'{}\n')
        self.run = self.caller.parent / "new-phase-run"
        self.readset = self.root / "phase-inputs.json"
        self.release = self.root / "exact-release.json"
        self.data = {"schema": candidate.READSET_SCHEMA, "phase": "public", "root": str(self.root),
            "head": self.head, "source_paths": sorted(self.sources), "contract": self.contract,
            "caller": self.identity(self.caller), "old_helper": self.identity(self.helper),
            "inputs": {p: candidate.sha((self.root / p).read_bytes()) for p in
                       ["receipts/caller.py", "receipts/serial_native.py", "GRWTSK/A.lean", self.contract]},
            "source_origin": None}
        self.calls = []
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
            head_probe=lambda _: self.head, universe_probe=lambda _: self.sources, **kwargs)

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
        self.put(self.root / self.contract, json.dumps({"incremental_validation": {
            "public_compilation_origin": identity}}).encode())
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


if __name__ == "__main__":
    unittest.main()
