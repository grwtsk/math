#!/usr/bin/env python3
"""Serial checkpoint execution only; native receipt acceptance needs root review.

No staging, commits, pushes, source repairs or verifier/pin changes. Each run
uses a new directory and create-only records. Actual execution requires --execute.
"""
import argparse
from contextlib import contextmanager, nullcontext
import datetime
import fcntl
import hashlib
import importlib.util
import json
import os
from pathlib import Path
import re
import signal
import stat
import subprocess
import sys
import time
import uuid

sys.dont_write_bytecode = True
HERE = Path(__file__).absolute().parent
MAX_BYTES = 128 * 1024 * 1024


class Stopped(RuntimeError):
    pass


class Busy(Stopped):
    pass


def require(value, message):
    if not value:
        raise Stopped(message)


def sha(raw):
    return hashlib.sha256(raw).hexdigest()


def canonical_relative(name):
    require(isinstance(name, str) and name and "\\" not in name and "\x00" not in name
            and not name.startswith("/")
            and all(p not in ("", ".", "..", ".git") for p in name.split("/")),
            "unsafe relative input path")
    return name


def safe_read(path):
    path = Path(path)
    require(path.is_absolute(), "absolute input path required")
    fd = os.open("/", os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW)
    try:
        for part in path.parts[1:-1]:
            child = os.open(part, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW, dir_fd=fd)
            os.close(fd)
            fd = child
        leaf = os.open(path.name, os.O_RDONLY | os.O_NOFOLLOW | os.O_NONBLOCK, dir_fd=fd)
        with os.fdopen(leaf, "rb") as stream:
            before = os.fstat(stream.fileno())
            require(stat.S_ISREG(before.st_mode) and before.st_size <= MAX_BYTES,
                    "nonregular or oversized input")
            raw = stream.read(MAX_BYTES + 1)
            after = os.fstat(stream.fileno())
        final = os.stat(path.name, dir_fd=fd, follow_symlinks=False)
        ident = lambda x: (x.st_dev, x.st_ino, x.st_mode, x.st_size, x.st_mtime_ns, x.st_ctime_ns)
        require(len(raw) <= MAX_BYTES and ident(before) == ident(after) == ident(final),
                "input changed during read")
        return raw
    finally:
        os.close(fd)


def git_output(root, *args):
    env = dict(os.environ, GIT_OPTIONAL_LOCKS="0")
    result = subprocess.run(["git", "-C", str(root), *args], capture_output=True,
                            env=env, timeout=60)
    require(result.returncode == 0, "read-only Git query failed")
    return result.stdout


def current_head(root):
    return git_output(root, "rev-parse", "--verify", "HEAD").decode("ascii").strip()


def source_universe(root):
    result = set()
    for flags in (("--cached",), ("--others", "--exclude-standard")):
        raw = git_output(root, "ls-files", "-z", *flags, "--", "GRWTSK", "GRWTSK.lean")
        for item in raw.split(b"\0"):
            if item:
                name = item.decode("utf-8")
                if name == "GRWTSK.lean" or name.startswith("GRWTSK/") and name.endswith(".lean"):
                    canonical_relative(name)
                    result.add(name)
    return result


class FrozenInputs:
    def __init__(self, path, self_path=None, head_probe=current_head, universe_probe=source_universe):
        self.path = Path(path).absolute()
        self.raw = safe_read(self.path)
        self.data = json.loads(self.raw)
        self.root = Path(self.data["root"])
        require(self.root.is_absolute(), "frozen repository must be absolute")
        self.head = self.data["head"]
        require(re.fullmatch(r"[0-9a-f]{40,64}", self.head), "invalid frozen HEAD")
        self.inputs = self.data["inputs"]
        require(isinstance(self.inputs, dict) and self.inputs, "empty frozen read set")
        for name, digest in self.inputs.items():
            canonical_relative(name)
            require(isinstance(digest, str) and re.fullmatch(r"[0-9a-f]{64}", digest), "invalid input hash")
        sources = self.data["source_paths"]
        require(isinstance(sources, list) and len(sources) == len(set(sources)) and sources,
                "invalid frozen source universe")
        self.sources = set(sources)
        require(self.sources <= set(self.inputs), "every frozen source must have a frozen byte hash")
        require(all(p == "GRWTSK.lean" or p.startswith("GRWTSK/") and p.endswith(".lean")
                    for p in self.sources), "invalid frozen source path")
        contract = Path(self.data["contract"])
        if contract.is_absolute():
            contract = contract.relative_to(self.root)
        self.contract = canonical_relative(contract.as_posix())
        require(self.contract in self.inputs, "exact contract must be in frozen read set")
        self.self_path = Path(self_path or __file__).absolute()
        self.self_raw = safe_read(self.self_path)
        self.head_probe, self.universe_probe = head_probe, universe_probe

    def check(self):
        require(safe_read(self.path) == self.raw, "frozen-inputs record drift")
        require(safe_read(self.self_path) == self.self_raw, "orchestrator self-byte drift")
        require(self.head_probe(self.root) == self.head, "HEAD drift")
        require(self.universe_probe(self.root) == self.sources, "Git-visible source universe drift")
        for name, expected in self.inputs.items():
            require(sha(safe_read(self.root / name)) == expected, "frozen input byte drift: " + name)
        require(self.head_probe(self.root) == self.head, "HEAD changed during input checks")
        return {"head": self.head, "frozen_inputs_sha256": sha(self.raw),
                "orchestrator_sha256": sha(self.self_raw), "input_count": len(self.inputs),
                "source_count": len(self.sources), "contract": self.contract,
                "contract_sha256": self.inputs[self.contract]}


