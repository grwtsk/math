"""Enumerate only the reviewed three-batch publication; never stage files."""
import argparse
import datetime
import hashlib
import json
from pathlib import Path
import sys

ROOT = Path('/Users/think/Desktop/math')
sys.dont_write_bytecode = True
sys.path.insert(0, str(ROOT / '.noeaaeue/scripts'))
import check_math_trust as guard

CP = '.noeaaeue/binding-repair/checkpoint-20261016T070944Z-15bdfea41a634f98a3a36a06aa8f4bfe'
PRE = '.noeaaeue/binding-repair/checkpoint-20261016T060730Z-4aa6d1daa6c84a21b1e43b2a3bcf8e6a'
BASE = '.noeaaeue/evidence/NumberTheory/Diophantine/PrimitiveAdditiveTriples/'
LOCAL = '.noeaaeue/.local/additive-character-integration-finish/'
PLAN = LOCAL + 'publication-allowlist-plan-2026-10-16.json'
OUTPUT = CP + '/publication-allowlist.json'
PHASES = {BASE + name for name in [
    'additive-character-integrated-status-2026-10-15.json',
    'abc-resume-additive-character-integrated-2026-10-15.json',
    'abc-proof-hypergraph-additive-character-integrated-2026-10-15.json']}


def digest(raw):
    return hashlib.sha256(raw).hexdigest()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--write', action='store_true')
    args = parser.parse_args()
    assert not (ROOT / OUTPUT).exists(), 'Exclusive publication manifest already exists'
    raw_plan = guard.read_source(ROOT, PLAN)
    plan = json.loads(raw_plan)
    finish = json.loads(guard.read_source(ROOT, BASE + 'additive-character-integration-finish-2026-10-15.json'))
    assert finish['integration_complete'] and not finish['abc_proved'] and finish['open_ABC_edges'] == 10
    paths = {row['path']: set(row['groups']) for row in plan['existing_files']}
    original = {row['path']: row['observed_sha256'] for row in plan['existing_files']}
    for row in plan['conditional_frozen_text_custody']:
        paths[row['path']] = {'explicitly_retained_immutable_RH_request_text_custody'}
        original[row['path']] = row['observed_sha256']
    for row in plan['pending_future_exact_files']:
        assert (ROOT / row['path']).is_file(), 'Missing actual completion record: ' + row['path']
        paths.setdefault(row['path'], set()).add('actual_exclusive_completion_record')
    for prefix in [PRE, CP]:
        for path in (ROOT / prefix).rglob('*'):
            assert not path.is_symlink(), 'Symlink in checkpoint'
            if path.is_dir():
                continue
            rel = path.relative_to(ROOT).as_posix()
            assert not set(path.relative_to(ROOT / prefix).parts) & {'build', 'dependency-objects', '__pycache__', '.git', '.lake'}, rel
            assert path.suffix not in {'.olean', '.ilean', '.o', '.so', '.dylib', '.a', '.pyc', '.pyo'}, rel
            if rel != OUTPUT:
                paths.setdefault(rel, set()).add('root_owned_completed_checkpoint_text_custody')
    rows, changed = [], []
    for name in sorted(paths):
        assert not name.startswith(('.noeaaeue/.local/', '.noeaaeue/scratch/', '.noeaaeue/runtime/', '.noeaaeue/store/', '.noeaaeue/out/', '.noeaaeue/tmp/', '.noeaaeue/graph/current/')), name
        if name.startswith('.noeaaeue/cache/'):
            assert name == '.noeaaeue/cache/coordination/events/reference-characters-integration-complete-2026-10-16.json'
        raw = guard.read_source(ROOT, name)
        raw.decode('utf-8')
        assert b'\0' not in raw and len(raw) < 100 * 1024 * 1024, name
        current = digest(raw)
        if name in original and current != original[name]:
            assert name.startswith(CP + '/') or name in PHASES, 'Unexpected drift from reviewed plan: ' + name
            if name in PHASES:
                assert current == finish['updated_phase_record_hashes'][name]
            changed.append({'path': name, 'draft_sha256': original[name], 'actual_sha256': current})
        rows.append({'path': name, 'sha256': current, 'bytes': len(raw), 'groups': sorted(paths[name])})
    record = {'schema': 'three-batch-explicit-publication-allowlist-v1',
        'at_utc': datetime.datetime.now(datetime.timezone.utc).isoformat(),
        'scope': 'Exactly finite additive-character integration, partition Theorem 1.3, reference/cubic-character integration and their completed checkpoint text custody. No staging or publication is performed by this enumerator.',
        'source_draft': {'path': PLAN, 'sha256': digest(raw_plan), 'role': 'Original ignored draft locator, provenance only; actual payload identities are enumerated below.'},
        'finish': {'path': BASE + 'additive-character-integration-finish-2026-10-15.json', 'sha256': digest(guard.read_source(ROOT, BASE + 'additive-character-integration-finish-2026-10-15.json'))},
        'file_count': len(rows), 'total_bytes': sum(row['bytes'] for row in rows), 'files': rows,
        'intentional_draft_to_final_changes': changed,
        'manifest_self': {'path': OUTPUT, 'included_separately': True, 'self_hash_excluded_to_avoid_circularity': True},
        'future_post_push_evidence': CP + '/publication-completion.json',
        'exclusions': plan['strict_exclusions'],
        'frozen_locator_exception': 'Nested .local/cache logical names under these exact checkpoint custody trees are retained immutable text, not live runtime directories. Live .local/cache roots remain excluded except the exact completion event.',
        'abc_proved': False, 'mathematical_acceptance_from_manifest': False}
    if args.write:
        guard.write_bytes(ROOT / OUTPUT, (json.dumps(record, indent=2) + '\n').encode(), exclusive=True)
        names = [row['path'] for row in rows] + [OUTPUT]
        spec = b''.join((':(literal)' + name).encode() + b'\0' for name in sorted(names))
        guard.write_bytes(ROOT / (LOCAL + 'publication-pathspec.nul'), spec, exclusive=True)
    print(json.dumps({'status': 'WRITTEN_NOT_STAGED' if args.write else 'ENUMERATED_NOT_WRITTEN', 'manifest': OUTPUT, 'files': len(rows), 'bytes': record['total_bytes'], 'changed_draft_records': len(changed)}))


if __name__ == '__main__':
    main()
