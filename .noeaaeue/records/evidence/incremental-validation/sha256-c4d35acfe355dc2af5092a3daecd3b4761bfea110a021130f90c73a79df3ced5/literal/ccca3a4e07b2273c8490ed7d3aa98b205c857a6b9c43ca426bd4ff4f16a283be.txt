"""Actual CLI race controls for the inspected Lean/input boundary; no Lean runs."""
import contextlib
import hashlib
import io
import json
from pathlib import Path
import subprocess
import tempfile
import unittest
from unittest import mock

import check_math_layout as layout


class InspectionGuardControls(unittest.TestCase):
    def exercise(self, mutation, prepare=None):
        with tempfile.TemporaryDirectory(prefix="layout-inspection-controls-", dir="/private/tmp") as name:
            root = Path(name)
            subprocess.run(["git", "init", "-q", str(root)], check=True, capture_output=True)
            (root / ".gitignore").write_text("")
            (root / "GRWTSK.lean").write_text("import Mathlib\n")
            if prepare:
                prepare(root)
            original = layout.check_paths
            def inspect_then_mutate(*args, **kwargs):
                report = original(*args, **kwargs)
                self.assertEqual(report["findings"], [])
                mutation(root)
                return report
            stream = io.StringIO()
            with mock.patch.object(layout, "check_paths", side_effect=inspect_then_mutate):
                with contextlib.redirect_stdout(stream):
                    status = layout.main(["--root", str(root), "--json"])
            return status, json.loads(stream.getvalue())

    @staticmethod
    def write(root, name, text):
        path = root / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(text)

    def test_new_receipts_logs_and_process_copies_are_not_mathematical_inputs(self):
        def mutate(root):
            self.write(root, ".noeaaeue/evidence/new-receipt.json", "{}\n")
            self.write(root, ".noeaaeue/validation/new.log", "finished\n")
            self.write(root, ".noeaaeue/checks/FreshOperationalFixture.lean", "example : True := True.intro\n")
            self.write(root, "docs/mathematics/new-navigation.md", "# Navigation\n")
        status, report = self.exercise(mutate)
        self.assertEqual((status, report["status"], report["findings"]), (0, "PASS", []))

    def test_new_deleted_ignored_and_newly_exposed_lean_membership_remains_fatal(self):
        def hidden(root):
            self.write(root, "GRWTSK/Analysis/Hidden.lean", "def hiddenValue : Nat := 1\n")
            (root / ".gitignore").write_text("GRWTSK/Analysis/Hidden.lean\n")
        cases = [
            (lambda r: self.write(r, "GRWTSK/Analysis/New.lean", "def value : Nat := 1\n"), None),
            (lambda r: (r / "GRWTSK.lean").unlink(), None),
            (lambda r: (r / ".gitignore").write_text("GRWTSK.lean\n"), None),
            (lambda r: (r / ".gitignore").write_text(""), hidden),
        ]
        for mutation, prepare in cases:
            with self.subTest(mutation=mutation):
                status, report = self.exercise(mutation, prepare)
                self.assertEqual(status, 1)
                self.assertIn("inventory-changed", {row["code"] for row in report["findings"]})

    def test_tracked_regular_mode_change_is_not_hidden_by_unchanged_name(self):
        def prepare(root):
            subprocess.run(["git", "-C", str(root), "add", "GRWTSK.lean"], check=True, capture_output=True)
        def mutate(root):
            subprocess.run(["git", "-C", str(root), "update-index", "--cacheinfo",
                "120000,0000000000000000000000000000000000000001,GRWTSK.lean"],
                check=True, capture_output=True)
        status, report = self.exercise(mutate, prepare)
        self.assertEqual(status, 1)
        self.assertIn("inventory-changed", {row["code"] for row in report["findings"]})

    def test_deleted_tracked_source_reappearance_is_not_hidden_by_unchanged_index(self):
        name = "GRWTSK/Analysis/Deleted.lean"
        def prepare(root):
            self.write(root, name, "def deletedValue : Nat := 1\n")
            subprocess.run(["git", "-C", str(root), "add", name], check=True, capture_output=True)
            (root / name).unlink()
        status, report = self.exercise(lambda r: self.write(r, name, "def deletedValue : Nat := 1\n"), prepare)
        self.assertEqual(status, 1)
        self.assertIn("deleted-source-reappeared", {row["code"] for row in report["findings"]})

    def test_same_name_byte_change_or_symlink_substitution_remains_fatal(self):
        def symlink(root):
            self.write(root, "same-bytes.txt", "import Mathlib\n")
            (root / "GRWTSK.lean").unlink()
            (root / "GRWTSK.lean").symlink_to("same-bytes.txt")
        for mutation in (lambda r: (r / "GRWTSK.lean").write_text("import Mathlib\n-- edited\n"), symlink):
            with self.subTest(mutation=mutation):
                status, report = self.exercise(mutation)
                self.assertEqual(status, 1)
                self.assertIn("inspected-source-changed", {row["code"] for row in report["findings"]})

    def test_bound_role_metadata_appearance_or_mutation_remains_fatal(self):
        name = layout.CANDIDATE_INTAKE
        def catalog(root):
            self.write(root, ".noeaaeue/documentation/math-layout.json", json.dumps({
                "active_sources": [{"path": "GRWTSK.lean", "target_path": "GRWTSK.lean",
                    "source_role": "library", "sha256": hashlib.sha256((root / "GRWTSK.lean").read_bytes()).hexdigest()}]}))
        cases = [(name, None), (".gitattributes", lambda r: self.write(r, ".gitattributes", "* text=auto\n")),
                 (".noeaaeue/documentation/math-layout.json", catalog)]
        for target, prepare in cases:
            with self.subTest(target=target):
                status, report = self.exercise(lambda r: self.write(r, target, "changed\n"), prepare)
                self.assertEqual(status, 1)
                self.assertIn("inspection-input-changed", {row["code"] for row in report["findings"]})


if __name__ == "__main__":
    unittest.main()
