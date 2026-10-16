#!/usr/bin/env python3
"""Inert, release-gated successor to the preserved serial checkpoint helper.

No native permission is inferred from this file, --execute, or a passed receipt.
A coordinator must supply a new immutable readset and exact release identity.
Public phase preserves ordinary build, native self-test and public replay.
Application phase separately requires an approved public-origin descriptor and
an immutable candidate-bound contract. All native results await root review.

This successor additionally binds the static compiler runtime descriptor through
a private exact-byte four-module loader. It never captures or releases authority
on its own. Test injection is Python-only and is not exposed by the CLI.
"""
import argparse
import builtins
import hashlib
import importlib.util
import json
import os
from pathlib import Path
import re
import sys
from types import ModuleType
import uuid

HERE = Path(__file__).absolute().parent
OLD_SHA = "64000202b88d2d7c3fcd05aabd476164cf8b7aeea846fe714639aeea4162a15b"
READSET_SCHEMA = "serial-incremental-phase-inputs-v1"
RELEASE_SCHEMA = "serial-incremental-coordinator-release-v1"
APPROVAL = "COORDINATOR_RELEASED_THIS_EXACT_PHASE"
RUNTIME_MODULES = ("repository_paths", "monitor_math", "cache_math", "incremental_lean")
RUNTIME_PATHS = tuple(".noeaaeue/scripts/" + name + ".py" for name in RUNTIME_MODULES)
RUNTIME_SCHEMA = "lean-compiler-runtime-v1"


def sha(raw):
    return hashlib.sha256(raw).hexdigest()


def canonical(value):
    return json.dumps(value, sort_keys=True, separators=(",", ":")).encode()


def decoded(raw):
    def unique(pairs):
        result = {}
        for key, value in pairs:
            if key in result:
                raise ValueError("duplicate JSON key: " + key)
            result[key] = value
        return result
    return json.loads(raw, object_pairs_hook=unique)


def require(value, message):
    if not value:
        raise ValueError(message)


def load_old_helper(path):
    """Load only the preserved exact helper; its import launches no process."""
    path = Path(path).absolute()
    # The helper itself supplies the descriptor-safe readers after exact custody
    # checking. A symlink is never accepted as the selected helper occurrence.
    require(not path.is_symlink(), "linked old helper")
    raw = path.read_bytes()
    require(sha(raw) == OLD_SHA, "old helper source differs")
    name = "preserved_serial_helper_" + OLD_SHA
    spec = importlib.util.spec_from_file_location(name, path)
    module = importlib.util.module_from_spec(spec)
    sys.modules[name] = module
    try:
        exec(compile(raw, str(path), "exec", dont_inherit=True), module.__dict__)
    except BaseException:
        sys.modules.pop(name, None)
        raise
    return module


def file_identity(old, identity):
    require(type(identity) is dict and set(identity) == {"path", "sha256", "bytes"},
            "file identity requires path/hash/bytes")
    require(type(identity["path"]) is str and Path(identity["path"]).is_absolute()
            and ".." not in Path(identity["path"]).parts, "absolute identity path required")
    require(type(identity["sha256"]) is str and re.fullmatch(r"[0-9a-f]{64}", identity["sha256"]),
            "invalid identity digest")
    require(type(identity["bytes"]) is int and identity["bytes"] > 0, "invalid identity size")
    raw = old.safe_read(Path(identity["path"]))
    require((sha(raw), len(raw)) == (identity["sha256"], identity["bytes"]),
            "exact file identity mismatch")
    return raw


def source_input_digest(data):
    return sha(canonical({key: data[key] for key in
                          ("root", "head", "inputs", "source_paths", "contract")}))


