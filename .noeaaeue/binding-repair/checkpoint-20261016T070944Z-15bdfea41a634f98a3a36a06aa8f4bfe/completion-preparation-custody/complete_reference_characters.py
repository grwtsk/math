#!/usr/bin/env python3
"""Append one RH integration event after the recorded final gates; never refresh a cache.

Default validation is read-only. Only --apply creates the one absent event, after
an integration-owner review. No old request, continuation or index is modified.
"""
import argparse
import datetime
import hashlib
import json
from pathlib import Path
import sys

ROOT = Path('/Users/think/Desktop/math')
sys.dont_write_bytecode = True
sys.path.insert(0, str(ROOT / '.noeaaeue/scripts'))
import cache_math
import check_math_trust as guard
from repository_paths import relocated_name

CHECKPOINT = '.noeaaeue/binding-repair/checkpoint-20261016T070944Z-15bdfea41a634f98a3a36a06aa8f4bfe'
EVENT = '.noeaaeue/cache/coordination/events/reference-characters-integration-complete-2026-10-16.json'
CURSOR = '.noeaaeue/cache/coordination/continuations/2026-10-15-reference-characters.json'
REQUEST = '.noeaaeue/cache/coordination/tasks/reference-character-quiet-integration-request-2026-10-15-4ea0a99660684f5abd69834e9b553643.json'
INSTALLER = '.noeaaeue/.local/reference-character-preparation-r2-befbd13d56dc486e8178f074c8872ba7/'
INTENT = INSTALLER + 'post-validation-event.intent.json'
JOURNAL = INSTALLER + 'apply-journal-a5d2a6e3a3c7476484bfb33f88d88224.jsonl'
INSTALLER_CUSTODY = '.noeaaeue/binding-repair/checkpoint-20261016T060730Z-4aa6d1daa6c84a21b1e43b2a3bcf8e6a/rh-integration-preparation-custody/custody.json'
FINISH = '.noeaaeue/evidence/NumberTheory/Diophantine/PrimitiveAdditiveTriples/additive-character-integration-finish-2026-10-15.json'
PARENT = '55b3a4ef0c05b81558eb8e4a213b056458b043d8b3e2400e990e8c20e77dfad4'
PAGES = {
    'docs/mathematics/Combinatorics/DirectedGraph/prefix-reference-transport.md':
        'GRWTSK/Combinatorics/DirectedGraph/PrefixTableReferenceTransport.lean',
    'docs/mathematics/NumberTheory/Cyclotomic/third-cyclotomic-characters.md':
        'GRWTSK/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean',
}
AXIOMS = {'propext', 'Classical.choice', 'Quot.sound'}


def require(value, message):
    if not value:
        raise RuntimeError(message)


