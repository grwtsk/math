#!/usr/bin/env python3
"""Derive portable source evidence from an export or a source migration.

The export receipt and original files are read only. Import-only preservation
is independently verified; this program does not perform a new kernel check.
Existing export receipts require acceptance unless --allow-prepared is supplied.
Migration mode always produces prepared source evidence and never runs Lean.
JSON goes to stdout unless --output is supplied. No host absolute paths or
cached artifacts are published, and source preparation never asserts acceptance.
"""
from __future__ import annotations

import argparse
import json
import os
from pathlib import Path
import re
import subprocess
import sys
from types import SimpleNamespace

sys.dont_write_bytecode = True
import check_moebius_response as checker
import moebius_response_inputs as inputs
import moebius_owner_census as owner_census


def source_bytes(path: Path) -> bytes:
    return checker.stable_read(path.absolute()).data


def import_only_bytes(original: bytes, substitutions: list[dict]) -> bytes:
    text = original.decode("utf-8")
    masked = checker.code_mask(text)
    mapping = {}
    for row in substitutions:
        old, new = row["source_import"], row["export_import"]
        if old in mapping and mapping[old] != new:
            raise ValueError("Inconsistent declared import substitution")
        mapping[old] = new
    chunks, previous, used = [], 0, set()
    for statement in re.finditer(
            r"(?m)^[ \t]*(?:public[ \t]+)?(?:meta[ \t]+)?import[ \t]+([^\r\n]*)", masked):
        for token in re.finditer(r"[A-Za-z_][A-Za-z0-9_.]*", statement.group(1)):
            start, end = statement.start(1)+token.start(), statement.start(1)+token.end()
            old = text[start:end]
            chunks.extend((text[previous:start], mapping.get(old, old)))
            previous = end
            if old in mapping:
                used.add(old)
    if used != set(mapping):
        raise ValueError("Declared import substitution is absent from original source")
    chunks.append(text[previous:])
    return "".join(chunks).encode("utf-8")


# Independently checked migration source recipes; generation performs no native commands.
REQUIRED_ASSETS = (
    '.noeaaeue/scripts/check_moebius_response.py', '.noeaaeue/scripts/generate_moebius_response_manifest.py',
    '.noeaaeue/scripts/moebius_response_inputs.py', '.noeaaeue/scripts/moebius_owner_census.py',
    '.noeaaeue/scripts/check_math_layout.py', 'lake-manifest.json', 'lakefile.toml', 'lean-toolchain',
    '.noeaaeue/scripts/check_lean_repository_inputs.py', '.noeaaeue/scripts/test_moebius_response_inputs.py',
    '.noeaaeue/scripts/test_moebius_owner_census.py', '.noeaaeue/scripts/test_moebius_response_checker.py',
    '.noeaaeue/scripts/test_generate_moebius_response_manifest.py', '.noeaaeue/scripts/diagnose_moebius_shell.py',
    '.noeaaeue/evidence/moebius-shell-diagnostics.json', 'docs/math-layout.md', '.noeaaeue/documentation/math-layout.json',
)
LATE_AUDIT_SUFFIX = ('\n/-! Operational final audit after all mathematical library imports; '
                     'no supplier theorem is asserted. -/\nrun_cmd P04Audit.check\n')


def pinned_runtime_identity(lean: Path, receipt: dict) -> tuple[str, str]:
    """Use an explicitly supplied historical identity after checking actual bytes.

    This function never executes Lean, including --version. A fresh kernel replay
    checks the runtime separately; a version label here has historical provenance.
    """
    version, expected = receipt.get('lean_version'), receipt.get('lean_sha256')
    if not isinstance(version, str) or not version.strip() or not re.fullmatch(r'[0-9a-f]{64}', expected or ''):
        raise ValueError('Historical pinned runtime identity is incomplete')
    actual = checker.digest(source_bytes(lean))
    if actual != expected:
        raise ValueError('Installed Lean bytes do not match the supplied historical identity')
    return version, actual


def substitution_rows(data: bytes, mapping: dict[str, list[str] | str]) -> list[dict]:
    found = checker.imports(data.decode())
    return [{'source_import': mod, 'export_import': ' '.join(mapping[mod])
             if isinstance(mapping.get(mod), list) else mapping.get(mod, mod)} for mod in found]


def rewrite_declared_imports(data: bytes, mapping: dict) -> bytes:
    for old, replacements in mapping.items():
        if not isinstance(old, str) or not isinstance(replacements, (str, list)):
            raise ValueError('Malformed declared import relocation')
        values = replacements if isinstance(replacements, list) else [replacements]
        if not values or any(not isinstance(v, str) or not re.fullmatch(r'[A-Za-z_][A-Za-z0-9_.]*', v) for v in values):
            raise ValueError('Malformed declared import replacement')
    return import_only_bytes(data, substitution_rows(data, mapping))


def late_audit_bytes(modules: set[str], audit: str, aggregator: str) -> bytes:
    return (''.join('import '+m+'\n' for m in sorted(modules-{audit, aggregator}))+LATE_AUDIT_SUFFIX).encode()


def project_inventory(root: Path) -> dict[str, Path]:
    """Read the whole physical library, reject linked directories/files."""
    records = {}
    umbrella = checker.relative_file(root, 'GRWTSK.lean')
    records['GRWTSK'] = umbrella
    for directory, subdirs, filenames in os.walk(root/'GRWTSK', followlinks=False):
        for name in subdirs:
            descriptor = checker.directory_descriptor(Path(directory)/name)
            os.close(descriptor)
        for name in filenames:
            if Path(name).suffix != '.lean':
                continue
            path = Path(directory)/name
            relative = path.relative_to(root).as_posix()
            module = relative[:-5].replace('/', '.')
            checker.read_regular(root, relative)
            if module in records:
                raise ValueError('Duplicate physical module path')
            records[module] = path
    return records


