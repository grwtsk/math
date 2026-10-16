#!/usr/bin/env python3
"""Finalize only the reviewed integration metadata after actual successful gates.

This helper launches no verifier and installs no shared observation. Its default
mode validates and prints the planned outputs; --apply is required to archive
the three current phase records, create new finish/addendum records exclusively,
and update only those three phase records. The integration owner must review it.
"""
import argparse
import copy
import datetime
import hashlib
import json
from pathlib import Path
import re
import subprocess
import sys
import uuid

ROOT = Path('/Users/think/Desktop/math')
sys.dont_write_bytecode = True
sys.path.insert(0, str(ROOT / '.noeaaeue/scripts'))
import check_math_trust as guard

BASE = '.noeaaeue/evidence/NumberTheory/Diophantine/PrimitiveAdditiveTriples/'
SELECTED = BASE + 'additive-character-integration-checks-2026-10-15.json'
CONTRIBUTION = BASE + 'additive-character-integration-contribution-2026-10-15.json'
STATE = BASE + 'additive-character-integrated-status-2026-10-15.json'
CURSOR = BASE + 'abc-resume-additive-character-integrated-2026-10-15.json'
GRAPH = BASE + 'abc-proof-hypergraph-additive-character-integrated-2026-10-15.json'
FINISH = BASE + 'additive-character-integration-finish-2026-10-15.json'
DOCS = BASE + 'additive-character-integration-documentation-final-2026-10-15/records.json'
PARTITION = '.noeaaeue/evidence/Analysis/fourier/partition-concentration-checks-2026-10-15.json'
CASE = '.noeaaeue/receipts/partition-exposure-concentration/case-locator-custody.json'
ADDENDUM = '.noeaaeue/receipts/partition-exposure-concentration/joint-validation-addendum-2026-10-15.json'
PAGES = [
    'docs/mathematics/Analysis/Fourier/FiniteAdditiveProjector/projector.md',
    'docs/mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/additive-character-moments.md',
]
EXPORTS = [
    'GRWTSK.Analysis.Fourier.FiniteAdditiveProjector',
    'GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AdditiveCharacterMoments',
]
FINITE_NODES = {
    'finite_additive_character_projector', 'finite_scaled_joint_character_cube',
    'finite_character_frequency_interchange', 'finite_primitive_character_frequency_identity',
}
AXIOMS = {'propext', 'Classical.choice', 'Quot.sound'}


def require(value, message):
    if not value:
        raise RuntimeError(message)


def sha(raw):
    return hashlib.sha256(raw).hexdigest()


def encoded(value):
    return (json.dumps(value, indent=2) + '\n').encode()


