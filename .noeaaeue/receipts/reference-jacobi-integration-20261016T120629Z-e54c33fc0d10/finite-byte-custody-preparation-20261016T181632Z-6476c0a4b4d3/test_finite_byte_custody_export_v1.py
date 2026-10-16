#!/usr/bin/env python3
"""Owned external filesystem fixtures only; no actual evidence export/native."""
import builtins
from contextlib import ExitStack
import hashlib
import importlib.util
import json
import os
from pathlib import Path
import signal
import subprocess
import sys
import tempfile
import time
import unittest
from unittest.mock import patch

sys.dont_write_bytecode = True
HERE = Path(__file__).absolute()
HELPER = HERE.with_name('finite_byte_custody_export_v1.py')
HELPER_RAW = HELPER.read_bytes()
TEST_RAW = HERE.read_bytes()
SOURCE_BEFORE = {str(p): {'sha256': hashlib.sha256(b).hexdigest(), 'bytes': len(b)}
                 for p, b in ((HELPER, HELPER_RAW), (HERE, TEST_RAW))}
BLOCKED = []


def forbidden(*args, **kwargs):
    BLOCKED.append('forbidden process/import route')
    raise RuntimeError('pure fixtures forbid processes, signals and project imports')


def load_helper():
    name = 'owned_finite_custody_fixture_helper'
    spec = importlib.util.spec_from_file_location(name, HELPER)
    module = importlib.util.module_from_spec(spec)
    sys.modules[name] = module
    exec(compile(HELPER_RAW, str(HELPER), 'exec'), vars(module))
    return module


