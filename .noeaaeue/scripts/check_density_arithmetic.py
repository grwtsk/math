#!/usr/bin/env python3
import shutil
"""Fresh public source replay for complete density arithmetic and signed cutoffs."""
from pathlib import Path
from repository_paths import relocated_name
import argparse, datetime, hashlib, json, os, re, subprocess, tempfile

ROOT = Path(__file__).resolve().parents[2]
PREFIX = 'GRWTSK.NumberTheory.ArithmeticFunctions.'
LEAVES = ['DensityMoebius', 'DensityMoebiusCorrection', 'PositiveDensityCorrection',
          'DensityCorrectionPrimeSeries', 'DensityCorrectionReciprocalMass',
          'DensityHalfPrimeFactor', 'DensityHalfMoment', 'DensityMomentTails',
          'ExcludedDensityCorrection', 'MoebiusTruncation',
          'TruncatedMoebiusCoefficients', 'SquarefulMoebiusReturn',
          'SquarefreeMoebiusSum', 'ComplexMoebiusCast', 'DivisibleDensityRow', 'DensityFiniteSums',
          'MoebiusReciprocalPrefix', 'CoprimeReciprocalForm', 'DensityReciprocalPrefix',
          'TruncatedMoebiusSeries', 'ClosedMoebiusPolynomial']
SERIES = {'TruncatedMoebiusSeries', 'ClosedMoebiusPolynomial'}
def module_name(leaf):
    return 'GRWTSK.NumberTheory.'+('LSeries.' if leaf in SERIES else 'ArithmeticFunctions.')+leaf
DECLARED_SOURCES = [
    'GRWTSK/NumberTheory/ArithmeticFunctions/DensityMoebius.lean',
    'GRWTSK/NumberTheory/ArithmeticFunctions/DensityMoebiusCorrection.lean',
    'GRWTSK/NumberTheory/ArithmeticFunctions/PositiveDensityCorrection.lean',
    'GRWTSK/NumberTheory/ArithmeticFunctions/DensityCorrectionPrimeSeries.lean',
    'GRWTSK/NumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean',
    'GRWTSK/NumberTheory/ArithmeticFunctions/DensityHalfPrimeFactor.lean',
    'GRWTSK/NumberTheory/ArithmeticFunctions/DensityHalfMoment.lean',
    'GRWTSK/NumberTheory/ArithmeticFunctions/DensityMomentTails.lean',
    'GRWTSK/NumberTheory/ArithmeticFunctions/ExcludedDensityCorrection.lean',
    'GRWTSK/NumberTheory/ArithmeticFunctions/MoebiusTruncation.lean',
    'GRWTSK/NumberTheory/ArithmeticFunctions/TruncatedMoebiusCoefficients.lean',
    'GRWTSK/NumberTheory/ArithmeticFunctions/SquarefulMoebiusReturn.lean',
    'GRWTSK/NumberTheory/ArithmeticFunctions/SquarefreeMoebiusSum.lean',
    'GRWTSK/NumberTheory/ArithmeticFunctions/ComplexMoebiusCast.lean',
    'GRWTSK/NumberTheory/ArithmeticFunctions/DivisibleDensityRow.lean',
    'GRWTSK/NumberTheory/ArithmeticFunctions/DensityFiniteSums.lean',
    'GRWTSK/NumberTheory/ArithmeticFunctions/MoebiusReciprocalPrefix.lean',
    'GRWTSK/NumberTheory/ArithmeticFunctions/CoprimeReciprocalForm.lean',
    'GRWTSK/NumberTheory/ArithmeticFunctions/DensityReciprocalPrefix.lean',
    'GRWTSK/NumberTheory/LSeries/TruncatedMoebiusSeries.lean',
    'GRWTSK/NumberTheory/LSeries/ClosedMoebiusPolynomial.lean',
]
ALLOWED = {'propext', 'Classical.choice', 'Quot.sound'}

def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()
def command(args, **kw):
    return subprocess.run(args, cwd=ROOT, text=True, capture_output=True, **kw)

def theorem_contract(name, signature):
    depth = 0
    for i, ch in enumerate(signature):
        if ch in '({[': depth += 1
        elif ch in ')}]': depth -= 1
        elif ch == ':' and depth == 0:
            binders, proposition = signature[:i].strip(), signature[i+1:].strip()
            for match in re.finditer(r'[({]\s*([\w ]+)\s*:', binders):
                for token in match.group(1).split():
                    if not token.startswith('_') and len(re.findall(r'\b'+re.escape(token)+r'\b',signature)) == 1:
                        binders=re.sub(r'\b'+re.escape(token)+r'\b','_'+token,binders)
            return 'example : ' + ('∀ ' + binders + ', ' if binders else '') + proposition + ' := ' + name + '\n'
    raise ValueError('Missing theorem type: ' + name)

