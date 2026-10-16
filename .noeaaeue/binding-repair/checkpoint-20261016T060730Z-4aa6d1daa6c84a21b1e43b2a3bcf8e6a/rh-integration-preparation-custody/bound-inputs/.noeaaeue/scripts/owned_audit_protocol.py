"""Current owned-audit JSON protocol; historical parsers remain separate.

Source hashes describe immutable observed inputs. A matching runtime profile
also needs the audit's exact curated source pin and all native owner/type/level
checks. A changed source never inherits an old runtime exception.
"""
import json
import re
import hashlib
from pathlib import PurePosixPath

_HASH = re.compile(r"[0-9a-f]{64}\Z")
_MODULE = re.compile(r"GRWTSK(?:\.[A-Za-z_][A-Za-z0-9_]*)*\Z")
_FIELDS = frozenset({"module", "name", "kind", "type", "level_params", "unsafe", "partial",
    "known_generated_runtime_helper", "mathematical_admission", "runtime_helper_parent",
    "runtime_helper_same_owner", "runtime_helper_type_equal", "runtime_helper_level_params_equal",
    "runtime_helper_profile_source_sha256", "runtime_helper_owner_source_sha256",
    "direct_type_references_to_runtime_helpers", "direct_value_references_to_runtime_helpers",
    "direct_value_reference_to_runtime_helper", "axioms"})
_BOOLS = ("unsafe", "partial", "known_generated_runtime_helper", "mathematical_admission",
    "runtime_helper_same_owner", "runtime_helper_type_equal", "runtime_helper_level_params_equal",
    "direct_value_reference_to_runtime_helper")
_ALLOWED_AXIOMS = frozenset({"propext", "Classical.choice", "Quot.sound"})
QUALIFICATION = ".noeaaeue/binding-repair/moebius-current-qualification.json"
QUALIFICATION_SHA256 = "b8091fd64e595307d648c55e351bbd9d81d82be2ca2d46f219abe180b2e7fb96"
_CURRENT_HELPERS = frozenset({
    "GRWTSK.RiemannHypothesis.BranchSequenceRealization.denominator._unsafe_rec",
    "GRWTSK.RiemannHypothesis.BranchSequenceRealization.spikeDenominator._unsafe_rec",
    "GRWTSK.RiemannHypothesis.BranchSequenceRealization.numerator._unsafe_rec",
    "GRWTSK.ProofHorizon.CorkscrewChamberCap.affectedClosure._unsafe_rec",
    "GRWTSK.ProofHorizon.CorkscrewChamberCap.routeClosureFrom._unsafe_rec"})
_CONTROL_CASES = frozenset({"default-disabled", "unpaired-partial", "fake-paired-suffix",
    "unrelated-unsafe", "owner-custom-axiom", "wrong-profile-sha"})


