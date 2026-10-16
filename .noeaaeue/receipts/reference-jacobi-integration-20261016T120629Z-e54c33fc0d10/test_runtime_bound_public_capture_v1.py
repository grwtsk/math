#!/usr/bin/env python3
"""Pure finite capture controls; no capture/helper imports, Git or native jobs."""
import ast
import copy
import hashlib
import json
from pathlib import Path
import re
import sys
import unittest

SOURCE = Path(__file__).with_name('capture_runtime_bound_public_inputs_v1.py')
RAW = SOURCE.read_bytes()
TREE = ast.parse(RAW)
DEFS = {node.name:node for node in ast.walk(TREE) if isinstance(node,ast.FunctionDef)}
ROOT = Path('/controlled-fixture-root')
ENV = {'hashlib':hashlib,'json':json,'Path':Path,'re':re,'ROOT':ROOT,'CALLER_SHA':'c'*64}
exec(compile(ast.fix_missing_locations(ast.Module(body=[DEFS[name] for name in
    ('require','sha','merge_inputs','public_readset')],type_ignores=[])),
    str(SOURCE)+'::<pure-capture-data>', 'exec'), ENV)


class Controls(unittest.TestCase):
    def setUp(self):
        self.active='.noeaaeue/bindings/moebius-current-inputs-current.json'
        self.contract='.noeaaeue/bindings/new-runtime-contract.json'
        self.caller={'path':str(ROOT/'.noeaaeue/receipts/caller.py'),'sha256':'c'*64,'bytes':21}
        self.baseline={'root':str(ROOT),'head':'fixture-head','source_paths':['GRWTSK.lean'],
            'old_helper':{'path':str(ROOT/'.noeaaeue/receipts/old-helper.py'),'sha256':'d'*64,'bytes':22},
            'contract':'.noeaaeue/bindings/old-contract.json'}
        self.expected={self.active:'a'*64,'GRWTSK.lean':'b'*64,
            '.noeaaeue/scripts/reviewed.py':'e'*64,
            '.noeaaeue/bindings/current-source-observations.json':'f'*64}
        self.additions={self.contract:'1'*64,'.noeaaeue/receipts/caller.py':'c'*64,
                        '.noeaaeue/receipts/old-helper.py':'d'*64}

    def merged(self, additions=None):
        return ENV['merge_inputs'](self.expected,self.additions if additions is None else additions,
                                   self.active,'2'*64)

    def data(self, inputs=None, caller=None, contract=None):
        return ENV['public_readset'](self.baseline,self.merged() if inputs is None else inputs,
            self.contract if contract is None else contract,self.caller if caller is None else caller)

    def test_all_old_paths_retained_only_active_replaced(self):
        merged=self.merged()
        self.assertTrue(set(self.expected)<=set(merged))
        self.assertEqual([p for p in self.expected if self.expected[p]!=merged[p]],[self.active])
        self.assertEqual(merged[self.active],'2'*64)

    def test_reviewed_code_cannot_be_overridden_again(self):
        with self.assertRaisesRegex(ValueError,'unapproved'):
            self.merged({'.noeaaeue/scripts/reviewed.py':'3'*64})

    def test_source_hash_cannot_be_overridden(self):
        with self.assertRaisesRegex(ValueError,'unapproved'):self.merged({'GRWTSK.lean':'3'*64})

    def test_observation_hash_cannot_be_overridden(self):
        with self.assertRaisesRegex(ValueError,'unapproved'):
            self.merged({'.noeaaeue/bindings/current-source-observations.json':'3'*64})

    def test_wrong_active_hash_is_rejected(self):
        with self.assertRaisesRegex(ValueError,'unapproved'):self.merged({self.active:'3'*64})

    def test_exact_active_and_existing_bindings_are_allowed(self):
        merged=self.merged({self.active:'2'*64,'GRWTSK.lean':'b'*64})
        self.assertEqual(merged[self.active],'2'*64)

    def test_unsafe_new_paths_rejected(self):
        for p in ('/outside','../outside','.noeaaeue/../outside','a//b','a/./b','a/.git/b','a\\b'):
            with self.subTest(path=p),self.assertRaises(ValueError):self.merged({p:'3'*64})

    def test_invalid_new_digests_rejected(self):
        for value in (None,True,'a'*63,'A'*64,'z'*64):
            with self.subTest(value=value),self.assertRaises(ValueError):self.merged({'safe/new.json':value})

    def test_no_input_or_baseline_mutation(self):
        prior=copy.deepcopy((self.expected,self.additions,self.baseline))
        self.data()
        self.assertEqual((self.expected,self.additions,self.baseline),prior)

    def test_closed_original_ten_key_public_schema(self):
        d=self.data()
        self.assertEqual(set(d),{'schema','phase','root','head','inputs','source_paths','contract',
                                'caller','old_helper','source_origin'})
        self.assertEqual(d['phase'],'public')
        self.assertEqual(d['schema'],'serial-incremental-phase-inputs-v1')
        self.assertNotIn('release',d)

    def test_selected_new_caller_old_helper_preserved(self):
        d=self.data()
        self.assertEqual(d['caller'],self.caller)
        self.assertEqual(d['old_helper'],self.baseline['old_helper'])

    def test_unbound_caller_rejected(self):
        values=self.merged();values.pop('.noeaaeue/receipts/caller.py')
        with self.assertRaisesRegex(ValueError,'unbound'):self.data(inputs=values)

    def test_wrong_caller_identity_rejected(self):
        for change in ({'sha256':'e'*64},{'bytes':True},{'path':'/outside/caller.py'}):
            with self.subTest(change=change),self.assertRaises(ValueError):
                self.data(caller={**self.caller,**change})

    def test_active_or_old_contract_cannot_be_selected(self):
        for name in (self.active,self.baseline['contract'],'outside.json'):
            with self.subTest(name=name),self.assertRaises(ValueError):self.data(contract=name)

    def test_unbound_new_contract_rejected(self):
        values=self.merged();values.pop(self.contract)
        with self.assertRaises(ValueError):self.data(inputs=values)

    def test_source_origin_digest_recomputed_from_exact_five_fields(self):
        d=self.data();payload={k:d[k] for k in ('root','head','inputs','source_paths','contract')}
        expected=hashlib.sha256(json.dumps(payload,sort_keys=True,separators=(',',':'),allow_nan=False).encode()).hexdigest()
        self.assertEqual(d['source_origin'],{'kind':'frozen-source-input-set','sha256':expected})

    def test_source_origin_changes_with_bound_input_byte_identity(self):
        a=self.data();values=self.merged();values['safe/additional.json']='4'*64;b=self.data(inputs=values)
        self.assertNotEqual(a['source_origin'],b['source_origin'])

    def test_input_order_does_not_change_source_origin(self):
        values=self.merged()
        self.assertEqual(self.data(inputs=values),self.data(inputs=dict(reversed(list(values.items())))))

    def test_capture_cli_is_inert_without_explicit_capture_and_tuple(self):
        guards=[n for n in TREE.body if isinstance(n,ast.If)]
        self.assertEqual(len(guards),1)
        self.assertIn('args.capture',ast.unparse(guards[0]))
        self.assertIn('args.tuple_sha256',ast.unparse(guards[0]))
        self.assertFalse(any(isinstance(n,ast.ImportFrom) and n.module and n.module.startswith('GRWTSK')
                             for n in TREE.body))

    def test_capture_source_stays_exact(self):self.assertEqual(SOURCE.read_bytes(),RAW)


if __name__=='__main__':
    result=unittest.TextTestRunner(verbosity=2).run(unittest.defaultTestLoader.loadTestsFromTestCase(Controls))
    print(json.dumps({'schema':'runtime-bound-public-capture-pure-controls-v1','tests':result.testsRun,
        'failures':len(result.failures),'errors':len(result.errors),'optimized':bool(sys.flags.optimize),
        'source_sha256':hashlib.sha256(RAW).hexdigest(),'source_stable':SOURCE.read_bytes()==RAW,
        'actual_capture_calls':0,'native_jobs':0,'project_imports':0,
        'scope':'AST-extracted finite data functions only; no observer/context/Git/helper imports executed'},sort_keys=True))
    sys.exit(0 if result.wasSuccessful() and SOURCE.read_bytes()==RAW else 1)
