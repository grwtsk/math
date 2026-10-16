"""Relocation access controls; stored evidence identities are never rewritten."""
import hashlib
from pathlib import Path
import tempfile
import unittest

from repository_paths import relocated_name, repository_path, original_name
import monitor_math


class RelocationPaths(unittest.TestCase):
    def test_process_paths_round_trip_and_mapping_is_idempotent(self):
        for name in ('scripts/check_math_layout.py', 'tests/fixtures/energy/result-contracts.json',
                     'tools/lean/fragments/LeanExpressionAvailability.lean.inc',
                     'checks/MoebiusResponseOwnerAudit.lean', 'cache/refs/current.json',
                     'evidence/source-intake.json', 'examples/taxonomy.json', '.local/receipt.json',
                     'asbn-p04/run.json', 'docs/math-layout.json',
                     'docs/reference/documentation-layout.json',
                     'docs/reference/taxonomy/tree-policy-v1.json', 'docs/how-to/verify.md'):
            with self.subTest(name=name):
                mapped = relocated_name(name)
                self.assertTrue(mapped.startswith('.noeaaeue/'))
                self.assertEqual(relocated_name(mapped), mapped)
                self.assertEqual(original_name(mapped), name)

    def test_mathematical_source_and_documentation_paths_are_exact(self):
        for name in ('GRWTSK.lean', 'GRWTSK/Analysis/Test.lean', 'docs/reference/results.json',
                     'docs/mathematics/Analysis/Test/object.md', 'lean-toolchain', 'lakefile.toml'):
            self.assertEqual(relocated_name(name), name)

    def test_unsafe_paths_are_rejected(self):
        for name in ('', '/tmp/source', '../source', 'evidence/../source', 'evidence//source',
                     '.git/config', 'evidence/./source'):
            with self.subTest(name=name), self.assertRaises(ValueError):relocated_name(name)

    def test_logical_and_physical_reads_preserve_bytes_without_legacy_roots(self):
        with tempfile.TemporaryDirectory() as raw:
            root = Path(raw)
            data = b'{"logical_path":"evidence/old-receipt.json","acceptance":"historical"}\n'
            current = repository_path(root, 'evidence/old-receipt.json')
            current.parent.mkdir(parents=True);current.write_bytes(data)
            for name in ('evidence/old-receipt.json', '.noeaaeue/evidence/old-receipt.json'):
                state, result = monitor_math.read_state(root, name, retain=True)
                self.assertEqual(result, data)
                self.assertEqual(state['sha256'], hashlib.sha256(data).hexdigest())
            self.assertFalse((root/'evidence').exists())
            self.assertEqual(current.read_bytes(), data)

    def test_relocated_reader_keeps_symlink_rejection(self):
        with tempfile.TemporaryDirectory() as raw:
            root = Path(raw);folder = root/'.noeaaeue/evidence';folder.mkdir(parents=True)
            target = root/'outside';target.write_bytes(b'receipt')
            (folder/'receipt.json').symlink_to(target)
            state, result = monitor_math.read_state(root, 'evidence/receipt.json', retain=True)
            self.assertNotEqual(state['kind'], 'file');self.assertIsNone(result)


if __name__ == '__main__':unittest.main()