def qualified_project_profile(root, reader, source_hashes):
    """Bind the separately reviewed fresh qualification; metadata is not replay."""
    inputs = {}
    def read(name, expected=None):
        parts = PurePosixPath(name).parts
        if not name.startswith(".noeaaeue/") or any(p in {"..", ".", ".git"} for p in parts):
            raise RuntimeError("unsafe runtime qualification input path")
        data = reader(root, name)
        digest = hashlib.sha256(data).hexdigest()
        if expected is not None and digest != expected:
            raise RuntimeError("runtime qualification input hash mismatch: " + name)
        inputs[name] = digest
        return data
    reference = json.loads(read(QUALIFICATION, QUALIFICATION_SHA256))
    if (reference.get("schema") != "current-moebius-scoped-qualification-reference-v2"
            or reference.get("status") != "CURRENT_SCOPED_PROFILE_QUALIFIED"
            or reference.get("kernel_checked") is not True or reference.get("library_wide_admission") is not False
            or reference.get("native_commands") != 14 or reference.get("negative_controls") != 6):
        raise RuntimeError("current runtime profile lacks its exact scoped native qualification")
    metadata = json.loads(read(reference["profile_metadata"], reference["profile_metadata_sha256"]))
    read(reference["helper_path"], reference["helper_sha256"])
    receipt = json.loads(read(reference["receipt"], reference["receipt_sha256"]))
    entries = metadata.get("entries")
    if (not isinstance(entries, list) or len(entries) != 5
            or hashlib.sha256(json.dumps(entries, sort_keys=True, separators=(",", ":")).encode()).hexdigest() != reference["profile_sha256"]
            or metadata.get("profile_sha256") != reference["profile_sha256"]
            or {row.get("helper") for row in entries if isinstance(row, dict)} != _CURRENT_HELPERS):
        raise RuntimeError("qualified current runtime descriptor is missing, extra, or changed")
    profiles = {}
    for row in entries:
        if (set(row) != {"helper", "original", "owner", "owner_source_sha256"}
                or not _MODULE.fullmatch(row["owner"]) or row["helper"] != row["original"] + "._unsafe_rec"
                or source_hashes.get(row["owner"]) != row["owner_source_sha256"]):
            raise RuntimeError("qualified runtime pair/source binding differs from current frozen owner")
        profiles[row["helper"]] = {"owner": row["owner"], "helper": row["helper"],
            "parent": row["original"], "sha256": row["owner_source_sha256"]}
    if len({row["owner"] for row in profiles.values()}) != 3:
        raise RuntimeError("qualified current runtime owner inventory differs")
    if (receipt.get("status") != "CURRENT_SCOPED_PROFILE_QUALIFIED"
            or receipt.get("kernel_checked") is not True or receipt.get("library_wide_admission") is not False
            or receipt.get("kernel_trust_level") != 0 or receipt.get("warnings_as_errors") is not True
            or receipt.get("profile_sha256") != reference["profile_sha256"]
            or receipt.get("helper_sha256") != reference["helper_sha256"]
            or receipt.get("profile_metadata_sha256") != reference["profile_metadata_sha256"]
            or set(receipt.get("known_generated_helpers", [])) != _CURRENT_HELPERS):
        raise RuntimeError("runtime qualification native receipt does not bind the reviewed descriptor")
    observed_sources = {name.removesuffix(".lean").replace("/", "."): digest for name, digest in receipt["sources"].items()}
    if (observed_sources != reference["source_hashes"] or
            any(source_hashes.get(name) != digest for name, digest in observed_sources.items())):
        raise RuntimeError("fresh qualification source closure differs from current source bytes")
    controls = receipt.get("negative_controls", [])
    if (len(controls) != 6 or {row.get("case") for row in controls} != _CONTROL_CASES
            or any(row.get("oracle", {}).get("rejected") is not True for row in controls)):
        raise RuntimeError("runtime qualification lacks all six strict native negative controls")
    commands = receipt.get("commands", [])
    if len(commands) != 14 or len({row.get("label") for row in commands}) != 14:
        raise RuntimeError("runtime qualification command inventory differs")
    base = str(PurePosixPath(reference["receipt"]).parent)
    for command in commands:
        expected_exit = 1 if command["label"].startswith("control-") and command["label"].endswith("-audit") else 0
        if (command.get("status") != "completed" or command.get("postcheck_passed") is not True
                or type(command.get("exit_code")) is not int or command["exit_code"] != expected_exit
                or "--trust=0" not in command.get("argv", []) or "-DwarningAsError=true" not in command["argv"]):
            raise RuntimeError("runtime qualification contains an incomplete or incorrect native command")
        read(base + "/" + command["log"], command["log_sha256"])
    for name, digest in receipt.get("frozen_inputs", {}).items():
        if PurePosixPath(name).is_absolute() or ".." in PurePosixPath(name).parts:
            raise RuntimeError("unsafe qualified frozen input path")
        read(base + "/source/" + name, digest)
    prior = receipt["prior_fresh_source_replay"]
    prior_receipt = json.loads(read(prior["receipt"], prior["sha256"]))
    for name, digest in prior_receipt.get("sources", {}).items():
        if observed_sources.get(name.removesuffix(".lean").replace("/", ".")) != digest:
            raise RuntimeError("prior fresh source replay differs from qualified source closure")
    source_commands = [row for row in prior_receipt.get("commands", []) if row.get("label") in prior["source_command_labels"]]
    if len(source_commands) != 5 or {row["label"] for row in source_commands} != {"source-" + str(n) for n in range(5)}:
        raise RuntimeError("runtime qualification lacks its complete five-source fresh replay")
    prior_base = str(PurePosixPath(prior["receipt"]).parent)
    for command in source_commands:
        if (type(command.get("exit_code")) is not int or command["exit_code"] != 0
                or "--trust=0" not in command.get("argv", []) or "-DwarningAsError=true" not in command["argv"]):
            raise RuntimeError("runtime qualification prior source command was not a strict successful replay")
        read(prior_base + "/" + command["log"], command["log_sha256"])
    for name, digest in prior_receipt["sources"].items():
        read(prior_base + "/source/" + name, digest)
    return profiles, inputs, {"reference": QUALIFICATION, "reference_sha256": QUALIFICATION_SHA256,
        "profile_sha256": reference["profile_sha256"], "exact_descriptor": entries,
        "qualification_scope": reference["scope"], "admission_inherited": False}