def runtime_canonical(value):
    """Typed canonical JSON, matching the engine format without trusting its digest."""
    def validate(item):
        if item is None or type(item) in (bool, int, str):
            return
        if type(item) is float:
            # allow_nan=False below rejects nonfinite values.
            return
        if type(item) is list:
            for child in item:
                validate(child)
            return
        if type(item) is dict and all(type(key) is str for key in item):
            for child in item.values():
                validate(child)
            return
        raise ValueError("invalid typed compiler runtime JSON")
    validate(value)
    return (json.dumps(value, sort_keys=True, separators=(",", ":"),
                       ensure_ascii=True, allow_nan=False) + "\n").encode()


def runtime_contract(contract_raw):
    contract = decoded(contract_raw)
    require(type(contract) is dict and "compiler_runtime_identity" in contract
            and "compiler_runtime_sha256" in contract,
            "full compiler runtime contract required; executable-only contract rejected")
    descriptor = contract["compiler_runtime_identity"]
    digest = contract["compiler_runtime_sha256"]
    require(type(descriptor) is dict and descriptor.get("schema") == RUNTIME_SCHEMA,
            "unsupported compiler runtime descriptor")
    executable = descriptor.get("executable")
    require(type(executable) is dict and type(executable.get("path")) is str,
            "compiler runtime executable path required")
    compiler = Path(executable["path"])
    require(compiler.is_absolute() and ".." not in compiler.parts,
            "absolute compiler runtime executable path required")
    require(type(digest) is str and re.fullmatch(r"[0-9a-f]{64}", digest),
            "invalid compiler runtime contract digest")
    encoded = runtime_canonical(descriptor)
    require(sha(encoded) == digest, "compiler runtime contract digest differs")
    return descriptor, digest, encoded, compiler


def bound_runtime_sources(old, root, inputs):
    require(type(inputs) is dict, "runtime source input map required")
    sources = {}
    for name, relative in zip(RUNTIME_MODULES, RUNTIME_PATHS):
        expected = inputs.get(relative)
        require(type(expected) is str and re.fullmatch(r"[0-9a-f]{64}", expected),
                "runtime helper missing from frozen readset: " + relative)
        raw = old.safe_read(root / relative)
        require(sha(raw) == expected, "runtime helper bytes differ: " + relative)
        sources[name] = (root / relative, raw)
    return sources


def load_frozen_runtime(sources):
    """Private frozen-byte closure; ambient public module entries are never used.

    Like the current producer loader, register each private name for dataclasses,
    but restore all ambient entries even on failure. A private import hook keeps
    subsequent engine imports pointed at the same closure after restoration.
    """
    require(type(sources) is dict and tuple(sources) == RUNTIME_MODULES,
            "exact ordered four-module runtime closure required")
    missing = object()
    previous = {name: sys.modules.get(name, missing) for name in RUNTIME_MODULES}
    modules, private_names = {}, []
    public_import = builtins.__import__

    def private_import(name, globals=None, locals=None, fromlist=(), level=0):
        if name.split(".")[0] in RUNTIME_MODULES:
            require(level == 0 and name in modules,
                    "unavailable frozen runtime import: " + name)
            return modules[name]
        return public_import(name, globals, locals, fromlist, level)

    try:
        for name in RUNTIME_MODULES:
            path, raw = sources[name]
            require(type(raw) is bytes, "runtime loader requires exact byte strings")
            private_name = "serial_runtime_frozen_" + name + "_" + uuid.uuid4().hex
            module = ModuleType(private_name)
            module.__file__, module.__package__ = str(path), ""
            module.__builtins__ = dict(vars(builtins), __import__=private_import)
            sys.modules[private_name] = module
            private_names.append(private_name)
            sys.modules[name] = module
            modules[name] = module
            exec(compile(raw, str(path), "exec", dont_inherit=True,
                         optimize=sys.flags.optimize), vars(module))
        engine = modules["incremental_lean"]
        engine.verify_loaded_parser_sources({
            name + ".py": sources[name][1] for name in ("cache_math", "monitor_math")})
        # Retain private module identities for the guard's full lifetime.
        engine._serial_private_runtime_modules = tuple(modules.values())
        return engine
    except BaseException:
        for name in private_names:
            sys.modules.pop(name, None)
        raise
    finally:
        for name, module in previous.items():
            if module is missing:
                sys.modules.pop(name, None)
            else:
                sys.modules[name] = module


