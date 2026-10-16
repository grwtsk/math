"""Scoped audit and complete aggregation regression checks; no Lean required."""
import copy
import json
from pathlib import Path
import unittest

import incremental_audit as audit
import owned_audit_protocol


ROOT = Path(__file__).resolve().parents[2]
TEMPLATE = ROOT / "GRWTSK/Logic/ProofChecking/Checks/OwnedDeclarationAudit.lean"


def declaration(module="GRWTSK.Live", name="GRWTSK.value"):
    row = {key: False for key in owned_audit_protocol._BOOLS}
    row.update(module=module, name=name, kind="theorem", type="True", level_params=[],
               mathematical_admission=True, runtime_helper_parent=None,
               runtime_helper_owner_source_sha256="a" * 64, runtime_helper_profile_source_sha256="",
               direct_type_references_to_runtime_helpers=[], direct_value_references_to_runtime_helpers=[],
               axioms=[])
    return row


class IncrementalAuditTests(unittest.TestCase):
    def test_scoped_wrapper_retains_runtime_qualification_and_full_owner_hashes(self):
        source = TEMPLATE.read_bytes()
        hashes = {"GRWTSK": "b" * 64, "GRWTSK.Live": "a" * 64}
        generated, profile = audit.scoped_wrapper(source, hashes, ["GRWTSK"])
        text = generated.decode()
        original = source.decode()
        start = "  for (owner, name, parentName, acceptedHash) in runtimeProfiles do"
        end = "  let mut count : Nat := 0"
        self.assertEqual(text[text.index(start):text.index(end)], original[original.index(start):original.index(end)])
        self.assertEqual(profile["sources"], hashes)
        self.assertIn("if (#[`GRWTSK] : Array Name).contains owner then", text)
        self.assertIn("else if !((`GRWTSK).isPrefixOf owner) then", text)
        self.assertIn('if moduleCount == 0 then throwError "empty project census"', text)
        for gate in ("let axioms ← collectAxioms name", "if info.isUnsafe", "if info.isPartial",
                     "helper.type == parent.type", "helper.levelParams == parent.levelParams",
                     "if !knownRuntime && !typeReferences.isEmpty", "if !knownRuntime && !valueReferences.isEmpty"):
            self.assertIn(gate, text)

    def test_wrapper_refuses_ambiguous_template_or_invalid_selection(self):
        source = TEMPLATE.read_bytes()
        for selected in ([], ["GRWTSK", "GRWTSK"], ["GRWTSK.Unknown"], [1]):
            with self.subTest(selected=selected), self.assertRaises(RuntimeError):
                audit.scoped_wrapper(source, {"GRWTSK": "a" * 64}, selected)
        for marker in (audit._OWNER_PREDICATE, audit._DEPENDENCY_BRANCH, audit._EMPTY_GUARD):
            changed = source.replace(marker.encode(), b"changed", 1)
            with self.subTest(marker=marker), self.assertRaises(RuntimeError):
                audit.scoped_wrapper(changed, {"GRWTSK": "a" * 64}, ["GRWTSK"])

    def test_empty_umbrellas_round_trip_and_validate_with_current_policy(self):
        text = audit.aggregate_output({"GRWTSK": []})
        self.assertEqual(audit.partition_output(text, ["GRWTSK"]), {"GRWTSK": []})
        declarations, modules = owned_audit_protocol.validate_census(
            text, ["GRWTSK"], {"GRWTSK": "b" * 64}, {}, audit.partial_census_records)
        self.assertEqual(declarations, [])
        self.assertEqual(modules, [{"module": "GRWTSK", "declarations": 0}])

    def test_aggregation_preserves_exact_declaration_and_zero_owner_coverage(self):
        rows = {"GRWTSK": [], "GRWTSK.Live": [declaration()]}
        text = audit.aggregate_output(rows)
        self.assertEqual(audit.partition_output(text, list(rows)), rows)
        owned_audit_protocol.validate_census(text, rows, {"GRWTSK": "b" * 64, "GRWTSK.Live": "a" * 64},
                                            {}, audit.partial_census_records)
        with self.assertRaises(RuntimeError):
            audit.partial_census_records(text, ["GRWTSK.Live"])
        with self.assertRaises(RuntimeError):
            audit.partial_census_records(text, ["GRWTSK", "GRWTSK.Live", "GRWTSK.Missing"])

    def test_bad_counts_owner_schema_and_duplicates_are_rejected(self):
        valid = audit.aggregate_output({"GRWTSK.Live": [declaration()]})
        changes = [valid.replace('"declarations":1', '"declarations":true'),
                   valid.replace('"declarations":1', '"declarations":0'),
                   valid.replace("MATH_TRUST_COUNT::1", "MATH_TRUST_COUNT::0"),
                   valid + "MATH_TRUST_COUNT::1\n",
                   valid.replace('"module":"GRWTSK.Live","declarations":1',
                                 '"module":"GRWTSK.Live","module":"GRWTSK.Live","declarations":1'),
                   valid.replace('"module":"GRWTSK.Live","name"', '"module":"GRWTSK.Other","name"'),
                   valid.replace('"unsafe":false', '"unsafe":0'),
                   valid + 'MATH_TRUST_DECL::{broken}\n',
                   valid + 'MATH_TRUST_VIOLATION::"hostile"\n',
                   valid + 'error(lean.invalidField): failed\n']
        for changed in changes:
            with self.subTest(changed=changed), self.assertRaises(RuntimeError):
                audit.partial_census_records(changed, ["GRWTSK.Live"])
        duplicate = copy.deepcopy(declaration())
        with self.assertRaises(RuntimeError):
            audit.aggregate_output({"GRWTSK.Live": [declaration(), duplicate]})
        duplicate["module"] = "GRWTSK.Other"
        with self.assertRaises(RuntimeError):
            audit.aggregate_output({"GRWTSK.Live": [duplicate]})

    def test_unchanged_policy_still_rejects_hostile_cached_facts(self):
        for field, value in (("unsafe", True), ("partial", True), ("axioms", ["sorryAx"]),
                             ("mathematical_admission", False), ("runtime_helper_owner_source_sha256", "b" * 64)):
            row = declaration()
            row[field] = value
            text = audit.aggregate_output({"GRWTSK.Live": [row]})
            with self.subTest(field=field), self.assertRaises(RuntimeError):
                owned_audit_protocol.validate_census(text, ["GRWTSK.Live"], {"GRWTSK.Live": "a" * 64},
                                                    {}, audit.partial_census_records)


if __name__ == "__main__":
    unittest.main()