def configure_project_table(audit_source, profiles):
    """Change only the generated operational wrapper's reviewed literal table."""
    original = audit_source.decode() if isinstance(audit_source, bytes) else audit_source
    historical = runtime_profiles(original, "project")
    if set(profiles) != _CURRENT_HELPERS:
        raise RuntimeError("wrapper injection must use the exact reviewed five qualified helpers")
    for name, profile in profiles.items():
        old = historical.get(name)
        if old is None or any(profile[k] != old[k] for k in ("owner", "helper", "parent")):
            raise RuntimeError("current profile changes historical helper/parent/owner identity")
    rows = [f'  (`{p["owner"]}, `{p["helper"]}, `{p["parent"]}, "{p["sha256"]}")'
            for p in profiles.values()]
    pattern = r'(private def mathTrustProjectRuntimeProfiles\s*:\s*Array\s*\(Name × Name × Name × String\)\s*:=\s*#\[).*?(\n\])'
    configured, count = re.subn(pattern, lambda match: match[1] + "\n" + ",\n".join(rows) + match[2], original, count=1, flags=re.S)
    if count != 1 or runtime_profiles(configured, "project") != profiles:
        raise RuntimeError("generated wrapper literal-table injection is not exact")
    return configured.encode()


def source_profile(scope, hashes):
    if scope not in {"project", "native-fixtures"}:
        raise RuntimeError("unrecognized current owned-audit profile scope")
    if not isinstance(hashes, dict) or any(not isinstance(k, str) or not _MODULE.fullmatch(k)
            or not isinstance(v, str) or not _HASH.fullmatch(v) for k, v in hashes.items()):
        raise RuntimeError("invalid exact current owned-audit source profile")
    return {"scope": scope, "sources": dict(sorted(hashes.items()))}


def runtime_profiles(audit_source, scope):
    """Read the literal curated table from the independently frozen audit input."""
    if scope not in {"project", "native-fixtures"}:
        raise RuntimeError("unrecognized current owned-audit profile scope")
    text = audit_source.decode() if isinstance(audit_source, bytes) else audit_source
    table = "mathTrustProjectRuntimeProfiles" if scope == "project" else "mathTrustFixtureRuntimeProfiles"
    match = re.search(r"private def " + table + r"\s*:\s*Array\s*\(Name × Name × Name × String\)\s*:=\s*#\[(.*?)\n\]", text, re.S)
    if match is None:
        raise RuntimeError("current native audit lacks its exact literal runtime profile table")
    pattern = re.compile(r'\(\s*`([\w.]+)\s*,\s*`([\w.]+)\s*,\s*`([\w.]+)\s*,\s*"([0-9a-f]{64})"\s*\)')
    rows = pattern.findall(match[1])
    if not rows or re.sub(r"[\s,]", "", pattern.sub("", match[1])):
        raise RuntimeError("runtime profile table contains an unsupported expression")
    profiles = {}
    for owner, helper, parent, digest in rows:
        if helper in profiles or not _MODULE.fullmatch(owner) or helper != parent + "._unsafe_rec":
            raise RuntimeError("runtime profile identities are ambiguous or malformed")
        profiles[helper] = {"owner": owner, "helper": helper, "parent": parent, "sha256": digest}
    return profiles


def wrapper_body(audit_source, scope, hashes):
    text = audit_source.decode() if isinstance(audit_source, bytes) else audit_source
    body = "\n".join(line for line in text.splitlines() if not line.startswith("import "))
    profile = source_profile(scope, hashes)
    argument = json.dumps(json.dumps(profile, sort_keys=True, separators=(",", ":")))
    body, count = re.subn(r'^#audit_math_trust ""$', lambda _: "#audit_math_trust " + argument,
                         body, flags=re.M)
    if count != 1:
        raise RuntimeError("native audit must have one exact default command to configure")
    return body, profile


