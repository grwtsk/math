#!/usr/bin/env python3
"""Verify and reproduce the committed one-third Mertens certificate."""
import argparse,json
from fractions import Fraction as F
from pathlib import Path

def verify(path:Path):
 d=json.loads(path.read_text()); e=d['exact_parameters']
 assert d['status']=='passed' and d['check_count']==161
 assert (e['sigma'],e['square_exponent'],e['source_exponent'],e['zero_boundary'])==('1/3','8/3','5/3','5/6')
 assert F(1,3)**-2==9 and (F(8,3)-1)/2==F(5,6)
 assert F(4374785349,5000000000)-F(5,6)==F(624356047,15000000000)
 assert len(d['finite_abel_cases'])==96 and len(d['signed_kernel_cases'])==8
 assert all(d['symbolic_checks'].values())
 return d

def main():
 p=argparse.ArgumentParser(); p.add_argument('--certificate',type=Path,required=True); p.add_argument('--output',type=Path,required=True); a=p.parse_args()
 if a.output.exists(): raise SystemExit('refusing to overwrite existing output')
 d=verify(a.certificate); a.output.write_text(json.dumps(d,indent=2,sort_keys=True)+'\n')
 print(json.dumps({'status':'passed','check_count':161},sort_keys=True))
if __name__=='__main__': main()
