from __future__ import annotations

import importlib.util
import json
import math
import tempfile
import unittest
import sys
from fractions import Fraction
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SCRIPT = ROOT / "scripts" / "square_variation_coherence.py"
spec = importlib.util.spec_from_file_location("svc", SCRIPT)
svc = importlib.util.module_from_spec(spec)
assert spec.loader is not None
sys.modules[spec.name] = svc
spec.loader.exec_module(svc)


class SquareVariationCoherenceTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.cert = svc.build_certificate()

    def test_global_bound(self) -> None:
        self.assertEqual(self.cert["constants"]["global_square_variation_bound"], "14/125")
        self.assertTrue(self.cert["consequences"]["signed_and_positive_dyadic_block_growth_classes_equal"])

    def test_published_input_remains_external(self) -> None:
        self.assertFalse(self.cert["external_source_input"]["formalized_here"])

    def test_exact_prefix_bound(self) -> None:
        q = Fraction(self.cert["finite_prefix"]["upper_fraction"])
        self.assertLess(q, Fraction(55867, 500000))

    def test_tail_bound(self) -> None:
        self.assertLess(Fraction(209, 31250) ** 2 / 14, Fraction(1, 300000))

    def test_total_bound(self) -> None:
        self.assertLess(Fraction(55867, 500000) + Fraction(1, 300000), Fraction(14, 125))

    def test_log_two_bound(self) -> None:
        x = Fraction(7, 10)
        self.assertGreater(1 + x + x*x/2 + x*x*x/6, 2)
        self.assertEqual(Fraction(14,125)*Fraction(7,10), Fraction(49,625))

    def test_coherence_identity(self) -> None:
        xs = [Fraction(1), Fraction(-2), Fraction(3), Fraction(-1)]
        for n in range(1, len(xs)+1):
            q = sum(xs[:n], Fraction(0))
            v = sum((x*x for x in xs[:n]), Fraction(0))
            c = q*q-v
            pairs = 2*sum((xs[i]*xs[j] for i in range(n) for j in range(i+1,n)), Fraction(0))
            self.assertEqual(c, pairs)
            self.assertLessEqual(max(-c, 0), v)

    def test_positive_part_after_aggregation(self) -> None:
        xs = [Fraction(1), Fraction(-2), Fraction(1)]
        complete = 2*sum((xs[i]*xs[j] for i in range(3) for j in range(i+1,3)), Fraction(0))
        early = sum(max(2*xs[i]*xs[j], 0) for i in range(3) for j in range(i+1,3))
        self.assertEqual(max(complete, 0), 0)
        self.assertGreater(early, 0)

    def test_signed_positive_block_comparison(self) -> None:
        # Generic pointwise fixture: c^- <= V <= U implies c <= c^+ <= c+U.
        for c in [Fraction(-3,10), Fraction(0), Fraction(7,10)]:
            u = Fraction(1,2)
            self.assertLessEqual(c, max(c,0))
            if max(-c,0) <= u:
                self.assertLessEqual(max(c,0), c+u)

    def test_write_refuses_overwrite(self) -> None:
        with tempfile.TemporaryDirectory() as td:
            p = Path(td)/"certificate.json"
            svc.write_new(p, {"a": 1})
            with self.assertRaises(FileExistsError):
                svc.write_new(p, {"a": 2})

    def test_json_roundtrip(self) -> None:
        encoded = json.dumps(self.cert, sort_keys=True)
        self.assertEqual(json.loads(encoded), self.cert)

    def test_no_float_acceptance_fields(self) -> None:
        # The diagnostic decimal is text. All acceptance constants are exact fractions.
        for key, value in self.cert["constants"].items():
            if key not in {"N0", "root_bits", "sum_bits"}:
                self.assertIsInstance(value, str)

    def test_hostile_absolute_mertens_substitution(self) -> None:
        # Replacing M_n by |M_n| changes signed endpoint increments.
        M = [-1, 2, -3]
        g = [Fraction(1,2), Fraction(1,3), Fraction(1,4)]
        signed = [Fraction(a)*b for a,b in zip(M,g)]
        absolute = [Fraction(abs(a))*b for a,b in zip(M,g)]
        self.assertNotEqual(signed, absolute)

    def test_threshold_is_not_removed(self) -> None:
        self.assertEqual(self.cert["constants"]["N0"], 1798118)

    def test_dyadic_cap_is_uniform(self) -> None:
        self.assertEqual(self.cert["constants"]["dyadic_negative_sector_cap"], "49/625")


if __name__ == "__main__":
    unittest.main()
