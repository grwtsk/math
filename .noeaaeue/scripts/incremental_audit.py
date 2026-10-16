"""Operational audit scopes and lossless aggregation for incremental replay.

The formal audit template remains unchanged. Generated wrappers retain its full
runtime qualification and declaration policy, and narrow only census ownership.
"""
import json
import re

import owned_audit_protocol


_OWNER_PREDICATE = "if (`GRWTSK).isPrefixOf owner then"
_DEPENDENCY_BRANCH = ('    else\n'
                      '      logInfo m!"MATH_TRUST_DEPENDENCY_MODULE::{owner}"')
_EMPTY_GUARD = 'if moduleCount == 0 || count == 0 then throwError "empty project census"'
_KINDS = {"theorem", "definition", "opaque", "axiom", "constructor", "recursor", "inductive", "generated"}
_HASH = re.compile(r"[0-9a-f]{64}\Z")


def _replace_once(text, original, replacement):
    if text.count(original) != 1:
        raise RuntimeError("native audit scope transformation is not exact: " + original)
    return text.replace(original, replacement, 1)


def scoped_wrapper(audit_source, all_hashes, selected):
    """Return a generated body/profile auditing exactly a nonempty owner subset.

    Imports are supplied by the caller. All imported runtime owners still need
    their source hashes, even when their declarations are outside this batch.
    """
    body, profile = owned_audit_protocol.wrapper_body(audit_source, "project", all_hashes)
    if (not isinstance(selected, list) or not selected
            or any(not isinstance(module, str) for module in selected)
            or len(set(selected)) != len(selected)
            or not set(selected) <= set(all_hashes)):
        raise RuntimeError("scoped native audit needs distinct current owned modules")
    owners = ", ".join("`" + module for module in sorted(selected))
    body = _replace_once(body, _OWNER_PREDICATE,
                         "if (#[" + owners + "] : Array Name).contains owner then")
    # Excluded project owners are not external dependency objects.
    body = _replace_once(body, _DEPENDENCY_BRANCH,
                         _DEPENDENCY_BRANCH.replace("    else\n", "    else if !((`GRWTSK).isPrefixOf owner) then\n"))
    # A selected umbrella may legitimately own no declarations. Ownership and
    # the exact nonempty module census remain mandatory.
    body = _replace_once(body, _EMPTY_GUARD,
                         'if moduleCount == 0 then throwError "empty project census"')
    return body.encode(), profile


def _unique_object(pairs):
    result = {}
    for key, value in pairs:
        if key in result:
            raise ValueError("duplicate native census JSON key")
        result[key] = value
    return result


def _records(text, marker):
    values = []
    for line in text.splitlines():
        if marker not in line:
            continue
        if line.count(marker) != 1:
            raise RuntimeError("ambiguous native census marker")
        try:
            values.append(json.loads(line.split(marker, 1)[1], object_pairs_hook=_unique_object))
        except (ValueError, TypeError) as error:
            raise RuntimeError("malformed native census record") from error
    return values


def _declaration_schema(row):
    if (not isinstance(row, dict) or set(row) != owned_audit_protocol._FIELDS
            or any(type(row.get(key)) is not bool for key in owned_audit_protocol._BOOLS)
            or any(not isinstance(row.get(key), str) for key in ("module", "name", "kind", "type"))
            or not row["name"] or row["kind"] not in _KINDS
            or row["runtime_helper_parent"] is not None and not isinstance(row["runtime_helper_parent"], str)
            or not isinstance(row["runtime_helper_owner_source_sha256"], str)
            or not _HASH.fullmatch(row["runtime_helper_owner_source_sha256"])
            or not isinstance(row["runtime_helper_profile_source_sha256"], str)
            or row["runtime_helper_profile_source_sha256"] != ""
               and not _HASH.fullmatch(row["runtime_helper_profile_source_sha256"])):
        raise RuntimeError("current native declaration schema differs")
    for key in ("level_params", "axioms", "direct_type_references_to_runtime_helpers",
                "direct_value_references_to_runtime_helpers"):
        values = row[key]
        if (not isinstance(values, list) or any(not isinstance(value, str) for value in values)
                or len(set(values)) != len(values)):
            raise RuntimeError("malformed native declaration inventory")


