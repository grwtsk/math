"""Reject corrupted prime-power split receipts without promoting finite data."""
import copy
from pathlib import Path
import sys
import unittest
sys.path.insert(0, str(Path(__file__).resolve().parents[2]/'.noeaaeue/scripts'))
import laguerre_prime_power_split as p
import verify_laguerre_prime_power_split as v


class PrimePowerReceiptTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.good = p.profile(4, 16, 192)

    def bad(self, change):
        r = copy.deepcopy(self.good); change(r)
        with self.assertRaises((ValueError, KeyError)):
            v.validate(r, 16, 192, 4)

    def test_original_validates(self):
        self.assertEqual(v.validate(self.good, 16, 192, 4), self.good)

    def test_duplicate_json_key(self):
        with self.assertRaises(ValueError): v.decode('{"a":1,"a":2}')

    def test_float_json_number(self):
        with self.assertRaises(ValueError): v.decode('{"a":1.0}')

    def test_boolean_depth(self):
        self.bad(lambda r: r.update(count=True))

    def test_reversed_interval(self):
        self.bad(lambda r: r['moments']['original'].__setitem__(0, {'lower':'1','upper':'0'}))

    def test_missing_prime_square(self):
        self.bad(lambda r: r['inventory']['classes'].pop(2))

    def test_terminal_coefficient_missing(self):
        self.bad(lambda r: r['moments']['residual'].pop())

    def test_carrier_missing(self):
        self.bad(lambda r: r['moments'].pop('carrier'))

    def test_mixed_channel_changed(self):
        self.bad(lambda r: r.update(mixed_compensated_residual={'lower':'0','upper':'0'}))

    def test_rh_claim_rejected(self):
        self.bad(lambda r: r.update(RH_proved=True))

    def test_global_prime_bound_rejected(self):
        self.bad(lambda r: r.update(all_depth_prime_bound=True))

    def test_false_enumeration_rejected(self):
        self.bad(lambda r: r.update(enormous_cutoff_enumerated=True))


if __name__ == '__main__':
    unittest.main(verbosity=2)
