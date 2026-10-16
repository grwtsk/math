"""Current native JSON/schema controls; synthetic rows confer no admission."""
import copy
import json
from pathlib import Path
import unittest
from unittest import mock
import hashlib

import check_math_trust as trust
import owned_audit_protocol as protocol


class ProtocolControls(unittest.TestCase):
    def setUp(self):
        self.module = "GRWTSK.Fixture.Exact"
        self.hashes = {self.module: "1" * 64}
        self.row = {"module": self.module, "name": self.module + ".value", "kind": "definition", "type": "Nat",
            "level_params": [], "unsafe": False, "partial": False, "known_generated_runtime_helper": False,
            "mathematical_admission": True, "runtime_helper_parent": None, "runtime_helper_same_owner": False,
            "runtime_helper_type_equal": False, "runtime_helper_level_params_equal": False,
            "runtime_helper_profile_source_sha256": "", "runtime_helper_owner_source_sha256": "1" * 64,
            "direct_type_references_to_runtime_helpers": [], "direct_value_references_to_runtime_helpers": [],
            "direct_value_reference_to_runtime_helper": False, "axioms": []}

    def census(self, row):
        return ("MATH_TRUST_MODULE::" + json.dumps({"module": self.module, "declarations": 1}) +
            "\nMATH_TRUST_DECL::" + json.dumps(row) + "\nMATH_TRUST_COUNT::1\nMATH_TRUST_MODULE_COUNT::1\n")

    def test_wrapper_passes_json_of_exact_observed_sources(self):
        source = (Path(__file__).resolve().parents[2] / trust.AUDIT).read_bytes()
        body, profile = protocol.wrapper_body(source, "native-fixtures", self.hashes)
        argument = next(line for line in body.splitlines() if line.startswith("#audit_math_trust ")).removeprefix("#audit_math_trust ")
        self.assertEqual(json.loads(json.loads(argument)), {"scope": "native-fixtures", "sources": self.hashes})
        self.assertEqual(profile["sources"], self.hashes)
        self.assertTrue(protocol.runtime_profiles(source, "project"))

    def test_current_schema_source_binding_and_standard_axioms_accept(self):
        rows, _ = protocol.validate_census(self.census(self.row), [self.module], self.hashes, {}, trust.census_records)
        self.assertEqual(rows[0], self.row)

    def test_tampered_flags_axioms_refs_and_source_hash_fail_closed(self):
        mutations = [{"unsafe": True}, {"partial": True}, {"axioms": ["sorryAx"]},
            {"axioms": ["Custom.fabricated"]}, {"runtime_helper_owner_source_sha256": "2" * 64},
            {"mathematical_admission": False}, {"unsafe": 0}, {"known_generated_runtime_helper": True},
            {"direct_type_references_to_runtime_helpers": ["GRWTSK.Unknown._unsafe_rec"]}]
        for change in mutations:
            with self.subTest(change=change):
                row = dict(self.row, **change)
                with self.assertRaises(RuntimeError):
                    protocol.validate_census(self.census(row), [self.module], self.hashes, {}, trust.census_records)

    def test_current_source_never_inherits_a_stale_runtime_pin(self):
        profile = {"helper": self.module + ".value._unsafe_rec", "owner": self.module,
            "parent": self.module + ".value", "sha256": "0" * 64}
        with self.assertRaisesRegex(RuntimeError, "stale curated runtime source pin"):
            protocol.validate_census(self.census(self.row), [self.module], self.hashes,
                {profile["helper"]: profile}, trust.census_records)

    def test_qualified_descriptor_injection_is_exact_and_does_not_write_formal_source(self):
        root = Path(__file__).resolve().parents[2]
        source = (root / trust.AUDIT).read_bytes()
        metadata = json.loads((root / ".noeaaeue/bindings/moebius-current-profile-v2.json").read_bytes())
        profiles = {row["helper"]: {"owner": row["owner"], "helper": row["helper"],
            "parent": row["original"], "sha256": row["owner_source_sha256"]} for row in metadata["entries"]}
        configured = protocol.configure_project_table(source, profiles)
        self.assertEqual(protocol.runtime_profiles(configured, "project"), profiles)
        self.assertEqual((root / trust.AUDIT).read_bytes(), source)
        for change in ("missing", "extra", "owner"):
            altered = copy.deepcopy(profiles)
            if change == "missing":
                altered.pop(next(iter(altered)))
            elif change == "extra":
                altered["GRWTSK.Forged.extra._unsafe_rec"] = next(iter(altered.values()))
            else:
                altered[next(iter(altered))]["owner"] = "GRWTSK.ForgedOwner"
            with self.subTest(change=change), self.assertRaises(RuntimeError):
                protocol.configure_project_table(source, altered)

    def test_qualification_tampering_unqualified_status_and_stale_current_owner_reject(self):
        root = Path(__file__).resolve().parents[2]
        reference_bytes = (root / protocol.QUALIFICATION).read_bytes()
        reference = json.loads(reference_bytes)
        hashes = reference["source_hashes"]
        def changed_reader(target):
            def read(directory, name):
                raw = trust.read_source(directory, name)
                return raw + b"\nchanged" if name == target else raw
            return read
        for target in (protocol.QUALIFICATION, reference["profile_metadata"], reference["helper_path"]):
            with self.subTest(target=target), self.assertRaisesRegex(RuntimeError, "hash mismatch"):
                protocol.qualified_project_profile(root, changed_reader(target), hashes)
        unqualified = dict(reference, status="OBSERVED_NOT_YET_QUALIFIED", kernel_checked=False)
        raw = json.dumps(unqualified).encode()
        with mock.patch.object(protocol, "QUALIFICATION_SHA256", hashlib.sha256(raw).hexdigest()):
            with self.assertRaisesRegex(RuntimeError, "lacks its exact scoped native qualification"):
                protocol.qualified_project_profile(root,
                    lambda directory, name: raw if name == protocol.QUALIFICATION else trust.read_source(directory, name), hashes)
        altered_hashes = dict(hashes)
        owner = next(iter(json.loads((root / reference["profile_metadata"]).read_bytes())["entries"]))["owner"]
        altered_hashes[owner] = "0" * 64
        with self.assertRaisesRegex(RuntimeError, "current frozen owner"):
            protocol.qualified_project_profile(root, trust.read_source, altered_hashes)


if __name__ == "__main__":
    unittest.main()
