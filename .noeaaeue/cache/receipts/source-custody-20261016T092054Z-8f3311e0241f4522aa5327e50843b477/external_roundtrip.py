"""Bounded operational expansion controls; never execute expanded code."""
import datetime
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile

ROOT = Path('/Users/local/Desktop/math')
OUT = Path(__file__).resolve().parent
REVISION = 'ecefbe78491e1bc142a3e80aa8cf68202a2ae9bf60837942a113b4eafc6bc728'
HELPER_DIR = ROOT / '.noeaaeue/.local/physical-cache-comparison-eac072b619fd435da508763b4fe1b241'
EXPECTED = {
    'compare_expansion_bytes.py': '059e22c979349cde25cb88d63b23499fe26dad88ab4a931207c8e85aecc7f0a3',
    'comparison-helper-manifest.json': '39a14c40ae81a40ed8d99535481cb98542129b9ff7db966b85208a1b2ed38b0a',
}

def require(condition, message):
    if not condition:
        raise RuntimeError(message)

def sha(raw):
    return hashlib.sha256(raw).hexdigest()

def save(name, value):
    raw = (json.dumps(value, sort_keys=True, indent=2) + '\n').encode()
    with (OUT / name).open('xb') as stream:
        stream.write(raw)
    return sha(raw)

def now():
    return datetime.datetime.now(datetime.timezone.utc).isoformat()

def run(name, argv, expected_exit=0, expected_error=None):
    for path, digest in EXPECTED.items():
        require(sha((OUT / path).read_bytes()) == digest, 'comparison custody drift')
    started = now()
    with (OUT / (name + '.stdout.log')).open('xb') as stdout, (OUT / (name + '.stderr.log')).open('xb') as stderr:
        result = subprocess.run(argv, cwd=ROOT, stdout=stdout, stderr=stderr)
    stdout = (OUT / (name + '.stdout.log')).read_bytes()
    stderr = (OUT / (name + '.stderr.log')).read_bytes()
    record = {'stage': name, 'argv': argv, 'started_utc': started, 'finished_utc': now(),
              'exit_code': result.returncode, 'expected_exit_code': expected_exit,
              'stdout_sha256': sha(stdout), 'stderr_sha256': sha(stderr),
              'expected_error_fragment': expected_error}
    save(name + '.command.json', record)
    require(result.returncode == expected_exit, name + ': unexpected exit code')
    if expected_error:
        require(expected_error.encode() in stderr, name + ': wrong rejection')
    else:
        verdict = json.loads(stdout)
        if name != 'expand':
            require(verdict.get('status') == 'ALL_EXPECTED_PHYSICAL_FILES_AND_RAW_BYTES_EQUAL', 'positive verdict missing')
            require(verdict.get('revision') == REVISION and verdict.get('physical_file_count') == 886,
                    'wrong selected identity or coverage')
            require(verdict.get('mathematical_acceptance') is False and verdict.get('expanded_code_executed') is False,
                    'invalid scope claim')
    for path, digest in EXPECTED.items():
        require(sha((OUT / path).read_bytes()) == digest, 'comparison custody drift after execution')
    return record