def main():
    parser=argparse.ArgumentParser()
    parser.add_argument('--only-series', action='store_true', help='Reuse unchanged checked arithmetic dependencies for new series consumers')
    parser.add_argument('--receipt', default=None,
                        help='Fresh relative receipt path below .noeaaeue/.local (default: the run directory)')
    args=parser.parse_args()
    if (ROOT/'lean-toolchain').read_text().strip() != 'leanprover/lean4:v4.33.0':
        raise RuntimeError('toolchain mismatch')
    revision=command(['git','-C',str(ROOT/'.lake/packages/mathlib'),'rev-parse','HEAD'])
    if revision.returncode or revision.stdout.strip() != 'db584cd6d46c92f209a44c0f1c829460d327499d':
        raise RuntimeError('Mathlib revision mismatch')
    lean=command(['lake','env','which','lean'])
    paths=command(['lake','env','printenv','LEAN_PATH'])
    if lean.returncode or paths.returncode: raise RuntimeError('Lake environment unavailable')
    stamp=datetime.datetime.now(datetime.timezone.utc).strftime('%Y%m%dT%H%M%S%fZ')
    scratch=ROOT/'.noeaaeue/.local/density-arithmetic-checks'/stamp;scratch.mkdir(parents=True)
    expected_sources=[module_name(leaf).replace('.', '/')+'.lean' for leaf in LEAVES]
    if DECLARED_SOURCES != expected_sources:
        raise RuntimeError('Declared density source manifest differs from replay order')
    if args.receipt is None:
        target=scratch/'receipt.json'
    else:
        relative=Path(args.receipt)
        if relative.is_absolute() or '..' in relative.parts or not relative.parts:
            raise RuntimeError('Receipt must be a relative path below .noeaaeue/.local')
        relative=Path(relocated_name(relative))
        if relative.parts[:2] != ('.noeaaeue','.local'):
            raise RuntimeError('Receipt must be a relative path below .noeaaeue/.local')
        target=ROOT/relative
        target.parent.mkdir(parents=True,exist_ok=True)
    lib=scratch/'lib';lib.mkdir()
    env=dict(os.environ);env['LEAN_PATH']=str(lib)+os.pathsep+paths.stdout.strip()
    dependency_receipt = None
    if args.only_series:
        core_path=ROOT/'.noeaaeue/evidence/NumberTheory/ArithmeticFunctions/density-arithmetic-checks.json'
        core=json.loads(core_path.read_text())
        if core['outcome']!='passed' or core['toolchain']!='leanprover/lean4:v4.33.0': raise RuntimeError('Missing checked arithmetic dependency receipt')
        for path,value in core['source_hashes'].items():
            if sha(ROOT/path)!=value: raise RuntimeError('Checked dependency source drift: '+path)
        candidates=[]
        for old in sorted((ROOT/'.noeaaeue/.local/density-arithmetic-checks').iterdir(),reverse=True):
            if old==scratch: continue
            if all((old/path).exists() and sha(old/path)==value for path,value in core['source_hashes'].items()):
                if all((old/'lib'/ (path[:-5]+'.olean')).exists() for path in core['source_hashes']): candidates.append(old)
        if not candidates: raise RuntimeError('Matching checked dependency objects unavailable; run full arithmetic checker')
        old=candidates[0]
        # Lean selects the first project root, so place the exact checked
        # dependency objects in that root before elaborating the new consumers.
        for path in core['source_hashes']:
            source_object=old/'lib'/(path[:-5]+'.olean')
            destination=lib/(path[:-5]+'.olean')
            destination.parent.mkdir(parents=True,exist_ok=True)
            shutil.copyfile(source_object,destination)
            if sha(destination)!=sha(source_object): raise RuntimeError('Dependency object copy drift: '+path)
        dependency_receipt={'path':str(core_path.relative_to(ROOT)),'sha256':sha(core_path),'source_hashes':core['source_hashes'],
          'object_hashes':{path:sha(old/'lib'/(path[:-5]+'.olean')) for path in core['source_hashes']},'reused_semantic_counts_not_new':True}

    binary=lean.stdout.strip()
    version=command([binary,'--version']);(scratch/'toolchain.txt').write_text(version.stdout+version.stderr)
    if version.returncode or '4.33.0' not in version.stdout: raise RuntimeError('Lean version mismatch')
    all_records=[];source_hashes={};contracts=[];results=[]
    for leaf in ([x for x in LEAVES if x in SERIES] if args.only_series else LEAVES):
        rel=module_name(leaf).replace('.', '/')+'.lean';source=ROOT/rel;t=source.read_text()
        prefix='GRWTSK.NumberTheory.LSeries.' if leaf in SERIES else PREFIX
        source_hashes[rel]=sha(source)
        if 'FormalResearch.' in t: raise RuntimeError('Private dependency in public source')
        modules=re.findall(r'^import (GRWTSK\.[\w.]+)',t,re.M)
        for module in modules:
            if module not in [module_name(x) for x in LEAVES[:LEAVES.index(leaf)]]:
                raise RuntimeError('Unexpected or unordered project dependency: '+module)
        snapshot=scratch/rel;snapshot.parent.mkdir(parents=True,exist_ok=True);snapshot.write_text(t)
        out=lib/(rel[:-5]+'.olean');out.parent.mkdir(parents=True,exist_ok=True)
        run=command([binary,'--trust=0','-DwarningAsError=true','-o',str(out),str(snapshot)],env=env)
        (scratch/(leaf+'-build.txt')).write_text(run.stdout+run.stderr)
        if run.returncode: raise RuntimeError('Source replay failed: '+leaf+'\n'+(run.stdout+run.stderr)[-4000:])
        matches=list(re.finditer(r'^(?:noncomputable )?(?:theorem|def) (\w+)',t,re.M));roots=[prefix+m.group(1) for m in matches]
        extra='\nset_option linter.hashCommand false\nopen GRWTSK.NumberTheory.ArithmeticFunctions\n'+('open GRWTSK.NumberTheory.LSeries\n' if leaf in SERIES else '')+'open scoped ArithmeticFunction.Moebius ArithmeticFunction.zeta\n'
        for m in re.finditer(r'^theorem (\w+)(.*?) :=(?: by)?',t,re.M|re.S):
            extra+=theorem_contract(m.group(1),m.group(2));contracts.append({'name':prefix+m.group(1),'literal_signature':m.group(2).strip()})
        extra+='''
open Lean Elab Command
run_cmd do
  let env ← getEnv
  let roots : List String := ROOTS
  let own := env.constants.toList.filter (fun (n, _) =>
    roots.contains n.toString || roots.any (fun r => n.toString.startsWith (r ++ ".")))
  for root in roots do
    unless own.any (fun (n, _) => n.toString == root) do
      throwError "Missing owned semantic root"
  for (name, ci) in own do
    match ci with
    | .thmInfo info =>
      if info.value.hasSorry then throwError "Owned proof contains admission"
      logInfo m!"OWN_BODY {name} theorem bodyPresent=true hasSorry=false"
    | .defnInfo info =>
      if info.value.hasSorry then throwError "Owned definition contains admission"
      logInfo m!"OWN_BODY {name} definition bodyPresent=true hasSorry=false"
    | _ => throwError "Unexpected owned declaration kind"
    elabCommand (← `(#print $(mkIdent name)))
    elabCommand (← `(#print axioms $(mkIdent name)))
'''.replace('ROOTS',json.dumps(roots))
        audit=scratch/(leaf+'-audit.lean');audit.write_text(t+extra)
        run=command([binary,'--trust=0','-DwarningAsError=true',str(audit)],env=env)
        text=run.stdout+run.stderr;(scratch/(leaf+'-audit.txt')).write_text(text)
        if run.returncode: raise RuntimeError('Literal/body audit failed: '+leaf+'\n'+text[-4000:])
        bodies=re.findall(r'^OWN_BODY (\S+) (theorem|definition) bodyPresent=true hasSorry=false$',text,re.M)
        if not set(roots).issubset({n for n,k in bodies}): raise RuntimeError('Missing root audit')
        for name,kind in bodies:
            match=re.search("'"+re.escape(name)+r"' depends on axioms: \[([^]]*)\]",text)
            if match: axioms=[x.strip() for x in match.group(1).replace('\n',' ').split(',') if x.strip()]
            elif "'"+name+"' does not depend on any axioms" in text: axioms=[]
            else: raise RuntimeError('Missing transitive axiom audit: '+name)
            if not set(axioms)<=ALLOWED: raise RuntimeError('Unallowed transitive axioms: '+name)
            all_records.append({'name':name,'kind':kind,'semantic_root':name in roots,'axioms':axioms,'has_sorry':False,'body_present':True})
        if sha(source)!=source_hashes[rel]: raise RuntimeError('Concurrent source drift: '+rel)
        results.append({'module':module_name(leaf),'build_exit':0,'fresh_audit_exit':0,'semantic_roots':len(roots),'owned_records':len(bodies)})
        print('PASS '+leaf,flush=True)
    hostile={
      'excluded-prime-is-not-unexcluded': '''import GRWTSK.NumberTheory.ArithmeticFunctions.ExcludedDensityCorrection
open GRWTSK.NumberTheory.ArithmeticFunctions
example : excludedDensityCorrection 2 (2^2) = (1:ℝ)/3 := by
  simpa using excluded_density_correction_prime_power 2 (by norm_num : Nat.Prime 2) (by norm_num : (2:ℕ) ≠ 0)
''',
      'tail-bound-needs-positive-cutoff': '''import GRWTSK.NumberTheory.ArithmeticFunctions.DensityMomentTails
open GRWTSK.NumberTheory.ArithmeticFunctions
example : densityReciprocalTail 0 ≤ (∑' n : ℕ, densityCorrectionHalf n) / Real.sqrt 0 :=
  density_reciprocal_tail_le_half (by norm_num : (1:ℝ) ≤ 0)
''',
      'prime-power-needs-primality': '''import GRWTSK.NumberTheory.ArithmeticFunctions.ExcludedDensityCorrection
open GRWTSK.NumberTheory.ArithmeticFunctions
example (d p k : ℕ) (hk : k ≠ 0) : excludedDensityCorrection d (p^k) =
    if p.Coprime d then 1/((p:ℝ)+1) else 1 :=
  excluded_density_correction_prime_power d (by assumption) hk
'''}
    controls=[]
    for name,text in ([] if args.only_series else hostile.items()):
        path=scratch/(name+'.lean');path.write_text(text)
        run=command([binary,'--trust=0','-DwarningAsError=true',str(path)],env=env)
        (scratch/(name+'.txt')).write_text(run.stdout+run.stderr)
        if run.returncode==0: raise RuntimeError('Hostile control accepted: '+name)
        diagnostic=run.stdout+run.stderr
        required={
          'excluded-prime-is-not-unexcluded':['Type mismatch','expected to have type','excludedDensityCorrection'],
          'tail-bound-needs-positive-cutoff':['unsolved goals','False'],
          'prime-power-needs-primality':['assumption','Nat.Prime']}
        if not all(token in diagnostic for token in required[name]):
            raise RuntimeError('Hostile control failed outside its intended contract: '+name)
        controls.append({'name':name,'actual_exit':run.returncode,'outcome':'rejected'})
    if args.only_series:
        controls=core['hostile_controls']
        if len(controls)!=3 or any(x['outcome']!='rejected' or x['actual_exit']==0 for x in controls):
            raise RuntimeError('Checked dependency hostile controls unavailable')
        dependency_receipt['hostile_controls_reused_not_new']=True
    semantic=[x for x in all_records if x['semantic_root']]
    receipt={'schema':'public-density-arithmetic-replay-v1','outcome':'passed','source_hashes':source_hashes,
      'toolchain':'leanprover/lean4:v4.33.0','mathlib_revision':revision.stdout.strip(),
      'trust':0,'fatal_warnings':True,'selected_checks':{'fresh-source':'passed','literal-contracts':'passed','owned-bodies':'passed','transitive-axioms':'passed','hostile-controls':'passed'},
      'modules':results,'semantic_theorems':sum(x['kind']=='theorem' for x in semantic),
      'semantic_definitions':sum(x['kind']=='definition' for x in semantic),
      'literal_contracts':contracts,'records':all_records,'hostile_controls':controls,
      'independent_human_acceptance':False,'full_repository_build':False,'checked_dependency_receipt':dependency_receipt,
      'P04':'OPEN','P05':'OPEN','absolute_MB6':'OPEN','RH':'OPEN'}
    with target.open('x') as stream:
        stream.write(json.dumps(receipt,indent=2)+'\n')
    print(json.dumps({'outcome':'passed','modules':len(results),'theorems':receipt['semantic_theorems'],'definitions':receipt['semantic_definitions'],'contracts':len(contracts),'body_axiom_records':len(all_records),'receipt':str(target.relative_to(ROOT))}))

if __name__=='__main__':main()
