#!/usr/bin/env python3
"""Replay the quartic/source-moment research integration, never Lean admission.

The original candidate patch is decoded only into a temporary directory. Existing
library files, historical receipts and certificate files are never overwritten.
Run from any directory; both ordinary and optimized Python are checked.
Human direction: grwtsk contributors. Implementation: OpenAI ChatGPT. MIT.
"""
from __future__ import annotations
import argparse
from collections import Counter
from hashlib import sha256
import json
from pathlib import Path, PurePosixPath
import platform
import re
import shutil
import subprocess
import sys
import tempfile
from historical_source_pins import observe_pins, require_matching_pins

ROOT = Path(__file__).resolve().parents[2]
ALG = '.noeaaeue/evidence/algebra/polynomial/quartic/'
PATCH = ALG+'quartic-enclosure-candidates-20261014.patch'
AUDIT = ALG+'quartic-enclosure-audit-20261014.lean.txt'
CHECKER = ALG+'quartic-enclosure-verify-exact-20261014.py.txt'
REGIONS = '.noeaaeue/evidence/number-theory/zeta/even-quartic-source-regions-20261014.json'
PINS = {
    PATCH:'7cf4b170496012d0d41cb76ebc5f061bd6bc73b6745b82decc54d4a50c7cb7c2',
    AUDIT:'c700728b40a0ba21a9e4d076117e79644a886f353e7e0b44ed1b8e21c094385b',
    CHECKER:'c98da7656b33898afaf7a3c41b0aede46f79471c6ec20c6cb55065930019538c',
    '.noeaaeue/scripts/reflected_zeta_cover.py':'9811a697087482c64bb6341e84ae38ccc762480e34f863b003195892bfc4636c',
    '.noeaaeue/scripts/phase_aware_zeta_cover.py':'7b55e9db8c6f143ad3351371685c4f4645323fa044dabe211f52b6c232cea15a',
    '.noeaaeue/scripts/zero_region_tracker.py':'957d3d9bb16a7616b47ec09434facd007221dc98d4e7be19e85b0cacb573815b',
    '.noeaaeue/scripts/zeta_region_atlas.py':'b04761ba005e1fababe00a4571b0a1d7ba3a00e04974098e69351ed4e33a0800',
}


def require(condition: bool, message: str) -> None:
    if not condition:
        raise ValueError(message)


def digest(data: bytes) -> str:
    return sha256(data).hexdigest()


def extract_additions(text: str) -> dict[str, bytes]:
    """Strict one-hunk full-addition format; not a general patch engine."""
    lines=text.splitlines(); result={}; i=0
    while i<len(lines):
        header=re.fullmatch(r'diff --git a/(\S+) b/\1',lines[i])
        require(header is not None, 'invalid addition header')
        name=header.group(1); path=PurePosixPath(name)
        require(not path.is_absolute() and '..' not in path.parts and
                path.parts[0]=='GRWTSK' and path.suffix=='.lean', 'unsafe candidate path')
        require(name not in result, 'duplicate candidate path')
        require(lines[i+1:i+4]==['new file mode 100644','--- /dev/null','+++ b/'+name],
                'only complete new-file additions are accepted')
        require(i+4<len(lines), 'missing hunk')
        match=re.fullmatch(r'@@ -0,0 \+1,(\d+) @@',lines[i+4])
        require(match is not None, 'unsupported hunk')
        count=int(match.group(1)); body=lines[i+5:i+5+count]
        require(count>0 and len(body)==count and all(s.startswith('+') for s in body),
                'truncated or modified addition')
        result[name]=('\n'.join(s[1:] for s in body)+'\n').encode()
        i+=5+count
    require(len(result)==8, 'the original inventory contains eight modules')
    return result


def inventory(modules: dict[str, bytes], audit: str) -> dict:
    """Pinned text inventory only; no elaboration or axiom acceptance."""
    names=[]
    for body in modules.values():
        text=body.decode(); ns=re.findall(r'^namespace (\S+)\s*$',text,re.M)
        require(len(ns)==1, 'unsupported namespace layout')
        names.extend(ns[0]+'.'+s for s in re.findall(r'^theorem (\S+)',text,re.M))
    imports=re.findall(r'^import (\S+)\s*$',audit,re.M)
    wanted=[p[:-5].replace('/','.') for p in modules]
    requests=re.findall(r'^#print axioms (\S+)\s*$',audit,re.M)
    require(Counter(imports)==Counter(wanted), 'audit imports differ from candidates')
    require(len(names)==53 and len(set(names))==53 and Counter(requests)==Counter(names),
            'audit must request each of the 53 written declarations exactly once')
    return {'candidate_modules':8,'written_theorem_declarations':53,
            'audit_requests':len(requests),'native_axiom_audit':False,
            'candidate_sha256':{p:digest(b) for p,b in sorted(modules.items())}}


def read_json(path: Path):
    require(path.stat().st_size<=2_000_000, 'record exceeds supported size')
    def pairs(items):
        obj={}
        for k,v in items:
            require(k not in obj,'duplicate JSON key');obj[k]=v
        return obj
    def constant(value):
        raise ValueError('nonfinite JSON constant: '+value)
    return json.loads(path.read_text(),object_pairs_hook=pairs,parse_constant=constant)


