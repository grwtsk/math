#!/usr/bin/env python3
"""Pure AST-extracted metadata controls: never invoke the observer or Git."""
import ast
import copy
import hashlib
import json
from pathlib import Path
import sys
from types import SimpleNamespace
import unittest

SOURCE = Path(__file__).with_name('observe_runtime_only_contract_source_only_v1.py')
RAW = SOURCE.read_bytes()
TREE = ast.parse(RAW)
DEFS = {n.name: n for n in ast.walk(TREE) if isinstance(n, ast.FunctionDef)}
ENV = {'hashlib': hashlib, 'json': json, 'Path': Path,
       'HEAD': 'fixture-head', 'RUNTIME_SHA': ''}
exec(compile(ast.fix_missing_locations(ast.Module(body=[DEFS[n] for n in
    ('require', 'sha', 'canonical', 'validate_delta', 'validate_contract')], type_ignores=[])),
    str(SOURCE) + '::<pure-data-functions>', 'exec'), ENV)


class Controls(unittest.TestCase):
    def setUp(self):
        self.sources = ['GRWTSK/Fixture%04d.lean' % i for i in range(887)]
        inputs = {p: 'a' * 64 for p in self.sources}
        self.rows = [{'path': '.noeaaeue/scripts/control%02d.py' % i,
                      'old_sha256': 'b' * 64, 'new_sha256': 'c' * 64} for i in range(76)]
        inputs.update({x['path']: x['old_sha256'] for x in self.rows})
        inputs.update({'.noeaaeue/fixture%04d.json' % i: 'd' * 64
                       for i in range(1488 - len(inputs))})
        self.baseline = {'inputs': inputs, 'source_paths': self.sources, 'head': 'fixture-head'}
        self.handoff = {'changed_source_paths': [x['path'] for x in self.rows]}
        self.expected = ENV['validate_delta'](self.baseline, self.handoff, self.rows)
        self.runtime = {'compiler_runtime_identity': {'schema': 'fixture-runtime',
            'scope': {'hostile_loader_confinement': False}}, 'target_executions': 0}
        self.runtime['compiler_runtime_sha256'] = ENV['sha'](ENV['canonical'](
            self.runtime['compiler_runtime_identity']))
        ENV['RUNTIME_SHA'] = self.runtime['compiler_runtime_sha256']
        self.old = {'modules': {'Fixture%03d' % i: {'sha256': 'a' * 64} for i in range(456)},
                    'assets': {x['path']: x['old_sha256'] for x in self.rows[:28]},
                    'incremental_validation': {'fixture': 'seven-field binding held exact'},
                    'kernel_checked': False, 'retained_history': {'raw': 'unchanged'}}
        self.new = copy.deepcopy(self.old)
        self.new['assets'] = {p: self.expected[p] for p in self.old['assets']}
        self.new.update(copy.deepcopy({k: self.runtime[k] for k in ('compiler_runtime_identity', 'compiler_runtime_sha256')}))

    def validate(self):
        ENV['validate_contract'](self.old, self.new, self.expected, self.runtime)

    def test_exact76_delta_preserves_every_other_input_and_all887_sources(self):
        self.assertEqual(sum(self.expected[p] != h for p, h in self.baseline['inputs'].items()), 76)
        self.assertEqual({p: self.expected[p] for p in self.sources},
                         {p: self.baseline['inputs'][p] for p in self.sources})

    def test_manifest_missing_row_rejected(self):
        with self.assertRaises(ValueError): ENV['validate_delta'](self.baseline, self.handoff, self.rows[:-1])

    def test_manifest_duplicate_rejected(self):
        rows = self.rows[:-1] + [self.rows[0]]
        with self.assertRaises(ValueError): ENV['validate_delta'](self.baseline, self.handoff, rows)

    def test_unlisted_path_rejected(self):
        rows = copy.deepcopy(self.rows); rows[0]['path'] = '.noeaaeue/scripts/foreign.py'
        with self.assertRaises(ValueError): ENV['validate_delta'](self.baseline, self.handoff, rows)

    def test_mathematical_source_change_rejected(self):
        rows = copy.deepcopy(self.rows); rows[0].update(path=self.sources[0], old_sha256='a' * 64)
        with self.assertRaises(ValueError): ENV['validate_delta'](self.baseline, self.handoff, rows)

    def test_old_preimage_hash_mismatch_rejected(self):
        rows = copy.deepcopy(self.rows); rows[0]['old_sha256'] = 'e' * 64
        with self.assertRaises(ValueError): ENV['validate_delta'](self.baseline, self.handoff, rows)

    def test_unchanged_manifest_row_rejected(self):
        rows = copy.deepcopy(self.rows); rows[0]['new_sha256'] = rows[0]['old_sha256']
        with self.assertRaises(ValueError): ENV['validate_delta'](self.baseline, self.handoff, rows)

    def test_matching_runtime_only_contract_passes(self): self.validate()

    def test_module_change_rejected(self):
        self.new['modules']['Fixture000']['sha256'] = 'e' * 64
        with self.assertRaises(ValueError): self.validate()

    def test_asset_key_change_rejected(self):
        self.new['assets']['foreign'] = 'e' * 64
        with self.assertRaises(ValueError): self.validate()

    def test_wrong_asset_hash_rejected(self):
        self.new['assets'][self.rows[0]['path']] = 'e' * 64
        with self.assertRaises(ValueError): self.validate()

    def test_public_origin_addition_rejected(self):
        self.new['incremental_validation']['public_compilation_origin'] = {'unexpected': True}
        with self.assertRaises(ValueError): self.validate()

    def test_historical_field_change_rejected(self):
        self.new['retained_history']['raw'] = 'changed'
        with self.assertRaises(ValueError): self.validate()

    def test_false_to_zero_is_not_exact_json(self):
        self.new['compiler_runtime_identity']['scope']['hostile_loader_confinement'] = 0
        with self.assertRaises(ValueError): self.validate()

    def test_nan_runtime_descriptor_rejected(self):
        self.new['compiler_runtime_identity']['scope']['hostile_loader_confinement'] = float('nan')
        with self.assertRaises(ValueError): self.validate()

    def test_claimed_runtime_digest_change_rejected(self):
        self.runtime['compiler_runtime_sha256'] = 'f' * 64
        with self.assertRaises(ValueError): self.validate()

    def test_proof_acceptance_change_rejected(self):
        self.new['kernel_checked'] = True
        with self.assertRaises(ValueError): self.validate()

    def test_expected_runtime_loader_rejects_mismatch_before_fake_consumer(self):
        loaded = []
        engine = SimpleNamespace(compiler_runtime_identity=lambda compiler, **kw: {'wrong': True},
                                compiler_runtime_digest=lambda value: 'e' * 64)
        env = {**ENV, 'original_loader': lambda root, sources: engine,
               'runtime': self.runtime, 'loaded': loaded}
        exec(compile(ast.fix_missing_locations(ast.Module(body=[DEFS['expected_runtime_loader']],
             type_ignores=[])), str(SOURCE) + '::<fake-runtime-wrapper>', 'exec'), env)
        runtime = env['expected_runtime_loader'](None, {})
        with self.assertRaisesRegex(ValueError, 'before metadata publication'):
            runtime.compiler_runtime_identity('never-executed')

    def test_expected_runtime_loader_typed_descriptor_matches(self):
        loaded = []
        engine = SimpleNamespace(compiler_runtime_identity=lambda compiler, **kw: copy.deepcopy(
            self.runtime['compiler_runtime_identity']), compiler_runtime_digest=lambda value: ENV['sha'](ENV['canonical'](value)))
        env = {**ENV, 'original_loader': lambda root, sources: engine,
               'runtime': self.runtime, 'loaded': loaded}
        exec(compile(ast.fix_missing_locations(ast.Module(body=[DEFS['expected_runtime_loader']],
             type_ignores=[])), str(SOURCE) + '::<fake-runtime-wrapper>', 'exec'), env)
        runtime = env['expected_runtime_loader'](None, {})
        self.assertEqual(runtime.compiler_runtime_identity('never-executed'), self.runtime['compiler_runtime_identity'])
        self.assertEqual(loaded, [engine])

    def test_source_cli_has_no_origin_and_requires_explicit_activation_and_binary(self):
        node = next(n for n in ast.walk(DEFS['observe']) if isinstance(n, ast.Assign)
                    and any(isinstance(t, ast.Name) and t.id == 'argv' for t in n.targets))
        words = [n.value for n in ast.walk(node.value) if isinstance(n, ast.Constant) and isinstance(n.value, str)]
        self.assertTrue({'--output', '--activate-default', '--incremental', '--lean-binary'} <= set(words))
        self.assertNotIn('--public-compilation-origin', words)
        guards = [n for n in TREE.body if isinstance(n, ast.If)]
        self.assertEqual(len(guards), 1)
        self.assertIn('options.observe', ast.unparse(guards[0]))

    def test_bound_source_stays_exact(self): self.assertEqual(SOURCE.read_bytes(), RAW)


if __name__ == '__main__':
    result = unittest.TextTestRunner(verbosity=2).run(unittest.defaultTestLoader.loadTestsFromTestCase(Controls))
    print(json.dumps({'schema': 'runtime-only-metadata-pure-controls-v1',
        'tests': result.testsRun, 'failures': len(result.failures), 'errors': len(result.errors),
        'optimized': bool(sys.flags.optimize), 'wrapper_sha256': hashlib.sha256(RAW).hexdigest(),
        'wrapper_stable': SOURCE.read_bytes() == RAW, 'real_observer_calls': 0,
        'native_jobs': 0, 'project_module_imports': 0,
        'scope': 'Pure AST data/functions and fake engine only; observer/context/Git/producer never invoked'}, sort_keys=True))
    sys.exit(0 if result.wasSuccessful() and SOURCE.read_bytes() == RAW else 1)