def verify_graph(records: dict[str, dict]) -> list[str]:
    edges = {}
    for module, record in records.items():
        if not checker.MODULE_PATTERN.fullmatch(module) or record['path'] != module.replace('.', '/')+'.lean':
            raise ValueError('Module/path identity mismatch: '+module)
        deps = {m for m in record['imports'] if m == 'GRWTSK' or m.startswith('GRWTSK.')}
        if deps-set(records):
            raise ValueError('Unmanifested project import: '+module)
        edges[module] = deps
    active, seen, order = set(), set(), []
    def visit(module):
        if module in active:
            raise ValueError('Project import cycle: '+module)
        if module in seen:
            return
        active.add(module)
        for child in sorted(edges[module]):
            visit(child)
        active.remove(module); seen.add(module); order.append(module)
    for module in sorted(edges):
        visit(module)
    return order


def incoming_blob(root: Path, commit: str, relative: str) -> bytes:
    if not re.fullmatch(r'[0-9a-f]{40}', commit):
        raise ValueError('Incoming provenance needs an exact Git commit')
    checker.safe_relative(relative)
    result = subprocess.run(['git', '-C', str(root), 'show', commit+':'+relative],
                            check=True, capture_output=True)
    return result.stdout


def pure_import_umbrella(data: bytes) -> bool:
    code = checker.code_mask(data.decode())
    statement=re.compile(r'[ \t]*import[ \t]+[A-Za-z_][A-Za-z0-9_.]*(?:[ \t]+[A-Za-z_][A-Za-z0-9_.]*)*[ \t]*')
    command_keywords={'def','theorem','lemma','axiom','constant','abbrev','instance','opaque',
                      'namespace','section','end','noncomputable','unsafe','partial','mutual',
                      'run_cmd','open','export','attribute','set_option','variable','example'}
    for line in code.splitlines():
        if not line.strip():
            continue
        if not statement.fullmatch(line) or command_keywords.intersection(line.split()[1:]):
            return False
    return True


