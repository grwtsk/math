#!/usr/bin/env python3
"""Finite tests; general sector estimates and PNT refutations are not Lean-admitted.

Human mathematical direction: grwtsk contributors.
Implementation assistance: OpenAI ChatGPT. MIT.
Normal and optimized Python must both pass; runtime checks do not use assert.
"""
from fractions import Fraction as Q
from itertools import product
from math import gcd, isqrt
import json
from pathlib import Path
import subprocess
import sys
import unittest

import localized_mobius_pair_sectors as p
from dyadic_pickup_localization import atom_gram, localized_atom
from one_third_energy import Interval as I, moebius_coefficients, sixth_root


def value(row, key):
    v = row['intervals'][key]
    return I(Q(v['lower']), Q(v['upper']))


def mu_trial(n):
    sign = 1
    d = 2
    while d * d <= n:
        if n % d == 0:
            n //= d
            sign = -sign
            if n % d == 0:
                return 0
        d += 1
    return -sign if n > 1 else sign


class PairSectors(unittest.TestCase):
    def test_sieve_independent_trial(self):
        mu = moebius_coefficients(2048)
        for n in range(1, 2049):
            self.assertEqual(mu[n], mu_trial(n))

    def test_primitive_coefficient_identity(self):
        mu = moebius_coefficients(384)
        count = 0
        for a in range(1, 13):
            for b in range(a + 1, 4 * a):
                if gcd(a, b) != 1:
                    continue
                for g in range(1, 9):
                    self.assertEqual(p.primitive_coefficient(a, b, g, mu),
                                     mu_trial(g * a) * mu_trial(g * b))
                    count += 1
        self.assertGreater(count, 1000)

    def test_primitive_coefficient_requires_gate(self):
        mu = moebius_coefficients(12)
        self.assertEqual(p.primitive_coefficient(2, 3, 2, mu), 0)
        self.assertEqual(mu[2] * mu[3] * mu[2] ** 2, 1)  # Removing coprimality is wrong.
        with self.assertRaises(ValueError):
            p.primitive_coefficient(2, 4, 1, mu)

    def test_primitive_gcd_reconstruction_and_sectors(self):
        for m in range(1, 65):
            for n in range(m + 1, 4 * m):
                g = gcd(m, n)
                a, b = m // g, n // g
                self.assertEqual(g * a, m)
                self.assertEqual(g * b, n)
                self.assertEqual(gcd(a, b), 1)
                self.assertEqual(p.pair_sector(m, n), p.primitive_sector(a, b, g))

    def test_boundary_membership(self):
        self.assertEqual(p.pair_sector(4, 6), 'large_gcd')  # g^2=m, retained here.
        self.assertEqual(p.pair_sector(9, 12), 'large_gcd')
        self.assertEqual(p.pair_sector(10, 13), 'short_gap')
        self.assertEqual(p.pair_sector(10, 17), 'core')
        self.assertEqual(p.pair_sector(5, 20), 'disjoint')
        self.assertEqual(p.pair_sector(1, 2), 'prime_rays')
        self.assertEqual(p.pair_sector(1, 3), 'prime_rays')

    def test_prime_ray_coefficients(self):
        for n in range(1, 129):
            for prime in (2, 3):
                rhs = -mu_trial(n) ** 2 if n % prime else 0
                self.assertEqual(mu_trial(n) * mu_trial(prime * n), rhs)

    def test_three_halves_positive_not_negative(self):
        for g in range(1, 129):
            rhs = mu_trial(g) ** 2 if gcd(g, 6) == 1 else 0
            self.assertEqual(mu_trial(2 * g) * mu_trial(3 * g), rhs)
        self.assertGreater(atom_gram(2, 3, 8).lo, 0)

    def test_atom_nonnegative(self):
        for n in range(1, 8):
            for k in range(0, 17):
                x = Q(n, 2) + Q(k * n, 4)
                v = localized_atom(n, x)
                self.assertGreaterEqual(v.hi, 0)

    def test_gram_dilation(self):
        for a, b, g, x in ((1, 2, 3, Q(17, 2)), (2, 3, 2, Q(9)),
                           (3, 5, 3, Q(43, 2)), (1, 3, 2, Q(6)),
                           (2, 7, 4, Q(31))):
            direct = atom_gram(g * a, g * b, x)
            scaled = sixth_root(Q(g)) ** -10 * atom_gram(a, b, x / g)
            self.assertTrue((direct - scaled).contains_zero())

    def test_dilation_must_shift_recording_cutoff(self):
        true = atom_gram(6, 9, 10)
        wrong = sixth_root(Q(3)) ** -10 * atom_gram(2, 3, 10)
        self.assertFalse(true.overlaps(wrong))

    def test_cauchy_entry_bound(self):
        c = atom_gram(1, 1, 4)
        for m in range(1, 7):
            for n in range(m, 4 * m):
                G = atom_gram(m, n, 4 * m)
                majorant = c * sixth_root(Q(m * n)) ** -5
                self.assertLessEqual(G.lo, majorant.hi)

    def test_original_energy_and_all_sectors(self):
        for x in (Q(1), Q(3, 2), Q(4), Q(17, 2), Q(16), Q(32)):
            r = p.sector_report(x, primitive_check=True)
            self.assertTrue(all(r['consistency'].values()))
            N = x.numerator // x.denominator
            self.assertEqual(sum(r['pair_counts'].values()), N * (N - 1) // 2)
            for key in ('ray_absolute_slack', 'large_gcd_absolute_slack',
                        'short_gap_absolute_slack', 'forward_core_slack', 'reverse_core_slack'):
                self.assertGreaterEqual(value(r, key).lo, 0)

    def test_missing_ordered_factor_is_detected(self):
        r = p.sector_report(Q(17, 2))
        half = sum((value(r, k) for k in p.SECTORS), I.point(0)) / 2
        wrong = value(r, 'diagonal') + half
        self.assertFalse(wrong.overlaps(value(r, 'localized_energy')))

    def test_constant_coefficients_do_not_inherit_ray_sign(self):
        r = p.sector_report(8, coefficients=[0] + [1] * 8)
        self.assertFalse(r['mobius_ray_sign_theorem_applicable'])
        self.assertGreater(value(r, 'prime_rays').lo, 0)
        self.assertNotIn('forward_core_slack', r['intervals'])
        with self.assertRaises(ValueError):
            p.sector_report(8, coefficients=[0] + [1] * 8, primitive_check=True)

    def test_signed_partition_controls(self):
        for signs in product((-1, 0, 1), repeat=3):
            r = p.sector_report(Q(7, 2), coefficients=[0, *signs])
            self.assertTrue(all(r['consistency'].values()))

    def test_changed_mobius_sign(self):
        actual = p.sector_report(8)
        a = moebius_coefficients(8)
        a[6] *= -1
        wrong = p.sector_report(8, coefficients=a)
        self.assertFalse(value(actual, 'localized_energy').overlaps(value(wrong, 'localized_energy')))

    def test_prime_kernel_lower_bounds(self):
        for X in (16, 32, 64):
            primes = [n for n in range(X + 1, 5 * X // 4 + 1)
                      if all(n % d for d in range(2, isqrt(n) + 1))]
            scale = sixth_root(Q(X)) ** -10
            for m, q in product(primes, repeat=2):
                if m < q:
                    self.assertGreater(atom_gram(m, q, 2 * X).lo, (scale / 1296).hi)
                if m != q:
                    self.assertEqual(p.pair_sector(m, 2 * q), 'core')
                    self.assertEqual(mu_trial(m) * mu_trial(2 * q), -1)
                    self.assertGreater(atom_gram(m, 2 * q, 4 * X).lo, (scale / 5760).hi)

    def test_prime_counts_and_floor(self):
        for X in (4, 16, 17, 64, 256):
            r = p.prime_core_witness(X)
            K, H = r['prime_count'], r['gap_cutoff']
            self.assertGreaterEqual(4 * H ** 2, 5 * X)
            self.assertLess(4 * (H - 1) ** 2, 5 * X)
            self.assertGreaterEqual(2 * r['unordered_separated_pairs'], r['ordered_pair_count_lower'])
            self.assertEqual(r['prime_twice_prime_pairs'], K * (K - 1))

    def test_rational_constants(self):
        self.assertLess(Q(8, 9) ** 2, Q(4, 5))
        self.assertGreater(Q(5, 6) ** 2, Q(2, 3))
        self.assertGreater(Q(15, 8) ** 2, Q(7, 2))
        self.assertLess(Q(5, 8) ** 2, Q(2, 5))
        self.assertGreater(Q(7, 12) ** 2, Q(1, 3))
        self.assertEqual(Q(1, 9) ** 2 * Q(1, 4) * Q(1, 4), Q(1, 1296))
        self.assertEqual(Q(1, 15) * Q(1, 12) * Q(1, 16) * Q(1, 2), Q(1, 5760))
        self.assertEqual(Q(5, 2) + 45 + 14, Q(123, 2))
        self.assertEqual(10 + 45 + 14, 69)

    def test_finite_p_series_majorants(self):
        # Integral-comparison algebra at rational grid points; not a proof of the infinite bounds.
        for a in range(2, 18):
            ar = sixth_root(Q(a))
            for G in (a, 2 * a, 4 * a):
                total = sum((sixth_root(Q(g)) ** -10 for g in range(a, G + 1)), I.point(0))
                self.assertLess(total.lo, (Q(5, 2) * ar ** -4).hi)

    def test_validation(self):
        for bad in (True, 1.5, '8'):
            with self.assertRaises((ValueError, TypeError)):
                p.sector_report(bad)
        for bad in (True, Q(64), 7, 513):
            with self.assertRaises(ValueError):
                p.sector_report(1, bits=bad)
        with self.assertRaises(ValueError):
            p.sector_report(0)
        with self.assertRaises(ValueError):
            p.sector_report(4, coefficients=[0] * 6)
        with self.assertRaises(ValueError):
            p.pair_sector(2, 2)
        with self.assertRaises(TypeError):
            p.sector_report(1, primitive_check=1)

    def test_cli_semantics_and_rejection(self):
        script = str(Path(p.__file__))
        args = [sys.executable, '-B', script, '--cutoff', '17/2', '--primitive-check', '--prime-X', '64']
        out = subprocess.run(args, capture_output=True, text=True, check=True)
        data = json.loads(out.stdout)
        self.assertFalse(data['uniform_core_bound_proved'])
        self.assertEqual(data['lean_replay'], 'NOT_RUN')
        self.assertTrue(all(data['records'][0]['consistency'].values()))
        bad = subprocess.run([sys.executable, '-O', '-B', script, '--cutoff', '0'],
                             capture_output=True, text=True)
        self.assertEqual(bad.returncode, 2)


if __name__ == '__main__':
    unittest.main()
