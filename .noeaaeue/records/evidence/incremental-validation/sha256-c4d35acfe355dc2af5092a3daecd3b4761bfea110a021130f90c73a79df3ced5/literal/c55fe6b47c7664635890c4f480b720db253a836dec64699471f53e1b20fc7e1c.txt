#!/usr/bin/env python3
"""Exact finite controls; passing them is not Lean or infinite-range acceptance.

Human mathematical direction: grwtsk contributors.
Implementation assistance: OpenAI ChatGPT. MIT.
Run normally and with -O; no runtime validation relies on Python assert.
"""
from fractions import Fraction as F
from itertools import product
from pathlib import Path
import subprocess
import sys
import unittest

from one_third_energy import (Interval as I, _integer_sixth_root, finite_energy,
                              moebius_coefficients, sixth_root)


def trial_mu(n):
    """Independent trial-division oracle for the linear sieve."""
    sign, p = 1, 2
    while p * p <= n:
        if n % p == 0:
            n //= p
            sign = -sign
            if n % p == 0:
                return 0
            while n % p == 0:
                n //= p
        p += 1
    return -sign if n > 1 else sign


def rational_grid_identity(coeff):
    """Independent exact-Fraction test on event cutoffs x_j=j**6.

    All sixth roots are integers here. This tests the algebra for arbitrary
    finite signs, not an arithmetic theorem about the actual Mobius source.
    """
    A, M = F(0), F(0)
    diagonal, cross, cells = F(0), F(0), F(0)
    for i, a in enumerate(coeff, start=1):
        diagonal += F(54, 35) * a * a * F(i) ** -10
        cross += F(36, 7) * a * A * F(i) ** -7
        cross -= F(72, 35) * a * M * F(i) ** -10
        A += a * F(i) ** -3
        M += a
        j = i + 1
        cells += (6 * A * A * (F(i) ** -4 - F(j) ** -4)
                  - F(48, 7) * A * M * (F(i) ** -7 - F(j) ** -7)
                  + F(12, 5) * M * M * (F(i) ** -10 - F(j) ** -10))
    endpoint = F(len(coeff) + 1)
    tail = (6 * A * A * endpoint ** -4
            - F(48, 7) * A * M * endpoint ** -7
            + F(12, 5) * M * M * endpoint ** -10)
    return cells, diagonal + cross - tail


class IntervalTests(unittest.TestCase):
    def test_interval_operations_enclose_samples(self):
        intervals = [I(-2, -1), I(-1, 3), I(0, 2), I(1, 4)]
        for x, y in product(intervals, repeat=2):
            for a, b in product([x.lo, (x.lo + x.hi) / 2, x.hi],
                                [y.lo, (y.lo + y.hi) / 2, y.hi]):
                for result, point in [(x + y, a + b), (x - y, a - b),
                                      (x * y, a * b)]:
                    self.assertLessEqual(result.lo, point)
                    self.assertGreaterEqual(result.hi, point)

    def test_powers_and_reciprocals(self):
        self.assertEqual(I(-2, 3) ** 2, I(0, 9))
        self.assertEqual(I(-2, 3) ** 3, I(-8, 27))
        self.assertEqual(I(2, 4) ** -1, I(F(1, 4), F(1, 2)))
        with self.assertRaises(ZeroDivisionError):
            I(-1, 1).reciprocal()
        with self.assertRaises(ValueError):
            I(1, 0)

    def test_outward_rounding(self):
        for lo, hi in [(F(-7, 3), F(-2, 3)), (F(1, 3), F(7, 3)),
                       (F(-1, 7), F(1, 7))]:
            original = I(lo, hi)
            rounded = original.outward(8)
            self.assertLessEqual(rounded.lo, lo)
            self.assertGreaterEqual(rounded.hi, hi)
            self.assertLessEqual(lo - rounded.lo, F(1, 256))
            self.assertLessEqual(rounded.hi - hi, F(1, 256))

    def test_integer_root_brackets(self):
        cases = list(range(1000)) + [10**120 - 1, 10**120, 10**120 + 1]
        for n in cases:
            root = _integer_sixth_root(n)
            self.assertLessEqual(root**6, n)
            self.assertLess(n, (root + 1)**6)

    def test_rational_root_brackets(self):
        for x, bits in product([F(1), F(1, 7), F(3, 2), F(64), F(729)],
                               [8, 24, 64]):
            root = sixth_root(x, bits)
            self.assertLessEqual(root.lo**6, x)
            self.assertLessEqual(x, root.hi**6)
            self.assertLessEqual(root.hi - root.lo, F(1, 2**bits))
        self.assertEqual(sixth_root(F(64)), I.point(2))


