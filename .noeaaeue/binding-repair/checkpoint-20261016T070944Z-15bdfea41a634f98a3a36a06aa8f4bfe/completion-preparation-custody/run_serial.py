#!/usr/bin/env python3
"""Inert until invoked: run the four existing checkpoint commands serially.

Use Python 3.11+ and --checkpoint <prepared repository-relative checkpoint>.
SIGINT/SIGTERM received by this parent queue a stop; they are not forwarded to
the child. A child runs in its own session, completes, and has its actual result
retained before stopping. Creating serial-native/STOP_BEFORE_NEXT_STAGE also
prevents the next stage. This controller supplies custody, not proof acceptance;
the committed verification scripts remain the reproduction commands.
"""
from __future__ import annotations

import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import re
import signal
import stat
import subprocess
import sys
import uuid

sys.dont_write_bytecode = True
ROOT = Path(__file__).resolve().parents[3]
NAMES = ("contract-validate-retry", "native-audit-self-test", "public-library-replay", "application-replay")
EXPECTED_STATUS = ("inputs-validated", "LEAN_AUDIT_SELF_TEST_PASSED",
                   "ALL_PROJECT_SOURCE_AND_AXIOM_CHECKS_PASSED", "kernel-checked")
STOP_SIGNALS = []
LEAN_LIMIT = 1024 * 1024


def require(value, message):
    if not value:
        raise RuntimeError(message)


def now():
    return datetime.now(timezone.utc).isoformat()


def sha(raw):
    return hashlib.sha256(raw).hexdigest()


def rel(path):
    return path.relative_to(ROOT).as_posix()


def encoded(value):
    return (json.dumps(value, indent=2) + "\n").encode()


def read(path):
    """Read a stable regular file, rejecting symlinked path components."""
    path = path.absolute()
    require(path.is_relative_to(ROOT), "custody/input path is outside this repository")
    cursor = ROOT
    for part in path.relative_to(ROOT).parts:
        cursor /= part
        require(not cursor.is_symlink(), "symlinked input: " + str(cursor))
    before = path.stat()
    require(stat.S_ISREG(before.st_mode), "nonregular input: " + str(path))
    raw = path.read_bytes()
    after = path.stat()
    identity = lambda s: (s.st_dev, s.st_ino, s.st_size, s.st_mtime_ns, s.st_ctime_ns)
    require(identity(before) == identity(after), "input changed during read: " + str(path))
    return raw


def write_new(path, raw):
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("xb") as stream:
        stream.write(raw)
        stream.flush()
        os.fsync(stream.fileno())
    path.chmod(0o444)


def update_json(path, value):
    temporary = path.with_name(path.name + "." + uuid.uuid4().hex + ".tmp")
    write_new(temporary, encoded(value))
    os.replace(temporary, path)


def defer_stop(number, _frame):
    STOP_SIGNALS.append({"signal": number, "received_utc": now()})


def receipt_path(log_raw):
    text = log_raw.decode(errors="replace")
    found = []
    for line in text.splitlines():
        try:
            obj = json.loads(line)
        except json.JSONDecodeError:
            continue
        if isinstance(obj, dict):
            for key in ("receipt", "failure"):
                if isinstance(obj.get(key), str):
                    found.append(obj[key])
    found += re.findall(r"(?i)\breceipt:\s*([^\r\n]+?\.json)", text)
    require(found, "stage emitted no receipt/failure path; retain its actual log")
    path = Path(found[-1])
    path = path if path.is_absolute() else ROOT / path
    require(path.is_relative_to(ROOT / ".noeaaeue/.local"), "unexpected native receipt location")
    return path


def copy_file(original, destination):
    raw = read(original)
    write_new(destination, raw)
    require(read(original) == raw and read(destination) == raw, "custody copy drift")
    return {"original": str(original), "retained": rel(destination),
            "sha256": sha(raw), "bytes": len(raw)}