def validate_migration_sources(root: Path, receipt: dict, *, incoming: dict | None = None,
                               blob_reader=incoming_blob) -> tuple[dict, dict, dict[Path, str], dict]:
    """Reconstruct archived recipes first, then admit only explicit incoming changes.

    Incoming commit bytes are provenance, never proof acceptance. Extensions are
    opt-in: exact committed sources, a declaration-free root import composition,
    or the completely reconstructed final operational audit. Any other mutation
    of an already migrated mathematical proof is rejected.
    """
    if receipt.get('schema') != 'minimal-canonical-live-application/1' or receipt.get('status') != 'APPLIED_STATIC_ONLY_NATIVE_ACCEPTANCE_PENDING':
        raise ValueError('Expected the explicit pending migration application receipt')
    archive_manifest_path = Path(receipt['archive_manifest'])
    archive_manifest_bytes = source_bytes(archive_manifest_path)
    if checker.digest(archive_manifest_bytes) != receipt['archive_manifest_sha256']:
        raise ValueError('Archived original manifest changed')
    archive_manifest = json.loads(archive_manifest_bytes)
    if archive_manifest.get('records') != receipt['archived_originals']:
        raise ValueError('Application and archive original inventories disagree')
    archive_originals, archive_watches = {}, {archive_manifest_path: checker.digest(archive_manifest_bytes)}
    for row in receipt['archived_originals']:
        original = checker.safe_relative(row['original_path']).as_posix()
        path = checker.relative_file(root, row['archive_path'])
        data = source_bytes(path)
        if checker.digest(data) != row['sha256'] or original in archive_originals:
            raise ValueError('Changed or duplicate archived original: '+original)
        archive_originals[original] = (data, row)
        archive_watches[path] = row['sha256']
    def original(path, expected):
        if path not in archive_originals or checker.digest(archive_originals[path][0]) != expected:
            raise ValueError('Original source provenance absent: '+path)
        return archive_originals[path][0]
    recipes, provenance = {}, {}
    def add(path, predicted, info):
        module = checker.safe_relative(path).as_posix()[:-5].replace('/', '.')
        if not path.endswith('.lean') or module in recipes:
            raise ValueError('Duplicate or malformed migration destination')
        recipes[module] = predicted; provenance[module] = info
    canonical_map = receipt['canonical_original_module_map']
    for row in receipt['simple_original_variant_provenance']:
        data = original(row['source'], row['source_sha256'])
        predicted = rewrite_declared_imports(data, canonical_map)
        if checker.digest(predicted) != row['proposal_sha256']:
            raise ValueError('Baseline import-only reconstruction failed: '+row['source'])
        add(row['destination'], predicted, {'kind':'import-only-relocation',
            'original_relative_label':row['source'],'original_source_sha256':checker.digest(data),
            'published_source_sha256':checker.digest(predicted),'non_import_bytes_independently_verified':True,
            'import_substitutions':substitution_rows(data,canonical_map)})
    for row in receipt['exact_split_original_variant_provenance']:
        data = original(row['source'], row['source_sha256']); lines = data.splitlines(keepends=True)
        def line_range(bounds):
            first,last = bounds
            if type(first) is not int or type(last) is not int or not 1 <= first <= last <= len(lines):
                raise ValueError('Invalid source partition interval')
            return b''.join(lines[first-1:last])
        prefix = line_range(row['prefix_lines_inclusive']); footer = line_range(row['footer_lines_inclusive'])
        if checker.digest(prefix)!=row['prefix_sha256'] or checker.digest(footer)!=row['footer_sha256']:
            raise ValueError('Split wrapper changed')
        pieces=[]; next_line=row['prefix_lines_inclusive'][1]+1
        if row['prefix_lines_inclusive'][0] != 1 or row['footer_lines_inclusive'][1]!=len(lines):
            raise ValueError('Split source coverage omits a wrapper')
        for part in row['partitions']:
            first,last = part['original_lines_inclusive']
            if first != next_line:
                raise ValueError('Split source partition has a gap or overlap')
            next_line = last+1; piece = line_range([first,last]); pieces.append(piece)
            declared_first,declared_last=part['canonical_declared_lines_inclusive']
            if not first<=declared_first<=declared_last<=last or checker.digest(line_range([declared_first,declared_last]))!=part['canonical_declared_block_sha256'] or checker.digest(piece)!=part['exact_partition_sha256']:
                raise ValueError('Split declaration/comment block changed')
            predicted = rewrite_declared_imports(prefix+piece+footer, canonical_map)
            if checker.digest(predicted)!=part['proposal_sha256']:
                raise ValueError('Split leaf reconstruction failed')
            add(part['destination'],predicted,{'kind':'exact-contiguous-source-partition',
                'original_relative_label':row['source'],'original_source_sha256':checker.digest(data),
                'original_lines_inclusive':[first,last],'exact_partition_sha256':checker.digest(piece),
                'original_wrapper_bytes_preserved':True,'all_original_math_and_comment_bytes_partitioned':True,
                'published_source_sha256':checker.digest(predicted)})
        if next_line!=row['footer_lines_inclusive'][0] or prefix+b''.join(pieces)+footer!=data:
            raise ValueError('Split leaves do not reconstruct the complete archived original')
    retirements=[]
    for row in receipt['retired_aggregate_provenance']:
        data=original(row['source'],row['source_sha256'])
        if not pure_import_umbrella(data):
            raise ValueError('Retired source contains declarations')
        retired_module=row['source'][:-5].replace('/','.')
        expanded={m for mod in checker.imports(data.decode()) for m in canonical_map.get(mod,[mod])}
        if expanded != set(canonical_map.get(retired_module,[])):
            raise ValueError('Retired umbrella expansion does not preserve its imports')
        retirements.append({'original_relative_label':row['source'],'original_source_sha256':checker.digest(data),
                            'declaration_free_independently_verified':True,'replacement_imports':sorted(expanded),
                            'original_comment_and_source_bytes_preserved_in_archive':True})
    flat_map=receipt['flat_original_module_map']; full_map={**canonical_map,**flat_map}
    flat_rows=[(label,data,row) for label,(data,row) in archive_originals.items() if row['kind']=='frozen_flat_Lean_original']
    if {Path(label).stem for label,data,row in flat_rows} != set(flat_map) or len(flat_rows)!=len(flat_map):
        raise ValueError('Complete frozen flat source inventory is not covered')
    for label,data,row in flat_rows:
        module=flat_map[Path(label).stem]; predicted=rewrite_declared_imports(data,full_map)
        add(module.replace('.','/')+'.lean',predicted,{'kind':'import-only-relocation',
            'original_relative_label':label,'original_source_sha256':checker.digest(data),
            'published_source_sha256':checker.digest(predicted),'non_import_bytes_independently_verified':True,
            'import_substitutions':substitution_rows(data,full_map)})
    audit,aggregator=receipt['late_audit']['module'],receipt['aggregator']['module']
    base_files={row['module']:row for row in receipt['files']}
    if len(base_files)!=len(receipt['files']) or len(base_files)!=receipt['source_count']:
        raise ValueError('Migration module inventory is duplicated or incomplete')
    add(audit.replace('.','/')+'.lean',late_audit_bytes(set(base_files),audit,aggregator),
        {'kind':'generated-full-final-audit','audits_after_all_other_library_imports':True})
    add(aggregator.replace('.','/')+'.lean',('import '+audit+'\n').encode(),{'kind':'generated-audit-import'})
    if set(recipes)!=set(base_files) or receipt['module_map']!={m:r['source'] for m,r in base_files.items()}:
        raise ValueError('Original recipes do not cover exactly the application module inventory')
    for m,b in recipes.items():
        if checker.digest(b)!=base_files[m]['sha256'] or base_files[m]['source']!=m.replace('.','/')+'.lean':
            raise ValueError('Migration recipe/hash mismatch: '+m)
    actual=project_inventory(root); allowed=set(recipes); incoming_details=None
    if incoming is not None:
        if incoming.get('schema')!='moebius-incoming-source-provenance/1' or not re.fullmatch(r'[0-9a-f]{40}',incoming.get('commit','')) or not isinstance(incoming.get('modules'),dict):
            raise ValueError('Explicit incoming provenance schema/commit required')
        declarations=incoming['modules']; allowed |= set(declarations)
        if set(actual)!=allowed:
            raise ValueError('Incoming provenance does not cover exact physical library inventory')
        for m,row in declarations.items():
            expected_path=m.replace('.','/')+'.lean'
            if row.get('path')!=expected_path or row.get('strategy') not in {'incoming-exact','composed-root-imports','generated-full-audit'}:
                raise ValueError('Unsupported incoming source resolution strategy')
            current=source_bytes(actual[m])
            if checker.digest(current)!=row.get('sha256'):
                raise ValueError('Incoming resolution live source hash mismatch')
            if row['strategy']=='generated-full-audit':
                if m!=audit or row.get('migration_sha256')!=checker.digest(recipes[m]) or current!=late_audit_bytes(set(actual),audit,aggregator):
                    raise ValueError('Final audit reconstruction does not cover all merged owners')
            else:
                committed=blob_reader(root,incoming['commit'],row.get('incoming_path',expected_path))
                if checker.digest(committed)!=row.get('incoming_sha256'):
                    raise ValueError('Incoming committed source provenance mismatch')
                if row['strategy']=='incoming-exact':
                    if current!=committed or (m in recipes and current!=recipes[m]):
                        raise ValueError('Incoming exact source differs from committed or preserved mathematical bytes')
                elif m!='GRWTSK' or row.get('migration_sha256')!=checker.digest(recipes[m]) or not all(pure_import_umbrella(b) for b in [current,committed,recipes[m]]):
                    raise ValueError('Only a declaration-free root import composition is permitted')
                else:
                    additional = row.get('additional_imports', [])
                    if not isinstance(additional,list) or len(set(additional))!=len(additional) or set(additional)-set(actual) or {audit,aggregator}.intersection(additional):
                        raise ValueError('Malformed or cyclic extra root imports')
                    expected_imports=set(checker.imports(committed.decode()))|set(checker.imports(recipes[m].decode()))|set(additional)
                    if set(checker.imports(current.decode()))!=expected_imports:
                        raise ValueError('Composed root does not preserve exactly declared incoming and ordinary imports')
            recipes[m]=current
            provenance[m]={'kind':'explicit-incoming-resolution','strategy':row['strategy'],
                'incoming_commit':incoming['commit'],'incoming_source_sha256':row.get('incoming_sha256'),
                'migration_source_sha256':row.get('migration_sha256'),'published_source_sha256':checker.digest(current),
                'native_acceptance':False}
        incoming_details={'commit':incoming['commit'],'explicit_module_count':len(declarations),'acceptance':False}
    elif set(actual)!=allowed:
        raise ValueError('Physical library inventory has undeclared added or missing modules')
    records={}
    for m,predicted in recipes.items():
        current=source_bytes(actual[m])
        if current!=predicted:
            raise ValueError('Live source changed beyond declared mathematical preservation recipe: '+m)
        records[m]={'path':m.replace('.','/')+'.lean','sha256':checker.digest(current),'imports':checker.imports(current.decode())}
    verify_graph(records)
    if source_bytes(actual[aggregator])!=('import '+audit+'\n').encode():
        raise ValueError('Final aggregator changed')
    reachable=set(); pending=[audit]
    while pending:
        m=pending.pop()
        if m not in reachable:
            reachable.add(m); pending.extend(i for i in records[m]['imports'] if i in records)
    if reachable!=set(records)-{aggregator}:
        raise ValueError('Late final audit closure does not bind every current owner')
    return records,provenance,archive_watches,{'retired_aggregates':retirements,'incoming_provenance':incoming_details}