def prepare_runtime(old, root, inputs, contract_raw, *,
                    _test_runtime_loader=None, _test_runtime_guard_factory=None):
    """No native process. Injection is solely for fake pure Python controls."""
    descriptor, digest, expected, compiler = runtime_contract(contract_raw)
    sources = bound_runtime_sources(old, root, inputs)
    loader = load_frozen_runtime if _test_runtime_loader is None else _test_runtime_loader
    engine = loader(sources)
    factory = engine.RuntimeIdentityGuard if _test_runtime_guard_factory is None else _test_runtime_guard_factory
    guard = factory(compiler, env=os.environ)
    require(runtime_canonical(guard.descriptor) == expected
            and runtime_canonical(guard.identity) == expected,
            "live compiler runtime typed descriptor differs from released contract")
    require(type(guard.sha256) is str and guard.sha256 == digest
            and sha(runtime_canonical(guard.descriptor)) == guard.sha256,
            "live compiler runtime digest differs from released contract")
    guard.assert_stable(env=os.environ)
    return guard, sources, {"compiler_runtime_identity": descriptor,
                            "compiler_runtime_sha256": digest}


class PhaseInputs:
    """Old full guard plus exact readset/release/origin/caller custody."""
    def __init__(self, old, frozen, guards, context, runtime_guard):
        self.old, self.frozen, self.guards, self.context = old, frozen, guards, context
        self.runtime_guard = runtime_guard
        self.raw, self.root, self.contract = frozen.raw, frozen.root, frozen.contract

    def custody(self):
        for path, raw in self.guards.items():
            require(self.old.safe_read(path) == raw, "phase authority/source-origin drift: " + str(path))

    def check(self):
        self.custody()
        self.runtime_guard.assert_stable(env=os.environ)
        result = self.frozen.check()
        self.runtime_guard.assert_stable(env=os.environ)
        self.custody()
        return {**result, "phase": self.context["phase"],
                "release_sha256": self.context["release_sha256"],
                "compiler_runtime_sha256": self.context["compiler_runtime_sha256"]}

    def assert_runtime_unchanged(self):
        self.check()
        self.runtime_guard.assert_unchanged(env=os.environ)
        self.check()