def equal_records(actual, expected) -> bool:
    # JSON serialization distinguishes booleans from integers; Python == does not.
    options={'sort_keys':True,'separators':(',',':'),'allow_nan':False}
    return json.dumps(actual,**options)==json.dumps(expected,**options)


def run_replay(output: Path) -> dict:
    require(not output.exists(), 'use a new output directory; evidence will not be overwritten')
    pin_status = observe_pins(ROOT, PINS)
    require_matching_pins(pin_status)
    bindings={row['current_path']:row['observed_sha256'] for row in pin_status['pins']}
    modules=extract_additions((ROOT/PATCH).read_text())
    checked_inventory=inventory(modules,(ROOT/AUDIT).read_text())
    expected=read_json(ROOT/REGIONS)
    output.mkdir(parents=True)
    commands=[]; sources=[]; regions=[]; originals=[]
    def execute(label, command, cwd):
        completed=subprocess.run(command,cwd=cwd,capture_output=True,timeout=45)
        (output/(label+'.stdout')).write_bytes(completed.stdout)
        (output/(label+'.stderr')).write_bytes(completed.stderr)
        commands.append({'label':label,'exit_code':completed.returncode,
                         'stdout_sha256':digest(completed.stdout),'stderr_sha256':digest(completed.stderr)})
        require(completed.returncode==0, 'failed subprocess: '+label)
    try:
        for mode,flag in [('normal',[]),('optimized',['-O'])]:
            python=[sys.executable,*flag,'-B']
            with tempfile.TemporaryDirectory(prefix='quartic-candidates-') as tmp:
                temp=Path(tmp)
                for name,body in modules.items():
                    target=temp/name;target.parent.mkdir(parents=True,exist_ok=True);target.write_bytes(body)
                (temp/'audit.lean').write_bytes((ROOT/AUDIT).read_bytes())
                (temp/'verify_exact.py').write_bytes((ROOT/CHECKER).read_bytes())
                execute('original-'+mode,python+[str(temp/'verify_exact.py')],temp)
                original=read_json(temp/'verification-report.json')
                require(original['check_count']==63 and original['passed_count']==63 and
                        original['lean_compiled'] is False,'original replay did not meet its scope')
                originals.append(original)
                (output/('original-report-'+mode+'.json')).write_text(json.dumps(original,indent=2)+'\n')
            for test in ['test_source_hermite_bridge.py','test_even_quartic_coefficient_region.py',
                         'test_replay_quartic_source.py']:
                execute(test[:-3]+'-'+mode,python+[str(ROOT/'.noeaaeue/scripts'/test)],ROOT)
            sp=output/('source-moments-'+mode+'.json')
            rp=output/('coefficient-regions-'+mode+'.json')
            execute('source-producer-'+mode,python+[str(ROOT/'.noeaaeue/scripts/source_hermite_bridge.py'),'--output',str(sp)],ROOT)
            execute('region-producer-'+mode,python+[str(ROOT/'.noeaaeue/scripts/even_quartic_coefficient_region.py'),'--output',str(rp)],ROOT)
            sources.append(read_json(sp));regions.append(read_json(rp))
            require(equal_records(regions[-1],expected),'stored coefficient certificate differs from fresh source computation')
        require(equal_records(sources[0],sources[1]) and equal_records(regions[0],regions[1]),
                'mode-dependent analytic output')
        a=dict(originals[0]);b=dict(originals[1]);a.pop('python_optimization_flag');b.pop('python_optimization_flag')
        require(equal_records(a,b),'original symbolic outputs differ beyond optimization flag')
        result={'schema':'quartic-source-replay-v1','status':'FINITE_RESEARCH_REPLAY_PASSED',
                'python':platform.python_version(),'inputs':bindings,'inventory':checked_inventory,
                'commands':commands,'original_checks_per_mode':63,'source_divisors':3,
                'source_moments_sha256':digest((output/'source-moments-normal.json').read_bytes()),
                'coefficient_regions_sha256':digest((output/'coefficient-regions-normal.json').read_bytes()),
                'fresh_modes_identical':True,'native_lean_admission':False,'native_axiom_audit':False,
                'candidate_files_installed':False,'new_zero_free_region':False,'RH':False,
                'full_atlas_replayed':False,
                'meaning':'Recomputed finite source moments and coefficient margins; continuum proofs remain written.'}
    except Exception as error:
        (output/'failure.json').write_text(json.dumps({'status':'FAILED','error':str(error),
                                                     'commands':commands,'native_lean_admission':False},indent=2)+'\n')
        raise
    (output/'replay.json').write_text(json.dumps(result,indent=2)+'\n')
    return result


def main() -> None:
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output-dir',type=Path)
    parser.add_argument('--pin-status',action='store_true',help='report unchanged historical pins and current staleness without replay')
    args=parser.parse_args()
    if args.pin_status:
        status=observe_pins(ROOT,PINS)
        print(json.dumps(status,indent=2))
        parser.exit(2 if status['status']=='stale' else 0)
    if args.output_dir is None:parser.error('--output-dir is required for replay')
    try:
        result=run_replay(args.output_dir.resolve())
        print(json.dumps({k:result[k] for k in ('status','original_checks_per_mode','source_divisors',
                                              'fresh_modes_identical','native_lean_admission','RH')},indent=2))
    except (ValueError, OSError, subprocess.SubprocessError) as error:
        parser.exit(2,str(error)+'\n')

if __name__=='__main__':main()