def composition_incoming(root: Path, receipt: dict, commit: str, composition: dict,
                         *, blob_reader=incoming_blob, tree_reader=None) -> dict:
    """Declare exactly the incoming additions and reviewed pure root composition."""
    if not re.fullmatch(r'[0-9a-f]{40}',commit) or composition.get('incoming_commit')!=commit or composition.get('status')!='resolved-source-composition-native-acceptance-pending':
        raise ValueError('Pinned incoming commit/composition status mismatch')
    if tree_reader is None:
        result=subprocess.run(['git','-C',str(root),'ls-tree','-r','--name-only',commit,'--','GRWTSK.lean','GRWTSK'],check=True,capture_output=True,text=True)
        incoming_paths={p for p in result.stdout.splitlines() if p.endswith('.lean')}
    else:
        incoming_paths=set(tree_reader(root,commit))
    base={r['module']:r for r in receipt['files']}
    incoming_modules={p[:-5].replace('/','.') for p in incoming_paths}
    actual=project_inventory(root)
    if set(actual)!=set(base)|incoming_modules:
        raise ValueError('Merged owner set differs from exact migration/incoming union')
    rows=composition.get('rows',[])
    by_path={r['path']:r for r in rows}
    if len(by_path)!=len(rows) or 'GRWTSK.lean' not in by_path:
        raise ValueError('Composition conflict ledger is duplicate or lacks root')
    declarations={}
    for m in sorted(set(actual)-set(base)):
        path=m.replace('.','/')+'.lean'; committed=blob_reader(root,commit,path)
        declarations[m]={'path':path,'strategy':'incoming-exact','sha256':checker.sha256(actual[m]),
                         'incoming_sha256':checker.digest(committed)}
    rootrow=by_path['GRWTSK.lean']; committed=blob_reader(root,commit,'GRWTSK.lean')
    if rootrow.get('stage2_sha256')!=base['GRWTSK']['sha256'] or rootrow.get('stage3_sha256')!=checker.digest(committed) or rootrow.get('resolved_sha256')!=checker.sha256(actual['GRWTSK']):
        raise ValueError('Root composition stage/live hashes changed')
    operational={receipt['late_audit']['module'],receipt['aggregator']['module'],
                 'GRWTSK.Logic.ProofChecking.Checks.AnalyticArithmeticKernel'}
    expected_extra=set(base)-incoming_modules-operational-{'GRWTSK'}
    if rootrow.get('additional_imports')!=sorted(expected_extra):
        raise ValueError('Root composition extra imports are not exactly ordinary preserved modules')
    declarations['GRWTSK']={'path':'GRWTSK.lean','strategy':'composed-root-imports',
        'sha256':rootrow['resolved_sha256'],'incoming_sha256':checker.digest(committed),
        'migration_sha256':base['GRWTSK']['sha256'],'additional_imports':sorted(expected_extra)}
    for path,row in by_path.items():
        m=path[:-5].replace('/','.') if path.endswith('.lean') else None
        if m in base and m!='GRWTSK':
            if row.get('stage2_sha256')!=base[m]['sha256'] or row.get('resolved_sha256')!=base[m]['sha256'] or checker.sha256(actual[m])!=base[m]['sha256']:
                raise ValueError('Preexisting mathematical conflict changed beyond exact application bytes')
            if row.get('stage3_sha256')!=checker.digest(blob_reader(root,commit,path)):
                raise ValueError('Incoming conflicting mathematical blob differs from preserved ledger')
    return {'schema':'moebius-incoming-source-provenance/1','commit':commit,'modules':declarations}


