#!/usr/bin/env python3
"""Inventory and reconstruction observer for repository conformance.

This checker deliberately separates an observation from an acceptance claim.
Without ``--require-profile`` it exits successfully after producing an accurate
blocker report, even when no conformance profile is established.  It never
turns UNKNOWN or an operational failure into mathematical acceptance.
"""
from __future__ import annotations

import argparse
from collections import Counter, defaultdict
import copy
import datetime
import gzip
import hashlib
import importlib.util
import io
import json
import os
from pathlib import Path, PurePosixPath
import re
import stat
import subprocess
import sys
import tempfile
import unicodedata
from repository_paths import relocated_name


ROOT = Path(__file__).resolve().parents[2]
CATALOG_REL = ".noeaaeue/documentation/reference/repository-artifact-catalog.json"
CATALOG = ROOT / CATALOG_REL
LAYOUT = ROOT / ".noeaaeue/documentation/math-layout.json"
RULE_SCHEMA = ROOT / ".noeaaeue/documentation/reference/rules/registry-schema.json"
RULE_REGISTRY = ROOT / ".noeaaeue/documentation/reference/rules/registry.json"
RECIPES = ROOT / ".noeaaeue/documentation/reference/reconstruction-recipes.json"
BASIS_ROOT_REL = ".noeaaeue/evidence/repository-reconstruction-basis/objects"
BASIS_ROOT = ROOT / BASIS_ROOT_REL
POLICY_INPUTS = (
    ROOT / ".noeaaeue/evidence/policy-inputs/GRWTSK_Lean_Migration_With_Rigor_Addendum.md",
    ROOT / ".noeaaeue/evidence/policy-inputs/GRWTSK_Rigor_and_Reconstruction_Addendum.md",
)
CHECKER = ROOT / ".noeaaeue/scripts/check_repository_conformance.py"
MONITOR_SOURCE = ROOT / ".noeaaeue/scripts/monitor_math.py"
CURRENT_CATALOG_INPUTS = (
    ".noeaaeue/bindings/current-source-observations.json",
    ".noeaaeue/scripts/source_observations.py",
    ".noeaaeue/scripts/check_math_layout.py",
    ".noeaaeue/scripts/repository_paths.py",
)

HEX64 = re.compile(r"[0-9a-f]{64}\Z")
RULE_ID = re.compile(r"[A-Z][A-Z0-9_]*\.[0-9]{3}\Z")
SEMVER = re.compile(r"[0-9]+\.[0-9]+\.[0-9]+\Z")

REQUIRED_RULE_IDS = {
    "FOUNDATION.001", "INVENTORY.001", "BYTES.001", "GENERATION.001",
    "ORIGIN.001", "BINDING.001", "LAYOUT.001", "ROLE.001",
    "COVERAGE.001", "CONTRACT.001", "PROOF.001", "RULE.001",
    "GROUNDING.001", "CONTROL.001", "DOCUMENTATION.001", "FRESHNESS.001",
    "HISTORY.001", "INDEPENDENCE.001", "RELEASE.001",
}
PROFILE_ORDER = [
    "organized", "reconstructible", "formally-checked", "independently-validated",
]


class Invalid(Exception):
    """A deterministic validation failure, suitable for a blocker report."""


def require(condition, message):
    if not condition:
        raise Invalid(message)


def sha256(data):
    return hashlib.sha256(data).hexdigest()


def encoded(value):
    return (json.dumps(value, ensure_ascii=True, indent=2, sort_keys=True) + "\n").encode()


def load_json(path):
    relative = str(path.relative_to(ROOT))
    state, data = MONITOR.read_state(ROOT, relative, retain=True)
    if state.get("kind") != "file" or data is None or not state.get("read_stable"):
        raise Invalid("missing or unsafe JSON input: " + relative)
    try:
        return json.loads(data)
    except (UnicodeError, json.JSONDecodeError) as error:
        raise Invalid("malformed JSON input: " + relative) from error


def safe_write_output(root, relative, data):
    """Atomically replace one generated file without following path links."""
    require(safe_relpath(relative), "unsafe generated output path")
    require(hasattr(os, "O_NOFOLLOW") and hasattr(os, "O_DIRECTORY"),
            "platform lacks no-follow output support")
    descriptors = []
    temporary = None
    try:
        parent_fd = os.open(root, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW)
        descriptors.append(parent_fd)
        parts = PurePosixPath(relative).parts
        for component in parts[:-1]:
            child_fd = os.open(component, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW,
                               dir_fd=parent_fd)
            descriptors.append(child_fd)
            parent_fd = child_fd
        name = parts[-1]
        try:
            existing = os.stat(name, dir_fd=parent_fd, follow_symlinks=False)
        except FileNotFoundError:
            existing = None
        require(existing is None or stat.S_ISREG(existing.st_mode),
                "refusing to replace nonregular generated output")
        temporary = "." + name + ".tmp"
        flags = os.O_WRONLY | os.O_CREAT | os.O_EXCL | os.O_NOFOLLOW
        descriptor = os.open(temporary, flags, 0o644, dir_fd=parent_fd)
        try:
            view = memoryview(data)
            while view:
                written = os.write(descriptor, view)
                require(written > 0, "short generated-output write")
                view = view[written:]
            os.fsync(descriptor)
        finally:
            os.close(descriptor)
        os.rename(temporary, name, src_dir_fd=parent_fd, dst_dir_fd=parent_fd)
        temporary = None
        os.fsync(parent_fd)
    finally:
        if temporary is not None and descriptors:
            try:
                os.unlink(temporary, dir_fd=descriptors[-1])
            except FileNotFoundError:
                pass
        for descriptor in reversed(descriptors):
            os.close(descriptor)


def git(root, *args, allowed=(0,)):
    env = dict(os.environ, GIT_OPTIONAL_LOCKS="0")
    process = subprocess.run(
        ["git", "-C", str(root), *args], env=env, capture_output=True, timeout=120,
    )
    if process.returncode not in allowed:
        raise Invalid("git " + args[0] + " failed with exit " + str(process.returncode))
    return process.stdout


def load_monitor():
    """Use the repository's reviewed no-follow reader rather than a second reader."""
    path = ROOT / ".noeaaeue/scripts/monitor_math.py"
    spec = importlib.util.spec_from_file_location("grwtsk_monitor_math", path)
    require(spec is not None and spec.loader is not None, "cannot load monitor_math.py")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


MONITOR = load_monitor()


def decode_path(raw):
    return os.fsdecode(raw)


def safe_relpath(path):
    if not isinstance(path, str) or not path or "\\" in path:
        return False
    pure = PurePosixPath(path)
    return (not pure.is_absolute() and ".." not in pure.parts and ".git" not in pure.parts
            and str(pure) == path and not any(ord(ch) < 32 or ord(ch) == 127 for ch in path))


def nul_paths(root, *args):
    raw = git(root, *args)
    require(raw.endswith(b"\0") or not raw, "Git NUL-delimited path output was truncated")
    return [field for field in raw.split(b"\0") if field]


def parse_index(root):
    rows = defaultdict(list)
    for record in nul_paths(root, "ls-files", "-s", "-z"):
        try:
            metadata, raw_path = record.split(b"\t", 1)
            mode, blob, stage = metadata.split(b" ")
            row = {
                "mode": mode.decode("ascii"),
                "blob": blob.decode("ascii"),
                "stage": int(stage),
            }
        except (ValueError, UnicodeError) as error:
            raise Invalid("malformed git index record") from error
        rows[raw_path].append(row)
    return rows


def parse_status(root):
    fields = git(root, "status", "--porcelain=v1", "-z", "--untracked-files=all").split(b"\0")
    result = defaultdict(list)
    index = 0
    while index < len(fields):
        field = fields[index]
        index += 1
        if not field:
            continue
        require(len(field) >= 4 and field[2:3] == b" ", "malformed git status record")
        code, raw_path = field[:2].decode("ascii", "strict"), field[3:]
        row = {"code": code}
        if "R" in code or "C" in code:
            require(index < len(fields) and fields[index], "truncated git rename record")
            row["from_path_bytes_hex"] = fields[index].hex()
            index += 1
        result[raw_path].append(row)
    return result


def discover(root):
    tracked = set(nul_paths(root, "ls-files", "-z", "--cached"))
    untracked = set(nul_paths(root, "ls-files", "-z", "--others", "--exclude-standard"))
    overlap = tracked & untracked
    require(not overlap, "Git reported paths as both tracked and untracked")
    index = parse_index(root)
    statuses = parse_status(root)
    catalog_raw = os.fsencode(CATALOG_REL)
    paths = sorted((tracked | untracked) - {catalog_raw})
    return {
        "paths": paths,
        "tracked": tracked,
        "untracked": untracked,
        "index": index,
        "statuses": statuses,
        "catalog_was_visible": catalog_raw in tracked or catalog_raw in untracked,
        "object_format": git(root, "rev-parse", "--show-object-format").decode("ascii").strip(),
    }


def discovery_fingerprint(discovery):
    payload = {
        "paths": [path.hex() for path in discovery["paths"]],
        "tracked": sorted(path.hex() for path in discovery["tracked"]),
        "untracked": sorted(path.hex() for path in discovery["untracked"]),
        "index": {path.hex(): rows for path, rows in sorted(discovery["index"].items())},
        "statuses": {path.hex(): rows for path, rows in sorted(discovery["statuses"].items())},
        "catalog_was_visible": discovery["catalog_was_visible"],
        "object_format": discovery["object_format"],
    }
    return sha256(encoded(payload))


def governing_identities():
    result = {}
    for path in (
        LAYOUT, RULE_SCHEMA, RULE_REGISTRY, RECIPES, *POLICY_INPUTS,
        CHECKER, MONITOR_SOURCE,
    ):
        relative = str(path.relative_to(ROOT))
        state, _ = MONITOR.read_state(ROOT, relative, retain=False)
        require(state.get("kind") == "file" and state.get("read_stable")
                and isinstance(state.get("sha256"), str),
                "governing input is missing, unsafe, or changing: " + relative)
        result[relative] = state["sha256"]
    return result


