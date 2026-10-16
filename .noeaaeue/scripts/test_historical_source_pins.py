"""Historical pins stay immutable and stale observations cannot authorize replay."""
import copy
import hashlib
import json
from pathlib import Path
import tempfile
import unittest

from historical_source_pins import (STATUS_PATH, StaleHistoricalPins, observe_pins,
                                    require_matching_pins, validate_recorded_observation)


class HistoricalPins(unittest.TestCase):
    def setUp(self):
        self.temporary = tempfile.TemporaryDirectory()
        self.addCleanup(self.temporary.cleanup)
        self.root = Path(self.temporary.name)
        self.source = self.root/'.noeaaeue/scripts/source.py'
        self.source.parent.mkdir(parents=True)
        self.source.write_bytes(b'original\n')
        self.pins = {'scripts/source.py': hashlib.sha256(b'original\n').hexdigest()}

    def test_matching_bytes_establish_custody_without_acceptance(self):
        report = observe_pins(self.root, self.pins)
        require_matching_pins(report)
        self.assertEqual(report['pins'][0]['logical_path'], 'scripts/source.py')
        self.assertIs(report['mathematical_acceptance'], False)
        self.assertFalse((self.root/'scripts').exists())

    def test_changed_source_keeps_expected_pin_and_blocks_replay(self):
        self.source.write_bytes(b'changed\n')
        report = observe_pins(self.root, self.pins)
        self.assertEqual(report['pins'][0]['expected_sha256'], self.pins['scripts/source.py'])
        self.assertEqual(report['status'], 'stale')
        with self.assertRaisesRegex(StaleHistoricalPins, 'STALE_HISTORICAL_PINS'):
            require_matching_pins(report)
        forged = copy.deepcopy(report);forged['status'] = 'matched'
        with self.assertRaises(StaleHistoricalPins):require_matching_pins(forged)

    def test_missing_and_symlink_source_are_stale(self):
        self.source.unlink()
        self.assertEqual(observe_pins(self.root,self.pins)['status'], 'stale')
        outside = self.root/'elsewhere';outside.write_bytes(b'original\n')
        self.source.symlink_to(outside)
        report = observe_pins(self.root,self.pins)
        self.assertEqual(report['status'], 'stale')
        self.assertIsNone(report['pins'][0]['observed_sha256'])

    def test_recorded_stale_observation_does_not_refresh_after_drift(self):
        self.source.write_bytes(b'changed\n')
        report = observe_pins(self.root,self.pins)
        target = self.root/STATUS_PATH;target.parent.mkdir(parents=True,exist_ok=True)
        original = (json.dumps({'schema':'historical-source-pin-status-v1',
                               'mathematical_acceptance':False,
                               'families':{'test':report}})+'\n').encode()
        target.write_bytes(original)
        self.assertEqual(validate_recorded_observation(self.root,'test',self.pins),report)
        self.source.write_bytes(b'changed again\n')
        with self.assertRaisesRegex(ValueError,'observation changed'):
            validate_recorded_observation(self.root,'test',self.pins)
        self.assertEqual(target.read_bytes(),original)

    def test_invalid_pin_and_unsafe_logical_path_are_rejected(self):
        for pins in ({}, {'scripts/source.py':'x'}, {'../source.py':'a'*64}):
            with self.subTest(pins=pins), self.assertRaises(ValueError):observe_pins(self.root,pins)


if __name__ == '__main__':unittest.main()