def local_name(name):
    path = Path(name)
    if path.is_absolute():
        path = path.relative_to(ROOT)
    require('..' not in path.parts, 'Nonlocal evidence path: ' + str(name))
    return path.as_posix()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--checkpoint', required=True, help='Exact final quiet checkpoint directory')
    parser.add_argument('--precursor-checkpoint', action='append', default=[],
                        help='Preserve earlier/queued checkpoint identities without promoting their statuses')
    parser.add_argument('--documentation-records', default=DOCS, help='Exact final five-gate record')
    parser.add_argument('--apply', action='store_true', help='Apply only after integration-owner review')
    args = parser.parse_args()
    checkpoint = local_name(args.checkpoint)
    require(checkpoint.startswith('.noeaaeue/binding-repair/checkpoint-'), 'Invalid checkpoint')
    observed = {}

    def read(name):
        rel = local_name(name)
        raw = guard.read_source(ROOT, rel)
        require(rel not in observed or observed[rel] == raw, 'Evidence readset drift: ' + rel)
        observed[rel] = raw
        return raw

    def js(name):
        return json.loads(read(name))

    def identity(name):
        rel = local_name(name)
        raw = read(rel)
        return {'path': rel, 'sha256': sha(raw), 'bytes': len(raw)}

    def hashes(mapping, prefix=''):
        for name, digest in mapping.items():
            require(sha(read(prefix + name)) == digest, 'Current source/input drift: ' + prefix + name)

    def census(declarations, modules, count, expected_modules, strict=False):
        require(len(modules) == expected_modules and len(declarations) == count
                and len({row['module'] for row in modules}) == expected_modules
                and len({row['name'] for row in declarations}) == count
                and sum(row['declarations'] for row in modules) == count, 'Incomplete owned census')
        helpers = []
        for row in declarations:
            require(set(row['axioms']) <= AXIOMS and row['kind'] != 'axiom',
                    'Nonstandard owned declaration: ' + row['name'])
            known = row['known_generated_runtime_helper']
            if known:
                helpers.append(row['name'])
            if strict:
                require(not known and not row['unsafe'] and not row['partial']
                        and row.get('mathematical_admission') is True
                        and not row.get('direct_value_reference_to_runtime_helper', False),
                        'Selected finite scope permits no runtime exception or consumer')
        require(len(helpers) in {0, 5}, 'Unexpected qualified runtime-helper scope')
        return helpers

    def script_command(record, hash_key='log_sha256'):
        require(record['exit'] == 0, 'A required stage failed: ' + record['name'])
        require(record.get('script_stable', True) is True
                and record['script_sha256_before'] == record['script_sha256_after'],
                'Checker changed during gate: ' + record['name'])
        scripts = [arg for arg in record['argv'] if arg.endswith('.py')]
        require(len(scripts) == 1 and sha(read(scripts[0])) == record['script_sha256_after'],
                'Current checker differs from gate: ' + record['name'])
        require(sha(read(record['log'])) == record[hash_key], 'Gate log drift: ' + record['name'])

    selected = js(SELECTED)
    require(selected['outcome'] == 'passed' and selected['trust'] == 0
            and selected['fatal_warnings'] is True and selected['abc_proved'] is False
            and set(selected['allowed_axioms']) == AXIOMS, 'Selected proof policy/status differs')
    require(len(selected['source_hashes']) == 24 and len(selected['modules']) == 9
            and len(selected['declarations']) == 120
            and selected['positive_consumers_passed'] == 1
            and selected['intended_negative_rejections_passed'] == 5, 'Selected scope differs')
    require(all(value == 'passed' for value in selected['selected_checks'].values()), 'Selected check failed')
    hashes(selected['source_hashes'])
    hashes(selected['source_hashes'], local_name(selected['run_directory']) + '/source/')
    census(selected['declarations'], selected['modules'], 120, 9, strict=True)
    registration = js(CONTRIBUTION)
    require(registration['proof_receipt'] == SELECTED and registration['proof_receipt_sha256'] == sha(read(SELECTED))
            and len(registration['sources']) == 8 and registration['abc_proved'] is False, 'Registration binding differs')
    hashes(registration['source_hashes'])

    preparation = js(checkpoint + '/preparation-manifest.json')
    installation = js(checkpoint + '/installation.json')
    contract_path = preparation['future_contract']
    contract = js(contract_path)
    observation_path = '.noeaaeue/bindings/current-source-observations.json'
    observation = js(observation_path)
    require(read(observation_path) == read(checkpoint + '/current-source-observations.new.json')
            and sha(read(observation_path)) == installation['new_sha256']
            and observation['identity'] == installation['observation_identity'], 'Active observation/checkpoint differs')
    require(contract['kernel_checked'] is False
            and contract['generation_status'] == 'CURRENT_INPUT_OBSERVATION_NOT_FULL_REPLAY_ACCEPTANCE',
            'Observation contract cannot inherit proof acceptance')
    source_rows = observation['observation']['sources']
    source_index = {row['path']: row for row in source_rows}
    expected_public = sum(row['source_set'] == 'active' and row['physical_role'] == 'library' for row in source_rows)
    expected_public_paths = {row['path'] for row in source_rows
                             if row['source_set'] == 'active' and row['physical_role'] == 'library'}
    candidates = sorted(row['path'] for row in source_rows if row['source_set'] == 'candidate-evidence')
    expected_application = len(contract['modules'])
    require(len(source_rows) == observation['observation']['source_count']
            and len(source_index) == len(source_rows)
            and len(expected_public_paths) == expected_public, 'Observation census mismatch')
    hashes({row['path']: row['sha256'] for row in source_rows})
    for source in registration['sources']:
        role = 'negative-control' if '/Negative/' in source else 'positive-check' if '/Positive/' in source else 'library'
        require(source_index[source]['source_set'] == 'active' and source_index[source]['source_role'] == role,
                'Owned source current role is not active: ' + source)
    hashes(contract['assets'])
    hashes({entry['path']: entry['sha256'] for entry in contract['modules'].values()})

    stage_records = js(checkpoint + '/serial-native/records.json')
    require(len(stage_records) == 4 and stage_records[0]['name'] in {'contract-validate', 'contract-validate-retry'}
            and [row['name'] for row in stage_records[1:]] ==
            ['native-audit-self-test', 'public-library-replay', 'application-replay'],
            'Exactly four completed final stages are required')
    receipts = []
    for row in stage_records:
        require(row['status'] == 'passed', 'Native pipeline is incomplete: ' + row['name'])
        script_command(row)
        require(sha(read(row['retained_receipt'])) == row['receipt_sha256']
                and read(row['original_receipt']) == read(row['retained_receipt']), 'Native receipt custody differs')
        receipts.append(js(row['retained_receipt']))
    validation, selftest, public, application = receipts
    for record in [validation, application]:
        require(local_name(record['manifest']) == contract_path
                and record['manifest_sha256'] == sha(read(contract_path))
                and record['kernel_trust_level'] == 0 and record['warnings_as_errors'] is True,
                'Application/validation contract or proof policy differs')
        for item in record['current_source_observation_inputs']:
            require(sha(read(item['path'])) == item['sha256'], 'Observation pointer/input drift')
    require(validation['status'] == 'inputs-validated' and validation['kernel_checked'] is False,
            'Validate-only must remain nonnative/nonacceptance')
    require(selftest['status'] == 'LEAN_AUDIT_SELF_TEST_PASSED' and selftest['command_count'] == 9
            and len(selftest['results']) == 9 and all(row['outcome'] == 'passed' for row in selftest['results']),
            'Native hostile/positive audit self-test did not finish')
    hashes(selftest['snapshot']['sha256'])
    for row in selftest['results']:
        require(sha(read(row['diagnostic_log'])) == row['output_sha256'], 'Self-test diagnostic drift')
        require('--trust=0' in row['argv'] and
                ('-DwarningAsError=true' in row['argv'] or row['name'] == 'sorry-warning-disabled-source'),
                'Self-test native flags differ')

    require(public['status'] == 'ALL_PROJECT_SOURCE_AND_AXIOM_CHECKS_PASSED'
            and public['source_count'] == expected_public
            and len(public['snapshot']['sources']) == expected_public
            and public['candidate_source_only_paths'] == candidates
            and public['rh_proved'] is False, 'Public replay status/source/candidate scope differs')
    require(len(set(public['snapshot']['sources'])) == expected_public
            and set(public['snapshot']['sources']) == expected_public_paths,
            'Public replay must cover the exact active-library source set, not only its count')
    hashes(public['snapshot']['sha256'])
    hashes(public['snapshot']['sha256'], local_name(public['run_directory']) + '/source/')
    public_helpers = census(public['declarations'], public['modules'], public['declaration_count'], expected_public)
    public_owner_hashes = {name[:-5].replace('/', '.'): public['snapshot']['sha256'][name]
                          for name in public['snapshot']['sources']}
    qualified_profiles, _, qualification = guard.owned_audit_protocol.qualified_project_profile(
        ROOT, lambda _root, name: read(name), public_owner_hashes)
    require(qualification == public['qualified_current_runtime_profile'], 'Public runtime qualification differs')
    native_template = read(local_name(public['run_directory']) + '/source/' + guard.AUDIT)
    configured_template = guard.owned_audit_protocol.configure_project_table(native_template, qualified_profiles)
    public_profiles = guard.owned_audit_protocol.runtime_profiles(configured_template, 'project')
    public_log = read(local_name(public['run_directory']) + '/AllProjectAudit.log')
    require(public['results'][-1]['name'] == 'AllProjectAudit'
            and sha(public_log) == public['results'][-1]['output_sha256'], 'Public native audit log binding differs')
    parsed_declarations, parsed_modules = guard.owned_audit_protocol.validate_census(
        public_log.decode(), list(public_owner_hashes), public_owner_hashes, public_profiles, guard.census_records)
    require(parsed_declarations == public['declarations'] and parsed_modules == public['modules'],
            'Reparsed qualified public census differs from retained receipt')
    require(len(public['results']) == expected_public + 1
            and all(row['exit_code'] == 0 and row['outcome'] == 'passed' for row in public['results']),
            'Public source/audit commands incomplete')
    require(application['status'] == 'kernel-checked' and application['kernel_checked'] is True
            and application['all_final_hashes_match'] is True and application['fresh_project_build'] is True
            and application['compiled_module_count'] == expected_application
            and set(application['source_records']) == set(contract['modules'])
            and len(application['checked_modules']) == expected_application, 'Application replay incomplete')
    checked_module_rows = application['checked_modules']
    require(isinstance(checked_module_rows, list)
            and all(isinstance(row, dict) and isinstance(row.get('module'), str)
                    for row in checked_module_rows)
            and len({row['module'] for row in checked_module_rows}) == expected_application
            and {row['module'] for row in checked_module_rows} == set(contract['modules']),
            'Application checked modules must exactly cover the contract, without duplicates')
    for row in checked_module_rows:
        entry = contract['modules'][row['module']]
        require(row['source_sha256'] == entry['sha256']
                and row['compiled_snapshot_path'] == entry['path']
                and row['source_unchanged'] is True and row['passed'] is True
                and row['exit_code'] == 0,
                'Application checked-module source/path/status differs: ' + row['module'])
    for module, entry in contract['modules'].items():
        require(all(application['source_records'][module][key] == entry[key] for key in ['path', 'sha256']),
                'Application module binding differs: ' + module)
    verdict = application['complete_owner_census']['verdict']
    require(verdict['status'] == 'OWNER_CENSUS_PARSED'
            and verdict['owned_module_count'] == expected_application
            and set(verdict['allowed_transitive_axioms']) == AXIOMS, 'Application owner census differs')
    application_helpers = census(verdict['declarations'], verdict['modules'], verdict['declaration_count'], expected_application)
    parser_path = application['operational_owner_census_contract']['parser_asset']
    require(sha(read(parser_path)) == application['complete_owner_census']['parser_sha256'],
            'Application owner parser identity differs')
    import moebius_owner_census
    owner_commands = [row for row in application['commands']
                      if row.get('command_sha256') == application['complete_owner_census']['command_sha256']]
    require(len(owner_commands) == 1 and owner_commands[0]['exit_code'] == 0
            and owner_commands[0]['postcheck_passed'] is True, 'Application owner command differs')
    owner_command = owner_commands[0]
    application_run = Path(local_name(stage_records[3]['original_receipt'])).parent.as_posix()
    owner_log = read(application_run + '/' + owner_command['log'])
    require(sha(owner_log) == owner_command['log_sha256'], 'Application owner log binding differs')
    generated_profile = verdict['generated_partial_profile_enabled']
    parsed_verdict = moebius_owner_census.validate_owner_census(owner_log.decode(), list(contract['modules']),
        {module: entry['sha256'] for module, entry in contract['modules'].items()}, returncode=0,
        allow_pinned_runtime=verdict['runtime_exception_enabled'] and not generated_profile,
        allow_generated_partial_profile=generated_profile,
        generated_partial_profile_sha256=verdict['generated_partial_profile_sha256'])
    require(parsed_verdict == verdict, 'Reparsed exact application owner census differs')
    require(application['terminal_profile_control_validation']['control_count'] == 6
            and application['terminal_profile_control_validation']['strict_oracles_recomputed'] is True
            and application['terminal_custom_axiom_control_validation']['control_count'] == 10
            and application['terminal_custom_axiom_control_validation']['strict_oracles_recomputed'] is True,
            'Application terminal native controls incomplete')

    ordinary_path = checkpoint + '/ordinary-lake-build/record.json'
    ordinary = js(ordinary_path)
    require(ordinary['schema'] == 'supplementary-ordinary-lake-build-v1'
            and ordinary['status'] == 'ORDINARY_LAKE_BUILD_PASSED_AT_EXACT_CURRENT_SCOPE'
            and ordinary['command'] == ['lake', 'build', 'GRWTSK'] and ordinary['cwd'] == str(ROOT)
            and ordinary['exit_code'] == 0 and ordinary['native_build_executed'] is True
            and ordinary['all_inputs_unchanged'] is True and ordinary['proof_acceptance'] is False
            and ordinary['mathematical_acceptance'] is False
            and ordinary['rh_proved'] is False and ordinary['abc_proved'] is False,
            'Supplementary ordinary GRWTSK build did not pass without source/proof promotion')
    require(ordinary['prior_pipeline_records'] == identity(checkpoint + '/serial-native/records.json')
            and ordinary['prior_public_receipt'] == identity(stage_records[2]['retained_receipt'])
            and ordinary['prior_application_receipt'] == identity(stage_records[3]['retained_receipt'])
            and ordinary['final_contract'] == identity(contract_path)
            and ordinary['public_source_count'] == expected_public
            and ordinary['public_snapshot_input_count'] == len(public['snapshot']['sha256'])
            and ordinary['application_module_count'] == expected_application
            and ordinary['contract_asset_count'] == len(contract['assets'])
            and ordinary['root_sha256'] == public['snapshot']['sha256']['GRWTSK.lean'],
            'Ordinary build must bind the actual final root, receipts and complete input scopes')
    require(datetime.datetime.fromisoformat(ordinary['build_started_utc']) >=
            max(datetime.datetime.fromisoformat(row['finished_utc']) for row in stage_records)
            and datetime.datetime.fromisoformat(ordinary['finished_utc']) >=
            datetime.datetime.fromisoformat(ordinary['build_finished_utc']) >=
            datetime.datetime.fromisoformat(ordinary['build_started_utc']),
            'Ordinary build must follow all four completed serial stages')
    required_ordinary_hashes = dict(public['snapshot']['sha256'])
    required_ordinary_hashes.update({row['path']: row['sha256'] for row in contract['modules'].values()})
    required_ordinary_hashes.update(contract['assets'])
    required_ordinary_hashes[contract_path] = sha(read(contract_path))
    require(all(ordinary['input_hashes_before'].get(name) == digest
                for name, digest in required_ordinary_hashes.items())
            and ordinary['input_hashes_before'] == ordinary['input_hashes_after'] == ordinary['snapshot_copy_hashes_after']
            and ordinary['native_executable_hashes_before'] == ordinary['native_executable_hashes_after']
            and ordinary['dependency_revisions_before'] == ordinary['dependency_revisions_after'] == contract['dependency_revisions']
            and ordinary['dependency_checkouts_before'] == ordinary['dependency_checkouts_after'] == public['dependency_checkout_states']
            and ordinary['dependency_lock_sha256_before'] == ordinary['dependency_lock_sha256_after'] == contract['dependency_lock_sha256']
            and ordinary['package_anchor_hashes_before'] == ordinary['package_anchor_hashes_after'] ==
            {row['path']: row['sha256'] for row in contract['package_anchors']},
            'Ordinary-build before/after source, toolchain or dependency freeze differs')
    hashes(ordinary['input_hashes_before'])
    hashes(ordinary['input_hashes_before'], checkpoint + '/ordinary-lake-build/source/')
    ordinary_lean = Path(application['lean_executable'])
    ordinary_lake = ordinary_lean.with_name('lake')
    require(set(ordinary['native_executable_hashes_before']) == {str(ordinary_lean), str(ordinary_lake)}
            and ordinary['native_executable_hashes_before'][str(ordinary_lean)] == application['lean_sha256']
            == contract['lean_sha256'] == public['lean_binary_sha256']
            and ordinary['resolved_lake_executable'] == str(ordinary_lake),
            'Ordinary build must use the exact actual pinned Lean/Lake executable pair')
    for name, digest in ordinary['native_executable_hashes_before'].items():
        native = Path(name)
        require(native.is_absolute() and sha(guard.read_source(native.parent, native.name)) == digest,
                'Ordinary-build current native executable drift')
    import moebius_response_inputs
    current_build_pins, current_build_checkouts, current_build_lock = moebius_response_inputs.package_pins(
        ROOT, ROOT / '.lake/packages', guard.read_source)
    require(current_build_pins == ordinary['dependency_revisions_after']
            and current_build_checkouts == ordinary['dependency_checkouts_after']
            and current_build_lock == ordinary['dependency_lock_sha256_after'],
            'Ordinary-build dependency pins or tracked checkouts drifted after completion')
    for name, digest in ordinary['package_anchor_hashes_after'].items():
        require(sha(guard.read_source(ROOT / '.lake/packages', name)) == digest,
                'Ordinary-build package anchor drifted after completion')
    require(ordinary['log'] == checkpoint + '/ordinary-lake-build/output.log'
            and sha(read(ordinary['log'])) == ordinary['log_sha256'], 'Ordinary-build retained log differs')
    ordinary_identity = dict(identity(ordinary_path), command=ordinary['command'], exit_code=0,
        log=identity(ordinary['log']), status=ordinary['status'], proof_acceptance=False,
        scope='Supplementary ordinary build of the exact checked root; the separate trust-zero owned audits supply proof acceptance.')

    root_raw = read('GRWTSK.lean')
    root_imports = guard.project_imports(root_raw.decode())
    require(all(root_imports.count(module) == 1 for module in EXPORTS), 'Root exports must occur exactly once')
    layout = js('.noeaaeue/documentation/math-layout.json')
    catalog = js('docs/reference/math-source-catalog.json')
    for rows in [layout['active_sources'], catalog['sources']]:
        for source in registration['sources']:
            matches = [row for row in rows if row['path'] == source]
            require(len(matches) == 1 and matches[0]['sha256'] == selected['source_hashes'][source],
                    'Eight-source registration drift: ' + source)
    require(catalog['current_source_observations']['identity'] == observation['identity'], 'Catalog observation differs')
    doc_layout = js('.noeaaeue/documentation/reference/documentation-layout.json')
    bindings_path = doc_layout['object_binding_registry']
    require(sha(read(bindings_path)) == doc_layout['object_binding_registry_sha256'], 'Structural object registry drift')
    bindings = js(bindings_path)
    guides = {}
    for page in PAGES:
        entry = doc_layout['pages'][page]
        require(entry['evidence'] == SELECTED and entry['status'] == 'fresh-selected'
                and entry['source_sha256'] == selected['source_hashes'][entry['primary_source']]
                and read(page).decode().splitlines()[0] == '# ' + entry['title'], 'Current guide binding drift')
        group = bindings['bindings'][entry['subject'] + '/' + entry['object']]
        require(group == sorted(set(group)) and entry['primary_source'] in group, 'Current guide object binding drift')
        guides[page] = dict(identity(page), source=entry['primary_source'], source_sha256=entry['source_sha256'], evidence=SELECTED)
    docs_path = local_name(args.documentation_records)
    docs = js(docs_path)
    require([row['name'] for row in docs] == ['render', 'normal', 'optimized', 'tests', 'tests-optimized'], 'Five final documentation gates required')
    for row in docs:
        script_command(row, 'output_sha256')
    require(all('Ran 109 tests' in read(row['log']).decode() and '\nOK' in read(row['log']).decode()
                for row in docs if row['name'] in {'tests', 'tests-optimized'}), 'Documentation hostile controls differ')

    campaign = js(BASE + 'abc-campaign.json')
    target = campaign['canonical_abc_target']
    hashes(target['local_definition_closure_sha256'])
    freeze_path = BASE + 'Sources/source-freeze-receipt.json'
    freeze = js(freeze_path)
    require(freeze['mathematical_acceptance'] is False, 'Literature freeze cannot assert proof acceptance')
    hashes(freeze['files_sha256'], BASE + 'Sources/')
    status, cursor, graph = js(STATE), js(CURSOR), js(GRAPH)
    require(cursor['target'] == target and cursor['remaining_route_edges'] == 10
            and cursor['next_obligation'] == 'finite_product_weight_character_factorization'
            and len(graph['edges']) == 10
            and all(edge['status'] == 'open' and not edge.get('checked_entailment_declaration') for edge in graph['edges'])
            and graph['metadata_is_not_a_mathematical_premise'] is True, 'ABC frontier/target changed')
    factorization = [node for node in graph['nodes'] if node['id'] == cursor['next_obligation']]
    require(len(factorization) == 1 and factorization[0]['status'] == 'open'
            and factorization[0]['declaration_identity'] is None, 'The next factorization obligation must remain open')
    for record in [cursor.get('previous_cursor', {})] + [value for key, value in graph.items()
            if key.startswith('previous') and isinstance(value, dict)]:
        if 'path' in record and 'sha256' in record:
            require(sha(read(BASE + record['path'] if '/' not in record['path'] else record['path'])) == record['sha256'],
                    'Historical cursor/hypergraph drift')
    hashes(registration['previous_stage'])
    case = js(CASE)
    require(case['actual_git_portable_path'] == PARTITION and case['receipt_bytes_unchanged'] is True
            and sha(read(PARTITION)) == case['receipt_sha256'], 'Partition case/receipt custody drift')
    partition = js(PARTITION)
    require(partition['outcome'] == 'passed' and partition['trust'] == 0 and partition['fatal_warnings'] is True
            and len(partition['library_order']) == 17 and len(partition['modules']) == 19
            and len(partition['declarations']) == 660 and partition['positive_consumers_passed'] == 2
            and partition['intended_negative_rejections_passed'] == 2, 'Partition selected scope differs')
    hashes(partition['source_hashes'])
    census(partition['declarations'], partition['modules'], 660, 19, strict=True)
    historical_pin_index = '.noeaaeue/binding-repair/historical-pin-status.json'
    historical_binding_index = '.noeaaeue/binding-repair/validation-completion/moebius-binding-status.json'
    historical_binding = js(historical_binding_index)
    v5_path = local_name(historical_binding['current_default']['path'])
    v5 = js(v5_path)
    require(sha(read(v5_path)) == historical_binding['current_default']['sha256']
            and sha(read(v5_path)) != sha(read(contract_path)) and len(v5['modules']) == 439,
            'Retained v5 identity/scope or supersession differs')
    v5_validation_path = '.noeaaeue/binding-repair/validation-completion/moebius-v5-application-validation.json'
    v5_validation = js(v5_validation_path)
    v5_receipt_path = local_name(v5_validation['receipt'])
    v5_receipt = js(v5_receipt_path)
    require(v5_validation['status'] == v5_receipt['status'] == 'kernel-checked'
            and v5_validation['kernel_checked'] is True and v5_receipt['kernel_checked'] is True
            and local_name(v5_validation['manifest']) == local_name(v5_receipt['manifest']) == v5_path
            and v5_validation['manifest_sha256'] == v5_receipt['manifest_sha256'] == sha(read(v5_path))
            and v5_validation['receipt_sha256'] == sha(read(v5_receipt_path))
            and v5_validation['fresh_compiled_modules'] == v5_receipt['compiled_module_count'] == 439,
            'Historical successful v5 acceptance identity/scope differs')
    supersession = {
        'scope': 'Current source/hash bookkeeping only. Older records retain their own historical statuses and exact expected hashes; no historical acceptance is promoted to the current binding.',
        'expected_hashes_rewritten': False, 'historical_acceptance_promoted': False,
        'retained_status_indexes_unchanged': [identity(historical_pin_index), identity(historical_binding_index)],
        'v5_application_binding': {
            'contract': identity(v5_path), 'application_modules': len(v5['modules']),
            'binding_status_against_final': 'stale-for-current-binding',
            'recorded_generation_status': v5['generation_status'],
            'recorded_contract_kernel_checked': v5['kernel_checked'],
            'historical_successful_acceptance_preserved': {
                'validation': identity(v5_validation_path), 'receipt': identity(v5_receipt_path),
                'recorded_status': v5_receipt['status'], 'recorded_kernel_checked': v5_receipt['kernel_checked'],
                'recorded_checked_application_modules': v5_receipt['compiled_module_count'],
                'interpretation': 'The original 439-module historical kernel acceptance remains valid at its recorded scope; it supplies no current-binding acceptance.'},
            'expected_hashes_rewritten': False, 'historical_acceptance_promoted': False},
        'registration_articles': {page: {
            'registration_record': identity(CONTRIBUTION), 'recorded_article_sha256': digest,
            'recorded_hash_role': 'historical-preimage', 'binding_status_against_current_guide': 'stale-for-current-guide',
            'actual_final_guide': guides[page], 'expected_hashes_rewritten': False}
            for page, digest in registration['article_sha256'].items()}}
    require(all(row['recorded_article_sha256'] != row['actual_final_guide']['sha256']
                for row in supersession['registration_articles'].values()),
            'Registration article supersession requires actual changed guide bytes')
    precursor = []
    for earlier in args.precursor_checkpoint:
        rel = local_name(earlier)
        require(rel.startswith('.noeaaeue/binding-repair/checkpoint-') and rel != checkpoint, 'Invalid precursor checkpoint')
        earlier_records = js(rel + '/serial-native/records.json')
        earlier_preparation = js(rel + '/preparation-manifest.json')
        earlier_contract_path = local_name(earlier_preparation['future_contract'])
        earlier_contract = js(earlier_contract_path)
        require(sha(read(earlier_contract_path)) != sha(read(contract_path)), 'Precursor contract is not superseded')
        require(not any(row['name'] == 'application-replay' for row in earlier_records),
                'Precursor application is not an unrun queued stage')
        item = {'checkpoint': rel, 'records': identity(rel + '/serial-native/records.json'),
                'recorded_statuses_not_promoted': earlier_records,
                'contract': identity(earlier_contract_path), 'application_modules': len(earlier_contract['modules']),
                'binding_status_against_final': 'stale-against-final-binding',
                'queued_application': {'status': 'NOT_RUN', 'expected_application_modules': len(earlier_contract['modules']),
                                       'interpretation': 'No application-replay stage was executed or accepted by this precursor pipeline.'},
                'expected_hashes_rewritten': False, 'historical_acceptance_promoted': False,
                'retained_receipts': [identity(row['retained_receipt']) for row in earlier_records
                                     if row.get('retained_receipt')]}
        active_path = rel + '/serial-native/active.json'
        if (ROOT / active_path).is_file():
            item['controller_final_state'] = dict(identity(active_path), recorded_state=js(active_path))
        completion_path = rel + '/public-native-completion.json'
        require((ROOT / completion_path).is_file(), 'Actual separate precursor public completion record is required')
        item['separately_recorded_public_native_completion'] = dict(
            identity(completion_path), recorded_state=js(completion_path),
            interpretation='Retained exactly as recorded; this does not complete or promote the precursor pipeline or its queued application stage.')
        precursor.append(item)

    now = datetime.datetime.now(datetime.timezone.utc).isoformat()
    previous_cursor_base = {key: cursor.get(key) for key in ['repository_commit', 'repository_tree']}
    validated_head = public['snapshot']['head']
    require(re.fullmatch(r'[0-9a-f]{40}', validated_head) is not None, 'Invalid validated base commit')
    validated_tree = subprocess.check_output(
        ['git', 'rev-parse', validated_head + '^{tree}'], cwd=ROOT, text=True).strip()
    require(re.fullmatch(r'[0-9a-f]{40}', validated_tree) is not None, 'Invalid validated base tree')
    validated_base = {'repository_commit': validated_head, 'repository_tree': validated_tree,
        'interpretation': 'Validated prepublication base commit. The actual checked working-tree bytes, including uncommitted integration changes, are bound by the full source-hashed public receipt. This is not a future publication commit.'}
    stage_identities = {row['name']: dict(identity(row['retained_receipt']), argv=row['argv'], status=receipts[index]['status'])
                        for index, row in enumerate(stage_records)}
    public_identity = stage_identities['public-library-replay']
    supersession['precursor_contracts'] = [{key: item[key] for key in [
        'checkpoint', 'records', 'contract', 'application_modules', 'binding_status_against_final',
        'queued_application', 'separately_recorded_public_native_completion',
        'expected_hashes_rewritten', 'historical_acceptance_promoted']} for item in precursor]
    supersession['final_active_binding_and_actual_acceptance'] = {
        'contract': identity(contract_path), 'public_sources': expected_public, 'application_modules': expected_application,
        'public_replay': public_identity, 'application_replay': stage_identities['application-replay'],
        'status': 'passed-at-exact-final-current-binding',
        'interpretation': 'Actual successful final native receipts are recorded separately from stale and historical contracts; the observation contract itself remains nonacceptance.'}
    completed_operational_cursor = {
        'status': 'NATIVE_INTEGRATION_COMPLETE_PUBLICATION_PENDING',
        'completed_pipeline_records': identity(checkpoint + '/serial-native/records.json'),
        'completed_stages': stage_identities,
        'finish_record': {
            'path': FINISH,
            'scope': 'Created exclusively by this finalization from the completed actual receipts; its final byte hash belongs in the separate publication/completion event.'},
        'next_obligation': cursor['next_obligation'],
        'publication': {
            'status': 'pending-separate-completion-event',
            'expected_append_only_event': '.noeaaeue/cache/coordination/events/reference-characters-integration-complete-2026-10-16.json',
            'publication_evidence_path': checkpoint + '/publication-completion.json',
            'commit': None, 'push': None,
            'scope': 'No completed commit, push or publication is inferred from native integration. Record those actual outcomes separately when they exist.'},
        'scope': 'The recorded native integration stages are complete; no running PID, tool session or instruction to wait on the retired pipeline remains current. The next finite mathematical obligation and publication are separate.'}
    for phase in [status, cursor]:
        require(isinstance(phase.get('operational_integration_cursor'), dict),
                'Expected the precompletion operational cursor to preserve')
        require('historical_precompletion_operational_integration_cursor' not in phase,
                'Precompletion operational cursor history already exists')
        phase['historical_precompletion_operational_integration_cursor'] = copy.deepcopy(
            phase['operational_integration_cursor'])
        phase['operational_integration_cursor'] = copy.deepcopy(completed_operational_cursor)
    status.update(integration_complete=True, integration_in_progress=False, public_root_replay='passed-exact-current-public-source-scope',
        public_root_receipt=public_identity, library_wide_source_count=expected_public,
        public_owned_declarations=public['declaration_count'], application_source_count=expected_application,
        application_owned_declarations=verdict['declaration_count'], documentation_receipt=docs_path,
        integration_record=FINISH, overall_status='OPEN_FRONTIER', abc_proved=False, status_observed_at=now)
    resolved = cursor.get('integration_blockers', [])
    require(all(any(token in blocker for token in ['writer-pause barrier', 'public-root replay pending', 'shared observation/catalog'])
                for blocker in resolved), 'Unrecognized integration blocker requires explicit reconciliation')
    cursor.update(integration_complete=True, integration_in_progress=False, integration_blockers=[],
        source_integration_scope='Eight audited sources registered, both root exports included in the actual completed public replay; arithmetic estimates and abc remain open.',
        public_root_receipt=public_identity, integration_record=FINISH, status='OPEN_FRONTIER', status_observed_at=now)
    cursor.update(repository_commit=validated_head, repository_tree=validated_tree,
        previous_saved_cursor_base=previous_cursor_base, validated_prepublication_base=validated_base)
    old_edges = copy.deepcopy(graph['edges'])
    old_nonfinite_nodes = copy.deepcopy([node for node in graph['nodes'] if node['id'] not in FINITE_NODES])
    require({node['id'] for node in graph['nodes'] if node['id'] in FINITE_NODES} == FINITE_NODES,
            'The exact four finite integration nodes are required')
    for node in graph['nodes']:
        if node['id'] in FINITE_NODES:
            require(node['status'] == 'checked-at-selected-finite-scope', 'Finite node mathematical status changed')
            require(node['repository_admission'] is False and node['public_release_eligible'] is False,
                    'Unexpected preintegration admission state: ' + node['id'])
            node['historical_preintegration_admission'] = {
                'repository_admission': node['repository_admission'],
                'public_release_eligible': node['public_release_eligible'],
                'verification_scope': node['verification_scope'],
                'public_root_replay': node['public_root_replay']}
            node.update(integration_complete=True, public_root_replay='passed', public_root_receipt=public_identity,
                repository_admission=True, public_release_eligible=True,
                admission_scope='Only this node\'s exact finite declarations at its recorded source identities and exact hypotheses, checked by the selected receipt and the completed current public/application receipts. Metadata supplies no mathematical premise, arithmetic estimate or ABC entailment.',
                admission_receipts={'selected': identity(SELECTED), 'public_library': public_identity,
                                    'application': stage_identities['application-replay']},
                verification_scope='Exact finite declarations from the selected replay, now included in the completed current public source audit; no ABC edge or estimate is proved.')
    require(graph['edges'] == old_edges, 'No ABC edge may be changed')
    require([node for node in graph['nodes'] if node['id'] not in FINITE_NODES] == old_nonfinite_nodes,
            'No target, control or open-obligation node may be changed')
    graph.update(overall_status='OPEN_FRONTIER', integration_complete=True, integration_record=FINISH)
    outputs = {STATE: encoded(status), CURSOR: encoded(cursor), GRAPH: encoded(graph)}
    finish = {'schema': 'finite-additive-character-integration-finish-v1', 'at_utc': now,
        'integration_complete': True, 'overall_status': 'OPEN_FRONTIER', 'abc_proved': False,
        'selected': dict(identity(SELECTED), modules=9, owned_declarations=120, positive_consumers=1, intended_rejections=5),
        'final_pipeline_records': identity(checkpoint + '/serial-native/records.json'), 'stages': stage_identities,
        'ordinary_lake_build': ordinary_identity,
        'validate_only_kernel_checked': False, 'native_self_test_commands': 9,
        'public_source_scope': {'sources': expected_public, 'owned_declarations': public['declaration_count'],
            'candidate_sources_excluded': len(candidates), 'candidate_paths': candidates, 'qualified_nonlogical_runtime_helpers': public_helpers},
        'application_scope': {'sources': expected_application, 'owned_declarations': verdict['declaration_count'],
            'profile_rejections': 6, 'custom_axiom_rejections': 10, 'qualified_nonlogical_runtime_helpers': application_helpers},
        'current_contract': identity(contract_path), 'contract_is_observation_not_acceptance': True,
        'validated_prepublication_base': validated_base, 'previous_saved_cursor_base': previous_cursor_base,
        'current_observation': dict(identity(observation_path), identity=observation['identity']),
        'current_root': identity('GRWTSK.lean'), 'exports': EXPORTS, 'owned_sources': registration['source_hashes'],
        'current_guide_identities_after_render': guides, 'documentation_gates': dict(identity(docs_path), records=docs),
        'registration_article_hashes_are_preimages_only': registration['article_sha256'],
        'literature_source_freeze': dict(identity(freeze_path), current_file_hashes_verified=len(freeze['files_sha256']), mathematical_acceptance=False),
        'target_definition_hashes': target['local_definition_closure_sha256'], 'open_ABC_edges': 10,
        'next_obligation': cursor['next_obligation'], 'case_locator_custody': identity(CASE), 'precursor_checkpoints': precursor,
        'supersession_map': supersession,
        'resolved_integration_barriers_preserved': resolved,
        'limits': 'All statements retain their exact hypotheses. Dependency cached objects were kernel-checked with pinned clean dependency sources; no cold dependency-source rebuild, source-to-object provenance theorem, candidate-source acceptance, independent mathematical review, uniform arithmetic estimate or abc implication is inferred.',
        'original_execution_commands': [row['argv'] for row in stage_records] + [ordinary['command']] + [row['argv'] for row in docs],
        'clean_checkout_replay_commands_from_repository_root': [
            ['python3', '-B', '.noeaaeue/scripts/check_additive_character_moments.py'],
            *[['python3', *row['argv'][1:]] for row in stage_records],
            ['lake', 'build', 'GRWTSK'],
            *[['python3', *row['argv'][1:]] for row in docs]],
        'clean_checkout_replay_requirements': 'Python 3.11+ and the committed public verification scripts, exact versioned manifest and runtime-qualification assets. The selected command without --receipt creates a fresh local run and cannot overwrite the original durable receipt. Proof replay needs no ignored .local helper; it requires the exact pinned compiler identity and dependency cache/input identities expected by the contract. No cross-platform binary identity or cold Mathlib source rebuild is asserted.',
        'replay_rule': 'Use the exact versioned contract and fresh absent durable receipt paths; never rewrite historical or failed receipts.',
        'updated_phase_record_hashes': {name: sha(raw) for name, raw in outputs.items()}}
    addendum = {'schema': 'partition-concentration-joint-validation-addendum-v1', 'at_utc': now,
        'selected_receipt': dict(identity(PARTITION), library_modules=17, accepted_control_modules=2,
            owned_declarations=660, positive_consumers=2, intended_rejections=2),
        'joint_checkpoint': checkpoint, 'global_stages': stage_identities, 'public_sources': expected_public,
        'ordinary_lake_build': ordinary_identity,
        'application_sources': expected_application, 'documentation_gates': identity(docs_path),
        'case_custody': identity(CASE), 'earlier_worker_results_preserved': identity('.noeaaeue/receipts/partition-exposure-concentration/final-verification.json'),
        'open_results': 'Corollary 1.4 and later nested-chain, local-collision, admissible-permutation and rearrangement obligations retain their separate open statuses.',
        'scope': 'Records actual joint source/application checks separately from the 17+2-module selected partition result; no broader mathematical result is supplied.'}
    for name in [FINISH, ADDENDUM]:
        require(not (ROOT / name).exists() and not (ROOT / name).is_symlink(), 'Exclusive final record already exists: ' + name)
    if not args.apply:
        print(json.dumps({'status': 'VALIDATED_NOT_APPLIED', 'finish': FINISH, 'partition_addendum': ADDENDUM,
            'phase_updates': list(outputs), 'public_sources': expected_public, 'application_sources': expected_application}))
        return
    archive = ROOT / '.noeaaeue/.local/additive-character-integration-finish/final-phase-preimages' / uuid.uuid4().hex
    guard.make_directory(archive, exclusive=True)
    for name in outputs:
        guard.write_bytes(archive / name, observed[name], exclusive=True)
    guard.write_bytes(archive / 'readset.json', encoded({name: sha(raw) for name, raw in observed.items()}), exclusive=True)
    finish['phase_preimage_archive'] = archive.relative_to(ROOT).as_posix()
    for name, raw in observed.items():
        require(guard.read_source(ROOT, name) == raw, 'Finalization readset collision: ' + name)
    guard.write_bytes(ROOT / FINISH, encoded(finish), exclusive=True)
    guard.write_bytes(ROOT / ADDENDUM, encoded(addendum), exclusive=True)
    for name, raw in outputs.items():
        require(guard.read_source(ROOT, name) == observed[name], 'Phase-record collision: ' + name)
        guard.write_bytes(ROOT / name, raw)
    print(json.dumps({'status': 'INTEGRATION_COMPLETE_OPEN_FRONTIER', 'finish': FINISH,
        'partition_addendum': ADDENDUM, 'phase_preimages': str(archive)}))


if __name__ == '__main__':
    main()