def sha(raw):
    return hashlib.sha256(raw).hexdigest()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--apply', action='store_true', help='Create only after integration-owner review')
    args = parser.parse_args()
    observed = {}

    def local(name):
        p = Path(name)
        if p.is_absolute():
            p = p.relative_to(ROOT)
        require('..' not in p.parts, 'Nonlocal evidence path')
        return p.as_posix()

    def read(name):
        name = local(name)
        raw = guard.read_source(ROOT, name)
        require(name not in observed or observed[name] == raw, 'Readset collision: ' + name)
        observed[name] = raw
        return raw

    def js(name):
        return json.loads(read(name))

    def identity(name):
        name = local(name)
        raw = read(name)
        return {'path': name, 'sha256': sha(raw), 'bytes': len(raw)}

    custody = js(INSTALLER_CUSTODY)
    durable_installer = {}
    for original in [INTENT, INSTALLER + 'change-manifest.json', JOURNAL]:
        matches = [row for row in custody['files'] if row['original'] == original]
        require(len(matches) == 1, 'Installer custody mapping is missing or duplicate: ' + original)
        row = matches[0]
        require(local(row['retained']).startswith(str(Path(INSTALLER_CUSTODY).parent) + '/')
                and read(original) == read(row['retained'])
                and sha(read(row['retained'])) == row['sha256']
                and len(read(row['retained'])) == row['bytes'],
                'Original/retained installer custody differs: ' + original)
        durable_installer[original] = row['retained']
    cursor, request, intent = js(CURSOR), js(REQUEST), js(INTENT)
    require(cursor['pending_integration']['path'] == REQUEST
            and cursor['pending_integration']['sha256'] == sha(read(REQUEST))
            and intent['queued_request']['path'] == REQUEST
            and intent['queued_request']['sha256'] == sha(read(REQUEST)), 'Prior request/cursor/intent binding differs')
    frontier_path = cursor['frontier']['path']
    frontier = js(frontier_path)
    require(sha(read(frontier_path)) == cursor['frontier']['sha256'], 'Prior frontier drift')
    manifest = js(INSTALLER + 'change-manifest.json')
    journal = [json.loads(line) for line in read(JOURNAL).decode().splitlines()]
    require(journal[0]['manifest_sha256'] == sha(read(INSTALLER + 'change-manifest.json'))
            and journal[-1]['event'] == 'INSTALLED_PENDING_FINAL_VALIDATION'
            and len([row for row in journal if row['event'] == 'INSTALLED']) == 10,
            'Actual ten-target installer journal differs')
    selected = []
    for expected_count, record in zip([958, 92], request['selected_receipts'], strict=True):
        name = record['receipt']['path']
        receipt = js(name)
        require(sha(read(name)) == record['receipt']['sha256'] and receipt['outcome'] == 'passed'
                and len(receipt['declarations']) == expected_count and receipt['trust'] == 0
                and receipt['fatal_warnings'] is True and receipt['rh_proved'] is False
                and not receipt['runtime_helper_exemptions'], 'Selected receipt scope differs')
        for source, digest in receipt['source_hashes'].items():
            require(sha(read(source)) == digest, 'Selected current input drift: ' + source)
        require(all(set(row['axioms']) <= AXIOMS and row['kind'] != 'axiom'
                    and not row['unsafe'] and not row['partial']
                    and not row['known_generated_runtime_helper'] for row in receipt['declarations']),
                'Selected finite census has a nonstandard exception')
        negatives = [row for row in receipt['results'] if row['expected_rejection']]
        require(len(negatives) == 1 and negatives[0]['exit_code'] != 0, 'Selected intended rejection differs')
        selected.append(dict(identity(name), owned_declarations=expected_count,
                             owned_modules=len(receipt['modules']), intended_negative_rejections=1,
                             scope='Exact recorded selected scope; owned declarations are not theorem counts.'))
    for source in request['source_bindings']:
        require(sha(read(source['path'])) == source['sha256'], 'Six-source request drift')
    finish = js(FINISH)
    require(finish['integration_complete'] is True and finish['abc_proved'] is False
            and finish['overall_status'] == 'OPEN_FRONTIER'
            and finish['public_source_scope']['sources'] == 447
            and finish['application_scope']['sources'] == 450,
            'Final integration completion record is absent or has a different scope')
    ordinary = finish['ordinary_lake_build']
    require(sha(read(ordinary['path'])) == ordinary['sha256']
            and ordinary['command'] == ['lake', 'build', 'GRWTSK'] and ordinary['exit_code'] == 0
            and ordinary['proof_acceptance'] is False
            and sha(read(ordinary['log']['path'])) == ordinary['log']['sha256'],
            'Supplementary ordinary-build record/log identity differs')
    stages = js(CHECKPOINT + '/serial-native/records.json')
    require(len(stages) == 4 and stages[0]['name'] in {'contract-validate', 'contract-validate-retry'}
            and [row['name'] for row in stages[1:]] ==
            ['native-audit-self-test', 'public-library-replay', 'application-replay'], 'Exact four final gates required')
    for stage in stages:
        require(stage['status'] == 'passed' and stage['exit'] == 0
                and stage['script_sha256_before'] == stage['script_sha256_after']
                == sha(read(stage['argv'][2])) and sha(read(stage['log'])) == stage['log_sha256']
                and sha(read(stage['retained_receipt'])) == stage['receipt_sha256']
                and read(stage['retained_receipt']) == read(stage['original_receipt']), 'Final gate custody/stability differs')
        require(finish['stages'][stage['name']]['sha256'] == stage['receipt_sha256'], 'Finish/stage identity differs')
    public, application = [js(row['retained_receipt']) for row in stages[2:]]
    require(public['status'] == 'ALL_PROJECT_SOURCE_AND_AXIOM_CHECKS_PASSED' and public['source_count'] == 447
            and application['status'] == 'kernel-checked' and application['kernel_checked'] is True
            and application['compiled_module_count'] == 450 and application['all_final_hashes_match'] is True,
            'Actual 447/450 receipt acceptance differs')
    for name, digest in public['snapshot']['sha256'].items():
        require(sha(read(name)) == digest, 'Final public receipt current-input drift: ' + name)
    docs = finish['documentation_gates']
    require(sha(read(docs['path'])) == docs['sha256'] and len(docs['records']) == 5
            and all(row['exit'] == 0 for row in docs['records']), 'Final documentation gates differ')
    guides = {}
    layout = js('.noeaaeue/documentation/reference/documentation-layout.json')
    for page, source in PAGES.items():
        row = layout['pages'][page]
        require(row['primary_source'] == source and row['source_sha256'] == sha(read(source))
                and row['evidence'] in {entry['path'] for entry in selected}, 'Current RH guide evidence differs')
        guides[page] = dict(identity(page), primary_source=identity(source), selected_evidence=row['evidence'])
    root_text = read('GRWTSK.lean').decode()
    require(all(guard.project_imports(root_text).count(source[:-5].replace('/', '.')) == 1
                for source in PAGES.values()), 'Actual RH exports differ')
    require(cache_math.current(ROOT) == PARENT, 'Cache pointer changed; queue must be reconciled, never rebound')
    parent = cache_math.verify(ROOT, PARENT)
    require(parent['source_count'] == 847 and len(parent['metadata_findings']) == 82
            and len(parent['catalogs']) == 2 and len(parent['context_files']) == 9,
            'Retained parent cache scope differs')
    chain, current = [], PARENT
    while current:
        name = cache_math.manifest_path(current)
        item = js(name)
        chain.append(identity(name))
        current = item['parent']
    require(len(chain) == 28, 'Retained parent chain differs')
    live = cache_math.capture(ROOT)
    _, sources, catalogs, context = live
    require((len(sources), len(catalogs), len(context)) == (871, 2, 9), 'Queued cache scope is not 871+2+9')
    logical = list(sources) + list(catalogs) + list(context)
    physical = [relocated_name(name) for name in logical]
    require(len(logical) == len(set(logical)) == len(physical) == len(set(physical)) == 882,
            'Live logical/physical inverse is not one-to-one')
    next_open = [dict(row) for row in frontier['next_obligations'] if row['id'] != 'quiet-reference-character-integration']
    require([row['id'] for row in next_open] == ['direct-lookup-on-real-support', 'actual-cubic-jacobi-primary'],
            'Historical mathematical follow-up order differs')
    next_open[0].update(status='OPEN_NOT_RUN', scope='Derive direct final dictionary idxOf of the original full typed payload equals the cumulative transported slot, only for actual original real-reference support, using the final WellFormed.nodup. transport_reference already supplies successful transport and full-payload lookup equality; do not reclassify that proved law as open or extend transport to unused slots.',
        existing_suppliers=['GRWTSK.Combinatorics.DirectedGraph.PrefixTableReferenceTransport.transport_reference',
                            'GRWTSK.Combinatorics.DirectedGraph.PrefixTableReferenceTransport.transportReferences_success',
                            'GRWTSK.Combinatorics.DirectedGraph.PrefixTableState.WellFormed.nodup'])
    next_open[1].update(status='OPEN_NOT_RUN', scope='Construct an actual Jacobi sum from cubicChar at the existing good maximal quotient hypotheses, then prove the modular, norm and ideal identities and an explicitly chosen primary sign/modulus normalization. No Jacobi/primary-generator/coefficient conclusion is supplied by current character laws.',
        existing_suppliers=['GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicCharacters.cubicChar',
                            'GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicCharacters.cubicChar_reduce',
                            'GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicCharacters.cubicChar_pow_three',
                            'GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicCharacters.cubicChar_order'])
    cache_task = {
        'id': 'cache-custody-refresh-847-to-871', 'status': 'QUEUED_NOT_RUN', 'scope': 'Byte custody refresh only.',
        'expected_current_pointer': PARENT, 'retained_parent': {'ancestry_nodes': 28, 'metadata_findings': 82,
            'source_count': 847, 'manifests': chain, 'history_and_findings_preserved': True},
        'target_counts': {'sources': 871, 'catalogs': 2, 'context': 9, 'all_files': 882},
        'commands_in_order_from_repository_root': [
            ['python3', '-B', '.noeaaeue/scripts/cache_math.py', 'revise', '--expected', PARENT],
            ['python3', '-B', '.noeaaeue/scripts/cache_math.py', 'verify', '--live'],
            ['python3', '-B', '.noeaaeue/scripts/cache_math.py', 'expand', '<fresh absent external destination>', '--revision', '<revision returned by revise>']],
        'external_destination': 'Allocate a uniquely owned external temporary parent with tempfile.mkdtemp, verify its resolved ownership and no symlink ancestors, and use an ABSENT child destination. Resolve and reject either ancestor relation to the checkout. Never use .local or another inside-checkout destination. No temporary parent or expansion is allocated by this event helper.',
        'independent_roundtrip_check': 'After revise/verify/expand, independently enumerate ALL expanded regular files, rejecting every symlink, special file, extra and missing path. Derive logical->physical with repository_paths.relocated_name; prove this finite mapping is one-to-one by an explicit inverse and require the exact882-file physical set, not a Lean-only count. Compare every raw byte/hash against the new verified manifest and current871 sources+2 catalogs+9 contexts. Preserve all28 prior manifest nodes and their original82 findings; report new findings separately without deleting old ones.',
        'proof_status': 'unknown-unreplayed', 'mathematical_acceptance': False,
        'boundaries': 'No native jobs, source replay, runtime/JSON/hash/filesystem refinement or RH/ABC mathematical promotion.'}
    event = {
        'schema': 'repository-agent-event-v1', 'at': datetime.datetime.now(datetime.timezone.utc).isoformat(),
        'task': 'reference-characters-quiet-integration', 'status': 'FINITE_SOURCE_INTEGRATION_COMPLETE_CACHE_REFRESH_QUEUED',
        'prior_continuation': identity(CURSOR), 'immutable_request': identity(REQUEST),
        'installer_intent': identity(durable_installer[INTENT]),
        'installer_manifest': identity(durable_installer[INSTALLER + 'change-manifest.json']),
        'actual_installer_journal': identity(durable_installer[JOURNAL]),
        'installer_preparation_custody': identity(INSTALLER_CUSTODY),
        'installer_original_locators_provenance_only': [identity(original) for original in durable_installer],
        'installer_original_retained_bytes_equal': True, 'old_request_and_cursor_rewritten': False,
        'integration_request_satisfied_at_this_new_event': True, 'selected_scopes': selected,
        'current_guides': guides, 'final_checkpoint': CHECKPOINT, 'final_finish': identity(FINISH),
        'actual_passed_final_stages': finish['stages'], 'public_sources': 447, 'application_sources': 450,
        'ordinary_lake_build': ordinary,
        'current_root': identity('GRWTSK.lean'), 'documentation_gates': docs,
        'next_task_order': [cache_task['id']] + [row['id'] for row in next_open],
        'next_tasks': [cache_task] + next_open,
        'publication': {'status': 'PENDING_SEPARATE_COMMIT_EVIDENCE',
            'completion_evidence_path': CHECKPOINT + '/publication-completion.json',
            'interpretation': 'This event binds current checked bytes and prior base identities, not a future publication commit.'},
        'proof_status': 'unknown-unreplayed', 'mathematical_acceptance': False,
        'original_RH': 'OPEN', 'ABC': 'OPEN_FRONTIER', 'rh_proved': False, 'abc_proved': False,
        'limits': 'The selected958/92 and current447/450 receipts retain separate exact source scopes. This coordination event is not a mathematical premise or an operational/runtime-cache refinement. No cold dependency-source build or independent mathematical validation is inferred. Sextic/trace, Jacobi/primary generators, arithmetic coefficients, completed corrections, common ideal support and original RH remain open.',
        'effects': 'Append one event only. No old request/cursor, mathematical source, registry, cache pointer, manifest or proof status is rewritten.'}
    require(not (ROOT / EVENT).exists() and not (ROOT / EVENT).is_symlink(), 'Append-only event already exists')
    if not args.apply:
        print(json.dumps({'status': 'VALIDATED_NOT_APPLIED', 'event': EVENT, 'next_task': cache_task['id']}))
        return
    require(cache_math.current(ROOT) == PARENT and cache_math.capture(ROOT) == live,
            'Cache pointer/live custody readset changed before event creation')
    for name, raw in observed.items():
        require(guard.read_source(ROOT, name) == raw, 'Event readset collision: ' + name)
    guard.write_bytes(ROOT / EVENT, (json.dumps(event, indent=2) + '\n').encode(), exclusive=True)
    print(json.dumps({'status': event['status'], 'event': EVENT, 'cache_refresh_performed': False}))


if __name__ == '__main__':
    main()