def prepare(old, *, readset_path, release_path, release_sha, phase, caller_path,
            old_path, cold=False, timeout=21600, head_probe=None, universe_probe=None,
            _test_runtime_loader=None, _test_runtime_guard_factory=None):
    """Pure read/validation until returned check() is explicitly invoked.

    Readset closed fields: schema,phase,root,head,inputs,source_paths,contract,
    caller,old_helper,source_origin. Release closed fields are enumerated below.
    Both caller and helper must also occur by exact hash in inputs.
    """
    require(phase in ("public", "application"), "unknown phase")
    require(type(cold) is bool and type(timeout) is int and 1 <= timeout <= 21600,
            "invalid cold/timeout selection")
    require(type(release_sha) is str and re.fullmatch(r"[0-9a-f]{64}", release_sha),
            "exact coordinator release digest required")
    release_path, readset_path = Path(release_path).absolute(), Path(readset_path).absolute()
    rr = old.safe_read(release_path)
    require(sha(rr) == release_sha, "coordinator release bytes differ")
    release = decoded(rr)
    keys = {"schema", "approval", "attempt_id", "phase", "readset", "root", "head",
            "caller", "old_helper", "source_origin", "run_directory", "cold", "timeout_seconds"}
    require(type(release) is dict and set(release) == keys
            and release["schema"] == RELEASE_SCHEMA and release["approval"] == APPROVAL,
            "explicit closed coordinator release required")
    require(type(release["attempt_id"]) is str and re.fullmatch(r"[A-Za-z0-9_.-]{1,128}", release["attempt_id"]),
            "invalid release attempt")
    require(release["phase"] == phase and type(release["cold"]) is bool
            and release["cold"] == cold and type(release["timeout_seconds"]) is int
            and release["timeout_seconds"] == timeout, "release phase/resource mismatch")
    raw = file_identity(old, release["readset"])
    require(Path(release["readset"]["path"]) == readset_path, "release/readset path mismatch")
    data = decoded(raw)
    require(type(data) is dict and set(data) == {"schema", "phase", "root", "head", "inputs",
            "source_paths", "contract", "caller", "old_helper", "source_origin"}
            and data["schema"] == READSET_SCHEMA and data["phase"] == phase,
            "new closed phase readset required")
    for key in ("root", "head", "caller", "old_helper", "source_origin"):
        require(data[key] == release[key], "release/readset binding mismatch: " + key)
    caller_path, old_path = Path(caller_path).absolute(), Path(old_path).absolute()
    caller_raw = file_identity(old, data["caller"])
    helper_raw = file_identity(old, data["old_helper"])
    require(Path(data["caller"]["path"]) == caller_path and Path(data["old_helper"]["path"]) == old_path
            and sha(helper_raw) == OLD_SHA, "actual caller/helper occurrence mismatch")
    root = Path(data["root"])
    require(type(data["root"]) is str and root.is_absolute() and ".." not in root.parts,
            "invalid frozen root")
    for path, bound in ((caller_path, caller_raw), (old_path, helper_raw)):
        relative = old.canonical_relative(path.relative_to(root).as_posix())
        require(data["inputs"].get(relative) == sha(bound), "caller/helper missing from inputs")
    contract_name = old.canonical_relative(data["contract"])
    require(contract_name.startswith(".noeaaeue/bindings/") and contract_name.endswith(".json")
            and contract_name != ".noeaaeue/bindings/moebius-current-inputs-current.json",
            "immutable versioned contract required")
    contract_raw = old.safe_read(root / contract_name)
    require(data["inputs"].get(contract_name) == sha(contract_raw), "contract not bound to readset")
    guards = {release_path: rr, readset_path: raw, caller_path: caller_raw,
              old_path: helper_raw, root / contract_name: contract_raw}
    origin = data["source_origin"]
    if phase == "public":
        require(origin == {"kind": "frozen-source-input-set", "sha256": source_input_digest(data)},
                "public source-input origin mismatch")
    else:
        require(type(origin) is dict and set(origin) == {"kind", "descriptor", "origin"}
                and origin["kind"] == "approved-public-terminal-origin", "approved public origin required")
        descriptor_raw = file_identity(old, origin["descriptor"])
        identity = decoded(descriptor_raw)
        require(type(identity) is dict and set(identity) == {"path", "sha256", "bytes", "attempt_id"}
                and identity == origin["origin"] and type(identity["attempt_id"]) is str
                and re.fullmatch(r"[^\x00-\x20\x7f/\\]{1,256}", identity["attempt_id"]),
                "approved public descriptor identity mismatch")
        origin_raw = file_identity(old, {k: identity[k] for k in ("path", "sha256", "bytes")})
        payload = decoded(origin_raw)
        require(type(payload) is dict and payload.get("schema") == "proof-validation-origin-v1"
                and payload.get("outcome") == "passed" and payload.get("terminal") is True
                and payload.get("attempt_id") == identity["attempt_id"]
                and payload.get("evidence", {}).get("validation", {}).get("mode") == "all-project-replay"
                and payload["evidence"]["validation"].get("status") == "ALL_PROJECT_SOURCE_AND_AXIOM_CHECKS_PASSED",
                "approved origin is not a successful public attempt")
        require(decoded(contract_raw).get("incremental_validation", {}).get("public_compilation_origin") == identity,
                "new contract/public-origin mismatch")
        guards[Path(origin["descriptor"]["path"])] = descriptor_raw
        guards[Path(identity["path"])] = origin_raw
    run = Path(release["run_directory"])
    require(type(release["run_directory"]) is str and run.is_absolute() and ".." not in run.parts
            and run.parent == caller_path.parent and not run.exists() and not run.is_symlink(),
            "one absent release-bound run directory beside caller required")
    probes = {}
    if head_probe is not None:
        probes["head_probe"] = head_probe
    if universe_probe is not None:
        probes["universe_probe"] = universe_probe
    frozen = old.FrozenInputs(readset_path, self_path=caller_path, **probes)
    require(frozen.raw == raw and frozen.root == root and frozen.head == release["head"],
            "frozen helper binding differs")
    # Before any stage/native dispatch, independently validate the full runtime
    # descriptor and load only helper bytes already bound by this frozen readset.
    frozen.check()
    runtime_guard, runtime_sources, runtime_context = prepare_runtime(
        old, root, data["inputs"], contract_raw,
        _test_runtime_loader=_test_runtime_loader,
        _test_runtime_guard_factory=_test_runtime_guard_factory)
    guards.update({path: source for path, source in runtime_sources.values()})
    context = {"phase": phase, "release_sha256": release_sha, "release_path": str(release_path),
               "attempt_id": release["attempt_id"], "run_directory": str(run), "cold": cold,
               "timeout_seconds": timeout, "source_origin": origin,
               "native_acceptance": "PENDING_ROOT_SOURCE_AND_SCOPE_REVIEW",
               **runtime_context}
    result = PhaseInputs(old, frozen, guards, context, runtime_guard)
    result.check()
    return result


