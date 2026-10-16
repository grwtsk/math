"""Bounded hostile controls for the larger-slice replay driver."""
import importlib.util
from pathlib import Path
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[2]
spec = importlib.util.spec_from_file_location("larger_slice_replay",
    ROOT / ".noeaaeue/scripts/check_larger_slice.py")
driver = importlib.util.module_from_spec(spec)
spec.loader.exec_module(driver)


class LargerSliceReplayGuards(unittest.TestCase):
    def test_complete_object_family_custody(self):
        for change in ("unchanged", "replace", "truncate", "delete-main", "replace-private",
                       "delete-private", "add-server", "link-main", "link-private"):
            with self.subTest(change=change), tempfile.TemporaryDirectory() as raw:
                folder = Path(raw)
                main, private = folder / "Selected.olean", folder / "Selected.olean.private"
                main.write_bytes(b"original-main")
                private.write_bytes(b"original-private")
                frozen = {str(main): driver.object_family(main)}
                if change == "replace": main.write_bytes(b"different-main")
                elif change == "truncate": main.write_bytes(b"")
                elif change == "delete-main": main.unlink()
                elif change == "replace-private": private.write_bytes(b"different-private")
                elif change == "delete-private": private.unlink()
                elif change == "add-server": Path(str(main) + ".server").write_bytes(b"server")
                elif change in ("link-main", "link-private"):
                    target = main if change == "link-main" else private
                    other = folder / "same-bytes"
                    other.write_bytes(target.read_bytes())
                    target.unlink()
                    target.symlink_to(other)
                if change == "unchanged": driver.verify_project_objects(frozen)
                else:
                    with self.assertRaises(RuntimeError): driver.verify_project_objects(frozen)

    def test_scope_and_negative_controls_are_explicit(self):
        self.assertEqual(driver.LIBRARY, ["GRWTSK/Analysis/Fourier/ZModLargerSlice.lean"])
        self.assertEqual(len(driver.POSITIVE), 1)
        self.assertEqual(len(driver.NEGATIVE), 2)
        self.assertTrue(all("subsetSumProbability" in terms for _, terms in driver.NEGATIVE))
        text = (ROOT / ".noeaaeue/scripts/check_larger_slice.py").read_text()
        self.assertIn("sha(frozen_bytes[PAPER]) == PAPER_SHA256", text)
        self.assertEqual(driver.PAPER_SHA256, "f2cb2cf8d155cf8940aaa7443db223b43419413bc9cbc5c25f25e453cd33a74b")
        self.assertIn("ACCEPTANCE_DECLARATIONS <=", text)
        self.assertIn("len(errors) == 1", text)
        self.assertIn("validate_census", text)
        self.assertIn("dependency_search_path", text)
        self.assertIn("verify_project_objects", text)


if __name__ == "__main__": unittest.main()
