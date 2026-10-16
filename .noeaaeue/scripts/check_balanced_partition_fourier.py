"""Trust-zero replay and exact owned-declaration audit of balanced-partition and finite Fourier additions.

This selected replay uses pinned cached dependency objects. It does not replace
check_math_trust.py or claim a cold reconstruction of Mathlib.
"""
from pathlib import Path
import datetime
import hashlib
import json
import subprocess
import sys
import shutil

ROOT = Path(__file__).resolve().parents[2]
OUT = ROOT / '.noeaaeue/receipts/balanced-partition-fourier'
MODULES = [
    'GRWTSK.Combinatorics.Sequences.BalancedPartitionSampling',
    'GRWTSK.Combinatorics.Sequences.CyclicSumsetGrowth',
    'GRWTSK.Analysis.Fourier.ZModCharacterEnergy',
    'GRWTSK.Analysis.Fourier.ZModIndependentSelection',
    'GRWTSK.Analysis.Fourier.FiniteExponentialLayers',
    'GRWTSK.Analysis.Fourier.ZModPartitionEnergy',
    'GRWTSK.Analysis.Fourier.ZModBalancedPartition',
    'GRWTSK.Analysis.Fourier.ZModSmallEnergySets',
    'GRWTSK.Analysis.Fourier.ZModSmallEnergySpectrum',
    'GRWTSK.Analysis.Fourier.ZModConcentratedFrequencies',
]

def run(args, log):
    p = subprocess.run(args, cwd=ROOT, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
    (OUT / log).write_text(p.stdout)
    return {'command': args, 'exit_code': p.returncode, 'log': str((OUT / log).relative_to(ROOT))}

def main():
    OUT.mkdir(parents=True, exist_ok=True)
    previous = OUT / 'selected-replay.json'
    if previous.exists():
        archive = OUT / 'previous-runs' / datetime.datetime.now(datetime.timezone.utc).strftime('%Y%m%dT%H%M%S%fZ')
        archive.mkdir(parents=True)
        for old in [previous, OUT / 'selected-owned-audit.log', OUT / 'declarations.json', OUT / 'SelectedOwnedAudit.lean']:
            if old.exists():
                shutil.copy2(old, archive / old.name)
        for module in MODULES:
            old = OUT / (module.rsplit('.', 1)[1] + '.log')
            if old.exists():
                shutil.copy2(old, archive / old.name)
    receipt = {
        'scope': 'selected source replay and exact owning-module census; cached dependencies reused',
        'utc': datetime.datetime.now(datetime.timezone.utc).isoformat(),
        'head': subprocess.check_output(['git', 'rev-parse', 'HEAD'], cwd=ROOT, text=True).strip(),
        'lean_toolchain': (ROOT / 'lean-toolchain').read_text().strip(),
        'mathlib_commit': subprocess.check_output(['git', '-C', '.lake/packages/mathlib', 'rev-parse', 'HEAD'], cwd=ROOT, text=True).strip(),
        'sources': {}, 'checks': [],
    }
    for module in MODULES:
        path = module.replace('.', '/') + '.lean'
        source = ROOT / path
        receipt['sources'][path] = hashlib.sha256(source.read_bytes()).hexdigest()
        obj = ROOT / '.lake/build/lib/lean' / (module.replace('.', '/') + '.olean')
        obj.parent.mkdir(parents=True, exist_ok=True)
        check = run(['lake', 'env', 'lean', '--trust=0', '-DwarningAsError=true', '-o', str(obj), path], module.rsplit('.', 1)[1] + '.log')
        receipt['checks'].append(check)
        print(module, check['exit_code'], flush=True)
        if check['exit_code']:
            receipt['status'] = 'SOURCE_REPLAY_FAILED'
            (OUT / 'selected-replay.json').write_text(json.dumps(receipt, indent=2) + '\n')
            return 1
    imports = ''.join('import ' + module + '\n' for module in MODULES)
    names = ', '.join('`' + module for module in MODULES)
    audit = imports + '''import Lean
open Lean Elab Command
elab "#audit_balanced_modules" : command => do
  let env ← getEnv
  let selected : Array Name := #[NAMES]
  let mut seen : Array Name := #[]
  let mut count : Nat := 0
  let mut violations : Array String := #[]
  for (data, owner) in env.header.moduleData.toList.zip env.header.moduleNames.toList do
    if selected.contains owner then
      seen := seen.push owner
      for info in data.constants do
        if (env.getModuleIdxFor? info.name).bind (fun idx => env.header.moduleNames[idx]?) == some owner then
          let axioms ← collectAxioms info.name
          if info.isUnsafe || info.isPartial then
            violations := violations.push s!"unsafe or partial declaration: {info.name}"
          match info with
          | .axiomInfo _ => violations := violations.push s!"new axiom: {info.name}"
          | _ => pure ()
          for ax in axioms do
            unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
              violations := violations.push s!"unapproved axiom {ax} in {info.name}"
          let type ← liftTermElabM do Meta.ppExpr info.type
          let kind := match info with
            | .thmInfo _ => "theorem"
            | .defnInfo _ => "definition"
            | .axiomInfo _ => "axiom"
            | .ctorInfo _ => "constructor"
            | .inductInfo _ => "inductive"
            | _ => "generated"
          let row := Json.mkObj [("module", toJson owner.toString),
            ("name", toJson info.name.toString), ("kind", toJson kind),
            ("type", toJson type.pretty), ("axioms", toJson (axioms.toList.map Name.toString)),
            ("unsafe", toJson info.isUnsafe), ("partial", toJson info.isPartial)]
          logInfo m!"BALANCED_DECL::{row.compress}"
          count := count + 1
  unless selected.all seen.contains do throwError "missing selected owning module"
  unless violations.isEmpty do throwError "selected trust audit failed: {violations.toList}"
  logInfo m!"BALANCED_COUNT::{count}"
#audit_balanced_modules
'''.replace('NAMES', names)
    audit_path = OUT / 'SelectedOwnedAudit.lean'
    audit_path.write_text(audit)
    check = run(['lake', 'env', 'lean', '--trust=0', '-DwarningAsError=true', str(audit_path)], 'selected-owned-audit.log')
    receipt['checks'].append(check)
    declarations = []
    for line in (OUT / 'selected-owned-audit.log').read_text().splitlines():
        if 'BALANCED_DECL::' in line:
            declarations.append(json.loads(line.split('BALANCED_DECL::', 1)[1]))
    (OUT / 'declarations.json').write_text(json.dumps(declarations, indent=2) + '\n')
    receipt['declaration_count'] = len(declarations)
    receipt['theorem_count'] = sum(d['kind'] == 'theorem' for d in declarations)
    receipt['status'] = 'SELECTED_KERNEL_REPLAY_AND_OWNED_AUDIT_PASSED' if check['exit_code'] == 0 else 'SELECTED_AUDIT_FAILED'
    receipt['outcome'] = 'passed' if check['exit_code'] == 0 else 'failed'
    receipt['source_hashes'] = receipt['sources']
    receipt['selected_checks'] = {'trust_zero_fatal_warning_replay': 'passed', 'exact_owned_declaration_audit': 'passed' if check['exit_code'] == 0 else 'failed'}
    (OUT / 'selected-replay.json').write_text(json.dumps(receipt, indent=2) + '\n')
    print(receipt['status'], receipt['declaration_count'], flush=True)
    return bool(check['exit_code'])

if __name__ == '__main__':
    sys.exit(main())
