#!/usr/bin/env python3
"""Known-pure APP preparation controls; no observer/capture/helper/Git calls."""
import ast
import copy
import hashlib
import json
from pathlib import Path
import re
import sys
import unittest

BASE=Path(__file__).absolute().parent
CANDIDATE=BASE/'observe_runtime_bound_app_candidate_v1.py'
CAPTURE=BASE/'capture_runtime_bound_app_inputs_v1.py'
SOURCES={str(p):p.read_bytes() for p in (CANDIDATE,CAPTURE,Path(__file__).absolute())}
TREES={str(p):ast.parse(SOURCES[str(p)]) for p in (CANDIDATE,CAPTURE)}
ENV={'hashlib':hashlib,'json':json,'Path':Path,'re':re,'RUNTIME_SHA':''}
defs={n.name:n for n in TREES[str(CANDIDATE)].body if isinstance(n,ast.FunctionDef)}
exec(compile(ast.fix_missing_locations(ast.Module(body=[defs[n] for n in
    ('require','sha','canonical','origin_identity','validate_selection','validate_candidate','preserved_union')],
    type_ignores=[])),str(CANDIDATE)+'::<pure-app-data>', 'exec'),ENV)
node=next(n for n in TREES[str(CAPTURE)].body if isinstance(n,ast.FunctionDef) and n.name=='application_readset')
exec(compile(ast.fix_missing_locations(ast.Module(body=[node],type_ignores=[])),
    str(CAPTURE)+'::<pure-app-readset>', 'exec'),ENV)