def write_observation_receipt(report):
    """Write one append-only observation of the already closed prior snapshot."""
    observed_at = datetime.datetime.now(datetime.timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
    compact_time = observed_at.replace("-", "").replace(":", "")
    observation_digest = sha256(encoded(report))
    name = "repository-conformance-" + compact_time + "-" + observation_digest[:12] + ".json"
    relative = ".noeaaeue/evidence/" + name
    receipt = {
        "schema": "grwtsk-repository-conformance-receipt-v1",
        "schema_version": 1,
        "observed_at_utc": observed_at,
        "command": ["python3", *(["-B"] if sys.dont_write_bytecode else []), *sys.argv],
        "python_runtime": sys.version,
        "execution_state": "COMPLETED",
        "observation_sha256": observation_digest,
        "snapshot_relation": (
            "The observation was closed before this receipt was created. The receipt is therefore "
            "an immutable observation of the immediately prior Git-visible snapshot and does not "
            "claim to inventory or hash its own bytes."
        ),
        "claim_limit": (
            "Recording this observation establishes no conformance profile, checker-soundness proof, "
            "mathematical correctness claim, or independent validation."
        ),
        "observation": report,
    }
    data = encoded(receipt)
    require(safe_relpath(relative), "unsafe conformance receipt path")
    require(hasattr(os, "O_NOFOLLOW") and hasattr(os, "O_DIRECTORY"),
            "platform lacks no-follow receipt support")
    parent_fd = os.open(ROOT / '.noeaaeue/evidence', os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW)
    temporary = "." + name + ".tmp-" + str(os.getpid())
    try:
        descriptor = os.open(
            temporary,
            os.O_WRONLY | os.O_CREAT | os.O_EXCL | os.O_NOFOLLOW,
            0o644,
            dir_fd=parent_fd,
        )
        try:
            with os.fdopen(descriptor, "wb", closefd=True) as stream:
                stream.write(data)
                stream.flush()
                os.fsync(stream.fileno())
            try:
                os.link(
                    temporary, name, src_dir_fd=parent_fd, dst_dir_fd=parent_fd,
                    follow_symlinks=False,
                )
            except FileExistsError:
                existing_fd = os.open(name, os.O_RDONLY | os.O_NOFOLLOW, dir_fd=parent_fd)
                try:
                    with os.fdopen(existing_fd, "rb", closefd=True) as existing:
                        require(existing.read() == data,
                                "conformance receipt name collision with different bytes")
                finally:
                    pass
            finally:
                os.unlink(temporary, dir_fd=parent_fd)
        except Exception:
            try:
                os.unlink(temporary, dir_fd=parent_fd)
            except OSError:
                pass
            raise
        os.fsync(parent_fd)
    finally:
        os.close(parent_fd)
    return relative, receipt


def validate_string_list(value, location, allow_empty=True):
    require(isinstance(value, list), location + " must be an array")
    require(allow_empty or value, location + " must not be empty")
    require(all(isinstance(item, str) and item for item in value),
            location + " entries must be nonempty strings")
    require(len(value) == len(set(value)), location + " contains duplicates")


def validate_rule_documents(schema, registry):
    schema_fields = {
        "schema", "schema_version", "unknown_field_policy", "required_rule_fields",
        "allowed_layers", "allowed_enforcement_statuses", "outcomes", "operational_states",
    }
    require(isinstance(schema, dict), "rule registry schema must be an object")
    require(set(schema) == schema_fields,
            "rule registry schema has missing or unknown fields: " +
            repr(sorted(set(schema) ^ schema_fields)))
    require(schema["schema"] == "grwtsk-rule-registry-schema-v2", "unsupported rule schema")
    require(schema["schema_version"] == 2, "unsupported rule schema version")
    require(schema["unknown_field_policy"] == "reject", "rule schema must reject unknown fields")
    required = schema["required_rule_fields"]
    validate_string_list(required, "required_rule_fields", allow_empty=False)
    expected_rule_fields = {
        "rule_id", "rule_version", "layer", "input_types", "applicability", "premises",
        "side_conditions", "conclusion", "semantic_definition", "checker_artifacts",
        "execution_mode", "soundness_evidence", "dependencies", "positive_controls",
        "negative_controls", "failure_interpretation", "compatibility",
        "documentation_binding", "enforcement_status",
    }
    require(set(required) == expected_rule_fields,
            "required_rule_fields does not equal the supported strict record")
    for name in ("allowed_layers", "allowed_enforcement_statuses", "outcomes",
                 "operational_states"):
        validate_string_list(schema[name], name, allow_empty=False)
    require(set(schema["allowed_layers"]) == {"L0", "L1", "L2", "L3", "L4", "L5", "L6"},
            "layer set differs from L0--L6")
    require(set(schema["outcomes"]) == {"ACCEPT", "REJECT", "UNKNOWN"},
            "contract outcomes differ from ACCEPT/REJECT/UNKNOWN")
    require(set(schema["operational_states"]) == {
        "NOT_RUN", "BUSY", "TIMEOUT", "ERROR", "INTERRUPTED", "COMPLETED",
    }, "operational state set is incomplete")

    top_fields = {
        "schema", "schema_version", "policy_version", "policy_input_sha256",
        "policy_input_paths", "bootstrap_authorization", "registry_semantics", "rules",
    }
    require(isinstance(registry, dict), "rule registry must be an object")
    require(set(registry) == top_fields,
            "rule registry has missing or unknown top-level fields: " +
            repr(sorted(set(registry) ^ top_fields)))
    require(registry["schema"] == "grwtsk-rule-registry-v2", "unsupported registry schema")
    require(registry["schema_version"] == 2, "unsupported registry version")
    require(isinstance(registry["policy_version"], str) and registry["policy_version"],
            "missing policy version")
    hashes = registry["policy_input_sha256"]
    require(isinstance(hashes, dict) and hashes, "policy_input_sha256 must be a nonempty map")
    require(set(hashes) == {"combined_migration_and_addendum", "standalone_addendum"},
            "policy_input_sha256 has missing or unknown instruction identities")
    require(all(isinstance(k, str) and k and isinstance(v, str) and HEX64.fullmatch(v)
                for k, v in hashes.items()), "invalid policy input hash map")
    policy_paths = registry["policy_input_paths"]
    require(isinstance(policy_paths, dict) and set(policy_paths) == set(hashes),
            "policy_input_paths must match policy input identities")
    for identity, path in policy_paths.items():
        require(isinstance(path, str) and safe_relpath(path),
                "unsafe retained policy input path")
        state, data = MONITOR.read_state(ROOT, path, retain=True)
        require(state.get("kind") == "file" and data is not None
                and state.get("read_stable"),
                "retained policy input is missing or unsafe: " + identity)
        require(sha256(data) == hashes[identity],
                "retained policy input hash mismatch: " + identity)
    for name in ("bootstrap_authorization", "registry_semantics"):
        require(isinstance(registry[name], str) and registry[name], name + " must be nonempty")
    rules = registry["rules"]
    require(isinstance(rules, list) and rules, "rules must be a nonempty array")
    ids = []
    evidence_fields = {"status", "reason", "theorems", "gap", "receipt"}
    valid_evidence_status = {"gap", "formal-model-only", "blocked", "checked-generic-model"}
    string_fields = {
        "rule_id", "rule_version", "layer", "applicability", "conclusion",
        "semantic_definition", "execution_mode", "failure_interpretation", "compatibility",
        "documentation_binding", "enforcement_status",
    }
    list_fields = {
        "input_types", "premises", "side_conditions", "checker_artifacts", "dependencies",
        "positive_controls", "negative_controls",
    }
    for number, rule in enumerate(rules):
        location = "rules[" + str(number) + "]"
        require(isinstance(rule, dict), location + " must be an object")
        require(set(rule) == expected_rule_fields,
                location + " has missing or unknown fields: " +
                repr(sorted(set(rule) ^ expected_rule_fields)))
        for name in string_fields:
            require(isinstance(rule[name], str) and rule[name], location + "." + name + " invalid")
        require(RULE_ID.fullmatch(rule["rule_id"]), location + " has invalid rule_id")
        require(SEMVER.fullmatch(rule["rule_version"]), location + " has invalid rule_version")
        require(rule["layer"] in schema["allowed_layers"], location + " has invalid layer")
        require(rule["enforcement_status"] in schema["allowed_enforcement_statuses"],
                location + " has invalid enforcement status")
        for name in list_fields:
            validate_string_list(rule[name], location + "." + name)
        for artifact in rule["checker_artifacts"]:
            require(safe_relpath(artifact), location + " has unsafe checker artifact")
            state, _ = MONITOR.read_state(ROOT, artifact, retain=False)
            require(state.get("kind") == "file" and state.get("read_stable"),
                    location + " checker artifact is missing or unsafe: " + artifact)
        documentation = rule["documentation_binding"].split("#", 1)[0]
        require(safe_relpath(documentation), location + " has unsafe documentation binding")
        state, _ = MONITOR.read_state(ROOT, documentation, retain=False)
        require(state.get("kind") == "file" and state.get("read_stable"),
                location + " documentation binding is missing or unsafe")
        evidence = rule["soundness_evidence"]
        require(isinstance(evidence, dict), location + ".soundness_evidence must be an object")
        require(set(evidence) <= evidence_fields and "status" in evidence,
                location + ".soundness_evidence has unknown fields or lacks status")
        require(evidence["status"] in valid_evidence_status,
                location + ".soundness_evidence status is invalid")
        if "theorems" in evidence:
            validate_string_list(evidence["theorems"], location + ".soundness_evidence.theorems",
                                 allow_empty=False)
        for name in ("reason", "gap", "receipt"):
            if name in evidence:
                require(isinstance(evidence[name], str) and evidence[name],
                        location + ".soundness_evidence." + name + " invalid")
        if "receipt" in evidence:
            require(safe_relpath(evidence["receipt"]), location + " has unsafe receipt path")
            state, _ = MONITOR.read_state(ROOT, evidence["receipt"], retain=False)
            require(state.get("kind") == "file" and state.get("read_stable"),
                    location + " receipt is missing or unsafe")
        require("reason" in evidence or "gap" in evidence,
                location + ".soundness_evidence must disclose a gap or reason")
        ids.append(rule["rule_id"])
    duplicates = sorted(name for name, count in Counter(ids).items() if count > 1)
    require(not duplicates, "duplicate rule IDs: " + repr(duplicates))
    missing = sorted(REQUIRED_RULE_IDS - set(ids))
    extra = sorted(set(ids) - REQUIRED_RULE_IDS)
    require(not missing, "missing required rule IDs: " + repr(missing))
    require(not extra, "unreviewed rule IDs require schema update: " + repr(extra))
    by_id = {rule["rule_id"]: rule for rule in rules}
    unknown_dependencies = sorted({dependency for rule in rules for dependency in rule["dependencies"]
                                   if dependency not in by_id})
    require(not unknown_dependencies, "unknown rule dependencies: " + repr(unknown_dependencies))
    cycles = dependency_cycles({name: set(rule["dependencies"]) for name, rule in by_id.items()})
    require(not cycles, "rule dependency cycles: " + repr(cycles))
    return by_id


def dependency_cycles(graph):
    color = {node: 0 for node in graph}
    cycles = set()
    for start in sorted(graph):
        if color[start]:
            continue
        color[start] = 1
        stack = [(start, iter(sorted(graph[start])))]
        ancestry = [start]
        positions = {start: 0}
        while stack:
            node, children = stack[-1]
            child = next(children, None)
            if child is None:
                color[node] = 2
                stack.pop()
                positions.pop(node, None)
                ancestry.pop()
            elif color.get(child, 0) == 0:
                color[child] = 1
                positions[child] = len(ancestry)
                ancestry.append(child)
                stack.append((child, iter(sorted(graph[child]))))
            elif color.get(child) == 1:
                cycle = ancestry[positions[child]:] + [child]
                rotations = [tuple(cycle[i:-1] + cycle[:i] + [cycle[i]])
                             for i in range(len(cycle) - 1)]
                cycles.add(min(rotations))
    return [list(cycle) for cycle in sorted(cycles)]


def current_recipe_view(value):
    """Project retained logical recipe paths without rewriting their history.

    The adapter and current observation input are declared generation inputs.
    Historical registry bytes and verdicts remain untouched.
    """
    require(isinstance(value, dict), 'reconstruction recipes must be an object')
    old_generated = value.get('generated_artifacts', {})
    legacy = {relocated_name(name) for name, recipe in old_generated.items()
              if isinstance(recipe, dict) and isinstance(recipe.get('generator'), str)
              and recipe['generator'].startswith('scripts/')} if isinstance(old_generated, dict) else set()
    prefixes = ('scripts/', 'tests/', 'tools/', 'checks/', 'cache/', 'evidence/',
                'examples/', 'asbn-p04/', 'euler-p04-rh/', 'hssc-p04/', 'ppnc-p04/',
                '.local/', 'docs/math-layout.json', 'docs/reference/',
                'docs/explanation/', 'docs/how-to/')
    def project(item):
        if isinstance(item, dict):
            mapped = {}
            for key, child in item.items():
                current_key = project(key)
                require(current_key not in mapped, 'ambiguous historical/current recipe path alias')
                mapped[current_key] = project(child)
            return mapped
        if isinstance(item, list):
            return [project(child) for child in item]
        if isinstance(item, str) and item.startswith(prefixes):
            trailing = '/' if item.endswith('/') else ''
            return relocated_name(item.rstrip('/')) + trailing
        return item
    current = project(value)
    generated = current.get('generated_artifacts', {})
    for name in ('docs/reference/math-source-catalog.json', CATALOG_REL):
        if name in generated and name in legacy:
            recipe = generated[name]
            recipe['content_inputs'] = list(recipe['content_inputs'])
            for dependency in CURRENT_CATALOG_INPUTS:
                if dependency not in recipe['content_inputs']:
                    recipe['content_inputs'].append(dependency)
    return current


def validate_recipes(value):
    value = current_recipe_view(value)
    top = {
        "schema", "schema_version", "policy_version", "snapshot_scope",
        "default_reproduction", "generated_artifacts", "meta_artifact_boundary",
        "historical_reconstruction", "declared_exclusions", "authoritative_refreshers",
        "content_addressed_materializers", "observation_writers",
        "remaining_fixed_observation_writers", "parameterized_writers",
        "external_writers", "ignored_writer_families",
    }
    require(isinstance(value, dict) and set(value) == top,
            "reconstruction recipe registry has missing or unknown fields")
    require(value["schema"] == "grwtsk-reconstruction-recipes-v2" and
            value["schema_version"] == 2, "unsupported reconstruction recipe schema")
    require(value["policy_version"] == "rigor-and-reconstruction-addendum-1.0.0",
            "unexpected reconstruction policy version")
    require(value["snapshot_scope"] == (
        "Git-tracked and nonignored untracked regular artifacts in the current working tree. "
        "Tracked deletions, conflicts, symlinks, nonregular entries, submodules, ignored caches, "
        "credentials, and Git administration are reported or excluded separately."
    ), "snapshot scope changed without review")
    default_reproduction = value["default_reproduction"]
    require(isinstance(default_reproduction, dict) and set(default_reproduction) == {
        "source_and_configuration", "documentation", "evidence",
        "content_addressed_evidence_object", "historical_check_record",
    }, "default reproduction classes are incomplete or unreviewed")
    require(default_reproduction["source_and_configuration"] == "retained-literal" and
            default_reproduction["documentation"] == "retained-literal" and
            all(default_reproduction[name] == "immutable-observation" for name in (
                "evidence", "content_addressed_evidence_object", "historical_check_record",
            )), "default reproduction policy changed without review")
    generated = value["generated_artifacts"]
    require(isinstance(generated, dict), "generated_artifacts must be an object")
    required_outputs = {
        "docs/reference/math-source-catalog.json", "docs/reference/results.md", CATALOG_REL,
    }
    require(set(generated) == required_outputs,
            "generated artifact set differs from the three reviewed outputs")
    record_fields = {
        "recipe_id", "generator", "content_inputs", "validation_reads", "read_set_status",
        "check_command", "render_command", "environment",
    }
    recipe_ids = []
    expected_interfaces = {
        "docs/reference/math-source-catalog.json": {
            "recipe_id": "GENERATE.MATH_SOURCE_CATALOG.001",
            "generator": ".noeaaeue/scripts/generate_math_source_catalog.py",
            "content_inputs": [
                ".noeaaeue/documentation/math-layout.json", ".noeaaeue/scripts/generate_math_source_catalog.py",
            ] + list(CURRENT_CATALOG_INPUTS),
            "check_command": ["python3", "-B", ".noeaaeue/scripts/generate_math_source_catalog.py"],
            "render_command": ["python3", "-B", ".noeaaeue/scripts/generate_math_source_catalog.py", "--render"],
            "environment": {
                "network": "forbidden", "locale": "UTF-8 JSON with ensure_ascii",
                "randomness": "none", "clock": "not read",
            },
        },
        "docs/reference/results.md": {
            "recipe_id": "GENERATE.DOCUMENTATION_RESULTS.001",
            "generator": ".noeaaeue/scripts/check_documentation.py",
            "content_inputs": [
                "docs/reference/results.json", ".noeaaeue/scripts/check_documentation.py",
            ],
            "check_command": ["python3", "-B", ".noeaaeue/scripts/check_documentation.py"],
            "render_command": ["python3", "-B", ".noeaaeue/scripts/check_documentation.py", "--render"],
            "environment": {
                "network": "forbidden", "locale": "UTF-8 text",
                "randomness": "none", "clock": "not read",
            },
        },
        CATALOG_REL: {
            "recipe_id": "GENERATE.REPOSITORY_ARTIFACT_CATALOG.001",
            "generator": ".noeaaeue/scripts/check_repository_conformance.py",
            "content_inputs": [
                "Git-visible path membership and exact regular-file bytes excluding this output's bytes",
                "Git HEAD commit, symbolic branch, object format, index stages and working-tree status",
                "Git blob identities and bytes for clean tracked files",
                "filesystem path bytes, file modes and exceptional path states",
                ".noeaaeue/documentation/math-layout.json", ".noeaaeue/documentation/reference/reconstruction-recipes.json",
                ".noeaaeue/documentation/reference/rules/registry-schema.json", ".noeaaeue/documentation/reference/rules/registry.json",
                ".noeaaeue/evidence/policy-inputs/GRWTSK_Lean_Migration_With_Rigor_Addendum.md",
                ".noeaaeue/evidence/policy-inputs/GRWTSK_Rigor_and_Reconstruction_Addendum.md",
                ".noeaaeue/scripts/check_repository_conformance.py", ".noeaaeue/scripts/monitor_math.py",
                ".noeaaeue/scripts/generate_math_source_catalog.py", ".noeaaeue/scripts/check_documentation.py",
                "docs/reference/results.json",
            ] + list(CURRENT_CATALOG_INPUTS),
            "check_command": ["python3", "-B", ".noeaaeue/scripts/check_repository_conformance.py"],
            "render_command": ["python3", "-B", ".noeaaeue/scripts/check_repository_conformance.py", "--render"],
            "environment": {
                "network": "forbidden", "locale": "path bytes retained as hexadecimal",
                "randomness": "none", "clock": "not embedded",
            },
        },
    }
    for output, recipe in generated.items():
        require(safe_relpath(output), "unsafe generated output path")
        require(isinstance(recipe, dict) and set(recipe) == record_fields,
                output + " recipe has missing or unknown fields")
        require(isinstance(recipe["recipe_id"], str) and recipe["recipe_id"],
                output + " lacks recipe_id")
        recipe_ids.append(recipe["recipe_id"])
        require(safe_relpath(recipe["generator"]), output + " has unsafe generator path")
        state, _ = MONITOR.read_state(ROOT, recipe["generator"], retain=False)
        require(state.get("kind") == "file" and state.get("read_stable"),
                output + " generator is missing or unsafe")
        interface = expected_interfaces[output]
        for name in (
            "recipe_id", "generator", "content_inputs", "check_command", "render_command",
            "environment",
        ):
            require(recipe[name] == interface[name],
                    output + " declared " + name + " differs from the reviewed adapter")
        for name in ("content_inputs", "validation_reads", "check_command", "render_command"):
            validate_string_list(recipe[name], output + "." + name, allow_empty=False)
        require(output not in recipe["content_inputs"],
                output + " generation is directly self-dependent")
        require(isinstance(recipe["read_set_status"], str) and recipe["read_set_status"],
                output + " lacks read-set status")
        environment = recipe["environment"]
        require(isinstance(environment, dict) and set(environment) == {
            "network", "locale", "randomness", "clock",
        }, output + " environment contract is incomplete or has unknown fields")
        require(all(isinstance(x, str) and x for x in environment.values()),
                output + " environment values must be nonempty strings")
    require(len(recipe_ids) == len(set(recipe_ids)), "duplicate generation recipe IDs")

    refreshers = value["authoritative_refreshers"]
    require(isinstance(refreshers, dict) and set(refreshers) == {".noeaaeue/documentation/math-layout.json"},
            "authoritative refresher set is incomplete or unreviewed")
    refresher_fields = {
        "writer", "classification", "read_set_status", "excluded_generated_views",
    }
    for output, record in refreshers.items():
        require(isinstance(record, dict) and set(record) == refresher_fields,
                output + " refresher has missing or unknown fields")
        require(safe_relpath(record["writer"]), output + " has unsafe refresher writer")
        state, _ = MONITOR.read_state(ROOT, record["writer"], retain=False)
        require(state.get("kind") == "file" and state.get("read_stable"),
                output + " refresher writer is missing or unsafe")
        validate_string_list(record["excluded_generated_views"],
                             output + ".excluded_generated_views", allow_empty=False)
        require(set(record["excluded_generated_views"]) == required_outputs,
                output + " does not exclude every registered generated view")
        require(all(isinstance(record[name], str) and record[name]
                    for name in ("classification", "read_set_status")),
                output + " refresher classification is incomplete")

    materializers = value["content_addressed_materializers"]
    require(isinstance(materializers, dict) and set(materializers) == {
        ".noeaaeue/evidence/repository-reconstruction-basis/objects/<sha256-prefix>/<sha256>.gz",
    },
            "content-addressed materializer set is incomplete or unreviewed")
    materializer_fields = {
        "writer", "classification", "input_scope", "determinism", "read_set_status",
    }
    for pattern, record in materializers.items():
        require(isinstance(pattern, str) and pattern and isinstance(record, dict)
                and set(record) == materializer_fields,
                "invalid content-addressed materializer record")
        require(all(isinstance(record[name], str) and record[name]
                    for name in materializer_fields),
                "content-addressed materializer fields must be nonempty strings")
        writer_path = record["writer"].split(" ", 1)[0]
        require(safe_relpath(writer_path), "content-addressed materializer writer is unsafe")
        state, _ = MONITOR.read_state(ROOT, writer_path, retain=False)
        require(state.get("kind") == "file" and state.get("read_stable"),
                "content-addressed materializer writer is missing or unsafe")

    observations = value["observation_writers"]
    observation_fields = {
        "writer", "output_pattern", "output_policy", "retained_public_history",
        "read_set_status",
    }
    require(isinstance(observations, list) and observations,
            "observation writer inventory must be nonempty")
    observation_names = []
    for number, record in enumerate(observations):
        location = "observation_writers[" + str(number) + "]"
        require(isinstance(record, dict) and set(record) == observation_fields,
                location + " has missing or unknown fields")
        require(safe_relpath(record["writer"]), location + " has unsafe writer")
        state, _ = MONITOR.read_state(ROOT, record["writer"], retain=False)
        require(state.get("kind") == "file" and state.get("read_stable"),
                location + " writer is missing or unsafe")
        for name in ("output_pattern", "output_policy", "read_set_status"):
            require(isinstance(record[name], str) and record[name], location + "." + name + " invalid")
        history = record["retained_public_history"]
        require(history is None or (isinstance(history, str) and safe_relpath(history)),
                location + " has unsafe retained history")
        if history is not None:
            state, _ = MONITOR.read_state(ROOT, history, retain=False)
            require(state.get("kind") == "file" and state.get("read_stable"),
                    location + " retained history is missing or unsafe")
        observation_names.append(record["writer"])
    require(len(observation_names) == len(set(observation_names)),
            "duplicate observation writers")

    fixed = value["remaining_fixed_observation_writers"]
    require(isinstance(fixed, list), "remaining fixed writers must be an array")
    for number, record in enumerate(fixed):
        require(isinstance(record, dict) and set(record) == {
            "writer", "output", "status", "reason",
        }, "remaining fixed writer record is malformed at " + str(number))
        require(safe_relpath(record["writer"]) and safe_relpath(record["output"]),
                "remaining fixed writer path is unsafe")
        state, _ = MONITOR.read_state(ROOT, record["writer"], retain=False)
        require(state.get("kind") == "file" and state.get("read_stable"),
                "remaining fixed writer is missing or unsafe")
        require(record["status"] == "known-defect-must-not-run" and
                isinstance(record["reason"], str) and record["reason"],
                "remaining fixed writer must disclose its unenforced defect")

    parameterized = value["parameterized_writers"]
    require(isinstance(parameterized, list) and parameterized,
            "parameterized writer inventory must be nonempty")
    for number, record in enumerate(parameterized):
        require(isinstance(record, dict) and set(record) == {
            "writer", "output_argument", "restriction", "classification", "status",
        }, "parameterized writer record is malformed at " + str(number))
        require(safe_relpath(record["writer"]), "parameterized writer path is unsafe")
        state, _ = MONITOR.read_state(ROOT, record["writer"], retain=False)
        require(state.get("kind") == "file" and state.get("read_stable"),
                "parameterized writer is missing or unsafe")
        require(all(isinstance(record[name], str) and record[name] for name in record),
                "parameterized writer fields must be nonempty strings")

    external = value["external_writers"]
    require(isinstance(external, list) and external, "external writer inventory must be nonempty")
    for number, record in enumerate(external):
        require(isinstance(record, dict) and set(record) == {
            "writer", "destination_contract", "classification", "status",
        }, "external writer record is malformed at " + str(number))
        require(safe_relpath(record["writer"]), "external writer path is unsafe")
        state, _ = MONITOR.read_state(ROOT, record["writer"], retain=False)
        require(state.get("kind") == "file" and state.get("read_stable"),
                "external writer is missing or unsafe")
        require(all(isinstance(record[name], str) and record[name] for name in record),
                "external writer fields must be nonempty strings")
    validate_string_list(value["ignored_writer_families"], "ignored_writer_families",
                         allow_empty=False)

    meta = value["meta_artifact_boundary"]
    require(isinstance(meta, dict) and set(meta) == {
        "catalog", "rule", "receipt_pattern", "receipt_rule",
    }, "meta-artifact boundary is incomplete or unreviewed")
    require(meta["catalog"] == CATALOG_REL and
            meta["receipt_pattern"] == ".noeaaeue/evidence/repository-conformance-*.json" and
            all(isinstance(meta[name], str) and meta[name] for name in meta),
            "meta-artifact boundary changed without review")

    historical = value["historical_reconstruction"]
    require(isinstance(historical, dict) and set(historical) == {
        "causal_realization_archive",
    }, "historical reconstruction set is incomplete or unreviewed")
    archive = historical["causal_realization_archive"]
    require(isinstance(archive, dict) and set(archive) == {
        "scope", "restorer", "index", "object_pattern", "object_count",
        "object_membership_sha256", "destination_contract", "verification_command",
        "claim_limit",
    }, "causal-realization reconstruction contract is malformed")
    for name in ("scope", "restorer", "index"):
        require(isinstance(archive[name], str) and safe_relpath(archive[name]),
                "causal-realization " + name + " is unsafe")
        if name == "scope":
            try:
                descriptor = os.open(
                    ROOT / archive[name], os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW,
                )
            except OSError as error:
                raise Invalid("causal-realization scope is missing or unsafe") from error
            else:
                os.close(descriptor)
        else:
            state, _ = MONITOR.read_state(ROOT, archive[name], retain=False)
            require(state.get("kind") == "file" and state.get("read_stable"),
                    "causal-realization " + name + " is missing or unsafe")
    require(isinstance(archive["object_pattern"], str) and archive["object_pattern"] and
            isinstance(archive["destination_contract"], str) and archive["destination_contract"] and
            isinstance(archive["claim_limit"], str) and archive["claim_limit"],
            "causal-realization reconstruction descriptions are incomplete")
    validate_string_list(archive["verification_command"],
                         "historical verification command", allow_empty=False)
    require(archive["verification_command"] == [
        "python3", "-B", archive["restorer"], "--verify",
    ], "historical verification command differs from the reviewed adapter")
    archive_index = load_json(ROOT / archive["index"])
    objects = archive_index.get("objects") if isinstance(archive_index, dict) else None
    require(isinstance(objects, dict) and archive["object_count"] == len(objects),
            "historical object count differs from the archive index")
    membership = sha256(("\n".join(sorted(objects)) + "\n").encode())
    require(isinstance(archive["object_count"], int) and archive["object_count"] > 0 and
            isinstance(archive["object_membership_sha256"], str) and
            HEX64.fullmatch(archive["object_membership_sha256"]) and
            archive["object_membership_sha256"] == membership,
            "historical object membership digest differs from the archive index")
    require(all(HEX64.fullmatch(digest) for digest in objects),
            "historical archive has a malformed object identity")
    missing_objects = []
    for digest in objects:
        relative = archive["scope"] + "/objects/" + digest[:2] + "/" + digest + ".gz"
        state, _ = MONITOR.read_state(ROOT, relative, retain=False)
        if state.get("kind") != "file" or not state.get("read_stable"):
            missing_objects.append(relative)
    require(not missing_objects,
            "historical archive object closure is incomplete: " + repr(missing_objects[:5]))

    exclusions = value["declared_exclusions"]
    require(isinstance(exclusions, list) and exclusions,
            "declared exclusions must be a nonempty array")
    exclusion_paths = []
    for number, record in enumerate(exclusions):
        require(isinstance(record, dict) and set(record) == {"path", "reason"} and
                all(isinstance(record[name], str) and record[name] for name in record),
                "declared exclusion is malformed at " + str(number))
        exclusion_paths.append(record["path"])
    require(len(exclusion_paths) == len(set(exclusion_paths)),
            "declared exclusion paths contain duplicates")
    return generated


def line_endings(data):
    crlf = data.count(b"\r\n")
    lf = data.count(b"\n") - crlf
    cr = data.count(b"\r") - crlf
    kinds = [name for name, count in (("lf", lf), ("crlf", crlf), ("cr", cr)) if count]
    return {
        "style": "none" if not kinds else kinds[0] if len(kinds) == 1 else "mixed",
        "lf": lf, "crlf": crlf, "cr": cr,
    }


def text_identity(data):
    try:
        text = data.decode("utf-8")
    except UnicodeDecodeError:
        return {"encoding": "binary-or-non-utf8", "line_endings": line_endings(data)}
    return {
        "encoding": "utf-8-bom" if data.startswith(b"\xef\xbb\xbf") else "utf-8",
        "unicode_codepoints": len(text),
        "line_endings": line_endings(data),
    }


def object_rel(digest):
    return BASIS_ROOT_REL + "/" + digest[:2] + "/" + digest + ".gz"


def deterministic_gzip(data):
    output = io.BytesIO()
    with gzip.GzipFile(filename="", mode="wb", compresslevel=9, fileobj=output, mtime=0) as stream:
        stream.write(data)
    return output.getvalue()


def verify_basis_object(root, digest):
    rel = object_rel(digest)
    state, compressed = MONITOR.read_state(root, rel, retain=True)
    if state.get("kind") != "file" or compressed is None or not state.get("read_stable"):
        return False, "missing-or-unsafe-basis-object", None
    try:
        restored = gzip.decompress(compressed)
    except (OSError, EOFError):
        return False, "invalid-gzip-basis-object", None
    if sha256(restored) != digest:
        return False, "basis-object-content-collision", None
    canonical = deterministic_gzip(restored)
    if compressed != canonical:
        return False, "basis-object-gzip-not-deterministic", None
    return True, rel, restored


def open_basis_parent(root, digest):
    require(hasattr(os, "O_NOFOLLOW") and hasattr(os, "O_DIRECTORY"),
            "platform lacks no-follow basis support")
    descriptors = []
    parent_fd = os.open(root, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW)
    descriptors.append(parent_fd)
    try:
        for component in PurePosixPath(BASIS_ROOT_REL + "/" + digest[:2]).parts:
            try:
                os.mkdir(component, mode=0o755, dir_fd=parent_fd)
            except FileExistsError:
                pass
            child_fd = os.open(component, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW,
                               dir_fd=parent_fd)
            descriptors.append(child_fd)
            parent_fd = child_fd
        return descriptors, parent_fd
    except Exception:
        for descriptor in reversed(descriptors):
            os.close(descriptor)
        raise


def capture_basis(root, digest, data):
    valid, detail, restored = verify_basis_object(root, digest)
    if valid:
        require(restored == data, "basis object hash collision: " + object_rel(digest))
        return detail, False
    if detail != "missing-or-unsafe-basis-object":
        raise Invalid(detail + ": " + object_rel(digest))
    descriptors, parent_fd = open_basis_parent(root, digest)
    name = digest + ".gz"
    temporary = "." + digest + ".tmp"
    payload = deterministic_gzip(data)
    flags = os.O_WRONLY | os.O_CREAT | os.O_EXCL
    if hasattr(os, "O_NOFOLLOW"):
        flags |= os.O_NOFOLLOW
    try:
        descriptor = os.open(temporary, flags, 0o444, dir_fd=parent_fd)
    except FileExistsError:
        temporary_rel = BASIS_ROOT_REL + "/" + digest[:2] + "/" + temporary
        state, retained = MONITOR.read_state(root, temporary_rel, retain=True)
        if (state.get("kind") != "file" or retained != payload
                or not state.get("read_stable")):
            for directory in reversed(descriptors):
                os.close(directory)
            raise Invalid("stale-or-corrupt-basis-temporary: " + temporary_rel)
        descriptor = None
    except Exception:
        for directory in reversed(descriptors):
            os.close(directory)
        raise
    try:
        if descriptor is not None:
            try:
                view = memoryview(payload)
                while view:
                    written = os.write(descriptor, view)
                    require(written > 0, "short write to basis object")
                    view = view[written:]
                os.fsync(descriptor)
            finally:
                os.close(descriptor)
        try:
            os.link(temporary, name, src_dir_fd=parent_fd, dst_dir_fd=parent_fd,
                    follow_symlinks=False)
        except FileExistsError:
            valid, existing, restored = verify_basis_object(root, digest)
            require(valid, existing + ": " + object_rel(digest))
            require(restored == data, "basis object hash collision: " + object_rel(digest))
        os.unlink(temporary, dir_fd=parent_fd)
        os.fsync(parent_fd)
    finally:
        for directory in reversed(descriptors):
            os.close(directory)
    valid, detail, restored = verify_basis_object(root, digest)
    require(valid, "new basis object failed verification: " + detail)
    require(restored == data, "new basis object differs from source bytes")
    return detail, True


def worktree_label(raw_path, discovery):
    if raw_path in discovery["untracked"]:
        return "untracked"
    index_rows = discovery["index"].get(raw_path, [])
    if any(row["stage"] != 0 for row in index_rows):
        return "conflicted"
    statuses = discovery["statuses"].get(raw_path, [])
    if not statuses:
        return "tracked-clean"
    codes = sorted(row["code"] for row in statuses)
    if any("D" in code for code in codes):
        return "tracked-deleted"
    if any("R" in code for code in codes):
        return "tracked-renamed"
    return "tracked-dirty"


def role_for(path, lean_roles, generated):
    if path in lean_roles:
        return lean_roles[path]
    if path in generated:
        return "generated-view"
    if path.startswith(BASIS_ROOT_REL + "/") and path.endswith(".gz"):
        return "reconstruction-basis-object"
    if path.startswith(".noeaaeue/evidence/"):
        return "evidence"
    if path.startswith("docs/") or path in {"README.md", "AGENTS.md", "NOTICE", "LICENSE"}:
        return "documentation-and-policy"
    if path.startswith(".noeaaeue/scripts/"):
        return "executable-check-or-generator"
    if path in {"lakefile.toml", "lake-manifest.json", "lean-toolchain", ".gitignore",
                ".gitattributes"} or path.endswith((".toml", ".yaml", ".yml")):
        return "configuration"
    return "retained-first-party-artifact"


def provenance_ranges(size, origin):
    return [{"start": 0, "end": size, "origin": origin}]


def validate_ranges(size, ranges):
    require(type(size) is int and size >= 0, "invalid artifact size")
    require(isinstance(ranges, list) and ranges, "byte provenance ranges are missing")
    cursor = 0
    for number, row in enumerate(ranges):
        require(isinstance(row, dict) and set(row) == {"start", "end", "origin"},
                "range has missing or unknown fields")
        require(type(row["start"]) is int and type(row["end"]) is int,
                "range endpoints must be integers")
        if row["start"] > cursor:
            raise Invalid("byte provenance range gap before interval " + str(number))
        if row["start"] < cursor:
            raise Invalid("byte provenance range overlap at interval " + str(number))
        require(row["end"] >= row["start"], "byte provenance range has reversed endpoints")
        require(isinstance(row["origin"], dict) and row["origin"], "range origin is missing")
        cursor = row["end"]
    require(cursor == size, "byte provenance range gap or overflow at end")


def read_lean_roles(layout):
    require(isinstance(layout, dict) and isinstance(layout.get("active_sources"), list),
            "math layout lacks active_sources")
    roles = {}
    for number, entry in enumerate(layout["active_sources"]):
        require(isinstance(entry, dict), "active source record must be an object")
        path, role = entry.get("path"), entry.get("source_role")
        require(isinstance(path, str) and safe_relpath(path), "invalid active source path")
        require(isinstance(role, str) and role in layout.get("source_roles", {}),
                "invalid active source role")
        require(path not in roles, "duplicate active source path: " + path)
        roles[path] = role
    candidates = layout.get("candidate_sources", [])
    require(isinstance(candidates, list), "math layout candidate_sources must be a list")
    candidate_metadata = layout.get("candidate_source_catalog", {})
    require(isinstance(candidate_metadata, dict),
            "math layout candidate_source_catalog must be an object")
    if candidates or candidate_metadata:
        require(candidate_metadata.get("status") == "CANDIDATE_SOURCE_ONLY",
                "candidate catalog lost candidate-only status")
        require(candidate_metadata.get("source_count") == len(candidates),
                "candidate catalog count mismatch")
    for entry in candidates:
        require(isinstance(entry, dict), "candidate source record must be an object")
        path = entry.get("path")
        require(isinstance(path, str) and safe_relpath(path), "invalid candidate source path")
        require(path not in roles, "active/candidate source overlap: " + path)
        require(entry.get("source_set") == "candidate-evidence",
                "invalid candidate artifact role: " + path)
        require(entry.get("target_path") == path,
                "candidate target path differs from its current path: " + path)
        require(entry.get("source_intake") == ".noeaaeue/evidence/source-intake.json",
                "candidate source-intake binding changed: " + path)
        require(entry.get("status") == "CANDIDATE_SOURCE_ONLY",
                "invalid candidate source status: " + path)
        require(entry.get("mathematical_admission") is False
                and entry.get("public_release_eligible") is False,
                "candidate source carries an admission/publication claim: " + path)
        require(isinstance(entry.get("sha256"), str) and HEX64.fullmatch(entry["sha256"]),
                "invalid candidate source digest: " + path)
        require(type(entry.get("bytes")) is int and entry["bytes"] >= 0,
                "invalid candidate source byte count: " + path)
        roles[path] = "candidate-evidence"
    return roles


def index_blob_for(raw_path, discovery):
    rows = [row for row in discovery["index"].get(raw_path, []) if row["stage"] == 0]
    return rows[0]["blob"] if len(rows) == 1 else None


def git_blob_id(data, object_format):
    framed = b"blob " + str(len(data)).encode("ascii") + b"\0" + data
    if object_format == "sha1":
        return hashlib.sha1(framed).hexdigest()
    if object_format == "sha256":
        return hashlib.sha256(framed).hexdigest()
    raise Invalid("unsupported Git object format: " + object_format)


class GitBlobReader:
    """Read many retained Git blobs through one bounded batch process."""

    def __init__(self, root):
        self.process = subprocess.Popen(
            ["git", "-C", str(root), "cat-file", "--batch"],
            stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
        )

    def read(self, object_id):
        require(isinstance(object_id, str) and re.fullmatch(r"[0-9a-f]+", object_id),
                "invalid Git blob identity")
        require(self.process.stdin is not None and self.process.stdout is not None,
                "Git blob batch pipes unavailable")
        self.process.stdin.write(object_id.encode("ascii") + b"\n")
        self.process.stdin.flush()
        header = self.process.stdout.readline()
        require(header, "Git blob batch ended before response")
        fields = header.rstrip(b"\n").split()
        require(len(fields) == 3 and fields[0].decode("ascii") == object_id
                and fields[1] == b"blob", "Git object is unavailable or is not a blob")
        try:
            size = int(fields[2])
        except ValueError as error:
            raise Invalid("invalid Git blob size") from error
        data = self.process.stdout.read(size)
        require(len(data) == size and self.process.stdout.read(1) == b"\n",
                "truncated Git blob batch response")
        return data

    def close(self):
        if self.process.stdin is not None:
            self.process.stdin.close()
        try:
            returncode = self.process.wait(timeout=30)
        except subprocess.TimeoutExpired:
            self.process.terminate()
            returncode = self.process.wait(timeout=30)
        stderr = self.process.stderr.read() if self.process.stderr is not None else b""
        require(returncode == 0, "Git blob batch failed: " +
                stderr.decode("utf-8", "replace")[-500:])


def make_entry(root, raw_path, discovery, lean_roles, generated, blob_reader, capture=False):
    path = decode_path(raw_path)
    require(safe_relpath(path), "unsafe or noncanonical Git path: " + raw_path.hex())
    state, data = MONITOR.read_state(root, path, retain=True)
    kind = state.get("kind")
    label = worktree_label(raw_path, discovery)
    index_rows = discovery["index"].get(raw_path, [])
    git_record = {
        "membership": "tracked" if raw_path in discovery["tracked"] else "untracked",
        "working_tree_state": label,
        "index": index_rows,
        "status": discovery["statuses"].get(raw_path, []),
    }
    entry = {
        "path": path,
        "path_bytes_hex": raw_path.hex(),
        "artifact_role": role_for(path, lean_roles, generated),
        "filesystem": {key: state[key] for key in sorted(state) if key != "mtime_ns"},
        "git": git_record,
        "generated_recipe": generated.get(path),
        "basis": {"kind": "unavailable"},
        "byte_provenance": [],
        "text_identity": None,
    }
    if kind != "file" or data is None or not state.get("read_stable"):
        return entry, ["unsafe-or-unavailable-artifact:" + path]
    size, digest = len(data), sha256(data)
    require(state.get("size") == size and state.get("sha256") == digest,
            "stable reader identity mismatch: " + path)
    entry["text_identity"] = text_identity(data)
    blockers = []
    if path in generated:
        basis = {
            "kind": "generated",
            "recipe_id": generated[path]["recipe_id"],
            "recipe_registry": str(RECIPES.relative_to(ROOT)),
        }
        origin = {"kind": "generated-recipe", "recipe_id": generated[path]["recipe_id"]}
    elif entry["artifact_role"] == "reconstruction-basis-object":
        basis = {"kind": "retained-literal-basis-object", "sha256": digest}
        origin = {"kind": "declared-input-basis", "path": path, "sha256": digest}
    elif label == "tracked-clean" and index_blob_for(raw_path, discovery):
        blob = index_blob_for(raw_path, discovery)
        require(git_blob_id(data, discovery["object_format"]) == blob,
                "clean Git blob differs from working bytes: " + path)
        restored = blob_reader.read(blob)
        require(restored == data, "Git blob does not reconstruct current bytes: " + path)
        basis = {"kind": "git-blob", "object_id": blob, "sha256": digest}
        origin = {"kind": "git-blob", "object_id": blob, "sha256": digest}
    else:
        valid, detail, restored = verify_basis_object(root, digest)
        if not valid and capture:
            detail, _created = capture_basis(root, digest, data)
            valid, detail, restored = verify_basis_object(root, digest)
        if valid:
            # Compare the recovered bytes directly.  The digest remains an
            # integrity binding, not a substitute for exact reconstruction.
            require(restored == data, "basis reconstruction differs from artifact: " + path)
            basis = {"kind": "content-addressed-gzip", "object": detail, "sha256": digest}
            origin = {"kind": "content-addressed-gzip", "object": detail, "sha256": digest}
        else:
            basis = {"kind": "missing-content-basis", "expected_object": object_rel(digest),
                     "sha256": digest, "reason": detail}
            origin = {"kind": "missing-content-basis", "sha256": digest}
            blockers.append("missing-content-basis:" + path)
    entry["basis"] = basis
    entry["byte_provenance"] = provenance_ranges(size, origin)
    validate_ranges(size, entry["byte_provenance"])
    return entry, blockers


def collision_groups(paths, normalize):
    groups = defaultdict(list)
    for path in paths:
        groups[normalize(path)].append(path)
    return [sorted(group) for group in groups.values() if len(group) > 1]


def catalog_self_state(discovery):
    raw = os.fsencode(CATALOG_REL)
    membership = ("tracked" if raw in discovery["tracked"] else
                  "untracked" if raw in discovery["untracked"] else "absent")
    return {
        "path": CATALOG_REL,
        "membership": membership,
        "index": discovery["index"].get(raw, []),
        "status": discovery["statuses"].get(raw, []),
    }


def exceptional_states(entries, discovery):
    self_state = catalog_self_state(discovery)
    paths = [entry["path"] for entry in entries]
    if self_state["membership"] != "absent":
        paths.append(CATALOG_REL)
    result = {
        "tracked_deletions": [],
        "conflicts": [],
        "unsafe_entries": [],
        "submodules": [],
        "casefold_collisions": collision_groups(paths, str.casefold),
        "unicode_nfc_collisions": collision_groups(
            paths, lambda value: unicodedata.normalize("NFC", value)),
    }
    for entry in entries:
        path = entry["path"]
        state = entry["git"]["working_tree_state"]
        if state == "tracked-deleted":
            result["tracked_deletions"].append(path)
        if state == "conflicted":
            result["conflicts"].append(path)
        if entry["filesystem"].get("kind") != "file":
            result["unsafe_entries"].append(path)
        if any(row.get("mode") == "160000" for row in entry["git"]["index"]):
            result["submodules"].append(path)
    raw_self = os.fsencode(CATALOG_REL)
    if self_state["membership"] != "absent":
        label = worktree_label(raw_self, discovery)
        if label == "tracked-deleted":
            result["tracked_deletions"].append(CATALOG_REL)
        if label == "conflicted":
            result["conflicts"].append(CATALOG_REL)
        if any(row.get("mode") == "160000" for row in self_state["index"]):
            result["submodules"].append(CATALOG_REL)
    for key in ("tracked_deletions", "conflicts", "unsafe_entries", "submodules"):
        result[key] = sorted(set(result[key]))
    for key in ("casefold_collisions", "unicode_nfc_collisions"):
        result[key] = sorted(result[key])
    return result


def generated_expected_bytes(output, layout):
    if output == "docs/reference/math-source-catalog.json":
        helpers = import_script(ROOT / ".noeaaeue/scripts/generate_math_source_catalog.py",
                                "grwtsk_generate_math_catalog")
        current = helpers.current_observations(ROOT)
        return helpers.encoded(helpers.catalog(layout, current=current)).encode()
    if output == "docs/reference/results.md":
        helpers = import_script(ROOT / ".noeaaeue/scripts/check_documentation.py",
                                "grwtsk_check_documentation")
        data = load_json(ROOT / "docs/reference/results.json")
        helpers.validate(data)
        return helpers.render(data).encode()
    raise Invalid("unsupported external generated output: " + output)


def candidate_binding_blockers(entries, layout):
    """Bind candidate-only catalog status to the exact observed artifact bytes."""
    entries_by_path = {entry["path"]: entry for entry in entries}
    blockers = []
    for binding in layout.get("candidate_sources", []):
        path = binding["path"]
        observed = entries_by_path.get(path)
        if observed is None:
            continue
        filesystem = observed["filesystem"]
        if (filesystem.get("kind") != "file"
                or filesystem.get("sha256") != binding["sha256"]
                or filesystem.get("size") != binding["bytes"]):
            blockers.append("candidate-evidence-byte-drift:" + path)
    return blockers


def import_script(path, name):
    spec = importlib.util.spec_from_file_location(name, path)
    require(spec is not None and spec.loader is not None, "cannot import " + str(path))
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def make_catalog(root, discovery, layout, recipes, capture=False):
    lean_roles = read_lean_roles(layout)
    generated = recipes
    entries, blockers = [], []
    blob_reader = GitBlobReader(root)
    try:
        for raw_path in discovery["paths"]:
            entry, local = make_entry(
                root, raw_path, discovery, lean_roles, generated, blob_reader,
                capture=capture)
            entries.append(entry)
            blockers.extend(local)
    finally:
        blob_reader.close()
    observed_lean = {entry["path"] for entry in entries if entry["path"].endswith(".lean")}
    expected_lean = set(lean_roles)
    for path in sorted(observed_lean - expected_lean):
        blockers.append("uncataloged-maintained-lean:" + path)
    for path in sorted(expected_lean - observed_lean):
        blockers.append("missing-maintained-lean:" + path)
    blockers.extend(candidate_binding_blockers(entries, layout))
    exceptional = exceptional_states(entries, discovery)
    blockers.extend("tracked-deletion:" + path for path in exceptional["tracked_deletions"])
    blockers.extend("conflicted-artifact:" + path for path in exceptional["conflicts"])
    blockers.extend("submodule-input:" + path for path in exceptional["submodules"])
    for kind in ("casefold_collisions", "unicode_nfc_collisions"):
        blockers.extend("path-collision:" + kind + ":" + " | ".join(group)
                        for group in exceptional[kind])
    counts = Counter(entry["artifact_role"] for entry in entries)
    head = git(root, "rev-parse", "--verify", "HEAD", allowed=(0, 128)).decode("ascii").strip() or None
    branch = git(root, "symbolic-ref", "--quiet", "--short", "HEAD", allowed=(0, 1)).decode(
        "utf-8", "surrogateescape").strip() or None
    catalog = {
        "schema": "grwtsk-repository-artifact-catalog-v1",
        "schema_version": 1,
        "scope": "Git-tracked and nonignored untracked paths, excluding this catalog output",
        "excluded_self": CATALOG_REL,
        "head": head,
        "branch": branch,
        "excluded_self_state": catalog_self_state(discovery),
        "artifact_count": len(entries),
        "counts_by_role": dict(sorted(counts.items())),
        "exceptional_states": exceptional,
        "artifacts": entries,
    }
    validate_catalog(catalog, discovery)
    return catalog, sorted(set(blockers))


def validate_catalog(catalog, discovery):
    fields = {
        "schema", "schema_version", "scope", "excluded_self", "head", "branch",
        "excluded_self_state", "artifact_count", "counts_by_role",
        "exceptional_states", "artifacts",
    }
    require(isinstance(catalog, dict) and set(catalog) == fields,
            "artifact catalog has missing or unknown fields")
    require(catalog["schema"] == "grwtsk-repository-artifact-catalog-v1" and
            catalog["schema_version"] == 1, "unsupported artifact catalog schema")
    require(catalog["excluded_self"] == CATALOG_REL, "catalog self-boundary changed")
    require(catalog["excluded_self_state"] == catalog_self_state(discovery),
            "catalog self Git state mismatch")
    entries = catalog["artifacts"]
    require(isinstance(entries, list) and catalog["artifact_count"] == len(entries),
            "artifact count mismatch")
    paths, hex_paths = [], []
    entry_fields = {
        "path", "path_bytes_hex", "artifact_role", "filesystem", "git",
        "generated_recipe", "basis", "byte_provenance", "text_identity",
    }
    for number, entry in enumerate(entries):
        require(isinstance(entry, dict) and set(entry) == entry_fields,
                "artifact record has missing or unknown fields at " + str(number))
        require(safe_relpath(entry["path"]), "unsafe artifact path in catalog")
        require(isinstance(entry["path_bytes_hex"], str), "invalid path byte encoding")
        try:
            raw = bytes.fromhex(entry["path_bytes_hex"])
        except ValueError as error:
            raise Invalid("invalid path_bytes_hex") from error
        require(decode_path(raw) == entry["path"], "path text differs from path bytes")
        paths.append(entry["path"])
        hex_paths.append(entry["path_bytes_hex"])
        fs = entry["filesystem"]
        require(isinstance(fs, dict) and isinstance(fs.get("kind"), str),
                "invalid filesystem record")
        if fs["kind"] == "file":
            validate_ranges(fs["size"], entry["byte_provenance"])
            validate_reconstruction_record(entry)
        else:
            require(entry["basis"] == {"kind": "unavailable"}
                    and entry["byte_provenance"] == [],
                    "non-file artifact must remain explicitly unavailable")
    require(len(paths) == len(set(paths)) and len(hex_paths) == len(set(hex_paths)),
            "duplicate artifact identity")
    omitted, extra = catalog_path_mismatches(discovery, set(hex_paths))
    require(not omitted and not extra,
            "catalog path coverage mismatch omitted=" + repr(omitted) +
            " extra=" + repr(extra))
    role_counts = dict(sorted(Counter(entry["artifact_role"] for entry in entries).items()))
    require(catalog["counts_by_role"] == role_counts, "catalog role counts mismatch")
    require(catalog["exceptional_states"] == exceptional_states(entries, discovery),
            "catalog exceptional-state summary mismatch")


def validate_reconstruction_record(entry):
    basis = entry["basis"]
    require(isinstance(basis, dict) and isinstance(basis.get("kind"), str),
            "invalid reconstruction basis")
    kind = basis["kind"]
    fields = {
        "generated": {"kind", "recipe_id", "recipe_registry"},
        "retained-literal-basis-object": {"kind", "sha256"},
        "git-blob": {"kind", "object_id", "sha256"},
        "content-addressed-gzip": {"kind", "object", "sha256"},
        "missing-content-basis": {"kind", "expected_object", "sha256", "reason"},
    }
    require(kind in fields and set(basis) == fields[kind],
            "basis has missing or unknown fields")
    digest = entry["filesystem"].get("sha256")
    require(isinstance(digest, str) and HEX64.fullmatch(digest),
            "file lacks byte digest")
    if "sha256" in basis:
        require(basis["sha256"] == digest, "basis digest differs from artifact digest")
    ranges = entry["byte_provenance"]
    require(len(ranges) == 1, "current catalog requires one lossless full-byte range")
    origin = ranges[0]["origin"]
    origin_fields = {
        "generated-recipe": {"kind", "recipe_id"},
        "declared-input-basis": {"kind", "path", "sha256"},
        "git-blob": {"kind", "object_id", "sha256"},
        "content-addressed-gzip": {"kind", "object", "sha256"},
        "missing-content-basis": {"kind", "sha256"},
    }
    origin_kind = origin.get("kind") if isinstance(origin, dict) else None
    require(origin_kind in origin_fields and set(origin) == origin_fields[origin_kind],
            "byte origin has missing or unknown fields")
    expected_origin = {
        "generated": "generated-recipe",
        "retained-literal-basis-object": "declared-input-basis",
        "git-blob": "git-blob",
        "content-addressed-gzip": "content-addressed-gzip",
        "missing-content-basis": "missing-content-basis",
    }[kind]
    require(origin_kind == expected_origin, "basis and byte-origin kinds disagree")
    if "sha256" in origin:
        require(origin["sha256"] == digest, "byte-origin digest differs from artifact")
    if kind == "generated":
        require(isinstance(entry["generated_recipe"], dict)
                and basis["recipe_id"] == entry["generated_recipe"].get("recipe_id")
                and origin["recipe_id"] == basis["recipe_id"],
                "generated basis is not bound to its recipe")
    if kind == "git-blob":
        require(origin["object_id"] == basis["object_id"],
                "Git origin differs from basis")
    if kind == "content-addressed-gzip":
        require(origin["object"] == basis["object"],
                "gzip origin differs from basis")
    if kind == "retained-literal-basis-object":
        require(origin["path"] == entry["path"],
                "literal basis object origin path differs from artifact")


def catalog_path_mismatches(discovery, actual_hex_paths):
    expected = {path.hex() for path in discovery["paths"]}
    return sorted(expected - actual_hex_paths), sorted(actual_hex_paths - expected)


def generated_checks(layout, recipes, catalog_bytes):
    checks, blockers = {}, []
    claim_scope = (
        "in-process byte-freshness only; the declared command, sandbox, environment and "
        "complete executed read set are not independently enforced"
    )
    for output, recipe in sorted(recipes.items()):
        if output == CATALOG_REL:
            expected = catalog_bytes
        else:
            try:
                expected = generated_expected_bytes(output, layout)
            except (Invalid, ValueError, KeyError, TypeError) as error:
                checks[output] = {
                    "outcome": "UNKNOWN", "operational_state": "ERROR",
                    "detail": str(error), "recipe_id": recipe["recipe_id"],
                    "claim_scope": claim_scope,
                }
                blockers.append("generated-view-error:" + output)
                continue
        state, actual = MONITOR.read_state(ROOT, output, retain=True)
        if state.get("kind") != "file" or actual is None or not state.get("read_stable"):
            checks[output] = {
                "outcome": "UNKNOWN", "operational_state": "NOT_RUN",
                "detail": "output unavailable", "recipe_id": recipe["recipe_id"],
                "claim_scope": claim_scope,
            }
            blockers.append("generated-view-unavailable:" + output)
        elif not generated_bytes_match(expected, actual):
            checks[output] = {
                "outcome": "REJECT", "operational_state": "COMPLETED",
                "expected_sha256": sha256(expected),
                "actual_sha256": sha256(actual), "recipe_id": recipe["recipe_id"],
                "claim_scope": claim_scope,
            }
            blockers.append("stale-generated-view:" + output)
        else:
            checks[output] = {
                "outcome": "ACCEPT", "operational_state": "COMPLETED",
                "sha256": sha256(actual), "recipe_id": recipe["recipe_id"],
                "claim_scope": claim_scope,
            }
    return checks, blockers


def generated_bytes_match(expected, actual):
    return isinstance(expected, bytes) and isinstance(actual, bytes) and expected == actual


def contract_accepts(outcome, operational_state):
    return outcome == "ACCEPT" and operational_state == "COMPLETED"


def profile_report(inventory_blockers, generation_blockers, rules):
    result = {}
    organized_blockers = [item for item in inventory_blockers if item.startswith((
        "unsafe-or-unavailable-artifact:", "uncataloged-maintained-lean:",
        "missing-maintained-lean:", "registry:", "recipes:", "stale-generated-view:",
        "generated-view-error:", "generated-view-unavailable:", "tracked-deletion:",
        "conflicted-artifact:", "submodule-input:", "path-collision:",
        "candidate-evidence-byte-drift:",
        "concurrent-snapshot-drift",
    ))]
    organized_blockers.extend([
        "profile-gate-not-observed:LAYOUT.001",
        "profile-gate-not-observed:ROLE.001",
        "profile-gate-not-observed:COVERAGE.001",
        "profile-gate-not-observed:DOCUMENTATION.001",
    ])
    organized_blockers = sorted(set(organized_blockers))
    organized = not organized_blockers
    result["organized"] = {"established": organized, "blockers": organized_blockers}
    reconstruction_blockers = list(organized_blockers)
    reconstruction_blockers.extend(item for item in inventory_blockers
                                   if item.startswith("missing-content-basis:"))
    reconstruction_blockers.extend(generation_blockers)
    reconstruction_blockers.append("generation-census-incomplete")
    for rule_id in ("BYTES.001", "GENERATION.001", "ORIGIN.001", "FRESHNESS.001"):
        reconstruction_blockers.append("profile-gate-not-receipt-bound:" + rule_id)
    reconstructible = organized and not reconstruction_blockers
    result["reconstructible"] = {
        "established": reconstructible, "blockers": sorted(set(reconstruction_blockers)),
    }
    formal_ids = {
        "BINDING.001", "CONTRACT.001", "PROOF.001", "RULE.001", "GROUNDING.001",
        "CONTROL.001", "DOCUMENTATION.001", "FRESHNESS.001", "RELEASE.001",
    }
    formal_blockers = list(result["reconstructible"]["blockers"])
    for rule_id in sorted(formal_ids):
        formal_blockers.append("profile-gate-not-receipt-bound:" + rule_id)
    formally_checked = reconstructible and not formal_blockers
    result["formally-checked"] = {
        "established": formally_checked, "blockers": sorted(set(formal_blockers)),
    }
    independent_blockers = list(result["formally-checked"]["blockers"])
    independent_blockers.append("profile-gate-not-receipt-bound:INDEPENDENCE.001")
    result["independently-validated"] = {
        "established": formally_checked and not independent_blockers,
        "blockers": sorted(set(independent_blockers)),
    }
    return result


def validate_existing_catalog(expected, discovery):
    state, actual_data = MONITOR.read_state(ROOT, CATALOG_REL, retain=True)
    if state.get("kind") != "file" or actual_data is None or not state.get("read_stable"):
        return ["stale-generated-view:" + CATALOG_REL]
    try:
        parsed = json.loads(actual_data)
        validate_catalog(parsed, discovery)
    except (OSError, UnicodeError, json.JSONDecodeError, Invalid) as error:
        return ["invalid-existing-catalog:" + str(error)]
    return [] if actual_data == encoded(expected) else ["stale-generated-view:" + CATALOG_REL]


def run_observation(capture=False, render=False):
    blockers = []
    governing_before = governing_identities()
    try:
        schema, registry = load_json(RULE_SCHEMA), load_json(RULE_REGISTRY)
        rules = validate_rule_documents(schema, registry)
    except Invalid as error:
        blockers.append("registry:" + str(error))
        rules = {}
    try:
        recipe_doc = load_json(RECIPES)
        generated = validate_recipes(recipe_doc)
    except Invalid as error:
        blockers.append("recipes:" + str(error))
        generated = {}
    layout = load_json(LAYOUT)
    discovery = discover(ROOT)
    if capture:
        # Capture may add Git-visible object files.  First create objects for the
        # original snapshot, then rediscover so those retained inputs are cataloged.
        make_catalog(ROOT, discovery, layout, generated, capture=True)
        discovery = discover(ROOT)
    catalog, inventory_blockers = make_catalog(
        ROOT, discovery, layout, generated, capture=False,
    )
    second_discovery = discover(ROOT)
    second_catalog, second_blockers = make_catalog(
        ROOT, second_discovery, layout, generated, capture=False,
    )
    stable = (discovery_fingerprint(discovery) == discovery_fingerprint(second_discovery)
              and encoded(catalog) == encoded(second_catalog)
              and governing_before == governing_identities())
    if not stable:
        inventory_blockers.append("concurrent-snapshot-drift")
    discovery, catalog = second_discovery, second_catalog
    inventory_blockers.extend(second_blockers)
    blockers.extend(inventory_blockers)
    catalog_bytes = encoded(catalog)
    if render:
        safe_write_output(ROOT, CATALOG_REL, catalog_bytes)
    else:
        blockers.extend(validate_existing_catalog(catalog, discovery))
    generation, generation_blockers = generated_checks(layout, generated, catalog_bytes)
    blockers.extend(generation_blockers)

    # Generator imports and rendering execute repository code and read further
    # inputs.  Close the observation only after that work, so a side effect or a
    # concurrent edit cannot inherit the pre-generation snapshot identity.
    final_discovery = discover(ROOT)
    final_catalog, final_blockers = make_catalog(
        ROOT, final_discovery, layout, generated, capture=False,
    )
    final_stable = (
        discovery_fingerprint(discovery) == discovery_fingerprint(final_discovery)
        and encoded(catalog) == encoded(final_catalog)
        and governing_before == governing_identities()
    )
    if not final_stable:
        blockers.append("concurrent-snapshot-drift-after-generation")
    blockers.extend(final_blockers)

    profiles = profile_report(blockers, generation_blockers, rules)
    # Profile blockers are acceptance blockers even when the lower-level
    # observer completed without an operational error.  Expose their union at
    # top level so no consumer can mistake an empty operational list for a
    # conformance result.
    all_blockers = set(blockers)
    for profile in profiles.values():
        all_blockers.update(profile["blockers"])
    return {
        "schema": "grwtsk-repository-conformance-observation-v1",
        "claim_limit": ("Operational observation only. It is not a proof of checker soundness, "
                        "mathematical correctness, or independent validation."),
        "catalog": {
            "path": CATALOG_REL,
            "expected_sha256": sha256(catalog_bytes),
            "artifact_count_excluding_self": catalog["artifact_count"],
        },
        "snapshot": {
            "head": final_catalog["head"],
            "branch": final_catalog["branch"],
            "git_object_format": final_discovery["object_format"],
            "discovery_sha256": discovery_fingerprint(final_discovery),
            "governing_inputs": governing_before,
        },
        "generated_views": generation,
        "profiles": profiles,
        "blockers": sorted(all_blockers),
    }


def expect_invalid(action, fragment):
    try:
        action()
    except Invalid as error:
        require(fragment in str(error), "self-test failed for " + fragment + ": " + str(error))
    else:
        raise Invalid("self-test hostile input accepted: " + fragment)


def self_test():
    schema = load_json(RULE_SCHEMA)
    registry = load_json(RULE_REGISTRY)
    validate_rule_documents(schema, registry)
    recipes = current_recipe_view(load_json(RECIPES))
    validate_recipes(recipes)

    bad_recipe = copy.deepcopy(recipes)
    bad_recipe["policy_version"] = "self-authorized-weaker-policy"
    expect_invalid(lambda: validate_recipes(bad_recipe), "policy version")
    bad_recipe = copy.deepcopy(recipes)
    bad_recipe["generated_artifacts"]["docs/reference/results.md"]["generator"] = "README.md"
    expect_invalid(lambda: validate_recipes(bad_recipe), "reviewed adapter")
    bad_recipe = copy.deepcopy(recipes)
    bad_recipe["authoritative_refreshers"][".noeaaeue/documentation/math-layout.json"][
        "excluded_generated_views"
    ].pop()
    expect_invalid(lambda: validate_recipes(bad_recipe), "every registered generated view")
    bad_recipe = copy.deepcopy(recipes)
    bad_recipe["meta_artifact_boundary"] = None
    expect_invalid(lambda: validate_recipes(bad_recipe), "meta-artifact boundary")
    bad_recipe = copy.deepcopy(recipes)
    bad_recipe["historical_reconstruction"]["causal_realization_archive"][
        "object_membership_sha256"
    ] = "0" * 64
    expect_invalid(lambda: validate_recipes(bad_recipe), "membership digest")

    bad = copy.deepcopy(registry)
    bad["unknown"] = True
    expect_invalid(lambda: validate_rule_documents(schema, bad), "unknown top-level")
    bad = copy.deepcopy(registry)
    bad["rules"][0]["unknown"] = True
    expect_invalid(lambda: validate_rule_documents(schema, bad), "unknown fields")
    bad = copy.deepcopy(registry)
    bad["rules"].append(copy.deepcopy(bad["rules"][0]))
    expect_invalid(lambda: validate_rule_documents(schema, bad), "duplicate rule IDs")
    bad = copy.deepcopy(registry)
    by_id = {row["rule_id"]: row for row in bad["rules"]}
    by_id["FOUNDATION.001"]["dependencies"] = ["RELEASE.001"]
    expect_invalid(lambda: validate_rule_documents(schema, bad), "dependency cycles")

    expect_invalid(lambda: validate_ranges(4, [
        {"start": 0, "end": 1, "origin": {"kind": "x"}},
        {"start": 2, "end": 4, "origin": {"kind": "x"}},
    ]), "range gap")
    expect_invalid(lambda: validate_ranges(4, [
        {"start": 0, "end": 3, "origin": {"kind": "x"}},
        {"start": 2, "end": 4, "origin": {"kind": "x"}},
    ]), "range overlap")

    original = "\N{GREEK SMALL LETTER LAMDA}\r\n".encode()
    drifted = "\N{GREEK SMALL LETTER LAMDA}\n".encode()
    require(sha256(original) != sha256(drifted), "Unicode/CRLF byte drift was not detected")
    require(text_identity(original)["line_endings"]["style"] == "crlf",
            "CRLF classification failed")
    require(text_identity(drifted)["line_endings"]["style"] == "lf",
            "LF classification failed")
    require(not generated_bytes_match(b"fresh", b"stale"),
            "stale generated output control failed")

    require(not contract_accepts("UNKNOWN", "COMPLETED"), "UNKNOWN admitted as acceptance")
    for state in ("NOT_RUN", "BUSY", "TIMEOUT", "ERROR", "INTERRUPTED"):
        require(not contract_accepts("ACCEPT", state), state + " admitted as acceptance")
    require(contract_accepts("ACCEPT", "COMPLETED"), "completed ACCEPT was not recognized")

    # Profile admission must not be inferred from descriptive registry status
    # strings.  Only future current, source-bound receipts may discharge these
    # gates.
    descriptive_only = copy.deepcopy({rule["rule_id"]: rule for rule in registry["rules"]})
    for rule in descriptive_only.values():
        rule["enforcement_status"] = "operationally-enforced-not-formally-verified"
    profiles = profile_report([], [], descriptive_only)
    require(all(not profile["established"] for profile in profiles.values()),
            "descriptive registry status admitted a conformance profile")

    candidate_layout = {
        "source_roles": {"library": "public mathematical source"},
        "active_sources": [{"path": "GRWTSK.lean", "source_role": "library"}],
        "candidate_source_catalog": {
            "status": "CANDIDATE_SOURCE_ONLY", "source_count": 1,
        },
        "candidate_sources": [{
            "path": "GRWTSK/Analysis/Candidate.lean",
            "target_path": "GRWTSK/Analysis/Candidate.lean",
            "source_intake": ".noeaaeue/evidence/source-intake.json",
            "source_set": "candidate-evidence",
            "status": "CANDIDATE_SOURCE_ONLY",
            "mathematical_admission": False,
            "public_release_eligible": False,
            "sha256": "0" * 64,
            "bytes": 1,
        }],
    }
    roles = read_lean_roles(candidate_layout)
    require(roles["GRWTSK/Analysis/Candidate.lean"] == "candidate-evidence",
            "candidate evidence was not assigned its non-admitted artifact role")
    candidate_artifact = [{
        "path": "GRWTSK/Analysis/Candidate.lean",
        "filesystem": {"kind": "file", "sha256": "0" * 64, "size": 1},
    }]
    require(candidate_binding_blockers(candidate_artifact, candidate_layout) == [],
            "exact candidate artifact binding was rejected")
    drifted_candidate_artifact = copy.deepcopy(candidate_artifact)
    drifted_candidate_artifact[0]["filesystem"]["sha256"] = "1" * 64
    require(candidate_binding_blockers(drifted_candidate_artifact, candidate_layout) == [
        "candidate-evidence-byte-drift:GRWTSK/Analysis/Candidate.lean",
    ], "candidate byte-drift hostile control was not detected")
    bad_candidate_layout = copy.deepcopy(candidate_layout)
    bad_candidate_layout["candidate_sources"][0]["path"] = "GRWTSK.lean"
    expect_invalid(lambda: read_lean_roles(bad_candidate_layout), "active/candidate source overlap")
    bad_candidate_layout = copy.deepcopy(candidate_layout)
    bad_candidate_layout["candidate_sources"][0]["mathematical_admission"] = True
    expect_invalid(lambda: read_lean_roles(bad_candidate_layout), "admission/publication claim")
    bad_candidate_layout = copy.deepcopy(candidate_layout)
    bad_candidate_layout["candidate_source_catalog"]["source_count"] = 0
    expect_invalid(lambda: read_lean_roles(bad_candidate_layout), "candidate catalog count mismatch")

    malformed_entry = {
        "path": "example.txt", "path_bytes_hex": "6578616d706c652e747874",
        "artifact_role": "source-and-configuration",
        "filesystem": {"kind": "file", "size": 1, "sha256": sha256(b"x")},
        "git": {}, "generated_recipe": None,
        "basis": {"kind": "git-blob", "object_id": "0" * 40,
                  "sha256": sha256(b"x")},
        "byte_provenance": [{
            "start": 0, "end": 1,
            "origin": {"kind": "content-addressed-gzip", "object": "wrong",
                       "sha256": sha256(b"x")},
        }],
        "text_identity": None,
    }
    expect_invalid(lambda: validate_reconstruction_record(malformed_entry),
                   "basis and byte-origin kinds disagree")

    with tempfile.TemporaryDirectory(prefix="grwtsk-basis-") as directory:
        root = Path(directory)
        payload = b"exact retained bytes\x00\r\n"
        digest = sha256(payload)
        relative, created = capture_basis(root, digest, payload)
        require(created and relative == object_rel(digest),
                "basis capture did not create the expected object")
        valid, detail, restored = verify_basis_object(root, digest)
        require(valid and detail == relative and restored == payload,
                "basis object did not restore exact bytes")
        _relative, recreated = capture_basis(root, digest, payload)
        require(not recreated, "existing valid basis object was rewritten")

    with tempfile.TemporaryDirectory(prefix="grwtsk-conformance-") as directory:
        root = Path(directory)
        subprocess.run(["git", "init", "-q", str(root)], check=True, timeout=30)
        (root / "tracked.txt").write_bytes(b"tracked\n")
        subprocess.run(["git", "-C", str(root), "add", "tracked.txt"], check=True, timeout=30)
        (root / "untracked.txt").write_bytes(b"untracked\n")
        observed = discover(root)
        require({decode_path(path) for path in observed["paths"]} == {
            "tracked.txt", "untracked.txt",
        }, "tracked/untracked discovery omitted an artifact")
        omitted, _extra = catalog_path_mismatches(observed, set())
        require(os.fsencode("tracked.txt").hex() in omitted,
                "omitted tracked artifact was not detected")
        require(os.fsencode("untracked.txt").hex() in omitted,
                "omitted untracked artifact was not detected")
        fake_catalog = {
            "schema": "grwtsk-repository-artifact-catalog-v1", "schema_version": 1,
            "scope": "Git-tracked and nonignored untracked paths, excluding this catalog output",
            "excluded_self": CATALOG_REL, "head": None, "branch": None,
            "excluded_self_state": catalog_self_state(observed),
            "artifact_count": 0, "counts_by_role": {},
            "exceptional_states": {
                "tracked_deletions": [], "conflicts": [], "unsafe_entries": [],
                "submodules": [], "casefold_collisions": [],
                "unicode_nfc_collisions": [],
            },
            "artifacts": [],
        }
        expect_invalid(lambda: validate_catalog(fake_catalog, observed), "coverage mismatch")
        require(collision_groups(["A.lean", "a.lean"], str.casefold) ==
                [["A.lean", "a.lean"]], "case-fold collision control failed")
        if hasattr(os, "symlink"):
            os.symlink("tracked.txt", root / "linked.txt")
            state, content = MONITOR.read_state(root, "linked.txt", retain=True)
            require(state.get("kind") == "symlink" and content is None,
                    "no-follow symlink control failed")
    return None


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--render", action="store_true",
                        help="write the deterministic artifact catalog")
    parser.add_argument("--capture-basis", action="store_true",
                        help="retain deterministic gzip objects for dirty/untracked bytes")
    parser.add_argument("--self-test", action="store_true")
    parser.add_argument(
        "--write-receipt", action="store_true",
        help="write a fresh immutable evidence receipt for the prior observed snapshot",
    )
    parser.add_argument("--require-profile", choices=PROFILE_ORDER)
    args = parser.parse_args()
    try:
        if args.self_test:
            self_test()
            print("repository conformance self-test: hostile/boundary controls passed")
            if not (args.render or args.capture_basis or args.require_profile or args.write_receipt):
                return 0
        report = run_observation(capture=args.capture_basis, render=args.render)
    except (Invalid, ValueError, KeyError, TypeError, OSError, subprocess.SubprocessError) as error:
        print("repository conformance checker error: " + str(error), file=sys.stderr)
        return 3
    if args.write_receipt:
        try:
            receipt_path, receipt = write_observation_receipt(report)
        except (Invalid, OSError) as error:
            print("repository conformance receipt error: " + str(error), file=sys.stderr)
            return 3
        output = {"receipt_path": receipt_path, "receipt": receipt}
    else:
        output = report
    print(json.dumps(output, ensure_ascii=True, indent=2, sort_keys=True))
    if args.require_profile and not report["profiles"][args.require_profile]["established"]:
        print("required profile is not established: " + args.require_profile, file=sys.stderr)
        return 2
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
