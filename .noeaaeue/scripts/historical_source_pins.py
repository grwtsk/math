"""Observe historical source pins without replacing their expected identities.

Matched bytes establish custody only. A stale pin blocks historical replay;
neither outcome establishes mathematical acceptance.
"""
import json
import re
from pathlib import Path

from monitor_math import read_state
from repository_paths import relocated_name, original_name

STATUS_PATH = '.noeaaeue/binding-repair/historical-pin-status.json'


class StaleHistoricalPins(ValueError):
    def __init__(self, report):
        self.report = report
        names = ', '.join(row['logical_path'] for row in report['pins']
                          if row['status'] == 'stale')
        super().__init__('STALE_HISTORICAL_PINS: ' + names +
                         '; replay refused; historical expected hashes retained')


def observe_pins(root, pins):
    if not isinstance(pins, dict) or not pins:
        raise ValueError('historical pins require an exact nonempty mapping')
    rows = []
    for name, expected in sorted(pins.items()):
        if not isinstance(name, str) or not isinstance(expected, str) or not re.fullmatch(r'[0-9a-f]{64}', expected):
            raise ValueError('invalid historical source pin')
        current = relocated_name(name)
        state, raw = read_state(Path(root), current, retain=True)
        actual = state.get('sha256') if state.get('kind') == 'file' and state.get('read_stable') is True and raw is not None else None
        rows.append({'logical_path': original_name(name), 'current_path': current,
                     'expected_sha256': expected, 'observed_sha256': actual,
                     'status': 'matched' if actual == expected else 'stale',
                     'observation': state['kind']})
    return {'schema': 'historical-source-pin-observation-v1',
            'status': 'stale' if any(row['status'] == 'stale' for row in rows) else 'matched',
            'mathematical_acceptance': False, 'pins': rows}


def require_matching_pins(report):
    if (report.get('schema') != 'historical-source-pin-observation-v1'
            or report.get('mathematical_acceptance') is not False
            or report.get('status') != 'matched' or not report.get('pins')
            or any(row.get('status') != 'matched'
                   or row.get('observed_sha256') != row.get('expected_sha256')
                   or row.get('observation') != 'file' for row in report['pins'])):
        raise StaleHistoricalPins(report)


def validate_recorded_observation(root, family, pins):
    """Check a maintained stale observation; never auto-refresh it during tests."""
    state, raw = read_state(Path(root), STATUS_PATH, retain=True)
    if state.get('kind') != 'file' or state.get('read_stable') is not True or raw is None:
        raise ValueError('missing or unsafe historical pin status record')
    def unique(pairs):
        result = {}
        for key, value in pairs:
            if key in result:
                raise ValueError('duplicate historical pin status field')
            result[key] = value
        return result
    record = json.loads(raw, object_pairs_hook=unique)
    if record.get('schema') != 'historical-source-pin-status-v1' or record.get('mathematical_acceptance') is not False:
        raise ValueError('historical pin status cannot confer acceptance')
    observed = observe_pins(root, pins)
    if record.get('families', {}).get(family) != observed:
        raise ValueError('historical pin observation changed; replay remains unqualified')
    return observed
