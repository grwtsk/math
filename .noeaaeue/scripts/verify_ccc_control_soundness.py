"""Fresh scoped CCC replay; pinned installed dependencies, exact registry, retained outcomes."""
from pathlib import Path
from datetime import datetime, timezone
import fcntl
import hashlib
import json
import os
import re
import shutil
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parents[2]
OPS = ROOT / '.noeaaeue/.local/ccc-control-soundness'
OPS.mkdir(parents=True, exist_ok=True)
PREFLIGHT_ONLY = sys.argv[1:] == ['--preflight-only']
if sys.argv[1:] and not PREFLIGHT_ONLY:
    sys.exit('usage: .noeaaeue/scripts/verify-ccc.sh [--preflight-only]')
LOCK_HANDLE = (OPS / 'native-check.lock').open('a+')
try:
    fcntl.flock(LOCK_HANDLE, fcntl.LOCK_EX | fcntl.LOCK_NB)
except BlockingIOError:
    sys.exit('An owned CCC transfer check is already running; do not duplicate it.')

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

def now():
    return datetime.now(timezone.utc).isoformat()

def save(path, data):
    temp = path.with_suffix(path.suffix + '.tmp')
    temp.write_text(json.dumps(data, indent=2) + '\n')
    temp.replace(path)

def require(condition, message):
    if not condition:
        raise RuntimeError(message)

def registry_scope(plan):
    """Validate the explicit mathematical family, independent of its directories."""
    order, rows = plan['order'], plan['sources']
    count = plan['source_inputs']
    require(type(count) is int and count > 0, 'Invalid source input count')
    require(isinstance(order, list) and isinstance(rows, list), 'Registry order and sources must be lists')
    require(count == len(order) == len(rows), 'Source count disagrees with registry')
    family = plan['mathematical_family_sources']
    require(isinstance(family, list) and family, 'Missing explicit mathematical family')
    for rel in order + family:
        require(isinstance(rel, str), 'Non-string registered source path')
        parts = rel.split('/')
        require(parts[0] == 'GRWTSK' and rel.endswith('.lean') and '\\' not in rel,
                'Registered source is outside the canonical Lean tree: ' + rel)
        require(all(part not in {'', '.', '..'} for part in parts), 'Noncanonical source path')
    require(len(set(order)) == count, 'Repeated ordered source')
    destinations = [row['destination'] for row in rows]
    require(len(set(destinations)) == count and set(destinations) == set(order),
            'Registry destinations do not biject with source order')
    family_set = set(family)
    require(len(family_set) == len(family) and family_set <= set(order), 'Invalid family membership')
    family_counts = [plan[key] for key in ('mathematical_family_modules', 'ccc_modules') if key in plan]
    require(family_counts, 'Missing mathematical family count')
    require(all(type(value) is int and value == len(family) for value in family_counts),
            'Mathematical family count disagrees with registry')
    prerequisites = plan['prerequisites']
    aggregators = plan.get('aggregators', 0)
    require(type(prerequisites) is int and prerequisites >= 0, 'Invalid prerequisite count')
    require(type(aggregators) is int and aggregators == 0, 'Retired umbrellas must not be compiled')
    require(prerequisites == count - len(family), 'Prerequisite count disagrees with registry')
    return count, family

for pointer in ['latest-native-run.json', 'latest-analytic-run.json', 'latest-public-check.json',
                'latest-root-check.json', 'latest-analytic-production-run.json']:
    if (OPS / pointer).exists():
        previous = json.loads((OPS / pointer).read_text())
        if json.loads(Path(previous['receipt']).read_text())['status'] == 'RUNNING':
            sys.exit('Unreconciled owned RUNNING receipt: ' + previous['receipt'])

CANDIDATE = ROOT
PLAN_FILE = ROOT / '.noeaaeue/evidence/ccc-control-soundness-source-manifest.json'
ENTRY_PLAN_SHA256 = sha(PLAN_FILE)
PLAN = json.loads(PLAN_FILE.read_text())
require(sha(PLAN_FILE) == ENTRY_PLAN_SHA256, 'Source registry changed while opening it')
latest = {'plan_sha256': ENTRY_PLAN_SHA256}
SOURCE_COUNT, MATHEMATICAL_FAMILY = registry_scope(PLAN)
require(len(PLAN['selected_axiom_names']) == len(set(PLAN['selected_axiom_names'])) == 802,
        'Selected axiom-name registry is incomplete or contains duplicates')