def write_new(path, value):
    write_raw_new(path, (json.dumps(value, indent=2, sort_keys=True) + "\n").encode())


def write_raw_new(path, raw):
    with Path(path).open("xb") as stream:
        stream.write(raw)
        stream.flush()
        os.fsync(stream.fileno())


@contextmanager
def build_lane(root):
    """Only ordinary Lake build uses the parent lock; verifier children own theirs."""
    script_dir = root / ".noeaaeue/scripts"
    sys.path.insert(0, str(script_dir))
    try:
        spec = importlib.util.spec_from_file_location("serial_build_guard", script_dir / "check_math_trust.py")
        guard = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(guard)
    finally:
        sys.path.pop(0)
    lock = root / ".noeaaeue/.local/math-trust/replay.lock"
    descriptor = os.open(lock, os.O_RDWR | os.O_CREAT | os.O_NOFOLLOW | os.O_NONBLOCK, 0o600)
    try:
        require(stat.S_ISREG(os.fstat(descriptor).st_mode), "shared lock is not regular")
        try:
            fcntl.flock(descriptor, fcntl.LOCK_EX | fcntl.LOCK_NB)
        except BlockingIOError as error:
            raise Busy("shared native lock BUSY") from error
        if guard.competing_jobs(root):
            raise Busy("competing native job: BUSY")
        yield
    finally:
        os.close(descriptor)


def stop_own_group(process):
    """Signal only the new process group created for this exact child launch."""
    for sig, wait_seconds in ((signal.SIGTERM, 3), (signal.SIGKILL, 3)):
        try:
            os.killpg(process.pid, sig)
        except ProcessLookupError:
            break
        deadline = time.monotonic() + wait_seconds
        while time.monotonic() < deadline:
            process.poll()  # Reap the leader, but do not assume its descendants exited.
            try:
                os.killpg(process.pid, 0)
            except ProcessLookupError:
                break
            time.sleep(0.05)
    process.wait(timeout=3)


def execute(stage, root, log_path, timeout):
    started = time.monotonic()
    with Path(log_path).open("xb") as log:
        process = subprocess.Popen(stage["argv"], cwd=root, stdout=log, stderr=subprocess.STDOUT,
                                   start_new_session=True, env=dict(os.environ, PYTHONDONTWRITEBYTECODE="1"))
        try:
            code = process.wait(timeout=timeout)
            try:
                os.killpg(process.pid, 0)
            except ProcessLookupError:
                pass
            else:
                stop_own_group(process)
                return {"status": "descendants-after-leader-exit", "exit_code": code,
                        "pid": process.pid, "process_group": process.pid,
                        "seconds": time.monotonic() - started}
            return {"status": "completed", "exit_code": code, "pid": process.pid,
                    "process_group": process.pid, "seconds": time.monotonic() - started}
        except subprocess.TimeoutExpired:
            stop_own_group(process)
            return {"status": "timeout", "exit_code": process.returncode, "pid": process.pid,
                    "process_group": process.pid, "seconds": time.monotonic() - started}
        except BaseException:
            stop_own_group(process)
            raise


def receipt_directories(root):
    """Inventory only immediate known receipt directories, never source discovery."""
    found = {}
    for relative in (".noeaaeue/.local/math-trust", ".noeaaeue/.local/checks"):
        base = root / relative
        if not base.exists():
            continue
        require(stat.S_ISDIR(base.lstat().st_mode), "receipt root is not a regular directory")
        with os.scandir(base) as entries:
            for entry in entries:
                st = entry.stat(follow_symlinks=False)
                if stat.S_ISDIR(st.st_mode):
                    found[relative + "/" + entry.name] = [st.st_dev, st.st_ino]
    return found


