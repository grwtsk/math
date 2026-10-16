"""Hostile current-role/readset controls; never starts Lean or changes Git."""
import copy
import hashlib
import json
from pathlib import Path
import tempfile
import unittest

import check_math_layout as layout
import source_observations as observations
import generate_math_source_catalog as generator


class ObservationControls(unittest.TestCase):
    def setUp(self):
        self.directory = tempfile.TemporaryDirectory(prefix="source-observation-controls-", dir="/private/tmp")
        self.addCleanup(self.directory.cleanup)
        self.root = Path(self.directory.name)
        self.sources = {
            "GRWTSK.lean": "import GRWTSK.Analysis.Exported\n",
            "GRWTSK/Analysis/Exported.lean": "def exportedValue : Nat := 1\n",
            "GRWTSK/Analysis/Pending.lean": "def pendingValue : Nat := 2\n",
            "GRWTSK/Analysis/Checks/Positive/Pending.lean": "import GRWTSK.Analysis.Pending\nexample : True := True.intro\n",
            "GRWTSK/Analysis/HistoricalCandidate.lean": "def candidateValue : Nat := 3\n",
        }
        for name, text in self.sources.items():
            self.write(name, text)
        self.write(observations.INTAKE, json.dumps({"schema": "mathematical-source-intake-v1",
            "status": "CANDIDATE_SOURCE_INTAKE_NOT_THEOREM_ACCEPTANCE", "source_count": 1,
            "sources": [{"path": "GRWTSK/Analysis/HistoricalCandidate.lean", "sha256": "0" * 64,
                "bytes": 1, "status": "CANDIDATE_SOURCE_ONLY", "mathematical_admission": False,
                "public_release_eligible": False}]}))
        self.write(observations.CATALOG, json.dumps({"active_sources": [
            {"path": name, "sha256": "0" * 64, "source_role": layout.source_role(name), "target_path": name,
             "runner": "historical-unreplayed"} for name in self.sources if "HistoricalCandidate" not in name],
            "candidate_sources": []}))
        self.write(observations.POLICY, json.dumps({"required_directories": ["", "Analysis", "Analysis/Future"],
            "source_role_overrides": {"GRWTSK/Analysis/Exported.lean": "axiom-accepted"},
            "mathematical_acceptance": True}))
        self.document = self.create()
        self.save(self.document)

    def write(self, name, text):
        path = self.root / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(text)

    def create(self):
        return observations.create(self.root, layout.read_regular, self.sources, layout.source_role, layout.imports)

    def save(self, document):
        self.write(observations.PATH, json.dumps(document))

    def load(self):
        return observations.load(self.root, layout.read_regular, self.sources, layout.source_role, layout.imports)

    def rebound(self, change):
        document = copy.deepcopy(self.document)
        change(document)
        document.pop("identity")
        document["identity"] = observations.digest(observations.encoded(document))
        self.save(document)

    def test_current_observation_keeps_historical_candidate_and_hash_staleness_explicit(self):
        current = self.load()["observation"]
        rows = {row["path"]: row for row in current["sources"]}
        candidate = rows["GRWTSK/Analysis/HistoricalCandidate.lean"]
        self.assertEqual(candidate["source_set"], "candidate-evidence")
        self.assertEqual(candidate["historical_intake_binding"]["sha256"], "0" * 64)
        self.assertNotEqual(candidate["sha256"], "0" * 64)
        self.assertFalse(candidate["mathematical_admission"])
        self.assertTrue(any(row["code"] == "historical-intake-source-hash-stale" for row in current["historical_findings"]))
        self.assertEqual(rows["GRWTSK/Analysis/Pending.lean"]["source_set"], "candidate-evidence")
        self.assertEqual(rows["GRWTSK/Analysis/Checks/Positive/Pending.lean"]["source_set"], "candidate-evidence")

    def test_pending_proposal_cannot_supply_roles_or_admission_and_validation_creates_no_directories(self):
        before = sorted(str(p.relative_to(self.root)) for p in self.root.rglob("*"))
        current = self.load()["observation"]
        self.assertEqual(current["sources"][1]["source_role"], "positive-check")
        self.assertFalse(current["pending_taxonomy_proposal"]["source_role_overrides_allowed"])
        self.assertFalse(current["pending_taxonomy_proposal"]["mathematical_admission"])
        self.assertEqual(before, sorted(str(p.relative_to(self.root)) for p in self.root.rglob("*")))
        self.assertFalse((self.root / "GRWTSK/Analysis/Future").exists())

    def test_identity_tampering_rejected(self):
        document = copy.deepcopy(self.document)
        document["mathematical_admission"] = True
        self.save(document)
        with self.assertRaisesRegex(RuntimeError, "identity mismatch"):
            self.load()

    def test_rebound_omission_reclassification_and_admission_rejected(self):
        mutations = [lambda d: d["observation"]["sources"].pop(),
            lambda d: d["observation"]["sources"][0].update(source_set="candidate-evidence"),
            lambda d: d.update(mathematical_admission=True),
            lambda d: d["observation"]["sources"][0].update(source_role="negative-control")]
        for mutation in mutations:
            with self.subTest(mutation=mutation):
                self.rebound(mutation)
                with self.assertRaises(RuntimeError):
                    self.load()

    def test_entry_source_and_historical_policy_drift_rejected(self):
        for name in ("GRWTSK.lean", "GRWTSK/Analysis/Exported.lean", observations.POLICY, observations.INTAKE):
            with self.subTest(name=name):
                path = self.root / name
                original = path.read_bytes()
                path.write_bytes(original + b"\n")
                with self.assertRaises(RuntimeError):
                    self.load()
                path.write_bytes(original)

    def test_active_candidate_import_cannot_be_hidden_even_by_explicit_reobservation(self):
        self.write("GRWTSK/Analysis/Exported.lean", "import GRWTSK.Analysis.HistoricalCandidate\ndef exportedValue : Nat := 1\n")
        with self.assertRaisesRegex(RuntimeError, "entrypoint imports candidate-only"):
            self.create()

    def test_current_path_role_cycle_and_import_checks_remain_fatal(self):
        self.sources["GRWTSK/Research/Bad.lean"] = "import GRWTSK.Research.Bad\n"
        self.write("GRWTSK/Research/Bad.lean", self.sources["GRWTSK/Research/Bad.lean"])
        self.save(self.create())
        report = layout.check_paths(self.root, self.sources, enforce_source_sets=True)
        codes = {row["code"] for row in report["findings"]}
        self.assertIn("cyclic-local-import", codes)
        self.assertTrue({"unknown-subject-root", "forbidden-layout-name"} <= codes)
        self.assertEqual(report["status"], "FAIL")

    def test_current_catalog_projection_preserves_every_historical_source_record(self):
        historical = json.loads((Path(__file__).resolve().parents[2] /
            ".noeaaeue/documentation/math-layout.json").read_text())
        before = copy.deepcopy(historical)
        result = generator.catalog(historical, current=self.document)
        self.assertEqual(historical, before)
        self.assertEqual(result["sources"], before["active_sources"])
        self.assertEqual(result["candidate_sources"], before["candidate_sources"])
        current = result["current_source_observations"]
        self.assertEqual(current["source_count"], len(self.sources))
        self.assertFalse(current["mathematical_admission"])
        self.assertTrue(all(row["proof_status"] == "not-replayed" and
            row["mathematical_admission"] is False for row in current["sources"]))


if __name__ == "__main__":
    unittest.main()