def validate_census(text, expected_modules, hashes, profiles, census_records):
    """Check current native facts against exact owner sources and curated pins."""
    source_profile("project", hashes)
    if set(hashes) != set(expected_modules):
        raise RuntimeError("current source profile must cover the exact owned module census")
    if re.search(r"\berror(?:\([^()\r\n]+\))?:|MATH_TRUST_VIOLATION::", text):
        raise RuntimeError("current native census contains an error or policy violation")
    declarations, modules = census_records(text, expected_modules)
    by_name = {row["name"]: row for row in declarations}
    for row in declarations:
        if set(row) != _FIELDS or any(type(row.get(k)) is not bool for k in _BOOLS):
            raise RuntimeError("current owned declaration schema or Boolean flags differ")
        if (any(not isinstance(row.get(k), str) for k in ("module", "name", "kind", "type"))
                or row["kind"] not in {"theorem", "definition", "opaque", "axiom", "constructor", "recursor", "inductive", "generated"}
                or not isinstance(row["level_params"], list)
                or any(not isinstance(x, str) for x in row["level_params"])):
            raise RuntimeError("malformed current declaration identity or level parameters")
        if row["runtime_helper_owner_source_sha256"] != hashes[row["module"]]:
            raise RuntimeError("native declaration does not bind its exact observed owner source")
        for key in ("axioms", "direct_type_references_to_runtime_helpers", "direct_value_references_to_runtime_helpers"):
            value = row[key]
            if not isinstance(value, list) or any(not isinstance(x, str) for x in value) or len(set(value)) != len(value):
                raise RuntimeError("malformed current axiom or runtime-reference inventory")
    qualified = set()
    for helper, profile in profiles.items():
        if profile["owner"] not in hashes:
            continue
        if hashes[profile["owner"]] != profile["sha256"]:
            raise RuntimeError("stale curated runtime source pin: " + profile["owner"])
        row, parent = by_name.get(helper), by_name.get(profile["parent"])
        if (row is None or parent is None or row["module"] != profile["owner"]
                or parent["module"] != profile["owner"] or row["kind"] != "definition"
                or not row["partial"] or row["unsafe"] or parent["kind"] != "definition"
                or parent["partial"] or parent["unsafe"] or row["type"] != parent["type"]
                or row["level_params"] != parent["level_params"]
                or row["runtime_helper_parent"] != profile["parent"]
                or row["runtime_helper_profile_source_sha256"] != profile["sha256"]
                or not all(row[k] for k in ("runtime_helper_same_owner", "runtime_helper_type_equal", "runtime_helper_level_params_equal"))):
            raise RuntimeError("runtime helper lacks its exact safe same-owner/type/level parent: " + helper)
        qualified.add(helper)
    for row in declarations:
        known = row["name"] in qualified
        if row["known_generated_runtime_helper"] != known:
            raise RuntimeError("current generated runtime classification differs from independently checked profile")
        if row["unsafe"] or row["partial"] and not known or row["kind"] == "axiom":
            raise RuntimeError("unsafe, unqualified partial, or axiom declaration: " + row["name"])
        if not set(row["axioms"]) <= _ALLOWED_AXIOMS:
            raise RuntimeError("unapproved transitive axiom: " + row["name"])
        type_refs = row["direct_type_references_to_runtime_helpers"]
        value_refs = row["direct_value_references_to_runtime_helpers"]
        if not set(type_refs + value_refs) <= qualified:
            raise RuntimeError("runtime references name an unqualified helper")
        if row["direct_value_reference_to_runtime_helper"] != bool(value_refs):
            raise RuntimeError("runtime reference summary disagrees with its exact inventory")
        if not known and (type_refs or value_refs):
            raise RuntimeError("non-helper declaration references a runtime helper: " + row["name"])
        admitted = not known and not row["partial"] and not row["unsafe"] and row["kind"] != "axiom"
        if row["mathematical_admission"] != admitted:
            raise RuntimeError("native mathematical admission flag differs from checked declaration facts")
    return declarations, modules
