"""Filesystem tamper controls for the one-off compiled-object lineage guard."""
from pathlib import Path
import tempfile
import unittest

import continue_math_trust as continuation


class ObjectLineageControls(unittest.TestCase):
    def setUp(self):
        self.directory = tempfile.TemporaryDirectory(prefix="continuation-controls-", dir="/private/tmp")
        self.addCleanup(self.directory.cleanup)
        self.build = Path(self.directory.name)
        (self.build / "GRWTSK").mkdir()
        (self.build / "GRWTSK/Existing.olean").write_bytes(b"observed compiler object")
        self.expected = continuation.object_hashes(self.build)

    def test_exact_observed_objects_pass_without_writes(self):
        before = sorted((p.relative_to(self.build).as_posix(), p.read_bytes())
            for p in self.build.rglob("*") if p.is_file())
        continuation.verify_objects(self.build, self.expected)
        after = sorted((p.relative_to(self.build).as_posix(), p.read_bytes())
            for p in self.build.rglob("*") if p.is_file())
        self.assertEqual(before, after)

    def test_object_byte_or_membership_changes_are_fatal(self):
        original = self.build / "GRWTSK/Existing.olean"
        original.write_bytes(b"changed object")
        with self.assertRaisesRegex(RuntimeError, "object bytes or membership drift"):
            continuation.verify_objects(self.build, self.expected)
        original.unlink()
        with self.assertRaisesRegex(RuntimeError, "object bytes or membership drift"):
            continuation.verify_objects(self.build, self.expected)
        original.write_bytes(b"observed compiler object")
        (self.build / "GRWTSK/Unexpected.olean").write_bytes(b"unrecorded object")
        with self.assertRaisesRegex(RuntimeError, "object bytes or membership drift"):
            continuation.verify_objects(self.build, self.expected)

    def test_symlink_and_non_object_injection_are_fatal(self):
        original = self.build / "GRWTSK/Existing.olean"
        original.unlink()
        original.symlink_to("/private/tmp/missing-continuation-object")
        with self.assertRaisesRegex(RuntimeError, "symlink"):
            continuation.verify_objects(self.build, self.expected)
        original.unlink()
        original.write_bytes(b"observed compiler object")
        (self.build / "injected.txt").write_text("unrecorded payload")
        with self.assertRaisesRegex(RuntimeError, "unexpected file"):
            continuation.verify_objects(self.build, self.expected)

    def test_failed_receipt_retry_and_producer_log_bytes_are_bound(self):
        producer = self.build / "producer"
        producer.mkdir()
        failure = b'{"status":"FAILED"}\n'
        probe = b'{"status":"FROZEN_RESOURCE_RETRY_PASSED"}\n'
        log = b"completed native compilation\n"
        (producer / "failure.json").write_bytes(failure)
        (self.build / "probe.json").write_bytes(probe)
        (producer / "source.log").write_bytes(log)
        hashes = {"source.log": continuation.sha(log)}
        def verify():
            continuation.verify_lineage_evidence(producer, failure, self.build, "probe.json", probe, hashes)
        verify()
        for target in (producer / "failure.json", self.build / "probe.json", producer / "source.log"):
            with self.subTest(target=target):
                raw = target.read_bytes()
                target.write_bytes(raw + b"tampered")
                with self.assertRaises(RuntimeError):
                    verify()
                target.write_bytes(raw)
        verify()


if __name__ == "__main__":
    unittest.main()