def main():
    for name, digest in EXPECTED.items():
        raw = (HELPER_DIR / name).read_bytes()
        require(sha(raw) == digest, 'prepared comparator input mismatch')
        with (OUT / name).open('xb') as stream:
            stream.write(raw)
    temporary = Path(tempfile.mkdtemp(prefix='grwtsk-cache-roundtrip-', dir=str(Path(tempfile.gettempdir()).resolve()))).resolve()
    destination = temporary / 'expanded'
    temporary_identity = (temporary.stat().st_dev, temporary.stat().st_ino)
    require(not destination.exists(), 'external expansion destination must be absent')
    save('external-intent.json', {'at_utc': now(), 'temporary_parent': str(temporary), 'destination': str(destination),
         'temporary_parent_identity': temporary_identity, 'revision': REVISION, 'expanded_code_execution': False,
         'proof_status': 'unknown-unreplayed', 'mathematical_acceptance': False})
    print(json.dumps({'status': 'EXTERNAL_EXPANSION_STARTED', 'destination': str(destination)}), flush=True)
    records = []
    try:
        records.append(run('expand', [sys.executable, '-B', '.noeaaeue/scripts/cache_math.py', '--root', str(ROOT),
                                      'expand', str(destination), '--revision', REVISION]))
        base = [str(OUT / 'compare_expansion_bytes.py'), '--repository', str(ROOT), '--revision', REVISION,
                '--destination', str(destination)]
        normal = [sys.executable, '-I', '-B', *base]
        records.append(run('positive-initial', normal))
        original = destination / 'GRWTSK.lean'
        original_raw = original.read_bytes()
        for optimized in (False, True):
            mode = 'optimized' if optimized else 'normal'
            argv = [sys.executable, '-I', *(['-O'] if optimized else []), '-B', *base]
            original.write_bytes(original_raw + b'\n')
            try:
                records.append(run(mode + '-changed-byte', argv, 1, 'expanded raw bytes differ'))
            finally:
                original.write_bytes(original_raw)
            held = temporary / 'held-original'
            original.rename(held)
            try:
                records.append(run(mode + '-missing-file', argv, 1, 'expanded file set differs'))
            finally:
                held.rename(original)
            extra = destination / 'INJECTED_EXTRA.txt'
            extra.write_bytes(b'extra file\n')
            try:
                records.append(run(mode + '-extra-file', argv, 1, 'expanded file set differs'))
            finally:
                extra.unlink()
            link = destination / 'INJECTED_SYMLINK'
            link.symlink_to(original)
            try:
                records.append(run(mode + '-symlink', argv, 1, 'symlink or special expansion entry'))
            finally:
                link.unlink()
            special = destination / 'INJECTED_FIFO'
            os.mkfifo(special)
            try:
                records.append(run(mode + '-special-file', argv, 1, 'symlink or special expansion entry'))
            finally:
                special.unlink()
            alias_dir = destination / 'docs'
            require(not alias_dir.exists(), 'legacy alias fixture requires initially absent docs directory')
            alias_dir.mkdir()
            alias = alias_dir / 'math-layout.json'
            alias.write_bytes((destination / '.noeaaeue/documentation/math-layout.json').read_bytes())
            try:
                records.append(run(mode + '-legacy-alias', argv, 1, 'expanded file set differs'))
            finally:
                alias.unlink()
                alias_dir.rmdir()
            empty = destination / 'INJECTED_EMPTY_DIRECTORY'
            empty.mkdir()
            try:
                records.append(run(mode + '-extra-empty-directory', argv, 1, 'expanded directory set differs'))
            finally:
                empty.rmdir()
            records.append(run(mode + '-positive-restored', argv))
        records.append(run('nonisolated-refused', [sys.executable, '-B', *base], 1, 'REFUSED: invoke python3 -I -B'))
        require(original.read_bytes() == original_raw, 'fixture restoration differs')
        result = {'schema': 'source-cache-external-roundtrip-v1', 'status': 'ALL_PHYSICAL_BYTES_AND_BOUNDED_CONTROLS_PASSED',
                  'at_utc': now(), 'revision': REVISION, 'positive_comparisons': 3, 'negative_controls': 15,
                  'logical_and_physical_files': 886, 'commands': records, 'expanded_code_executed': False,
                  'live_source_reads': False, 'proof_status': 'unknown-unreplayed', 'mathematical_acceptance': False,
                  'limits': ['Bounded operational observations, not a Lean proof, global filesystem transaction, hash injectivity proof or runtime refinement.',
                             'No subsequent source freshness or current-source theorem acceptance is inferred.']}
        save('external-roundtrip.json', result)
        require(not temporary.is_symlink() and (temporary.stat().st_dev, temporary.stat().st_ino) == temporary_identity,
                'owned external parent replaced; retain instead of cleaning')
        shutil.rmtree(temporary)
        save('external-cleanup.json', {'status': 'OWNED_EXTERNAL_FIXTURE_REMOVED_AFTER_SUCCESS', 'parent': str(temporary),
                                     'parent_identity_before_cleanup': temporary_identity, 'expanded_code_executed': False})
        print(json.dumps({k: v for k, v in result.items() if k != 'commands'}), flush=True)
    except BaseException as error:
        save('external-failure.json', {'status': 'FAILED_RETAINED', 'error': str(error), 'external_parent': str(temporary),
                                     'commands': records, 'proof_status': 'unknown-unreplayed', 'mathematical_acceptance': False})
        raise

if __name__ == '__main__':
    main()