class Fixtures(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory(prefix='finite-byte-custody-fixture-')
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name).resolve()
        self.h = load_helper()
        self.parent = self.root / '.noeaaeue/receipts'
        self.parent.mkdir(parents=True)
        self.own = self.put('helper.py', HELPER_RAW)
        self.approval = self.put('approval.json', b'{"scope":"fixture-only"}\n')
        self.first = self.put('run/first.json', b'{"attempt_id":"ORIGINAL-ID","path":"/original/.local/x"}\n')
        self.second = self.put('run/second.json', self.first.read_bytes())
        self.request_path = self.root / 'request.json'
        self.destination = self.parent / 'new-custody'
        self.policy = self.h.Policy(self.root, self.h.FIXED_EXCLUSIONS)
        real_parent = self.h.parent_fd
        def fixture_parent(path):
            if not Path(path).is_relative_to(self.root):
                raise AssertionError('fixture attempted filesystem observation outside its own root')
            return real_parent(path)
        self.h.parent_fd = fixture_parent

    def put(self, name, raw):
        path = self.root / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_bytes(raw)
        return path

    def identity(self, path):
        raw = path.read_bytes()
        return {'path': str(path), 'sha256': self.h.sha(raw), 'bytes': len(raw)}

    def row(self, path, retention='new-exact-copy'):
        identity = self.identity(path)
        return {'original': path.relative_to(self.root).as_posix(),
                'original_absolute': str(path), 'sha256': identity['sha256'], 'bytes': identity['bytes'],
                'context': 'historical-only', 'role': 'receipt', 'origin_attempt_id': 'ORIGINAL-ID',
                'retention': retention}

    def value(self, rows=None):
        return {'schema': 'finite-raw-byte-custody-request-v1', 'scope': 'raw-byte-custody-only',
                'root': str(self.root), 'destination': str(self.destination),
                'exporter': self.identity(self.own), 'approval': self.identity(self.approval),
                'files': [self.row(self.first), self.row(self.second)] if rows is None else rows}

    def freeze(self, value=None, raw=None):
        if raw is None:
            raw = self.h.encoded(self.value() if value is None else value)
        self.request_path.write_bytes(raw)
        return self.h.sha(raw)

    def export(self, value=None):
        digest = self.freeze(value)
        return self.h.export_request(self.request_path, digest, policy=self.policy, own_path=self.own)

    def rejected(self, value, message=None):
        with self.assertRaises((self.h.CustodyError, OSError, ValueError)) as raised:
            self.export(value)
        if message:
            self.assertIn(message, str(raised.exception))
        self.assertFalse(self.destination.exists())

    def test_01_complete_raw_dedup_reference_and_original_metadata(self):
        durable = self.put('.noeaaeue/evidence/existing.json', b'ALREADY DURABLE\n')
        original = self.first.read_bytes()
        value = self.value([self.row(self.first), self.row(self.second),
                            self.row(durable, 'already-durable-reference')])
        result = self.export(value)
        manifest_raw = Path(result['manifest']['path']).read_bytes()
        self.assertEqual(self.h.sha(manifest_raw), result['manifest']['sha256'])
        manifest = json.loads(manifest_raw)
        self.assertEqual(manifest['unique_new_objects'], 1)
        self.assertEqual(len(manifest['copies']), 3)
        self.assertEqual(manifest['copies'][0]['copy'], manifest['copies'][1]['copy'])
        self.assertEqual(Path(manifest['copies'][0]['copy']).read_bytes(), original)
        self.assertEqual(manifest['copies'][2]['copy'], str(durable))
        self.assertEqual(manifest['copies'][0]['origin_attempt_id'], 'ORIGINAL-ID')
        self.assertEqual(manifest['copies'][0]['original'], 'run/first.json')
        self.assertFalse(manifest['mathematical_acceptance'])
        self.assertEqual(manifest['native_jobs'], 0)
        self.assertIn('not Git inclusion', '\n'.join(manifest['limits']))
        self.assertEqual(manifest['status'], 'PREPARED_RAW_BYTE_INVENTORY_NOT_COMPLETION')
        completion = json.loads(Path(result['completion']['path']).read_bytes())
        self.assertEqual(completion['manifest'], result['manifest'])
        self.assertIn('CLI_SUCCESS_REQUIRED', completion['status'])
        self.assertFalse((self.destination / 'failure.json').exists())
        self.assertEqual(self.first.read_bytes(), original)
        self.assertEqual((self.destination / 'request.json.txt').read_bytes(), self.request_path.read_bytes())

    def test_02_binary_and_empty_raw_bytes_preserved(self):
        binary = self.put('run/log.txt', b'\x00\xff\x80\nRAW')
        empty = self.put('run/empty.txt', b'')
        result = self.export(self.value([self.row(binary), self.row(empty)]))
        rows = json.loads(Path(result['manifest']['path']).read_bytes())['copies']
        self.assertEqual([Path(row['copy']).read_bytes() for row in rows], [binary.read_bytes(), b''])

    def test_03_stale_hash_before_any_destination(self):
        value = self.value(); value['files'][0]['sha256'] = '0' * 64
        self.rejected(value, 'stale file')

    def test_04_stale_size_before_any_destination(self):
        value = self.value(); value['files'][0]['bytes'] += 1
        self.rejected(value, 'stale file')

    def test_05_boolean_and_overlimit_sizes_rejected(self):
        for size in (True, False, -1, self.h.MAX_BYTES + 1, 1.0):
            with self.subTest(size=size):
                value = self.value(); value['files'][0]['bytes'] = size
                self.rejected(value)

    def test_06_closed_request_and_row_schemas(self):
        for kind in ('request-extra', 'request-missing', 'row-extra', 'row-missing'):
            with self.subTest(kind=kind):
                value = self.value()
                if kind == 'request-extra': value['approved'] = True
                if kind == 'request-missing': del value['scope']
                if kind == 'row-extra': value['files'][0]['glob'] = '**/*'
                if kind == 'row-missing': del value['files'][0]['sha256']
                self.rejected(value)

    def test_07_duplicate_occurrence_rejected(self):
        self.rejected(self.value([self.row(self.first), self.row(self.first)]), 'duplicate')

    def test_08_relative_absolute_alias_duplicate_rejected(self):
        a, b = self.row(self.first), self.row(self.first)
        b['original'] = str(self.first)
        self.rejected(self.value([a, b]), 'duplicate')

    def test_09_traversal_and_noncanonical_paths_rejected(self):
        for original in ('run/../run/first.json', 'run//first.json', './run/first.json',
                         'run\\first.json', str(self.root) + '//run/first.json'):
            with self.subTest(original=original):
                value = self.value(); value['files'][0]['original'] = original
                self.rejected(value)

    def test_10_original_path_mapping_mismatch_rejected(self):
        value = self.value(); value['files'][0]['original'] = 'run/other.json'
        self.rejected(value, 'mapping mismatch')

    def test_11_external_source_and_destination_rejected(self):
        value = self.value(); value['destination'] = str(self.root / 'wrong-destination')
        self.rejected(value, 'outside')
        value = self.value(); value['files'][0]['original'] = '/other/unowned.json'
        value['files'][0]['original_absolute'] = '/other/unowned.json'
        self.rejected(value, 'outside')

    def test_12_excluded_created_occurrence_has_no_hash_token(self):
        self.policy = self.h.Policy(self.root, frozenset(('run/first.json',)))
        self.rejected(self.value(), 'excluded APP-WSC')

    def test_13_build_bulk_bytecode_and_fixed_paths_rejected(self):
        names = ('.lake/object.txt', '.git/HEAD', '.noeaaeue/cache/objects/x.txt',
                 '.noeaaeue/records/foreign.txt', '.noeaaeue/spec/foreign.txt',
                 '.noeaaeue/interfaces/foreign.txt', 'run/__pycache__/x.txt',
                 '.noeaaeue/.local/incremental-lean/artifacts/x.txt',
                 *self.h.FIXED_EXCLUSIONS,
                 *(f'run/file{suffix}' for suffix in ('.pyc', '.pyo', '.olean', '.ilean',
                                                     '.o', '.obj', '.a', '.so', '.dll', '.dylib', '.c',
                                                     '.olean.private', '.olean.server', '.olean.txt', '.pyc.txt',
                                                     '.ir', '.ir.sig', '.ir.txt', '.o.txt', '.dylib.txt', '.a.txt')))
        for name in names:
            with self.subTest(name=name):
                path = self.put(name, b'EXCLUDED')
                self.rejected(self.value([self.row(path)]))

    def test_14_specific_terminal_cache_record_allowed(self):
        path = self.put('.noeaaeue/.local/incremental-lean/origins/id/proof-validation-origin.json', b'RAW-ORIGIN')
        self.assertTrue(Path(self.export(self.value([self.row(path)]))['manifest']['path']).exists())

    def test_15_scratch_cannot_be_declared_already_durable(self):
        path = self.put('.noeaaeue/.local/run/receipt.json', b'RAW')
        self.rejected(self.value([self.row(path, 'already-durable-reference')]), 'scratch')

    def test_16_leaf_symlink_rejected(self):
        value = self.value()
        self.first.unlink(); self.first.symlink_to(self.second)
        self.rejected(value)

    def test_17_parent_symlink_rejected(self):
        value = self.value()
        parent = self.first.parent; moved = self.root / 'moved'
        parent.rename(moved); parent.symlink_to(moved, target_is_directory=True)
        self.rejected(value)

    def test_18_directory_and_fifo_rejected_without_stream_read(self):
        value = self.value(); self.first.unlink(); self.first.mkdir()
        self.rejected(value)
        self.first.rmdir(); os.mkfifo(self.first)
        self.rejected(value)

    def test_19_stat_to_fifo_race_uses_nonblock_and_refuses(self):
        raw_open = os.open
        swapped = []
        def raced(name, flags, *args, **kwargs):
            if name == self.first.name and 'dir_fd' in kwargs and not swapped:
                self.assertTrue(flags & os.O_NONBLOCK)
                self.first.unlink(); os.mkfifo(self.first); swapped.append(True)
            return raw_open(name, flags, *args, **kwargs)
        started = time.monotonic()
        with patch.object(os, 'open', raced):
            with self.assertRaises(self.h.CustodyError):
                self.h.safe_read(self.first)
        self.assertEqual(swapped, [True])
        self.assertLess(time.monotonic() - started, 1.0)

    def test_20_oversize_sparse_file_rejected_before_leaf_open(self):
        path = self.put('run/oversize.txt', b'')
        with path.open('r+b') as stream: stream.truncate(self.h.MAX_BYTES + 1)
        real_open = os.open
        def watched(name, flags, *args, **kwargs):
            if name == path.name: raise AssertionError('oversized leaf must not be opened')
            return real_open(name, flags, *args, **kwargs)
        with patch.object(os, 'open', watched):
            with self.assertRaisesRegex(self.h.CustodyError, 'overlimit'):
                self.h.safe_read(path)

    def test_21_parent_path_swap_rejected(self):
        real_parent = self.h.parent_fd
        calls = []
        def raced(path):
            if Path(path) == self.first:
                calls.append(1)
                if len(calls) == 2:
                    self.first.parent.rename(self.root / 'old-run')
                    self.first.parent.mkdir()
                    self.first.write_bytes((self.root / 'old-run/first.json').read_bytes())
            return real_parent(path)
        self.h.parent_fd = raced
        with self.assertRaisesRegex(self.h.CustodyError, 'parent path drift'):
            self.h.safe_read(self.first)

    def test_22_existing_destination_untouched(self):
        self.destination.mkdir(); marker = self.destination / 'keep.txt'; marker.write_bytes(b'KEEP')
        with self.assertRaises(self.h.CustodyError): self.export()
        self.assertEqual(marker.read_bytes(), b'KEEP')
        self.assertEqual(list(self.destination.iterdir()), [marker])

    def test_23_source_mutation_retains_partial_failure(self):
        real_write = self.h.write_raw_new
        def changed(path, raw):
            result = real_write(path, raw)
            if Path(path).parent.name == 'sha256': self.first.write_bytes(b'CHANGED')
            return result
        self.h.write_raw_new = changed
        with self.assertRaises(self.h.CustodyError): self.export()
        self.assertTrue(any((self.destination / 'sha256').iterdir()))
        self.assertEqual(json.loads((self.destination / 'failure.json').read_bytes())['status'], 'FAILED_INCOMPLETE')
        self.assertFalse((self.destination / 'manifest.json').exists())

    def test_24_equal_byte_source_inode_swap_detected(self):
        real_write = self.h.write_raw_new; replaced = []
        def changed(path, raw):
            result = real_write(path, raw)
            if Path(path).name == 'request.json.txt' and not replaced:
                original = self.first.read_bytes(); self.first.unlink(); self.first.write_bytes(original)
                replaced.append(True)
            return result
        self.h.write_raw_new = changed
        with self.assertRaisesRegex(self.h.CustodyError, 'source drift before copy'): self.export()
        self.assertTrue((self.destination / 'failure.json').exists())

    def test_25_digest_collision_requires_actual_byte_equality(self):
        self.first.write_bytes(b'AAAA'); self.second.write_bytes(b'BBBB')
        real_sha = self.h.sha
        self.h.sha = lambda raw: '7' * 64 if raw in (b'AAAA', b'BBBB') else real_sha(raw)
        with self.assertRaisesRegex(self.h.CustodyError, 'collision'): self.export()
        self.assertTrue((self.destination / 'failure.json').exists())

    def test_26_changed_approval_blocks_completion(self):
        real_write = self.h.write_raw_new
        def changed(path, raw):
            result = real_write(path, raw)
            if Path(path).parent.name == 'sha256': self.approval.write_bytes(b'CHANGED')
            return result
        self.h.write_raw_new = changed
        with self.assertRaises(self.h.CustodyError): self.export()
        self.assertTrue((self.destination / 'failure.json').exists())

    def test_27_changed_request_blocks_completion(self):
        real_write = self.h.write_raw_new
        def changed(path, raw):
            result = real_write(path, raw)
            if Path(path).parent.name == 'sha256': self.request_path.write_bytes(b'CHANGED')
            return result
        self.h.write_raw_new = changed
        with self.assertRaises(self.h.CustodyError): self.export()
        self.assertTrue((self.destination / 'failure.json').exists())

    def test_28_late_copy_change_overrides_complete_manifest_with_failure(self):
        real_write = self.h.write_raw_new
        def changed(path, raw):
            result = real_write(path, raw)
            if Path(path).name == 'manifest.json':
                copy = next((self.destination / 'sha256').iterdir())
                copy.chmod(0o600); copy.write_bytes(b'LATE CHANGE')
            return result
        self.h.write_raw_new = changed
        with self.assertRaises(self.h.CustodyError): self.export()
        self.assertTrue((self.destination / 'manifest.json').exists())
        self.assertFalse((self.destination / 'completion.json').exists())
        failure = json.loads((self.destination / 'failure.json').read_bytes())
        self.assertEqual(failure['status'], 'FAILED_INCOMPLETE')

    def test_29_duplicate_json_keys_and_nan_rejected(self):
        for raw in (b'{"schema":1,"schema":2}', b'{"schema":NaN}'):
            digest = self.freeze(raw=raw)
            with self.assertRaises((self.h.CustodyError, ValueError)):
                self.h.export_request(self.request_path, digest, policy=self.policy, own_path=self.own)
            self.assertFalse(self.destination.exists())

    def test_30_stale_request_and_exporter_binding_rejected(self):
        self.freeze()
        with self.assertRaisesRegex(self.h.CustodyError, 'request SHA'):
            self.h.export_request(self.request_path, '0' * 64, policy=self.policy, own_path=self.own)
        value = self.value(); value['exporter']['sha256'] = '0' * 64
        self.rejected(value, 'exporter identity')

    def test_31_inert_cli_requires_complete_explicit_tuple(self):
        with patch.object(self.h, 'production_policy', side_effect=AssertionError('no observation expected')):
            for argv in ([], ['--execute'], ['--request', str(self.request_path)],
                         ['--execute', '--request', str(self.request_path)]):
                with self.subTest(argv=argv):
                    with self.assertRaises(self.h.CustodyError): self.h.main(argv)

    def test_32_exclusion_indexes_bind_all_declared_created_paths(self):
        rows = [{'path': 'innocent/neutral.txt', 'sha256': '0' * 64, 'size_bytes': 1}]
        index = self.put('policy/excluded.json', self.h.encoded({'data': {'created_files': rows}}))
        identity = self.identity(index)
        with patch.object(self.h, 'ROOT', self.root), patch.object(self.h, 'EXCLUDED_INDEXES', (
                ('policy/excluded.json', identity['sha256'], identity['bytes']),)):
            policy = self.h.production_policy()
            self.assertIn('innocent/neutral.txt', policy.excluded)
            self.assertIn('policy/excluded.json', policy.excluded)
            index.write_bytes(b'CHANGED')
            with self.assertRaises(self.h.CustodyError): self.h.production_policy()

    def test_33_uppercase_hash_and_empty_list_rejected(self):
        value = self.value(); value['files'][0]['sha256'] = 'A' * 64
        self.rejected(value)
        self.rejected(self.value([]))

    def test_34_destination_parent_symlink_rejected(self):
        value = self.value()
        moved = self.root / 'moved-receipts'; self.parent.rename(moved)
        self.parent.symlink_to(moved, target_is_directory=True)
        self.rejected(value)

    def test_35_writer_rejects_oversize_before_creation(self):
        path = self.root / 'too-large.txt'
        with patch.object(self.h, 'MAX_BYTES', 3):
            with self.assertRaisesRegex(self.h.CustodyError, 'overlimit'):
                self.h.write_raw_new(path, b'FOUR')
        self.assertFalse(path.exists())

    def test_36_failure_marker_unwritable_leaves_only_prepared_inventory(self):
        real_write = self.h.write_raw_new
        def changed(path, raw):
            if Path(path).name == 'failure.json': raise OSError('fixture disk full')
            result = real_write(path, raw)
            if Path(path).name == 'manifest.json': self.first.write_bytes(b'CHANGED')
            return result
        self.h.write_raw_new = changed
        with self.assertRaises(self.h.CustodyError): self.export()
        inventory = json.loads((self.destination / 'manifest.json').read_bytes())
        self.assertEqual(inventory['status'], 'PREPARED_RAW_BYTE_INVENTORY_NOT_COMPLETION')
        self.assertFalse((self.destination / 'completion.json').exists())
        self.assertFalse((self.destination / 'failure.json').exists())

    def test_37_terminal_creation_failure_cannot_return_success(self):
        real_write = self.h.write_raw_new
        def changed(path, raw):
            if Path(path).name == 'completion.json': raise OSError('fixture terminal unavailable')
            return real_write(path, raw)
        self.h.write_raw_new = changed
        with self.assertRaises(OSError): self.export()
        self.assertTrue((self.destination / 'manifest.json').exists())
        self.assertFalse((self.destination / 'completion.json').exists())
        self.assertTrue((self.destination / 'failure.json').exists())

    def test_38_post_terminal_source_drift_still_rejects(self):
        real_write = self.h.write_raw_new
        def changed(path, raw):
            result = real_write(path, raw)
            if Path(path).name == 'completion.json': self.first.write_bytes(b'CHANGED')
            return result
        self.h.write_raw_new = changed
        with self.assertRaises(self.h.CustodyError): self.export()
        terminal = json.loads((self.destination / 'completion.json').read_bytes())
        self.assertIn('CLI_SUCCESS_REQUIRED', terminal['status'])
        self.assertTrue((self.destination / 'failure.json').exists())


