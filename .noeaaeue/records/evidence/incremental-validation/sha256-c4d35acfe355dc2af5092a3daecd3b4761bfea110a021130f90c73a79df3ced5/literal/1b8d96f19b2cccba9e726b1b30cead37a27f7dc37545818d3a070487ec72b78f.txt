#!/usr/bin/env python3
"""Finite rational controls only; not acceptance of the analytic argument.

Human mathematical direction: R.A. Jacob Martone.
Implementation assistance: OpenAI ChatGPT. MIT.
"""
from fractions import Fraction as F
import json
from pathlib import Path
import subprocess
import sys
import unittest

from zero_free_pickup_transfer import Parameters, toy_line_mass


class TransferControls(unittest.TestCase):
    def test_two_fifths_exact_constants(self):
        p = Parameters(F(2, 5))
        self.assertEqual(p.delta, F(1, 40))
        self.assertEqual(p.threshold_base, 1440)
        self.assertEqual(p.threshold_power, 90)
        self.assertEqual(p.energy_prefactor, F(5324, 9))
        self.assertEqual(60 / p.delta, 2400)

    def test_exact_endpoint_constants(self):
        p = Parameters(F(1, 2))
        self.assertEqual(p.delta, F(1, 8))
        self.assertEqual(p.threshold_base, 288)
        self.assertEqual(p.threshold_power, 18)

    def test_dense_rational_rates(self):
        count = 0
        for denominator in range(8, 129):
            for numerator in range(denominator // 3, denominator // 2 + 1):
                s = F(numerator, denominator)
                if F(3, 8) < s <= F(1, 2):
                    self.assertTrue(all(Parameters(s).certificate()["rational_checks"].values()))
                    count += 1
        self.assertGreater(count, 900)

    def test_ceiling_is_not_rounded_down(self):
        p = Parameters(F(23, 50))
        self.assertNotEqual((1 / p.eta).denominator, 1)
        self.assertGreaterEqual(p.threshold_power * p.eta, 1)
        self.assertLess((p.threshold_power - 1) * p.eta, 1)

    def test_one_third_is_rejected(self):
        with self.assertRaisesRegex(ValueError, "does not pay 1/3"):
            Parameters(F(1, 3))

    def test_three_eighths_boundary_is_rejected(self):
        with self.assertRaises(ValueError):
            Parameters(F(3, 8))

    def test_out_of_scope_rates_are_rejected(self):
        for s in (F(-1), F(0), F(3, 5), F(1)):
            with self.subTest(s=s), self.assertRaises(ValueError):
                Parameters(s)

    def test_inexact_rates_are_rejected(self):
        for s in (0.4, True, "2/5", None):
            with self.subTest(s=s), self.assertRaises(TypeError):
                Parameters(s)

    def test_outer_disk_cannot_touch_seed(self):
        p = Parameters(F(2, 5))
        self.assertGreater(2 - p.outer, F(7, 8))
        self.assertEqual(2 - F(9, 8), F(7, 8))
        self.assertFalse(2 - F(9, 8) > F(7, 8))

    def test_wrong_shift_would_hide_exponent_debt(self):
        self.assertEqual(F(1, 3) + F(1, 2), F(5, 6))
        self.assertLess(F(5, 6), F(7, 8))
        self.assertEqual(F(7, 8) - F(5, 6), F(1, 24))

    def test_finite_line_mass_does_not_pay_causal_energy(self):
        r = toy_line_mass(F(2, 5), F(1, 2), F(1, 3))
        self.assertEqual(r["line_mass"], "81/10")
        self.assertFalse(r["causal_weighted_energy_finite"])
        self.assertTrue(r["inverse_has_negative_time_support"])
        self.assertEqual(r["crossed_pole_residue_coefficient"], "1")

    def test_pole_on_line_is_rejected(self):
        with self.assertRaises(ValueError):
            toy_line_mass(F(2, 5), F(1, 2), F(2, 5))

    def test_above_pole_agrees_with_causal_square(self):
        a, b, s = F(2, 5), F(1, 2), F(1)
        expected = 1 / (2 * (s - a)) - 2 / (2 * s + b - a) + 1 / (2 * (s + b))
        r = toy_line_mass(a, b, s)
        self.assertEqual(F(r["line_mass"]), expected)
        self.assertTrue(r["causal_weighted_energy_finite"])
        self.assertFalse(r["inverse_has_negative_time_support"])

    def test_invalid_toy_parameters(self):
        for args in ((0, 1, 1), (1, -1, 2), (1, 1, 0)):
            with self.subTest(args=args), self.assertRaises(ValueError):
                toy_line_mass(*args)

    def test_tail_normalization_constants(self):
        # kappa=1/2: 2 sides * squared sqrt(2) / (2*pi) * integral_R^inf t^-3.
        for R in (F(1), F(3, 2), F(10)):
            self.assertEqual(F(2) * 2 / 2 * (1 / (2 * R ** 2)), 1 / R ** 2)

    def test_schema_preserves_unpaid_status(self):
        r = Parameters(F(2, 5)).certificate()
        self.assertEqual(r["lean_replay"], "NOT_RUN")
        self.assertFalse(r["one_third_bound_proved"])
        self.assertFalse(r["RH_proved"])
        self.assertEqual(len(r["assumptions_not_checked_by_this_script"]), 3)

    def test_cli_normal_and_optimized(self):
        path = Path(__file__).with_name("zero_free_pickup_transfer.py")
        for flags in (("-B",), ("-O", "-B")):
            result = subprocess.run([sys.executable, *flags, str(path), "--sigma", "2/5"],
                                    capture_output=True, text=True, check=False)
            self.assertEqual(result.returncode, 0, result.stderr)
            data = json.loads(result.stdout)
            self.assertEqual(data["records"][0]["L"], {"base": "1440", "integer_power": 90})

    def test_cli_rejects_unpaid_rate_even_optimized(self):
        path = Path(__file__).with_name("zero_free_pickup_transfer.py")
        result = subprocess.run([sys.executable, "-O", "-B", str(path), "--sigma", "1/3"],
                                capture_output=True, text=True, check=False)
        self.assertEqual(result.returncode, 2)
        self.assertEqual(result.stdout, "")
        self.assertIn("does not pay 1/3", result.stderr)


if __name__ == "__main__":
    unittest.main()
