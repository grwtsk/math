"""Current owned-audit JSON protocol; historical parsers remain separate.

Source hashes describe immutable observed inputs. A matching runtime profile
also needs the audit's exact curated source pin and all native owner/type/level
checks. A changed source never inherits an old runtime exception.
"""
import json
import re

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