class Controls(unittest.TestCase):
    def setUp(self):
        self.root=Path('/isolated-app-fixture')
        self.runtime={'schema':'fixture-runtime','scope':{'hostile_loader_confinement':False}}
        self.runtime_sha=ENV['sha'](ENV['canonical'](self.runtime));ENV['RUNTIME_SHA']=self.runtime_sha
        self.origin={'path':str(self.root/'public-origin.json'),'sha256':'a'*64,
                     'bytes':123,'attempt_id':'fixture-fresh-runtime-public'}
        self.selection={'origin':self.origin,
            'descriptor':{'path':str(self.root/'public-descriptor.json'),'sha256':'b'*64,'bytes':124},
            'terminal_receipt':{'path':str(self.root/'public-terminal.json'),'sha256':'c'*64,'bytes':125},
            'approval':{'path':str(self.root/'coordinator-approval.json'),'sha256':'d'*64,'bytes':126}}
        state={'mode':'all-project-replay','status':'ALL_PROJECT_SOURCE_AND_AXIOM_CHECKS_PASSED',
               'compiler_runtime_identity':copy.deepcopy(self.runtime),'compiler_runtime_sha256':self.runtime_sha}
        self.payload={'schema':'proof-validation-origin-v1','terminal':True,'outcome':'passed',
            'attempt_id':self.origin['attempt_id'],'evidence':{'validation':copy.deepcopy(state)}}
        self.terminal={**copy.deepcopy(state),'proof_validation_origin':copy.deepcopy(self.origin)}
        self.approval={'status':'ACCEPTED_ACTUAL_RUNTIME_PUBLIC_FIRST_WARM_PAIR',
            'new_app_origin_choice':copy.deepcopy(self.origin),'first_receipt':copy.deepcopy(self.selection['terminal_receipt'])}
        self.current={'modules':{'Fixture%03d'%n:{} for n in range(456)},
            'assets':{'.noeaaeue/assets/source%02d'%n:'e'*64 for n in range(28)},
            'kernel_checked':False,'incremental_validation':{'exact_prior_seven':'retained'},
            'compiler_runtime_identity':copy.deepcopy(self.runtime),'compiler_runtime_sha256':self.runtime_sha}
        self.inputs={**self.current['assets'],'.noeaaeue/scripts/check_math_trust.py':'f'*64,
            '.noeaaeue/scripts/incremental_math_trust.py':'1'*64,
            '.noeaaeue/bindings/moebius-current-inputs-current.json':'2'*64,
            '.noeaaeue/bindings/current-source-observations.json':'3'*64,
            '.noeaaeue/cache/refs/current.json':'4'*64,
            'GRWTSK.lean':'5'*64,'caller.py':'6'*64,'old-helper.py':'7'*64}
        self.candidate=copy.deepcopy(self.current)
        self.candidate['assets'].update({p:self.inputs[p] for p in (
            '.noeaaeue/scripts/check_math_trust.py','.noeaaeue/scripts/incremental_math_trust.py')})
        self.candidate['incremental_validation']['public_compilation_origin']=copy.deepcopy(self.origin)
        self.baseline={'root':str(self.root),'head':'fixture-head','inputs':dict(self.inputs),
            'source_paths':['GRWTSK.lean'],'contract':'.noeaaeue/bindings/runtime-only.json',
            'caller':{'path':str(self.root/'caller.py'),'sha256':'6'*64,'bytes':12},
            'old_helper':{'path':str(self.root/'old-helper.py'),'sha256':'7'*64,'bytes':13}}
        self.contract='.noeaaeue/bindings/new-app-candidate.json'

    def selected(self):
        ENV['validate_selection'](self.selection,self.origin,self.payload,self.terminal,self.approval,self.current)

    def candidate_valid(self):
        ENV['validate_candidate'](self.current,self.candidate,self.inputs,self.origin)

    def app_inputs(self):
        additions={self.contract:'8'*64}
        for name in ('origin','descriptor'):
            row=self.selection[name];additions[Path(row['path']).relative_to(self.root).as_posix()]=row['sha256']
        return ENV['preserved_union'](self.inputs,additions)

    def readset(self,inputs=None,contract=None):
        return ENV['application_readset'](self.baseline,self.app_inputs() if inputs is None else inputs,
            self.contract if contract is None else contract,self.selection)

    def test_matching_runtime_bound_selection_passes(self):self.selected()

    def test_old_executable_only_origin_rejected(self):
        state=self.payload['evidence']['validation'];state.pop('compiler_runtime_identity');state.pop('compiler_runtime_sha256')
        with self.assertRaises(ValueError):self.selected()

    def test_origin_descriptor_swapping_rejected(self):
        swapped={**self.origin,'attempt_id':'other-public-attempt'}
        with self.assertRaises(ValueError):ENV['validate_selection'](
            self.selection,swapped,self.payload,self.terminal,self.approval,self.current)

    def test_approval_origin_swapping_rejected(self):
        self.approval['new_app_origin_choice']['sha256']='f'*64
        with self.assertRaises(ValueError):self.selected()

    def test_approval_receipt_swapping_rejected(self):
        self.approval['first_receipt']['sha256']='f'*64
        with self.assertRaises(ValueError):self.selected()

    def test_unaccepted_approval_rejected(self):
        self.approval['status']='PENDING'
        with self.assertRaises(ValueError):self.selected()

    def test_terminal_origin_swapping_rejected(self):
        self.terminal['proof_validation_origin']['attempt_id']='different'
        with self.assertRaises(ValueError):self.selected()

    def test_false_to_zero_runtime_origin_is_rejected(self):
        self.payload['evidence']['validation']['compiler_runtime_identity']['scope']['hostile_loader_confinement']=0
        with self.assertRaises(ValueError):self.selected()

    def test_nan_runtime_origin_is_rejected(self):
        self.payload['evidence']['validation']['compiler_runtime_identity']['scope']['hostile_loader_confinement']=float('nan')
        with self.assertRaises(ValueError):self.selected()

    def test_terminal_runtime_digest_change_rejected(self):
        self.terminal['compiler_runtime_sha256']='e'*64
        with self.assertRaises(ValueError):self.selected()

    def test_nonterminal_failed_or_wrong_attempt_origin_rejected(self):
        original=copy.deepcopy(self.payload)
        for key,value in (('terminal',False),('terminal',1),('outcome','failed'),('attempt_id','other')):
            self.payload={**original,key:value}
            with self.subTest(key=key,value=value),self.assertRaises(ValueError):self.selected()

    def test_wrong_validation_mode_or_status_rejected(self):
        for state in (self.payload['evidence']['validation'],self.terminal):
            old=state['mode'];state['mode']='application-replay'
            with self.assertRaises(ValueError):self.selected()
            state['mode']=old

    def test_origin_identity_boolean_length_rejected(self):
        with self.assertRaises(ValueError):ENV['origin_identity']({**self.origin,'bytes':True})

    def test_selection_extra_member_rejected(self):
        self.selection['fallback']='old-origin'
        with self.assertRaises(ValueError):self.selected()

    def test_matching_candidate_exact30_assets_passes(self):
        self.candidate_valid();self.assertEqual(len(self.candidate['assets']),30)

    def test_candidate_changed_module_rejected(self):
        self.candidate['modules']['Fixture000']={'changed':True}
        with self.assertRaises(ValueError):self.candidate_valid()

    def test_candidate_changed_old_asset_rejected(self):
        self.candidate['assets'][next(iter(self.current['assets']))]='f'*64
        with self.assertRaises(ValueError):self.candidate_valid()

    def test_candidate_wrong_origin_rejected(self):
        self.candidate['incremental_validation']['public_compilation_origin']['attempt_id']='other'
        with self.assertRaises(ValueError):self.candidate_valid()

    def test_candidate_runtime_false_to_zero_rejected(self):
        self.candidate['compiler_runtime_identity']['scope']['hostile_loader_confinement']=0
        with self.assertRaises(ValueError):self.candidate_valid()

    def test_candidate_proof_acceptance_rejected(self):
        self.candidate['kernel_checked']=True
        with self.assertRaises(ValueError):self.candidate_valid()

    def test_candidate_extra_top_field_rejected(self):
        self.candidate['activate_default']=True
        with self.assertRaises(ValueError):self.candidate_valid()

    def test_old_public_bytes_retained_by_union(self):
        merged=ENV['preserved_union'](self.inputs,{'safe/new.json':'a'*64})
        self.assertTrue(set(self.inputs)<=set(merged))
        self.assertTrue(all(merged[p]==h for p,h in self.inputs.items()))

    def test_active_observation_cache_or_source_override_rejected(self):
        for p in ('.noeaaeue/bindings/moebius-current-inputs-current.json',
            '.noeaaeue/bindings/current-source-observations.json','.noeaaeue/cache/refs/current.json','GRWTSK.lean'):
            with self.subTest(path=p),self.assertRaises(ValueError):ENV['preserved_union'](self.inputs,{p:'a'*64})

    def test_unsafe_added_path_or_digest_rejected(self):
        for p,h in (('../escape','a'*64),('/absolute','a'*64),('a/.git/b','a'*64),('a\\b','a'*64),('safe','Z'*64)):
            with self.subTest(path=p),self.assertRaises(ValueError):ENV['preserved_union'](self.inputs,{p:h})

    def test_application_phase_closed_schema_and_origin_exact(self):
        d=self.readset()
        self.assertEqual(set(d),{'schema','phase','root','head','inputs','source_paths','contract','caller','old_helper','source_origin'})
        self.assertEqual(d['phase'],'application')
        self.assertEqual(d['source_origin'],{'kind':'approved-public-terminal-origin',
            'descriptor':self.selection['descriptor'],'origin':self.origin})
        self.assertEqual(d['caller'],self.baseline['caller']);self.assertEqual(d['old_helper'],self.baseline['old_helper'])
        self.assertNotIn('release',d)

    def test_application_readset_cannot_omit_old_public_input(self):
        values=self.app_inputs();values.pop('GRWTSK.lean')
        with self.assertRaises(ValueError):self.readset(inputs=values)

    def test_application_readset_cannot_change_old_public_input(self):
        values=self.app_inputs();values['GRWTSK.lean']='f'*64
        with self.assertRaises(ValueError):self.readset(inputs=values)

    def test_application_readset_requires_bound_origin_and_descriptor(self):
        for key in ('origin','descriptor'):
            values=self.app_inputs();values.pop(Path(self.selection[key]['path']).relative_to(self.root).as_posix())
            with self.subTest(key=key),self.assertRaises(ValueError):self.readset(inputs=values)

    def test_application_cannot_select_active_old_or_unbound_contract(self):
        for p in (self.baseline['contract'],'.noeaaeue/bindings/moebius-current-inputs-current.json',
                  '.noeaaeue/bindings/unbound.json'):
            with self.subTest(path=p),self.assertRaises(ValueError):self.readset(contract=p)

    def test_no_input_mutation(self):
        before=copy.deepcopy((self.baseline,self.inputs,self.selection))
        self.readset();self.assertEqual(before,(self.baseline,self.inputs,self.selection))

    def test_cli_candidate_does_not_activate_or_dispatch_native(self):
        observe=defs['observe'];argv=next(n for n in ast.walk(observe) if isinstance(n,ast.Assign)
            and any(isinstance(t,ast.Name) and t.id=='argv' for t in n.targets))
        words=[n.value for n in ast.walk(argv.value) if isinstance(n,ast.Constant) and isinstance(n.value,str)]
        self.assertTrue({'--output','--incremental','--public-compilation-origin','--lean-binary'}<=set(words))
        self.assertNotIn('--activate-default',words);self.assertNotIn('--cold',words)
        self.assertNotIn('check_moebius_response.py',words)

    def test_both_clis_have_explicit_inert_main_gates(self):
        for path,tree in TREES.items():
            guards=[n for n in tree.body if isinstance(n,ast.If)]
            with self.subTest(path=path):
                self.assertEqual(len(guards),1)
                self.assertIn('args.tuple_sha256',ast.unparse(guards[0]))

    def test_bound_sources_stay_exact(self):
        for name,raw in SOURCES.items():self.assertEqual(Path(name).read_bytes(),raw)


if __name__=='__main__':
    result=unittest.TextTestRunner(verbosity=2).run(unittest.defaultTestLoader.loadTestsFromTestCase(Controls))
    stable=all(Path(p).read_bytes()==raw for p,raw in SOURCES.items())
    print(json.dumps({'schema':'runtime-bound-app-source-helper-pure-controls-v1','tests':result.testsRun,
        'failures':len(result.failures),'errors':len(result.errors),'optimized':bool(sys.flags.optimize),
        'sources_stable':stable,'source_bindings':{p:{'sha256':hashlib.sha256(raw).hexdigest(),'bytes':len(raw)} for p,raw in SOURCES.items()},
        'actual_runtime_producer_capture_or_Git_calls':0,'native_jobs':0,'project_imports':0,
        'scope':'Only AST-extracted pure data validators; no real project/helper imports or external/runtime calls'},sort_keys=True))
    sys.exit(0 if result.wasSuccessful() and stable else 1)