def partial_census_records(text, expected_modules):
    """Check exact owner/count/schema coverage, including empty owned modules.

    This performs structural validation; callers must also apply the unchanged
    owned_audit_protocol.validate_census policy to exact source hashes/profiles.
    """
    expected = list(expected_modules)
    if not expected or any(not isinstance(module, str) for module in expected) or len(set(expected)) != len(expected):
        raise RuntimeError("scoped native census requires distinct expected modules")
    owned_audit_protocol.source_profile("project", {module: "0" * 64 for module in expected})
    if re.search(r"\berror(?:\([^()\r\n]+\))?:|MATH_TRUST_VIOLATION::", text):
        raise RuntimeError("current native census contains an error or policy violation")
    declarations = _records(text, "MATH_TRUST_DECL::")
    modules = _records(text, "MATH_TRUST_MODULE::")
    counts = _records(text, "MATH_TRUST_COUNT::")
    module_counts = _records(text, "MATH_TRUST_MODULE_COUNT::")
    if (len(counts) != 1 or type(counts[0]) is not int or counts[0] != len(declarations)
            or len(module_counts) != 1 or type(module_counts[0]) is not int
            or module_counts[0] != len(modules)):
        raise RuntimeError("incomplete native declaration or module census")
    for module in modules:
        if (not isinstance(module, dict) or set(module) != {"module", "declarations"}
                or not isinstance(module["module"], str)
                or type(module["declarations"]) is not int or module["declarations"] < 0):
            raise RuntimeError("malformed native module census record")
    owners = [module["module"] for module in modules]
    if len(set(owners)) != len(owners) or set(owners) != set(expected):
        raise RuntimeError("native module census differs from expected owned module set")
    for row in declarations:
        _declaration_schema(row)
        if row["module"] not in owners:
            raise RuntimeError("native declaration owner is absent from module census")
    if len({row["name"] for row in declarations}) != len(declarations):
        raise RuntimeError("duplicate native declaration record")
    if any(sum(row["module"] == module["module"] for row in declarations) != module["declarations"]
           for module in modules):
        raise RuntimeError("native module declaration count mismatch")
    return declarations, modules


def partition_output(text, expected_modules):
    """Return module -> declaration rows, preserving zero-declaration owners."""
    declarations, modules = partial_census_records(text, expected_modules)
    return {module["module"]: [row for row in declarations if row["module"] == module["module"]]
            for module in modules}


def aggregate_output(rows_by_module):
    """Serialize module -> declaration rows for the unchanged full policy gate."""
    if not isinstance(rows_by_module, dict) or not rows_by_module:
        raise RuntimeError("aggregated native census needs owned module rows")
    if any(not isinstance(module, str) or not isinstance(rows, list) for module, rows in rows_by_module.items()):
        raise RuntimeError("malformed aggregated native census")
    lines, total = [], 0
    for module, rows in sorted(rows_by_module.items()):
        lines.append("MATH_TRUST_MODULE::" + json.dumps({"module": module, "declarations": len(rows)}, separators=(",", ":")))
        for row in rows:
            if not isinstance(row, dict) or row.get("module") != module:
                raise RuntimeError("aggregated declaration belongs to a different module")
            lines.append("MATH_TRUST_DECL::" + json.dumps(row, sort_keys=True, separators=(",", ":")))
        total += len(rows)
    lines.extend(["MATH_TRUST_COUNT::" + str(total), "MATH_TRUST_MODULE_COUNT::" + str(len(rows_by_module))])
    text = "\n".join(lines) + "\n"
    partial_census_records(text, rows_by_module)
    return text
