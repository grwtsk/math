"""Prepare r2 prose/scope corrections only; never execute the inert installer."""
from pathlib import Path
import copy
import datetime
import difflib
import hashlib
import json
import os
import shutil
import stat

ROOT = Path('/Users/think/Desktop/math')
HERE = Path(__file__).absolute().parent
R1 = ROOT / '.noeaaeue/.local/reference-character-preparation-d66c26f1e6364e8a8a14e8fc8c7ba79e'
R1_MANIFEST_SHA = 'a5d54d3e5a3927b3148b398709f8eb295b3181396ca0de8c717d1e7f32a234db'


def sha(raw):
    return hashlib.sha256(raw).hexdigest()


def require(condition, message):
    if not condition:
        raise RuntimeError(message)


def encode(value):
    return (json.dumps(value, indent=2, ensure_ascii=False) + '\n').encode()


def save(path, raw):
    p = HERE / path
    p.parent.mkdir(parents=True, exist_ok=True)
    with p.open('xb') as f:
        f.write(raw)


def current_matches(path, expected):
    p = ROOT
    for component in Path(path).parts[:-1]:
        p /= component
        mode = os.lstat(p).st_mode
        require(stat.S_ISDIR(mode) and not stat.S_ISLNK(mode), 'unsafe ancestor')
    p /= Path(path).parts[-1]
    if expected['state'] == 'absent':
        require(not os.path.lexists(p), 'absent target appeared: ' + path)
    else:
        st = os.lstat(p)
        require(stat.S_ISREG(st.st_mode) and stat.S_IMODE(st.st_mode) == expected['mode'],
                'nonregular/mode drift: ' + path)
        raw = p.read_bytes()
        require(len(raw) == expected['bytes'] and sha(raw) == expected['sha256'],
                'bound input/preimage drift: ' + path)


raw_manifest = (R1 / 'change-manifest.json').read_bytes()
require(sha(raw_manifest) == R1_MANIFEST_SHA, 'r1 manifest drift')
manifest = json.loads(raw_manifest)
for row in manifest['targets']:
    current_matches(row['path'], row['before'])
for row in manifest['bound_inputs']:
    current_matches(row['path'], row['snapshot'])
for directory in ['preimages', 'proposals', 'bound-inputs']:
    shutil.copytree(R1 / directory, HERE / directory, symlinks=False)
helper = (R1 / 'install_paired_selected.py').read_bytes()
require(sha(helper) == manifest['installer']['snapshot']['sha256'], 'installer drift')
save('install_paired_selected.py', helper)
os.chmod(HERE / 'install_paired_selected.py', manifest['installer']['snapshot']['mode'])

timeless = ('This page records installed selected-source integration. The selected receipt '
            'covers its recorded closure; any public-umbrella acceptance requires '
            'separately bound checkpoint evidence.')
changed_paths = []
for row in manifest['targets']:
    p = HERE / row['proposal']
    if row['path'].endswith('/prefix-reference-transport.md'):
        text = p.read_text()
        old = ('This page records installed selected-source integration. Full public-umbrella\n'
               'replay remains pending; no global acceptance is inferred.')
        require(text.count(old) == 1, 'graph verification sentence drift')
        text = text.replace(old, timeless)
        old = ('Clean pinned dependency objects\nwere reused and fingerprinted; their sources '
               'and the public umbrella were not\nrebuilt.')
        new = ('That selected replay reused and fingerprinted clean pinned dependency objects;\n'
               'it rebuilt neither those dependency sources nor the public umbrella.')
        require(text.count(old) == 1, 'graph recorded-replay scope drift')
        text = text.replace(old, new)
    elif row['path'].endswith('/third-cyclotomic-characters.md'):
        text = p.read_text()
        old = ('This page records installed selected-source integration; '
               'full public-umbrella replay remains pending.')
        require(text.count(old) == 1, 'arithmetic verification sentence drift')
        text = text.replace(old, timeless)
        old = ('Clean pinned dependency objects were reused and fingerprinted; '
               'their sources and the whole public umbrella were not rebuilt.')
        new = ('That selected replay reused and fingerprinted clean pinned dependency objects; '
               'it rebuilt neither those dependency sources nor the whole public umbrella.')
        require(text.count(old) == 1, 'arithmetic recorded-replay scope drift')
        text = text.replace(old, new)
    elif row['path'] == '.noeaaeue/documentation/math-layout.json':
        value = json.loads(p.read_bytes())
        source_paths = {x['path'] for x in json.loads((R1 / 'bound-inputs' / manifest['request']['path']).read_bytes())['new_six_source_rows_desired']}
        for entry in value['active_sources']:
            if entry['path'] in source_paths:
                require(entry['verification']['canonical_public_integration'] ==
                        'INSTALLED_SELECTED_SCOPE_PENDING_FULL_PUBLIC_REPLAY', 'row status drift')
                entry['verification']['canonical_public_integration'] = 'INSTALLED_SELECTED_SCOPE'
                require(entry['verification']['whole_umbrella'] == 'NOT_REPLAYED', 'row scope drift')
                entry['verification']['whole_umbrella'] = 'NOT_REPLAYED_BY_SELECTED_RECEIPT'
                if entry['source_role'] != 'negative-control':
                    require(entry['logical_status'].endswith('full public replay pending'), 'logical status drift')
                    entry['logical_status'] = ('selected source-qualified native result; registered at explicit '
                                               'integration checkpoint; selected receipt covers its recorded closure')
            elif entry['path'] == 'GRWTSK.lean':
                entry['logical_status'] = 'Public import inventory only; selected receipts do not replay the whole umbrella'
                entry['verification']['lean'] = ('selected receipts do not replay the whole public umbrella; '
                                                 'any public acceptance requires separately bound checkpoint evidence')
                entry['verification']['owned_declaration_audit'] = ('selected receipts audit their recorded source closures only; '
                                                                    'any full-entrypoint admission requires separate checkpoint evidence')
        text = encode(value).decode()
    else:
        continue
    raw = text.encode()
    p.write_bytes(raw)  # r2 ignored proposal only; no shared target mutation.
    row['after']['sha256'] = sha(raw)
    row['after']['bytes'] = len(raw)
    changed_paths.append(row['path'])