def retain_state(original_receipt, retained_receipt, destination):
    """Keep native diagnostic text and generated drivers, never build objects."""
    rows = [copy_file(original_receipt, retained_receipt)]
    state = original_receipt.parent
    native = json.loads(read(original_receipt))
    generated_fixtures = {"source/" + row["fixture_module"].replace(".", "/") + ".lean"
                          for row in native.get("runtime_profile_negative_controls", [])
                          if isinstance(row.get("fixture_module"), str)}
    for directory, subdirs, files in os.walk(state, followlinks=False):
        directory = Path(directory)
        subdirs[:] = [name for name in subdirs if not (directory / name).is_symlink()
                      and name not in {"build", ".lake", "packages"}
                      and not name.startswith("dependency")]
        # Complete canonical frozen library trees are already source-bound by
        # the native receipt. Retain generated top-level/control/audit sources.
        for name in sorted(files):
            path = directory / name
            if path == original_receipt or path.is_symlink():
                continue
            local = path.relative_to(state)
            top = len(local.parts) == 1 and path.suffix in {".json", ".log", ".lean"}
            nested_log = path.suffix == ".log"
            generated_lean = path.suffix == ".lean" and path.stat().st_size <= LEAN_LIMIT
            if local.parts[:2] == ("source", "GRWTSK") and local.as_posix() not in generated_fixtures:
                continue
            if not (top or nested_log or generated_lean):
                continue
            if path.suffix == ".lean" and path.stat().st_size > LEAN_LIMIT:
                continue
            rows.append(copy_file(path, destination / local))
    write_new(destination / "custody.json", encoded({"state": str(state), "files": rows,
        "excluded": "compiled objects, build/dependency trees, canonical source/GRWTSK (receipt-listed generated profile fixtures retained); generated Lean limited to 1 MiB each"}))
    return rows


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--checkpoint", required=True)
    args = parser.parse_args()
    require(sys.version_info >= (3, 11), "use the current Python 3.11+ environment")
    require(Path.cwd().resolve() == ROOT, "run from the repository root")
    name = Path(args.checkpoint)
    require(not name.is_absolute() and ".." not in name.parts and
            name.parent == Path(".noeaaeue/binding-repair") and name.name.startswith("checkpoint-"),
            "use the exact prepared repository-relative checkpoint")
    checkpoint = ROOT / name
    manifest_path = checkpoint / "preparation-manifest.json"
    manifest_raw = read(manifest_path)
    manifest = json.loads(manifest_raw)
    require(manifest["checkpoint"] == name.as_posix(), "checkpoint identity differs")
    contract = manifest["future_contract"]
    require(not Path(contract).is_absolute() and ".." not in Path(contract).parts,
            "invalid prepared contract path")
    contract_path = ROOT / contract
    contract_raw = read(contract_path)
    prepared = manifest["post_install_commands_not_executed"][4:]
    require(len(prepared) == 4, "exactly four prepared remaining stages required")
    expected_tails = [
        ["-B", ".noeaaeue/scripts/check_moebius_response.py", "--manifest", contract, "--validate-only"],
        ["-B", ".noeaaeue/scripts/check_math_trust.py", "--lean-self-test"],
        ["-B", ".noeaaeue/scripts/check_math_trust.py", "--memory-mib", "12288"],
        ["-B", ".noeaaeue/scripts/check_moebius_response.py", "--manifest", contract, "--memory-mb", "12288"],
    ]
    require([command[1:] for command in prepared] == expected_tails,
            "prepared commands differ from the exact four reviewed stages")
    commands = [[sys.executable, *command[1:]] for command in prepared]
    output = checkpoint / "serial-native"
    output.mkdir(mode=0o700)  # Exclusive: never reuse or overwrite an earlier run.
    controller_raw = read(Path(__file__).resolve())
    write_new(output / "controller.py", controller_raw)
    scripts = {command[2]: sha(read(ROOT / command[2])) for command in commands}
    write_new(output / "plan.json", encoded({"checkpoint": args.checkpoint, "argv": sys.argv,
        "controller_sha256": sha(controller_raw), "preparation_manifest_sha256": sha(manifest_raw),
        "contract": contract, "contract_sha256": sha(contract_raw), "commands": commands,
        "script_sha256": scripts, "scope": "Serial orchestration/custody only; committed children determine actual scoped outcomes."}))
    records = [{"name": label, "argv": command, "status": "NOT_RUN", "exit": None,
                "script_sha256_before": None, "script_sha256_after": None,
                "log": None, "log_sha256": None, "original_receipt": None,
                "retained_receipt": None, "receipt_sha256": None}
               for label, command in zip(NAMES, commands)]
    update_json(output / "records.json", records)
    signal.signal(signal.SIGINT, defer_stop)
    signal.signal(signal.SIGTERM, defer_stop)
    print("SERIAL_OUTPUT " + rel(output), flush=True)
    stop_marker = output / "STOP_BEFORE_NEXT_STAGE"
    pipeline_status = "NOT_RUN"
    for index, row in enumerate(records):
        if STOP_SIGNALS or stop_marker.exists():
            pipeline_status = "DEFERRED_STOP"
            break
        try:
            require(read(manifest_path) == manifest_raw and read(contract_path) == contract_raw,
                    "prepared manifest or exact contract changed before stage")
            script = ROOT / row["argv"][2]
            before = sha(read(script))
            require(before == scripts[row["argv"][2]], "committed verifier changed since serial plan")
            row.update(status="running", started_utc=now(), script_sha256_before=before)
            update_json(output / "records.json", records)
            update_json(output / "active.json", {"status": "RUNNING", "stage": row["name"],
                                                    "index": index, "signals": STOP_SIGNALS})
            log = output / (row["name"] + ".log")
            if STOP_SIGNALS or stop_marker.exists():
                row.update(status="NOT_RUN", deferred_before_launch_utc=now())
                pipeline_status = "DEFERRED_STOP"
                update_json(output / "records.json", records)
                break
            print("START " + row["name"], flush=True)
            with log.open("xb") as stream:
                child = subprocess.Popen(row["argv"], cwd=ROOT, stdout=stream,
                                         stderr=subprocess.STDOUT, start_new_session=True)
                row["child_pid"] = child.pid
                update_json(output / "records.json", records)
                row["exit"] = child.wait()
                stream.flush()
                os.fsync(stream.fileno())
            log.chmod(0o444)
            raw = read(log)
            row.update(finished_utc=now(), script_sha256_after=sha(read(script)),
                       log=rel(log), log_sha256=sha(raw))
            original = receipt_path(raw)
            retained = output / (row["name"] + "-receipt.json")
            row["original_receipt"], row["retained_receipt"] = str(original), rel(retained)
            custody = retain_state(original, retained, output / (row["name"] + "-artifacts"))
            native = json.loads(read(retained))
            row.update(receipt_sha256=sha(read(retained)), native_status=native.get("status"),
                       custody=rel(output / (row["name"] + "-artifacts/custody.json")),
                       custody_sha256=sha(read(output / (row["name"] + "-artifacts/custody.json"))),
                       retained_file_count=len(custody))
            require(row["exit"] == 0, "committed stage exited unsuccessfully")
            require(row["script_sha256_before"] == row["script_sha256_after"], "verifier script changed during stage")
            require(read(manifest_path) == manifest_raw and read(contract_path) == contract_raw,
                    "prepared manifest or exact contract changed during stage")
            require(native.get("status") == EXPECTED_STATUS[index], "native receipt did not report its required terminal status")
            if index == 3:
                require(native.get("kernel_checked") is True, "application receipt is not kernel checked")
            row["status"] = "passed"
        except Exception as error:
            row.update(status="failed", finished_utc=now(), error=str(error))
            pipeline_status = "FAILED"
        update_json(output / "records.json", records)
        print(row["name"] + " " + row["status"].upper(), flush=True)
        if row["status"] != "passed":
            break
    if all(row["status"] == "passed" for row in records):
        pipeline_status = "ALL_FOUR_STAGES_PASSED"
    elif pipeline_status == "NOT_RUN":
        pipeline_status = "DEFERRED_STOP" if STOP_SIGNALS or stop_marker.exists() else "INCOMPLETE"
    result = {"status": pipeline_status, "finished_utc": now(), "signals": STOP_SIGNALS,
              "stop_marker_present": stop_marker.exists(), "records": rel(output / "records.json"),
              "records_sha256": sha(read(output / "records.json")),
              "completed_stages": sum(row["status"] == "passed" for row in records),
              "not_run": [row["name"] for row in records if row["status"] == "NOT_RUN"],
              "scope": "Actual orchestration outcomes only; no broader mathematical acceptance."}
    write_new(output / "result.json", encoded(result))
    update_json(output / "active.json", result)
    print(json.dumps(result, indent=2), flush=True)
    return 0 if pipeline_status == "ALL_FOUR_STAGES_PASSED" else 2 if pipeline_status == "DEFERRED_STOP" else 1


if __name__ == "__main__":
    raise SystemExit(main())