def stages_for(old, frozen, cold=False):
    stages = old.stages_for(frozen)
    selected = stages[:3] if frozen.context["phase"] == "public" else stages[3:]
    for stage in selected:
        if cold and stage["name"] in ("public-replay", "application-replay"):
            stage["argv"].append("--cold")
    return selected


def execute_prepared(old, frozen, *, executor=None, lane=None, receipt_scan=None, receipt_collect=None):
    frozen.check()
    kwargs = {key: value for key, value in {"executor": executor, "lane": lane,
              "receipt_scan": receipt_scan, "receipt_collect": receipt_collect}.items() if value is not None}
    run = Path(frozen.context["run_directory"])
    code = old.run_plan(frozen, stages_for(old, frozen, frozen.context["cold"]), run,
                        frozen.context["timeout_seconds"], **kwargs)
    try:
        frozen.assert_runtime_unchanged()
    except (Exception, KeyboardInterrupt) as error:
        old.write_new(run / "runtime-terminal-stop.json", {
            "error": repr(error), "old_stage_exit_code": code,
            "native_acceptance": "PENDING_ROOT_SOURCE_AND_SCOPE_REVIEW",
            "runtime_terminal_acceptance": False})
        return 1
    old.write_new(run / "phase-context.json", frozen.context)
    return code


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--phase", choices=("public", "application"), required=True)
    parser.add_argument("--frozen-inputs", type=Path, required=True)
    parser.add_argument("--release", type=Path)
    parser.add_argument("--release-sha256")
    parser.add_argument("--execute", action="store_true")
    parser.add_argument("--cold", action="store_true")
    parser.add_argument("--timeout-seconds", type=int, default=21600)
    args = parser.parse_args(argv)
    require(args.execute and args.release is not None and args.release_sha256 is not None,
            "inert: exact explicit coordinator release required before helpers/native")
    old_path = HERE / "serial_native.py"
    old = load_old_helper(old_path)
    frozen = prepare(old, readset_path=args.frozen_inputs, release_path=args.release,
                     release_sha=args.release_sha256, phase=args.phase, caller_path=Path(__file__),
                     old_path=old_path, cold=args.cold, timeout=args.timeout_seconds)
    return execute_prepared(old, frozen)


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, KeyError, RuntimeError) as error:
        print("STOPPED: " + str(error), file=sys.stderr)
        raise SystemExit(1)