stamp = datetime.datetime.now(datetime.timezone.utc).strftime('%Y%m%dT%H%M%SZ')
manifest['prepared_at_utc'] = stamp
manifest['r2_scope_correction'] = {
    'r1_preserved': {'path': str(R1 / 'change-manifest.json'), 'sha256': R1_MANIFEST_SHA},
    'changed_proposals_only': changed_paths,
    'scope': 'Timeless selected-receipt scope and installed registration wording only; all inputs/preimages and other proposals unchanged.',
}
prep_raw = Path(__file__).read_bytes()
manifest['preparation_source'] = {'path': 'prepare_r2.py', 'snapshot': {
    'state': 'regular', 'sha256': sha(prep_raw), 'bytes': len(prep_raw),
    'mode': stat.S_IMODE(os.lstat(__file__).st_mode)}}
intent = json.loads((R1 / 'post-validation-event.intent.json').read_bytes())
intent['proposed_create_only_event_path'] = ('.noeaaeue/cache/coordination/events/' + stamp +
    '-reference-character-integration-validated-r2-befbd13d56dc486e8178f074c8872ba7.json')
intent['inert_proposal_revision'] = 'r2; r1 preserved unchanged'
require(not os.path.lexists(ROOT / intent['proposed_create_only_event_path']), 'future event exists')
save('post-validation-event.intent.json', encode(intent))
save('change-manifest.json', encode(manifest))
readme = (R1 / 'README.md').read_text()
readme += ('\nThis r2 bundle preserves r1 completely. Only the two new guide verification\n'
           'paragraphs and proposed current active-row scope wording differ. They are\n'
           'timeless: selected receipts cover their recorded closures, while public\n'
           'acceptance requires separately bound checkpoint evidence. No source, receipt,\n'
           'preimage, other proposal or historical status was rebound. The installer\n'
           'is byte-identical to r1 and has never been executed, including dry-run.\n')
save('README.md', readme.encode())
patch = []
for row in manifest['targets']:
    old = ((HERE / row['preimage']).read_text().splitlines(True)
           if row['before']['state'] == 'regular' else [])
    new = (HERE / row['proposal']).read_text().splitlines(True)
    patch.extend(difflib.unified_diff(old, new, fromfile='before/' + row['path'],
                                     tofile='after/' + row['path'], n=3))
save('review-only.patch', ''.join(patch).encode())
for row in manifest['targets']:
    current_matches(row['path'], row['before'])
for row in manifest['bound_inputs']:
    current_matches(row['path'], row['snapshot'])
require((R1 / 'change-manifest.json').read_bytes() == raw_manifest, 'r1 unexpectedly changed')
summary = {'status': 'R2_STATIC_BYTE_REVIEW_ONLY_INSTALLER_NEVER_EXECUTED',
           'helper_sha256': sha(helper), 'manifest_sha256': sha(encode(manifest)),
           'targets': len(manifest['targets']), 'bound_inputs': len(manifest['bound_inputs']),
           'changed_proposal_paths': changed_paths, 'r1_preserved': True,
           'shared_mutations': 0, 'installer_executed': False}
save('static-byte-review.json', encode(summary))
print(json.dumps(dict(summary, preparation=str(HERE)), indent=2))
