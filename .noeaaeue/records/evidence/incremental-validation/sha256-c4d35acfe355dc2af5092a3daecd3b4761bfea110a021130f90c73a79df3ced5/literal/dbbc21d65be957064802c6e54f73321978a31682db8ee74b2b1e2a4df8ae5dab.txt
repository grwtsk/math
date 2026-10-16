#!/usr/bin/env python3
"""Pinned finite replay; no network, Git writes, or all-depth theorem admission.

Direction: R.A. Jacob Martone. Implementation: OpenAI ChatGPT. MIT.
"""
from fractions import Fraction as Q
import argparse
import hashlib
import json
from pathlib import Path
import subprocess
import sys
import time

ROOT=Path(__file__).resolve().parents[2]
BASE='.noeaaeue/evidence/number-theory/zeta/laguerre-energy-20261015'
MANIFEST_SHA256='0bb8f00c688d05d1767e1e770ce88abeec6fbfd48753ba0983b1f24428aae6f3'


def require(ok,message):
    if not ok:raise ValueError(message)


def unique(pairs):
    out={}
    for key,value in pairs:
        require(key not in out,'duplicate JSON key')
        out[key]=value
    return out


def reject_number(value):raise ValueError('nonexact JSON number')


def decode(text):
    return json.loads(text,object_pairs_hook=unique,parse_float=reject_number,parse_constant=reject_number)


def fraction(value):
    require(type(value) is str and len(value)<16384,'bounded rational string required')
    return Q(value)


def bounds(x):
    require(type(x) is dict and 'lower' in x and 'upper' in x,'interval required')
    a,b=fraction(x['lower']),fraction(x['upper'])
    require(a<=b,'reversed interval')
    return a,b


def verify_report(r,bits):
    require(r['schema']=='laguerre-discrepancy-energy-v1','schema mismatch')
    require((r['coefficient_count'],r['working_bits'],r['output_grid_bits'],r['cutoff'],r['em_order'])
            ==(128,bits,160,128,64),'source profile mismatch')
    for key in ['coefficient_count','working_bits','output_grid_bits','cutoff','em_order']:
        require(type(r[key]) is int,'profile integers required')
    for key in ['RH_proved','all_depth_bound','native_Lean_admission','new_zero_exclusion']:
        require(r[key] is False,'unsupported mathematical claim')
    require(r['alternative_full_source_boxes_compared']==128,'source comparison incomplete')
    require(r['analytic']['Xi_quotient_inverse_used'] is False,'altered source route')
    require(r['analytic']['gamma_subtraction_needed'] is False,'altered direct route')
    require(bounds(r['analytic']['zeta_at_center'])[0]>0,'unresolved initial denominator')
    require(len(r['moments'])==len(r['cumulative_energy'])==128,'incomplete prefix')
    lo=hi=Q(0)
    for k,(x,c) in enumerate(zip(r['moments'],r['cumulative_energy'])):
        a,b=bounds(x)
        lo+=0 if a<=0<=b else min(a*a,b*b)
        hi+=max(a*a,b*b)
        ca,cb=bounds(c)
        require(type(c['size']) is int and c['size']==k+1,'missing prefix')
        require(ca<=lo<=hi<=cb,'incorrect energy accumulation')
    d=bounds(r['cumulative_energy'][-1])[1];B=Q(21,100)
    require(d<B,'finite energy bound not met')
    n=128;e=n*(Q(91*n,45)+Q(910,891))**2*Q(36,49)**n
    t=r['tail_schedule'];cmp=t['rational_comparison']
    require(cmp=={'fourteen_power_26':str(14**26),'two_power_99':str(2**99)},'tail comparison altered')
    require(14**26<2**99,'tail exponent not separated')
    require(t['prime_cutoff_power_of_two']=='11N' and t['written_proof_not_infinite_computation'] is True,
            'tail scope changed')
    h=r['large_finite_head'];gap=B-d-e
    require(h['prime_cutoff_power_of_two']==1408 and h['prime_range_enumerated'] is False,'large head scope')
    require(fraction(h['tail_error_squared_upper'])==e and fraction(h['energy_upper_target'])==B,'large head budget')
    require(fraction(h['comparison_gap'])==gap and fraction(h['squared_comparison_margin'])==gap*gap-4*d*e,
            'large head arithmetic')
    require(h['certified'] is True and gap>0 and gap*gap>4*d*e,'large head comparison failed')
    require([x['cutoff'] for x in r['finite_heads']]==[256,1024],'finite head inventory')
    for x in r['finite_heads']:
        require(x['coefficient_count']==8 and len(x['moments'])==8,'finite head prefix')
        require(x['factorization_checked_through']==x['cutoff'],'factorization scope')
        require(x['endpoint_retained'] is True and x['prime_powers_retained'] is True,'source term removed')
        require(x['global_tail_added'] is False and x['claim']=='FINITE_SIGNED_HEAD_ONLY','finite head overstated')
        bounds(x['energy'])
        for v in x['moments']:bounds(v)
    return r