def prepared_assets(root: Path, records: dict) -> dict[str, str]:
    """Bind immediate root assets and source-neighbor assets without ignored trees."""
    source_dirs={(root/record['path']).parent for record in records.values()}
    assets={p.relative_to(root).as_posix():checker.sha256(p)
            for p in checker.source_assets(source_dirs,umbrella_root=root)}
    for relative in REQUIRED_ASSETS:
        assets[relative]=checker.sha256(checker.relative_file(root,relative))
    return dict(sorted(assets.items()))


def owner_helper_contract(root: Path) -> dict:
    """Bind the operational Lean helper separately from non-Lean assets."""
    relative='GRWTSK/NumberTheory/Moebius/Checks/OwnerAudit.lean'
    data=source_bytes(checker.relative_file(root,relative))
    if checker.digest(data)!=owner_census.HELPER_SHA256 or checker.imports(data.decode())!=['Lean']:
        raise ValueError('Operational owner helper source/import identity changed')
    return {'path':relative,'sha256':checker.digest(data),'imports':['Lean']}


def compiled_mathlib_anchors(packages: Path) -> list[dict]:
    """Hash the existing cache; no compiler or build command is executed."""
    anchors=[]
    for package in packages.iterdir():
        path=package/'.lake/build/lib/lean/Mathlib.olean'
        if path.is_file():
            anchors.append({'path':path.relative_to(packages).as_posix(),'sha256':checker.sha256(path)})
    return sorted(anchors,key=lambda row:row['path'])


def migration_manifest(root, packages, lean, receipt_bytes, receipt, identity_bytes, identity,
                       *, incoming=None, runtime_policy=None):
    records,provenance,watches,details=validate_migration_sources(root,receipt,incoming=incoming)
    version,lean_sha=pinned_runtime_identity(lean,identity)
    policy,_=inputs.policy_module(root,lambda r,p:checker.read_regular(r,p).data)
    for module,record in records.items():
        if policy['layout_issues'](module.split('.'),policy['SUBJECT_ROOTS']):
            raise ValueError('Incoming or migrated module violates canonical subject policy')
        for mod in record['imports']:
            if (mod=='GRWTSK' or mod.startswith('GRWTSK.')) and policy['layout_issues'](mod.split('.'),policy['SUBJECT_ROOTS']):
                raise ValueError('Legacy import alias in current module graph')
    assets=prepared_assets(root,records)
    for relative,implementation in [('.noeaaeue/scripts/check_moebius_response.py',Path(checker.__file__)),
                                     ('.noeaaeue/scripts/generate_moebius_response_manifest.py',Path(__file__))]:
        if checker.sha256(root/relative)!=checker.sha256(implementation):
            raise ValueError('Published implementation differs from running generator/schema')
    helper=owner_helper_contract(root)
    owner_contract={'helper_module':'MoebiusResponseOwnerAudit','parser_asset':'.noeaaeue/scripts/moebius_owner_census.py',
                    'runtime_exceptions_allowed':False,
                    'helper':helper}
    if runtime_policy is not None:
        owner_contract.update(runtime_exceptions_allowed=True,runtime_exception_policy=runtime_policy)
    checker.resolve_runtime_policy(owner_contract,vars(owner_census),
        {m:SimpleNamespace(relative=r['path'],source_hash=r['sha256']) for m,r in records.items()})
    anchors=compiled_mathlib_anchors(packages)
    if not anchors or {a['sha256'] for a in anchors}!={a['sha256'] for a in identity.get('mathlib_anchors',identity.get('package_anchors',[]))}:
        raise ValueError('Compiled Mathlib anchors differ from historical pinned identity')
    pins,states,locksha=inputs.package_pins(root,packages,lambda r,p:checker.read_regular(r,p).data)
    checker.reject_document_assets(root)
    result={'schema_version':1,'modules':dict(sorted(records.items())),
        'audit_module':receipt['late_audit']['module'],'aggregator_module':receipt['aggregator']['module'],
        'lean_version':version,'lean_sha256':lean_sha,'runtime_version_provenance':'explicit historical identity, binary hash verified; Lean was not invoked',
        'package_anchors':sorted(anchors,key=lambda a:a['path']),'assets':dict(sorted(assets.items())),
        'owner_census':owner_contract,
        'dependency_revisions':pins,'dependency_lock_sha256':locksha,
        'preservation_provenance':dict(sorted(provenance.items())),
        'referenced_migration':{'receipt_sha256':checker.digest(receipt_bytes),'archive_manifest_sha256':receipt['archive_manifest_sha256'],
            'reported_status':receipt['status'],'reported_kernel_checked':False,'historical_runtime_identity_receipt_sha256':checker.digest(identity_bytes),
            'original_application_owner_count':receipt['source_count'],'current_prepared_owner_count':len(records),**details},
        'deferred_sources':[],'generation_status':'prepared-only','kernel_checked':False,
        'generation_scope':'Complete current source hashes, archived source reconstruction and explicit incoming resolution checked. No Lean process was run and no proof acceptance is asserted. Fresh strict owner replay remains required; open arithmetic obligations remain unsupplied.'}
    for path,expected in watches.items():
        if checker.sha256(path)!=expected:raise ValueError('Archived provenance changed during generation')
    if project_inventory(root)!={m:root/r['path'] for m,r in records.items()} or any(checker.sha256(root/r['path'])!=r['sha256'] for r in records.values()) or prepared_assets(root,records)!=assets or owner_helper_contract(root)!=helper or compiled_mathlib_anchors(packages)!=anchors or pinned_runtime_identity(lean,identity)!=(version,lean_sha) or inputs.package_pins(root,packages,lambda r,p:checker.read_regular(r,p).data)!=(pins,states,locksha):
        raise ValueError('Bound source, asset, dependency or runtime changed during preparation')
    return result