def main():
    raw_import = builtins.__import__
    def guarded_import(name, *args, **kwargs):
        if name.split('.')[0] in ('incremental_lean', 'cache_math', 'check_math_trust',
                                  'check_moebius_response', 'moebius_owner_census'):
            return forbidden()
        return raw_import(name, *args, **kwargs)
    with ExitStack() as stack:
        stack.enter_context(patch.object(builtins, '__import__', guarded_import))
        for name in ('Popen', 'run', 'call', 'check_call', 'check_output'):
            stack.enter_context(patch.object(subprocess, name, forbidden))
        for name in ('system', 'popen', 'fork', 'forkpty', 'posix_spawn', 'posix_spawnp',
                     'kill', 'killpg', 'execl', 'execle', 'execlp', 'execlpe', 'execv',
                     'execve', 'execvp', 'execvpe', 'spawnl', 'spawnle', 'spawnlp',
                     'spawnlpe', 'spawnv', 'spawnve', 'spawnvp', 'spawnvpe'):
            if hasattr(os, name): stack.enter_context(patch.object(os, name, forbidden))
        for name in ('raise_signal', 'pthread_kill'):
            if hasattr(signal, name): stack.enter_context(patch.object(signal, name, forbidden))
        result = unittest.TextTestRunner(verbosity=2).run(unittest.defaultTestLoader.loadTestsFromTestCase(Fixtures))
    source_after = {str(p): {'sha256': hashlib.sha256(p.read_bytes()).hexdigest(), 'bytes': p.stat().st_size}
                    for p in (HELPER, HERE)}
    stable = source_after == SOURCE_BEFORE
    summary = {'schema': 'finite-byte-custody-fixture-summary-v1', 'tests': result.testsRun,
               'failures': len(result.failures), 'errors': len(result.errors),
               'sources_before': SOURCE_BEFORE, 'sources_after': source_after,
               'stable': stable, 'blocked_attempts': BLOCKED, 'native_jobs': 0,
               'actual_evidence_exports': 0, 'scope': 'owned external filesystem fixtures only'}
    print(json.dumps(summary, sort_keys=True))
    return 0 if result.wasSuccessful() and stable and not BLOCKED else 1


if __name__ == '__main__':
    raise SystemExit(main())
