#!/usr/bin/env python3
"""Compare complete validated trace histories at one fixed root and revision.

This is a bounded operational consumer, not a Lean/runtime refinement or a
proof/permission implication. Source snapshot and taxonomy are separate inputs.
"""
import argparse
import hashlib
import json
from pathlib import Path

import cache_math
import cache_occurrences as traces


def compare(prefix, target, taxonomy_raw, expected_snapshot):
    """Validate both documents before comparing actual ordered edge occurrences."""
    left = traces.validate_trace(prefix, taxonomy_raw, expected_snapshot)
    right = traces.validate_trace(target, taxonomy_raw, expected_snapshot)
    traces.require(left['root'] == right['root'], 'different fixed roots')
    traces.require(left['relation_kind'] == right['relation_kind'], 'different relation roles')
    # Validation binds complete relation content and exact index, source, target
    # and joins. Equal endpoints/lengths/document IDs are never this test.
    is_prefix = (len(left['occurrences']) <= len(right['occurrences']) and
                 left['occurrences'] == right['occurrences'][:len(left['occurrences'])])
    return {'schema': 'math-cache-trace-prefix-v1',
            'source_snapshot': expected_snapshot,
            'taxonomy': dict(prefix['taxonomy']),
            'root': left['root'], 'relation_kind': left['relation_kind'],
            'prefix': {'id': left['id'], 'end': left['end'], 'step_count': left['step_count']},
            'target': {'id': right['id'], 'end': right['end'], 'step_count': right['step_count']},
            'is_prefix': is_prefix,
            'proof_acceptance': 'not-established',
            'lean_runtime_refinement': 'not-established',
            'permission_implication': 'not-established'}


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('prefix', help='repository-relative candidate prefix trace')
    parser.add_argument('target', help='repository-relative target trace')
    parser.add_argument('--root', type=Path, default=Path(__file__).resolve().parents[2])
    parser.add_argument('--revision', help='explicit retained snapshot; defaults to current')
    args = parser.parse_args(argv)
    root = cache_math.physical_path(args.root)
    revision = args.revision or cache_math.current(root)
    cache_math.verify(root, revision)
    names = (args.prefix, args.target, '.noeaaeue/cache/taxonomy.json')
    raw = tuple(cache_math.read_bytes(root, name) for name in names)
    result = compare(traces.unique_json(raw[0]), traces.unique_json(raw[1]), raw[2], revision)
    result['inputs'] = [{'path': name, 'sha256': hashlib.sha256(body).hexdigest()}
                        for name, body in zip(names[:2], raw[:2])]
    for name, body in zip(names, raw):
        traces.require(cache_math.read_bytes(root, name) == body, 'comparison input drift: '+name)
    traces.require(args.revision is not None or cache_math.current(root) == revision,
                   'current snapshot drift')
    print(json.dumps(result, sort_keys=True))


if __name__ == '__main__':
    main()