class EnergyTests(unittest.TestCase):
    def check_identities(self, result):
        for name in ["energy_identity_residual", "tail_identity_residual",
                     "source_identity_residual"]:
            self.assertTrue(result[name].contains_zero(), name)
        self.assertGreaterEqual(result["tail_completed_square"].lo, 0)

    def test_sieve_independent_trial_division(self):
        mu = moebius_coefficients(500)
        self.assertEqual(mu[0], 0)
        for n in range(1, 501):
            self.assertEqual(mu[n], trial_mu(n), n)
        self.assertEqual(mu[6], 1)
        self.assertEqual(mu[30], -1)

    def test_zero_horizon(self):
        data = finite_energy(F(1))
        for key in ["energy_cells", "energy_gram_minus_tail", "mertens_source_cells"]:
            self.assertTrue(data[key].contains_zero())
        self.assertEqual(data["energy_cells"], I.point(0))
        self.check_identities(data)

    def test_integer_cutoffs_and_diagonal_budget(self):
        for n in range(1, 41):
            data = finite_energy(F(n), 48)
            self.check_identities(data)
            self.assertLessEqual(data["gram_diagonal"].hi, F(27, 7))

    def test_fractional_cutoffs_and_floor(self):
        for n in range(1, 25):
            self.check_identities(finite_energy(F(2*n + 1, 2), 48))
        self.check_identities(finite_energy(F(1001, 1000), 64))

    def test_exact_rational_grid_signed_identities(self):
        for length in range(1, 6):
            for coeff in product([-1, 0, 1], repeat=length):
                left, right = rational_grid_identity(coeff)
                self.assertEqual(left, right, coeff)

    def test_tail_completion_exact_algebra(self):
        for A, M, r in product([F(-2), F(0), F(1, 3), F(3)],
                               [F(-4), F(0), F(5)], [F(1), F(3, 2), F(2)]):
            expanded = 6*A*A*r**-4 - F(48, 7)*A*M*r**-7 + F(12, 5)*M*M*r**-10
            completed = 6*r**-4*(A - F(4, 7)*M*r**-3)**2 + F(108, 245)*M*M*r**-10
            self.assertEqual(expanded, completed)
            self.assertGreaterEqual(completed, 0)

    def test_touching_atom_not_deleted_from_prefix(self):
        baseline = finite_energy(F(3), coefficients=[0, 1, -1, -1])
        changed = finite_energy(F(3), coefficients=[0, 1, -1, 7])
        self.assertTrue(baseline["energy_cells"].overlaps(changed["energy_cells"]))
        self.assertTrue(baseline["energy_gram_minus_tail"].overlaps(
            changed["energy_gram_minus_tail"]))
        self.assertFalse(baseline["gram_diagonal"].overlaps(changed["gram_diagonal"]))

    def test_volterra_and_sampled_defect_bounds(self):
        for n in range(2, 33):
            data = finite_energy(F(n), 48)
            self.assertGreaterEqual(data["volterra_slack"].lo, 0)
            H, S = data["energy_cells"], data["sampled_defect_energy"]
            self.assertLessEqual(H.hi, 8*S.lo + 3)
            self.assertLessEqual(S.hi, H.lo/2 + F(3, 4))

    def test_deleted_tail_is_detected(self):
        data = finite_energy(F(3))
        wrong = data["gram_diagonal"] + data["gram_cross"]
        self.assertFalse(wrong.overlaps(data["energy_cells"]))

    def test_deleted_mixed_tail_is_detected(self):
        data = finite_energy(F(3))
        A = I.point(1) - sixth_root(F(2))**-3 - sixth_root(F(3))**-3
        mixed = -F(48, 7)*A*(-1)*sixth_root(F(3))**-7
        wrong = data["energy_gram_minus_tail"] + mixed
        self.assertFalse(wrong.overlaps(data["energy_cells"]))

    def test_missing_ordered_pair_factor_is_detected(self):
        data = finite_energy(F(3))
        wrong = data["energy_gram_minus_tail"] - data["gram_cross"]/2
        self.assertFalse(wrong.overlaps(data["energy_cells"]))

    def test_deleted_source_cutoff_compensation_is_detected(self):
        data = finite_energy(F(3))
        wrong = data["mertens_source_completed"] + data["mertens_source_cutoff_compensation"]
        self.assertFalse(wrong.overlaps(data["mertens_source_cells"]))

    def test_wrong_moebius_sign_is_detected(self):
        good = finite_energy(F(10))
        mu = moebius_coefficients(10)
        mu[6] = -mu[6]
        bad = finite_energy(F(10), coefficients=mu)
        self.assertFalse(good["energy_cells"].overlaps(bad["energy_cells"]))

    def test_constant_sign_control(self):
        small = finite_energy(F(16), coefficients=[0] + [1]*16)
        large = finite_energy(F(64), coefficients=[0] + [1]*64)
        self.assertGreater(large["energy_cells"].lo, small["energy_cells"].hi)
        # This tests a rejected sign-independent generality, not a Mobius counterexample.

    def test_invalid_input_and_future_coefficients(self):
        for cutoff in [F(-1), F(0), F(1, 2)]:
            with self.assertRaises(ValueError):
                finite_energy(cutoff)
        with self.assertRaises(ValueError):
            finite_energy(F(2), coefficients=[0, 1, -1, -1])
        with self.assertRaises(TypeError):
            finite_energy(F(2), coefficients=[0, 1, 0.5])
        for bits in [0, 7, 513, True]:
            with self.assertRaises(ValueError):
                finite_energy(F(2), bits)

    def test_cli_invalid_input_fails_in_optimized_python(self):
        script = Path(__file__).with_name("one_third_energy.py")
        run = subprocess.run([sys.executable, "-O", "-B", str(script), "--cutoff", "0"],
                             capture_output=True, text=True, check=False)
        self.assertEqual(run.returncode, 2)
        self.assertIn("physical cutoff", run.stderr)


if __name__ == "__main__":
    unittest.main()