RUN = OPS / ('public-ccc-check-' + datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ'))
RUN.mkdir(exist_ok=False)
ENTRY_DRIVER = Path(__file__).resolve()
ENTRY_DRIVER_SHA256 = sha(ENTRY_DRIVER)
shutil.copy2(ENTRY_DRIVER, RUN / 'exact-driver.py')
shutil.copy2(PLAN_FILE, RUN / 'exact-source-registry.json')
require(sha(ENTRY_DRIVER) == sha(RUN / 'exact-driver.py') == ENTRY_DRIVER_SHA256,
        'Frozen verification driver differs from its entry bytes')
require(sha(PLAN_FILE) == sha(RUN / 'exact-source-registry.json') == ENTRY_PLAN_SHA256,
        'Frozen source registry differs from its entry bytes')
BUILD = RUN / 'build'
BUILD.mkdir()
RECEIPT = RUN / 'receipt.json'
record = {'schema': 'ccc-scoped-public-source-replay-v1', 'status': 'RUNNING',
          'started': now(), 'worker_pid': os.getpid(), 'candidate': str(CANDIDATE),
          'plan_sha256': latest['plan_sha256'], 'run': str(RUN),
          'source_acceptance_sha256': PLAN['source_acceptance_sha256'],
          'driver_sha256': ENTRY_DRIVER_SHA256,
          'registered_source_inputs': SOURCE_COUNT,
          'mathematical_family_sources': MATHEMATICAL_FAMILY,
          'compiler_steps': [], 'selected_axiom_reports': 0,
          'scoped_source_acceptance': False, 'independent_review': False,
          'production_integration': False, 'remote_write': False,
          'qualification': 'Fresh registered public project sources against installed pinned dependency objects. No clean dependency-source replay or full repository CI.'}
save(RECEIPT, record)
save(OPS / 'latest-public-check.json', {'run': str(RUN), 'receipt': str(RECEIPT), 'worker_pid': os.getpid()})
start = time.monotonic()
try:
    lean = subprocess.check_output(['elan', 'which', 'lean'], cwd=ROOT, text=True).strip()
    version = subprocess.check_output([lean, '--version'], text=True).strip()
    require('version 4.33.0,' in version and 'd8b18978322de05a8f3dba51ef03cf5461676c17' in version,
            version)
    require((ROOT / 'lean-toolchain').read_text().strip() == 'leanprover/lean4:v4.33.0',
            'Lean toolchain file differs from the pinned compiler')
    manifest = json.loads((ROOT / 'lake-manifest.json').read_text())
    dependency_heads = {}
    dependency_paths = []
    packages_without_installed_objects = []
    for package in manifest['packages']:
        package_root = ROOT / manifest['packagesDir'] / package['name']
        actual = subprocess.check_output(['git', '-C', str(package_root), 'rev-parse', 'HEAD'], text=True).strip()
        require(actual == package['rev'], package['name'])
        dependency_heads[package['name']] = actual
        obj = package_root / '.lake/build/lib/lean'
        if obj.is_dir():
            dependency_paths.append(str(obj))
        else:
            packages_without_installed_objects.append(package['name'])
    require(dependency_heads['mathlib'] == 'db584cd6d46c92f209a44c0f1c829460d327499d',
            'Invalidated Mathlib revision')
    require((ROOT / manifest['packagesDir'] / 'mathlib/.lake/build/lib/lean/Mathlib/Data/Real/Basic.olean').is_file(),
            'Pinned Mathlib object cache is unavailable')
    environment = dict(os.environ, LEAN_PATH=':'.join([str(BUILD)] + dependency_paths))
    record.update(compiler={'path': lean, 'version': version, 'sha256': sha(Path(lean))},
                  dependency_heads=dependency_heads, dependency_object_roots=dependency_paths,
                  packages_without_installed_objects=packages_without_installed_objects,
                  warning_as_error=True,
                  threads=1, trust_level=0, standard_linter_set=True,
                  header_linter_exception=True,
                  target_head_at_entry=subprocess.check_output(['git', 'rev-parse', 'HEAD'], cwd=ROOT, text=True).strip())
    # The inherited header-linter flag is false; it is a documented source-header
    # exception, not a change to the standard proof-source linter set.
    controls = {str(ROOT / p): sha(ROOT / p) for p in ['lean-toolchain', 'lakefile.toml', 'lake-manifest.json']}
    controls.update({str(Path(__file__).resolve()): sha(Path(__file__).resolve()),
                     str(Path(lean)): record['compiler']['sha256'],
                     str(PLAN_FILE): sha(PLAN_FILE)})
    require(sha(ENTRY_DRIVER) == sha(RUN / 'exact-driver.py') == ENTRY_DRIVER_SHA256,
            'Verification driver changed after freezing')
    require(sha(PLAN_FILE) == sha(RUN / 'exact-source-registry.json') == ENTRY_PLAN_SHA256,
            'Source registry changed after freezing')
    controls[str(RUN / 'exact-driver.py')] = sha(Path(__file__).resolve())
    controls[str(RUN / 'exact-source-registry.json')] = sha(PLAN_FILE)
    sources = {row['destination']: row['destination_sha256'] for row in PLAN['sources']}
    require(len(sources) == SOURCE_COUNT and set(PLAN['order']) == set(sources),
            'Registered source map disagrees with its ordered source census')
    require(PLAN['audit_destination'] not in sources,
            'Audit source must remain separate from the project source census')
    sources[PLAN['audit_destination']] = PLAN['audit_destination_sha256']
    for rel, expected in sources.items():
        require(sha(CANDIDATE / rel) == expected, rel)
        dst = RUN / 'inputs' / rel
        dst.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(CANDIDATE / rel, dst)
        require(sha(dst) == expected, rel)
    save(RUN / 'frozen-inputs.json', {'sources': sources, 'controls': controls})
    record['frozen_inputs_sha256'] = sha(RUN / 'frozen-inputs.json')
    save(RECEIPT, record)
    consumed_objects = {}

    def stable():
        require(sha(RUN / 'frozen-inputs.json') == record['frozen_inputs_sha256'],
                'Frozen input registry changed during verification')
        for path, expected in controls.items():
            require(sha(Path(path)) == expected, path)
        for rel, expected in sources.items():
            require(sha(CANDIDATE / rel) == expected, rel)
            require(sha(RUN / 'inputs' / rel) == expected, rel)
        for path, expected in consumed_objects.items():
            require(sha(Path(path)) == expected, 'Produced object changed before consumption: ' + path)

    args = [lean, '--trust=0', '--memory=4096', '--threads=1',
            '-DautoImplicit=false', '-DrelaxedAutoImplicit=false',
            '-DwarningAsError=true', '-Dweak.linter.mathlibStandardSet=true',
            '-Dweak.linter.style.header=false']
    record['compiler_arguments'] = args

    def compile_one(rel, export=True):
        stable()
        argv = list(args)
        obj = BUILD / Path(rel).with_suffix('.olean')
        if export:
            obj.parent.mkdir(parents=True, exist_ok=True)
            argv += ['-o', str(obj)]
        argv.append(str(RUN / 'inputs' / rel))
        log = RUN / (rel.replace('/', '--') + '.log')
        step = {'path': rel, 'started': now(), 'status': 'RUNNING',
                'command': argv, 'log': str(log)}
        record['compiler_steps'].append(step)
        record['active_source'] = rel
        save(RECEIPT, record)
        print('CHECK', rel, flush=True)
        tick = time.monotonic()
        with log.open('w') as output:
            proc = subprocess.Popen(argv, cwd=RUN / 'inputs', env=environment, stdout=output, stderr=subprocess.STDOUT)
            step['lean_pid'] = proc.pid
            save(RECEIPT, record)
            try:
                code = proc.wait(timeout=1800)
            except subprocess.TimeoutExpired:
                proc.terminate()
                try:
                    proc.wait(timeout=10)
                except subprocess.TimeoutExpired:
                    proc.kill()
                    proc.wait()
                step.update(status='TIMEOUT', exit_code=proc.returncode, finished=now(), seconds=time.monotonic()-tick,
                            log_sha256=sha(log))
                save(RECEIPT, record)
                raise RuntimeError('Owned compiler timed out: ' + rel)
        step.update(exit_code=code, finished=now(), seconds=time.monotonic()-tick, log_sha256=sha(log),
                    status='PASS' if code == 0 else 'FAIL')
        if code == 0 and export:
            step['object'] = str(obj)
            step['object_sha256'] = sha(obj)
            consumed_objects[str(obj)] = step['object_sha256']
        save(RECEIPT, record)
        stable()
        if code != 0:
            raise RuntimeError('Actual compiler failure: ' + rel + '; inspect preserved log ' + str(log))
        return log

    position = {Path(rel).with_suffix('').as_posix().replace('/', '.'): i
                for i, rel in enumerate(PLAN['order'])}
    for rel in PLAN['order']:
        for import_line in re.findall(r'^import (.+)$', (ROOT / rel).read_text(), re.M):
            for module in import_line.split('--', 1)[0].split():
                if module.startswith('GRWTSK.'):
                    require(module in position and position[module] < position[Path(rel).with_suffix('').as_posix().replace('/', '.')],
                            module)
    require(set(MATHEMATICAL_FAMILY) <= set(sources),
            'Mathematical family is not covered by the frozen source map')
    require(all((RUN / 'inputs' / rel).is_file() for rel in MATHEMATICAL_FAMILY),
            'A frozen mathematical-family input is unavailable')
    stable()
    if PREFLIGHT_ONLY:
        record.update(status='PREFLIGHT_PASS', fresh_lean_inputs=0, selected_axiom_reports=0,
                      scoped_source_acceptance=False, all_bound_inputs_stable=True)
        print('CCC pinned dependencies and exact input registry passed; no Lean compilation.', flush=True)
    else:
        for relative in PLAN['order']:
            compile_one(relative)
        audit_log = compile_one(PLAN['audit_destination'], export=False)
        audit = audit_log.read_text()
        names = re.findall(r"'([^']+)' (?:depends on axioms:|does not depend on any axioms)", audit)
        require(names == PLAN['selected_axiom_names'],
                'Missing, repeated, reordered or changed axiom reports')
        require(len(names) == len(set(names)) == 802,
                'Axiom report census is incomplete or contains duplicates')
        allowed = {'propext', 'Classical.choice', 'Quot.sound'}
        observed_foundations = set()
        for report in re.findall(r'depends on axioms:\s*\[([^\]]*)\]', audit):
            actual = set(re.findall(r'[A-Za-z_][A-Za-z0-9_.]*', report))
            require(actual <= allowed, str(actual - allowed))
            observed_foundations.update(actual)
        for package in manifest['packages']:
            actual = subprocess.check_output(['git', '-C', str(ROOT / manifest['packagesDir'] / package['name']),
                                              'rev-parse', 'HEAD'], text=True).strip()
            require(actual == dependency_heads[package['name']], package['name'])
        stable()
        expected_objects = {str(BUILD / Path(rel).with_suffix('.olean')) for rel in PLAN['order']}
        observed_objects = {str(path) for path in BUILD.rglob('*.olean')}
        require(set(consumed_objects) == expected_objects == observed_objects,
                'Fresh object census does not match the registered project sources')
        require(len(expected_objects) == SOURCE_COUNT,
                'Fresh object count disagrees with the registered source count')
        record.update(status='PASS', scoped_source_acceptance=True, fresh_lean_inputs=SOURCE_COUNT,
                      selected_axiom_reports=802, ordered_report_bijection=True,
                      foundations=sorted(observed_foundations), allowed_foundations=sorted(allowed), audit_log_sha256=sha(audit_log),
                      all_bound_inputs_stable=True, all_exact_fresh_object_hashes=consumed_objects,
                      target_head_at_exit=subprocess.check_output(['git', 'rev-parse', 'HEAD'], cwd=ROOT, text=True).strip())

except BaseException as error:
    record.update(status='FAIL', error=repr(error), scoped_source_acceptance=False)
    print('FAIL', repr(error), flush=True)
finally:
    record.update(finished=now(), seconds=time.monotonic()-start)
    record.pop('active_source', None)
    save(RECEIPT, record)
    print(record['status'], str(RECEIPT), flush=True)
sys.exit(0 if record['status'] in {'PASS', 'PREFLIGHT_PASS'} else 1)