def portable_manifest(value):
    if isinstance(value,dict):
        for entry in value.values():portable_manifest(entry)
    elif isinstance(value,list):
        for entry in value:portable_manifest(entry)
    elif isinstance(value,str) and value.startswith('/'):
        raise ValueError('Host absolute path would enter published evidence')


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parents[2],
                        help="Native repository to read; never changed by default")
    mode = parser.add_mutually_exclusive_group(required=True)
    mode.add_argument("--receipt", type=Path, help="Existing exporter receipt")
    mode.add_argument("--migration-receipt", type=Path, help="Prepared-only complete root migration application receipt")
    parser.add_argument("--pinned-runtime-receipt", type=Path, help="Explicit historical compiler/cache identity for migration mode")
    parser.add_argument("--incoming-provenance", type=Path, help="Explicit exact incoming commit/module resolution inventory")
    parser.add_argument("--incoming-commit", help="Exact incoming Git commit for root composition mode")
    parser.add_argument("--composition-receipt", type=Path, help="Pinned source merge resolution receipt")
    parser.add_argument("--runtime-policy", type=Path, help="Explicit exception descriptor accepted by the frozen owner checker; default rejects all unsafe/partial declarations")
    parser.add_argument("--lean", type=Path, required=True, help="Actual already-installed Lean compiler")
    parser.add_argument("--packages", type=Path, help="Defaults to ROOT/.lake/packages")
    parser.add_argument("--output", type=Path, help="Write explicitly here instead of stdout")
    parser.add_argument("--allow-prepared", action="store_true",
                        help="Permit initial prepared source evidence, explicitly without kernel acceptance")
    args = parser.parse_args()
    root = args.root.resolve()
    packages = (args.packages or root / ".lake/packages").resolve()
    lean = args.lean.absolute()
    try:
        if not lean.is_file() or not packages.is_dir():
            raise ValueError("Supply the actual installed compiler and compiled package cache")
        elan = lean.parent / "elan"
        if lean.resolve().name == "elan" or (elan.is_file() and checker.sha256(lean) == checker.sha256(elan)):
            raise ValueError("Elan shim not invoked: --lean must identify the actual installed compiler")
        receipt_path = args.receipt or args.migration_receipt
        receipt_bytes = source_bytes(receipt_path)
        receipt = json.loads(receipt_bytes)
        if args.migration_receipt:
            if not args.pinned_runtime_receipt:
                raise ValueError("Migration preparation requires --pinned-runtime-receipt")
            identity_bytes = source_bytes(args.pinned_runtime_receipt)
            incoming_bytes = source_bytes(args.incoming_provenance) if args.incoming_provenance else None
            composition_bytes = source_bytes(args.composition_receipt) if args.composition_receipt else None
            runtime_policy_bytes = source_bytes(args.runtime_policy) if args.runtime_policy else None
            if bool(args.incoming_commit)!=bool(args.composition_receipt) or (args.incoming_provenance and args.incoming_commit):
                raise ValueError("Supply an exact incoming commit and composition receipt together, separately from explicit incoming-provenance")
            declared_incoming = json.loads(incoming_bytes) if incoming_bytes else None
            if composition_bytes is not None:
                declared_incoming = composition_incoming(root,receipt,args.incoming_commit,json.loads(composition_bytes))
            manifest = migration_manifest(root, packages, lean, receipt_bytes, receipt, identity_bytes,
                json.loads(identity_bytes), incoming=declared_incoming, runtime_policy=json.loads(runtime_policy_bytes) if runtime_policy_bytes else None)
            if source_bytes(receipt_path)!=receipt_bytes or source_bytes(args.pinned_runtime_receipt)!=identity_bytes or (incoming_bytes is not None and source_bytes(args.incoming_provenance)!=incoming_bytes) or (composition_bytes is not None and source_bytes(args.composition_receipt)!=composition_bytes) or (runtime_policy_bytes is not None and source_bytes(args.runtime_policy)!=runtime_policy_bytes):
                raise ValueError("Explicit provenance receipt changed during preparation")
            if composition_bytes is not None:
                manifest["referenced_migration"]["composition_receipt_sha256"] = checker.digest(composition_bytes)
            portable_manifest(manifest)
            if args.output:
                checker.atomic_json(args.output.absolute(), manifest)
            else:
                sys.stdout.write(json.dumps(manifest, indent=2)+"\n")
            return 0
        if args.pinned_runtime_receipt or args.incoming_provenance or args.incoming_commit or args.composition_receipt or args.runtime_policy:
            raise ValueError("Migration-only provenance flags cannot alter existing export mode")
        prepared = (args.allow_prepared and receipt.get("status") == "prepared" and
                    receipt.get("kernel_checked") is False)
        accepted = (receipt.get("status") == "kernel-checked" and
                    receipt.get("kernel_checked") is True and receipt.get("all_final_hashes_match") is True)
        required = {"kernel_trust_level": 0, "warnings_as_errors": True, "fresh_project_build": True}
        if not (prepared or accepted) or any(receipt.get(key) != value for key, value in required.items()):
            raise ValueError("Prepared, failed or incomplete export receipts are not accepted")
        if receipt.get("unreachable_from_kernel_audit"):
            raise ValueError("Export receipt contains unaudited source modules")
        controls = receipt.get("custom_axiom_negative_controls", [])
        expected_controls = {(namespace, visibility) for namespace in checker.NAMESPACES
                             for visibility in ("public", "private")}
        if accepted and ({(r.get("namespace"), r.get("visibility")) for r in controls} != expected_controls or
                len(controls) != len(expected_controls) or not all(r.get("rejected") is True for r in controls)):
            raise ValueError("All ten public/private axiom rejection controls must have passed")
        checked = receipt.get("checked_modules", [])
        checked_names = {row["module"] for row in checked}
        if len(checked_names) != len(checked) or not all(r.get("passed") is True for r in checked):
            raise ValueError("Every included export module must have a successful recorded check")
        version, _ = pinned_runtime_identity(lean, receipt)
        audit, aggregator = receipt["audit_module"], receipt["aggregator_module"]
        records, provenance, original_hashes = {}, {}, {}
        for row in receipt["source_exports"]:
            module = row["module"]
            path = module.replace(".", "/")+".lean"
            native = checker.relative_file(root, path)
            current = source_bytes(native)
            if checker.digest(current) != row["export_sha256"] or not row.get("non_import_bytes_unchanged"):
                raise ValueError(f"Native source does not match the accepted import-only export: {module}")
            original = Path(row["source"])
            data = source_bytes(original)
            if checker.digest(data) != row["source_sha256"]:
                raise ValueError(f"Original frozen source no longer matches export provenance: {module}")
            if import_only_bytes(data, row["import_substitutions"]) != current:
                raise ValueError(f"Non-import source bytes changed: {module}")
            if module in records:
                raise ValueError(f"Duplicate exported module: {module}")
            records[module] = {"path": path, "sha256": checker.digest(current),
                               "imports": checker.imports(current.decode("utf-8"))}
            provenance[module] = {"kind": "import-only-relocation",
                                  "original_source_sha256": row["source_sha256"],
                                  "published_source_sha256": row["export_sha256"],
                                  "non_import_bytes_independently_verified": True,
                                  "import_substitutions": row["import_substitutions"]}
            original_hashes[original] = row["source_sha256"]
        for row in receipt.get("external_sources", []):
            module = row["module"]
            path = module.replace(".", "/")+".lean"
            native = checker.relative_file(root, path)
            current = source_bytes(native)
            if module in records or checker.digest(current) != row["source_sha256"]:
                raise ValueError(f"Native dependency changed or duplicates an export: {module}")
            records[module] = {"path": path, "sha256": row["source_sha256"],
                               "imports": checker.imports(current.decode("utf-8"))}
            provenance[module] = {"kind": "existing-native-dependency",
                                  "published_source_sha256": row["source_sha256"]}
        path = aggregator.replace(".", "/")+".lean"
        native = checker.relative_file(root, path)
        if (aggregator in records or source_bytes(native) != f"import {audit}\n".encode() or
                checker.sha256(native) != receipt["aggregator_sha256"]):
            raise ValueError("Published aggregator does not match the accepted generated source")
        records[aggregator] = {"path": path, "sha256": checker.sha256(native), "imports": [audit]}
        provenance[aggregator] = {"kind": "generated-audit-import",
                                 "published_source_sha256": receipt["aggregator_sha256"]}
        if audit not in records or (accepted and set(records) != checked_names):
            raise ValueError("Recorded accepted checks do not cover exactly the published module set")
        if accepted and (receipt.get("compiled_module_count") != len(records) or not receipt.get("audited_declaration_count")):
            raise ValueError("Incomplete accepted compile or declaration audit count")
        shared_policy, _ = inputs.policy_module(root, lambda r, p: checker.read_regular(r, p).data)
        for module, record in records.items():
            if not checker.MODULE_PATTERN.fullmatch(module):
                raise ValueError(f"Invalid subject module: {module}")
            parts = module.split(".")
            if module != "GRWTSK" and (parts[1] not in shared_policy["SUBJECT_ROOTS"] or shared_policy["LEGACY_SEGMENTS"].intersection(parts)):
                raise ValueError(f"Legacy or non-subject destination: {module}")
            if {i for i in record["imports"] if i == "GRWTSK" or i.startswith("GRWTSK.")} - set(records):
                raise ValueError(f"Unmanifested native import: {module}")
        roots = [p / ".lake/build/lib/lean" for p in packages.iterdir()
                 if (p / ".lake/build/lib/lean").is_dir()]
        anchors = [{"path": (p / "Mathlib.olean").relative_to(packages).as_posix(),
                    "sha256": checker.sha256(p / "Mathlib.olean")}
                   for p in roots if (p / "Mathlib.olean").is_file()]
        if (not anchors or {r["sha256"] for r in anchors} !=
                {r["sha256"] for r in receipt.get("mathlib_anchors", [])}):
            raise ValueError("Compiled Mathlib cache does not match the accepted export anchors")
        assets = {}
        source_dirs = {(root / record["path"]).parent for record in records.values()}
        for asset in checker.source_assets(source_dirs, umbrella_root=root if "GRWTSK" in records else None):
            if not asset.is_relative_to(root):
                raise ValueError("Mathematical source asset escapes the repository")
            assets[asset.relative_to(root).as_posix()] = checker.sha256(asset)
        checker_native = checker.relative_file(root, ".noeaaeue/scripts/check_moebius_response.py")
        if checker.sha256(checker_native) != checker.sha256(Path(checker.__file__)):
            raise ValueError("Published checker differs from the generator's schema implementation")
        assets[".noeaaeue/scripts/check_moebius_response.py"] = checker.sha256(checker_native)
        generator_native = root / ".noeaaeue/scripts/generate_moebius_response_manifest.py"
        if generator_native.is_file():
            if checker.sha256(generator_native) != checker.sha256(Path(__file__)):
                raise ValueError("Published generator differs from the running implementation")
            assets[".noeaaeue/scripts/generate_moebius_response_manifest.py"] = checker.sha256(generator_native)
        for relative in (".noeaaeue/scripts/moebius_response_inputs.py", ".noeaaeue/scripts/moebius_owner_census.py",
                         ".noeaaeue/scripts/check_math_layout.py", "lake-manifest.json", "lakefile.toml", "lean-toolchain",
                         ".noeaaeue/scripts/check_lean_repository_inputs.py", ".noeaaeue/scripts/test_moebius_response_inputs.py",
                         ".noeaaeue/scripts/test_moebius_owner_census.py", ".noeaaeue/scripts/test_moebius_response_checker.py",
                         ".noeaaeue/scripts/diagnose_moebius_shell.py",
                         ".noeaaeue/evidence/moebius-shell-diagnostics.json"):
            asset = checker.relative_file(root, relative)
            assets[relative] = checker.sha256(asset)
        helper_relative = "GRWTSK/NumberTheory/Moebius/Checks/OwnerAudit.lean"
        helper = source_bytes(checker.relative_file(root, helper_relative))
        if checker.digest(helper) != owner_census.HELPER_SHA256 or checker.imports(helper.decode()) != ["Lean"]:
            raise ValueError("Operational owner census helper differs from its separately controlled source")
        dependency_pins, dependency_states, lock_sha = inputs.package_pins(
            root, packages, lambda r, p: checker.read_regular(r, p).data)
        checker.reject_document_assets(root)
        deferred = []
        for row in receipt.get("deferred_local_sources", []):
            if row.get("exported") is not False or row.get("kernel_checked_in_this_export") is not False:
                raise ValueError("Deferred source must have no acceptance claim in this export")
            source = Path(row["source"])
            if checker.sha256(source) != row["source_sha256"]:
                raise ValueError("Deferred source changed from its preserved evidence hash")
            original_hashes[source] = row["source_sha256"]
            detail = row["deferral"]
            deferred.append({"original_stem": row["stem"], "source_sha256": row["source_sha256"],
                             "included_in_this_manifest": False, "kernel_checked_in_referenced_export": False,
                             "reason": detail["reason"],
                             "pending_external_import": detail["pending_external_import"],
                             "canonical_external_destination": detail["proposed_external_destination"]})
        manifest = {
            "schema_version": 1, "modules": dict(sorted(records.items())),
            "audit_module": audit, "aggregator_module": aggregator,
            "lean_version": version, "lean_sha256": checker.sha256(lean),
            "package_anchors": sorted(anchors, key=lambda r: r["path"]),
            "assets": dict(sorted(assets.items())),
            "owner_census": {"helper_module": "MoebiusResponseOwnerAudit",
                             "parser_asset": ".noeaaeue/scripts/moebius_owner_census.py",
                             "runtime_exceptions_allowed": False,
                             "helper": {"path": helper_relative, "sha256": checker.digest(helper),
                                        "imports": ["Lean"]}},
            "dependency_revisions": dependency_pins,
            "dependency_lock_sha256": lock_sha,
            "preservation_provenance": dict(sorted(provenance.items())),
            "referenced_export": {"receipt_sha256": checker.digest(receipt_bytes),
                                  "subject_manifest_sha256": receipt["subject_manifest_sha256"],
                                  "reported_status": receipt["status"],
                                  "reported_kernel_checked": accepted,
                                  "reported_kernel_trust_level": 0, "reported_warnings_as_errors": True,
                                  "reported_audited_declaration_count": receipt.get("audited_declaration_count"),
                                  "reported_public_private_controls_passed": len(controls)},
            "deferred_sources": deferred,
            "generation_scope": "Source hashes and import-only preservation verified. The referenced export status is reported explicitly; prepared evidence has no kernel acceptance. This generator performs no new Lean compilation. Open arithmetic obligations remain unsupplied.",
        }
        if (source_bytes(args.receipt) != receipt_bytes or
                any(checker.sha256(p) != h for p, h in original_hashes.items()) or
                any(checker.sha256(root / r["path"]) != r["sha256"] for r in records.values()) or
                any(checker.sha256(root / path) != h for path, h in assets.items()) or
                any(checker.sha256(packages / r["path"]) != r["sha256"] for r in anchors) or
                checker.digest(source_bytes(root / helper_relative)) != checker.digest(helper) or
                inputs.package_pins(root, packages, lambda r, p: checker.read_regular(r, p).data)[:2] !=
                (dependency_pins, dependency_states)):
            raise ValueError("Source, receipt or cache changed during manifest generation")
        serialized = json.dumps(manifest, indent=2)+"\n"
        # Published metadata must not carry source host paths from the receipt.
        def reject_absolute(value):
            if isinstance(value, dict):
                for item in value.values():
                    reject_absolute(item)
            elif isinstance(value, list):
                for item in value:
                    reject_absolute(item)
            elif isinstance(value, str) and value.startswith("/"):
                raise ValueError("Host absolute path would enter published evidence")
        reject_absolute(manifest)
        if args.output:
            checker.atomic_json(args.output.absolute(), manifest)
        else:
            sys.stdout.write(serialized)
    except (OSError, ValueError, KeyError, TypeError, subprocess.SubprocessError) as error:
        parser.error(str(error))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
