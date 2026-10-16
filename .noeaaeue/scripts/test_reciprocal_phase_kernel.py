#!/usr/bin/env python3
"""Finite exact controls. Passing is not admission of the analytic argument.

Human mathematical direction: R.A. Jacob Martone.
Implementation assistance: OpenAI ChatGPT. MIT. Normal and -O modes supported.
"""
from fractions import Fraction as Q
from itertools import product
from pathlib import Path
import subprocess
import sys
import unittest

from one_third_energy import Interval as I, sixth_root
from reciprocal_phase_kernel import (
    anchored_kernel, cos_turns, finite_record, fourier_weighted_integral,
    literal_kernel, pi_interval, quarter_modes, rho, rho_fourier,
    rho_weighted_integral, tail_budget,
)


class ReciprocalPhaseKernelTests(unittest.TestCase):
    def test_pi_brackets(self):
        for bits in (16, 32, 48, 96):
            p = pi_interval(bits)
            self.assertGreater(p.lo, 3)
            self.assertLess(p.hi, Q(22, 7))
            self.assertLess(p.hi-p.lo, Q(1, 2**bits))
            self.assertTrue(p.overlaps(pi_interval(128)))

    def test_cos_exact_special_phases(self):
        for r, v in ((Q(0), 1), (Q(1, 4), 0), (Q(1, 2), -1),
                     (Q(1, 6), Q(1, 2)), (Q(1, 3), Q(-1, 2))):
            for shift in (-10, 0, 23):
                self.assertEqual(cos_turns(r+shift, 32), I.point(v))

    def test_cos_precision_periodicity_and_symmetry(self):
        for j in range(1, 32):
            v = Q(j, 37)
            c = cos_turns(v, 32)
            self.assertEqual(c, cos_turns(-v, 32))
            self.assertEqual(c, cos_turns(v+8, 32))
            self.assertLess(c.hi-c.lo, Q(1, 10**7))
            self.assertTrue(c.overlaps(cos_turns(v, 64)))

    def test_rho_exact_grid(self):
        for j in range(-96, 97):
            v = Q(j, 16)
            self.assertGreaterEqual(rho(v), 0)
            self.assertLessEqual(rho(v), Q(1, 8))
            self.assertEqual(rho(v), rho(v+7))
            self.assertEqual(rho(v), rho(-v))

    def test_rho_fourier_anchoring(self):
        for H in (1, 2, 7, 16):
            for v in (-3, 0, 1, 9):
                self.assertEqual(rho_fourier(v, H, 32), I.point(0))

    def test_fourier_tail_bound_on_grid(self):
        for H in (1, 2, 4, 8):
            cap = (I.point(1)/(pi_interval(32)**2*H)).lo
            for j in range(1, 32):
                v = Q(j, 32)
                gap = I.point(rho(v))-rho_fourier(v, H, 32)
                self.assertGreaterEqual(gap.lo, 0)
                self.assertLessEqual(gap.hi, cap)

    def test_fourier_partial_sums_increase(self):
        for v in (Q(1, 7), Q(2, 5), Q(1, 2)):
            low = rho_fourier(v, 1, 48)
            high = rho_fourier(v, 5, 48)
            self.assertGreaterEqual(high.lo, low.hi)

    def test_exact_anchored_kernel_identity(self):
        for d in (1, 2, 6):
            for y in (Q(1), Q(5, 4), Q(3, 2), Q(2), Q(7, 2), Q(9)):
                x = d*y
                exact = literal_kernel(x, d, 48)
                parts = anchored_kernel(x, d, bits=48)
                self.assertTrue((exact-parts['total']).contains_zero())
                self.assertLess(parts['total'].hi-parts['total'].lo, Q(1, 10**8))

    def test_exact_cell_integral_startup(self):
        self.assertEqual(rho_weighted_integral(1, 48), I.point(0))
        for y in (Q(3, 2), Q(2), Q(7, 2)):
            self.assertGreater(rho_weighted_integral(y, 48).lo, 0)

    def test_finite_integral_quadrature_errors(self):
        for y in (Q(3, 2), Q(2), Q(7, 2)):
            a = fourier_weighted_integral(y, 2, 64, 32)
            b = fourier_weighted_integral(y, 2, 256, 32)
            self.assertTrue(a.overlaps(b))
            self.assertLess(b.hi-b.lo, a.hi-a.lo)
            self.assertGreater(a.lo, 0)

    def test_missing_history_detected(self):
        x = Q(7, 2)
        p = anchored_kernel(x, 1, bits=48)
        self.assertFalse(literal_kernel(x, 1, 48).overlaps(p['main']+p['endpoint']))

    def test_missing_endpoint_detected(self):
        x = Q(3, 2)
        p = anchored_kernel(x, 1, bits=48)
        self.assertFalse(literal_kernel(x, 1, 48).overlaps(p['main']+p['history']))

    def test_touching_products_and_main_correction(self):
        for d in (1, 2, 9):
            p = anchored_kernel(d, d, 3, 32, 48)
            self.assertTrue(p['total'].contains_zero())
            self.assertEqual(p['endpoint'], I.point(0))
            self.assertEqual(p['history'], I.point(0))
            damaged = p['total']-sixth_root(Q(d), 48)**-3
            self.assertLess(damaged.hi, 0)

    def test_quarter_schedule_exact_cutoffs(self):
        for j in range(1, 41):
            x = Q(j, 3)
            if x < 1:
                continue
            h = quarter_modes(x)
            self.assertLess((h-1)**4, x)
            self.assertGreaterEqual(h**4, x)
        for h in range(1, 16):
            self.assertEqual(quarter_modes(h**4), h)
            self.assertEqual(quarter_modes(Q(h**4)+Q(1, 100)), h+1)

    def test_decay_budget_exact_and_rejected_threshold(self):
        self.assertEqual(tail_budget(Q(1, 3), Q(1, 4))[
            'coefficient_of_pi_inverse_fourth'], '96')
        for q in (Q(0), Q(1, 12), Q(1, 6)):
            with self.assertRaises(ValueError):
                tail_budget(Q(1, 3), q)
        for j in range(1, 41):
            q = Q(1, 6)+Q(1, j)
            self.assertEqual(tail_budget(Q(1, 3), q)[
                'coefficient_of_pi_inverse_fourth'], str(8*j))

    def test_actual_signed_forms_and_square_crossing(self):
        for x in (Q(1), Q(7, 2), Q(4), Q(9, 2), Q(17, 2)):
            record = finite_record(x, panels=64, bits=32)
            self.assertTrue(record['exact_identity_consistent'])
            self.assertTrue(record['error_enclosure_inside_allowance'])
            self.assertEqual(record['source'], 'actual Mobius')

    def test_entrywise_error_not_positive_semidefinite(self):
        e11 = literal_kernel(4, 1, 48)-anchored_kernel(4, 1, 1, 128, 48)['total']
        e12 = literal_kernel(4, 2, 48)-anchored_kernel(4, 2, 1, 128, 48)['total']
        e22 = literal_kernel(4, 4, 48)-anchored_kernel(4, 4, 1, 128, 48)['total']
        self.assertGreater(e11.lo, 0)
        self.assertGreater(e12.lo, 0)
        self.assertTrue(e22.contains_zero())
        self.assertLess((e11/16-e12/2+e22).hi, 0)

    def test_ordered_pairs_signs_and_source_labels(self):
        x, H = Q(4), 2
        k = [anchored_kernel(x, d, H, 64, 32)['total'] for d in (1, 2, 4)]
        for a, b in product((-1, 0, 1), repeat=2):
            record = finite_record(x, H, 64, 32, [0, a, b])
            got = record['finite_fourier_quadratic']
            got = I(Q(got['lower']), Q(got['upper']))
            expected = a*a*k[0]+2*a*b*k[1]+b*b*k[2]
            self.assertTrue(got.overlaps(expected))
            self.assertEqual(record['source'], 'TEST coefficients')
        correct = k[0]-2*k[1]+k[2]
        self.assertFalse(correct.overlaps(k[0]-k[1]+k[2]))

    def test_invalid_inputs(self):
        for H in (0, -1, True, Q(1, 2)):
            with self.assertRaises((ValueError, TypeError)):
                rho_fourier(Q(1, 3), H)
        for x in (0, -1, True, 1.5):
            with self.assertRaises((ValueError, TypeError)):
                finite_record(x)
        cos_turns(Q(1, 8), 32)  # Warm exact cache; a float must still be rejected.
        with self.assertRaises(TypeError):
            cos_turns(0.125, 32)
        with self.assertRaises(ValueError):
            cos_turns(Q(1, 8), 32.0)
        for bits in (0, 8, True, 129):
            with self.assertRaises(ValueError):
                pi_interval(bits)
        with self.assertRaises(ValueError):
            anchored_kernel(3, 4)
        with self.assertRaises(ValueError):
            fourier_weighted_integral(2, 1, 0)
        with self.assertRaises(ValueError):
            finite_record(4, coefficients=[0, 1, 0, -1])

    def test_cli_rejects_invalid_mode_without_assert(self):
        script = str(Path(__file__).with_name('reciprocal_phase_kernel.py'))
        p = subprocess.run([sys.executable, '-O', '-B', script, '--modes', '0'],
                           capture_output=True, text=True, check=False)
        self.assertEqual(p.returncode, 2)
        self.assertIn('modes must be a positive integer', p.stderr)
        self.assertEqual(p.stdout, '')


if __name__ == '__main__':
    unittest.main()