def pin_inputs():
    raw=(ROOT/BASE/'inputs.json').read_bytes()
    require(hashlib.sha256(raw).hexdigest()==MANIFEST_SHA256,'manifest drift')
    m=decode(raw)
    for name,sha in m['inputs'].items():
        path=Path(name)
        require(not path.is_absolute() and '..' not in path.parts,'unsafe input path')
        p=ROOT/path
        require(not p.is_symlink() and not any(q.is_symlink() for q in p.parents),'symlink input')
        require(hashlib.sha256(p.read_bytes()).hexdigest()==sha,'source drift '+name)
    return m


def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--mode',choices=['normal','optimized','both'],default='both')
    args=ap.parse_args();modes=['normal','optimized'] if args.mode=='both' else [args.mode]
    own=hashlib.sha256(Path(__file__).read_bytes()).hexdigest()
    receipt={'schema':'laguerre-energy-replay-v1','status':'STARTED','steps':[],
             'RH_proved':False,'all_depth_bound':False,'native_Lean':'NOT_RUN',
             'full_repository_checks':'NOT_RUN','remote_publication':'NOT_PERFORMED'}
    beginning=time.monotonic();outputs={}
    try:
        m=pin_inputs();receipt['inputs']=m['inputs'];receipt['runner_sha256']=own
        suites=[('new-tests',['-m','unittest','discover','-s','.noeaaeue/tests','-p','test_laguerre_discrepancy_energy.py','-v'],38),
          ('prior-candidate',['.noeaaeue/evidence/number-theory/zeta/laguerre-discrepancy-20261015/check_finite_identities.py.txt'],24),
          ('source-tests',['-m','unittest','discover','-s','.noeaaeue/tests','-p','test_arithmetic_quotient_sections.py','-v'],30),
          ('hankel-tests',['-m','unittest','discover','-s','.noeaaeue/tests','-p','test_hankel_quotient_bridge.py','-v'],39),
          ('synthesis-tests',['-m','unittest','discover','-s','.noeaaeue/evidence/number-theory/zeta/density-hankel-20261015/historical',
                             '-p','check_synthesis.py','-v'],16)]
        jobs=suites+[(str(b),['.noeaaeue/scripts/laguerre_discrepancy_energy.py','--bits',str(b)],None) for b in [768,896]]
        for mode in modes:
            for label,rest,count in jobs:
                cmd=[sys.executable,'-B']+(['-O'] if mode=='optimized' else [])+rest
                step={'mode':mode,'label':label,'argv':cmd};receipt['steps'].append(step)
                t=time.monotonic()
                try:
                    p=subprocess.run(cmd,cwd=ROOT,capture_output=True,text=True,timeout=150)
                except subprocess.TimeoutExpired as err:
                    def text(x):return x.decode(errors='replace') if isinstance(x,bytes) else x or ''
                    step.update(status='TIMEOUT',stdout=text(err.stdout),stderr=text(err.stderr))
                    raise ValueError('subprocess timeout '+label)
                step.update(exit_code=p.returncode,stdout=p.stdout,stderr=p.stderr,wall_seconds=round(time.monotonic()-t,6))
                require(p.returncode==0,'subprocess failed '+label)
                if count:
                    require(f'Ran {count} tests' in p.stderr and p.stderr.rstrip().endswith('OK'),'test inventory mismatch')
                    step['tests']=count
                else:
                    r=verify_report(decode(p.stdout),int(label));outputs[(mode,int(label))]=r
                    step['stdout_sha256']=hashlib.sha256(p.stdout.encode()).hexdigest()
                step['status']='PASSED'
        for mode in modes:
            a,b=outputs[(mode,768)],outputs[(mode,896)]
            for x,y in zip(a['moments'],b['moments']):
                xa,xb=bounds(x);ya,yb=bounds(y)
                require(max(xa,ya)<=min(xb,yb),'cross-precision moments disagree')
            for x,y in zip(a['cumulative_energy'],b['cumulative_energy']):
                xa,xb=bounds(x);ya,yb=bounds(y)
                require(max(xa,ya)<=min(xb,yb),'cross-precision energy disagrees')
        if len(modes)==2:
            for b in [768,896]:require(outputs[('normal',b)]==outputs[('optimized',b)],'mode output drift')
        pin_inputs();require(hashlib.sha256(Path(__file__).read_bytes()).hexdigest()==own,'runner changed')
        receipt.update(status='PASSED',tests_per_mode=sum(n for _,_,n in suites),
                       expected_steps=7*len(modes),cross_precision_moments=128,cross_precision_energies=128,
                       within_profile_mode_equality=len(modes)==2)
    except Exception as err:
        receipt.update(status='FAILED',error=f'{type(err).__name__}: {err}')
    receipt['wall_seconds']=round(time.monotonic()-beginning,6)
    print(json.dumps(receipt,sort_keys=True,indent=2))
    return 0 if receipt['status']=='PASSED' else 1


if __name__=='__main__':raise SystemExit(main())