def new_receipts(root, before):
    result = []
    for name, identity in receipt_directories(root).items():
        if before.get(name) == identity:
            continue
        path = root / name / "receipt.json"
        if not os.path.lexists(path):
            result.append({"directory": name, "directory_identity": identity, "receipt": None})
            continue
        raw = safe_read(path)
        data = json.loads(raw)
        result.append({"directory": name, "directory_identity": identity,
                       "receipt": name + "/receipt.json", "sha256": sha(raw), "bytes": len(raw),
                       "reported_status": data.get("status", data.get("outcome")),
                       "reported_kernel_checked": data.get("kernel_checked"),
                       "acceptance": "PENDING_ROOT_SOURCE_AND_SCOPE_REVIEW"})
    return result


def run_plan(frozen, stages, run, timeout=21600, executor=execute, lane=build_lane,
             receipt_scan=receipt_directories, receipt_collect=new_receipts):
    run.mkdir()  # Must be absent; never reuse or overwrite an earlier run.
    write_raw_new(run / "frozen-inputs-copy.json", frozen.raw)
    results = []
    try:
        for index, stage in enumerate(stages, 1):
            prefix = "%02d-%s" % (index, stage["name"])
            pre = frozen.check()
            before = receipt_scan(frozen.root)
            write_new(run / (prefix + "-command.json"), dict(stage, preflight=pre,
                       timeout_seconds=timeout, parent_holds_lock=stage["parent_lock"]))
            try:
                with lane(frozen.root) if stage["parent_lock"] else nullcontext():
                    outcome = executor(stage, frozen.root, run / (prefix + ".log"), timeout)
            except Busy as error:
                outcome = {"status": "BUSY", "exit_code": None, "error": str(error)}
            except (Exception, KeyboardInterrupt) as error:
                outcome = {"status": "exception", "exit_code": None, "error": repr(error)}
            try:
                outcome["postflight"] = frozen.check()
            except Exception as error:
                outcome["postflight_drift"] = repr(error)
            outcome["native_receipt_candidates"] = receipt_collect(frozen.root, before)
            outcome["stage"] = stage["name"]
            outcome["native_acceptance"] = "PENDING_ROOT_RECEIPT_REVIEW"
            write_new(run / (prefix + "-result.json"), outcome)
            results.append(outcome)
            write_new(run / ("state-%02d.json" % index), {"results": results,
                       "native_acceptance": "PENDING_ROOT_RECEIPT_REVIEW"})
            require(outcome["status"] == "completed" and outcome["exit_code"] == 0
                    and "postflight_drift" not in outcome,
                    "serial execution stopped at " + stage["name"])
        frozen.check()
        status = "ALL_STAGE_COMMANDS_EXITED_ZERO_PENDING_RECEIPT_REVIEW"
        code = 0
    except (Exception, KeyboardInterrupt) as error:
        status, code = "STOPPED_WITH_RETAINED_RECORDS", 1
        write_new(run / "stop.json", {"error": repr(error), "completed_stage_records": len(results)})
    write_new(run / "summary.json", {"execution_status": status, "results": results,
               "native_acceptance": "PENDING_ROOT_RECEIPT_REVIEW", "proof_or_rh_claim": False})
    return code


def stages_for(frozen):
    guard = str(frozen.root / ".noeaaeue/scripts/check_math_trust.py")
    application = str(frozen.root / ".noeaaeue/scripts/check_moebius_response.py")
    return [
        {"name": "ordinary-build", "argv": ["lake", "build", "GRWTSK"], "parent_lock": True},
        {"name": "native-self-test", "argv": [sys.executable, "-B", guard, "--lean-self-test"], "parent_lock": False},
        {"name": "public-replay", "argv": [sys.executable, "-B", guard, "--memory-mib", "12288"], "parent_lock": False},
        {"name": "application-replay", "argv": [sys.executable, "-B", application,
            "--manifest", str(frozen.root / frozen.contract), "--memory-mb", "12288"], "parent_lock": False},
    ]


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--frozen-inputs", type=Path, default=HERE / "frozen-inputs.json")
    parser.add_argument("--execute", action="store_true", help="root-reviewed explicit native launch")
    parser.add_argument("--timeout-seconds", type=int, default=21600)
    args = parser.parse_args()
    require(1 <= args.timeout_seconds <= 21600, "timeout must be1..21600seconds")
    require(args.execute, "inert preparation: --execute required; no native launched")
    frozen = FrozenInputs(args.frozen_inputs)
    frozen.check()
    run = HERE / ("serial-run-" + datetime.datetime.now(datetime.timezone.utc).strftime("%Y%m%dT%H%M%SZ")
                  + "-" + uuid.uuid4().hex)
    print("SERIAL_RUN " + str(run), flush=True)
    return run_plan(frozen, stages_for(frozen), run, args.timeout_seconds)


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (Stopped, OSError, ValueError, KeyError) as error:
        print("STOPPED: " + str(error), file=sys.stderr)
        raise SystemExit(1)
