import importlib.util
import pathlib
import unittest
from fractions import Fraction

HERE = pathlib.Path(__file__).resolve().parent
SCRIPT = HERE.parent / "scripts" / "three_eighths_mertens_transfer.py"
spec = importlib.util.spec_from_file_location("transfer", SCRIPT)
m = importlib.util.module_from_spec(spec)
spec.loader.exec_module(m)

class TransferTests(unittest.TestCase):
    def setUp(self):
        self.c = m.build()

    def test_all_checks(self):
        self.assertTrue(all(self.c["checks"].values()))

    def test_boundary_exact(self):
        self.assertEqual(m.B, Fraction(4374785349,5000000000))

    def test_strict_improvement(self):
        self.assertEqual(m.SEVEN_EIGHTHS-m.B, Fraction(214651,5000000000))

    def test_midpoint(self):
        self.assertEqual(
            m.B+(m.SEVEN_EIGHTHS-m.B)/2,
            Fraction(8749785349,10000000000))

    def test_three_eighths_multiplier(self):
        delta=m.SEVEN_EIGHTHS-m.B
        eps=delta/2
        beta=m.B+eps
        gap=m.SIGMA+Fraction(1,2)-beta
        val=1/(2*m.SIGMA*m.SIGMA*gap)
        self.assertEqual(val,Fraction(320000000000,1931859))

    def test_coherence_exponent(self):
        self.assertEqual(2*m.B-1,Fraction(1874785349,2500000000))

    def test_one_third_fails(self):
        self.assertGreater(m.B,m.FIVE_SIXTHS)

    def test_baseline_endpoint_has_no_margin(self):
        self.assertEqual(
            m.SIGMA+Fraction(1,2)-m.SEVEN_EIGHTHS,0)

if __name__=="__main__":
    unittest.main()
