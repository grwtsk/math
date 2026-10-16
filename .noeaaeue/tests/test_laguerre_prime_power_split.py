"""Exact finite controls for prime-power separation; no infinite prime-energy claim."""
from fractions import Fraction as Q
from math import factorial
from pathlib import Path
import copy
import itertools
import sys
import unittest
sys.path.insert(0, str(Path(__file__).resolve().parents[2]/'.noeaaeue/scripts'))
import laguerre_prime_power_split as p


def poly_add(a, b):
    return [(a[j] if j < len(a) else 0)+(b[j] if j < len(b) else 0)
            for j in range(max(len(a), len(b)))]


def poly_mul(a, b):
    c = [Q(0)]*(len(a)+len(b)-1)
    for i, x in enumerate(a):
        for j, y in enumerate(b):
            c[i+j] += x*y
    return c


def norm(v):
    return sum((x*x for x in v), Q(0))


def parsed(box):
    return Q(box['lower']), Q(box['upper'])


class PrimePowerSplitTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.small = p.profile(4, 16, 192)

    def test_source_hashes(self):
        p.pins()

    def test_bad_profiles(self):
        for args in [(0, 16, 192), (17, 16, 192), (4, 0, 192), (4, 65537, 192),
                     (4, 16, 191), (True, 16, 192), (4, True, 192)]:
            with self.assertRaises(ValueError):
                p.profile(*args)

    def test_nonexact_exponents(self):
        for x in [True, 1.0, complex(1)]:
            with self.assertRaises(TypeError):
                p.exp_negative_upper(x)

    def test_negative_or_excessive_exponents(self):
        for x in [-1, 100001]:
            with self.assertRaises(ValueError):
                p.exp_negative_upper(x)

    def test_zero_exponential(self):
        self.assertEqual(p.exp_negative_upper(0), 1)

    def test_exponential_dyadic_comparison(self):
        for x in [Q(1, 2), Q(7, 3), Q(128, 5), Q(4096, 3)]:
            self.assertGreater(p.exp_negative_upper(x), 0)
            self.assertLessEqual(p.exp_negative_upper(x), Q(1, 2**(x.numerator//x.denominator)))

    def test_square_pnt_scalar_budget(self):
        self.assertLess(p.square_error_budget(), 2250)
        self.assertGreater(p.square_error_budget(), 2048)

    def test_external_pnt_rounding_direction(self):
        self.assertLess(Q('9.40'), 10)
        self.assertLess(Q('1.515'), 2)
        self.assertGreater(Q('0.8274'), Q(4, 5))

    def test_factorial_integral_tail(self):
        for n in range(10):
            self.assertEqual(p.exponential_moment_tail_polynomial(n, 0, Q(8, 5)),
                             Q(factorial(n))/Q(8, 5)**(n+1))

    def test_tail_polynomial_derivative(self):
        for n in range(10):
            c = p.e.exponential_tail_polynomial([Q(0)]*n+[Q(1)], Q(8, 5))
            for x in [Q(0), Q(1, 3), Q(16)]:
                self.assertEqual(p.e.polynomial(c, x), p.exponential_moment_tail_polynomial(n, x, Q(8, 5)))

    def test_schedule_indices(self):
        for n in [0, True, 129, Q(1)]:
            with self.assertRaises(ValueError):
                p.correction_tail_budget(n)

    def test_uniform_tail_scalar_targets(self):
        self.assertLess(p.correction_tail_budget(32), Q(1, 1000000))
        self.assertLess(p.correction_tail_budget(64), Q(1, 10**25))

    def test_carrier_constant_and_alternation(self):
        self.assertEqual(p.critical_carrier(0), Q(1, 3))
        self.assertEqual(p.critical_carrier(1), Q(-7, 9))
        for k in range(16):
            self.assertGreater((-1)**k*p.critical_carrier(k), 0)

    def test_carrier_exact_energy(self):
        for n in range(1, 65):
            self.assertEqual(sum(p.critical_carrier(k)**2 for k in range(n)), p.critical_carrier_energy(n))

    def test_carrier_is_not_square_summable(self):
        for n in range(2, 64):
            self.assertGreater(p.critical_carrier_energy(n), n-Q(3, 2))

    def test_outgoing_jacobi_row(self):
        for n in range(1, 17):
            m = p.time_multiplication(n)
            self.assertEqual(len(m), n+1)
            self.assertEqual(m[n][n-1], Q(-n, 2))

    def test_time_multiplication_polynomials(self):
        for n in range(1, 10):
            m = p.time_multiplication(n)
            for k in range(n):
                q = [Q(0)]+p.e.laguerre(k, Q(2))
                c = [Q(0)]*(n+1)
                for j in range(n+1):
                    c = poly_add(c, [m[j][k]*x for x in p.e.laguerre(j, Q(2))])
                for t in [Q(0), Q(1, 3), Q(7, 2)]:
                    self.assertEqual(p.e.polynomial(q, t), p.e.polynomial(c, t))

    def test_rectangular_norm_bound_signed_vectors(self):
        for n in range(1, 6):
            m = p.time_multiplication(n)
            for v in itertools.product([Q(-1), Q(0), Q(2)], repeat=n):
                out = [sum(x*y for x, y in zip(row, v)) for row in m]
                self.assertLessEqual(norm(out), 4*n*n*norm(v))

    def test_laguerre_orthogonality_normalization(self):
        for i in range(7):
            for j in range(7):
                c = poly_mul(p.e.laguerre(i, Q(2)), p.e.laguerre(j, Q(2)))
                value = 2*sum(x*Q(factorial(k), 2**(k+1)) for k, x in enumerate(c))
                self.assertEqual(value, int(i == j))

    def test_weighted_cauchy_choice(self):
        for n in range(1, 32):
            alpha = 2*n
            self.assertEqual(Q((alpha+2*n)**2, 2*alpha), 4*n)

    def test_cubic_geometric_constant(self):
        # sqrt(2)<3/2 implies 3+2sqrt(2)<6 and the coefficient bound <81.
        self.assertLess(Q(2), Q(3, 2)**2)
        self.assertEqual(Q(27, 2)*6, 81)

    def test_full_residual_norm_budget(self):
        self.assertLess(1125, 34**2)
        self.assertLess(Q(1, 2), 1)
        self.assertLess((34+9+1)**2, 2000)

    def test_classes_include_every_exponent(self):
        self.assertEqual(p.prime_power_classes(16),
                         [(2, 2, 1), (3, 3, 1), (4, 2, 2), (5, 5, 1), (7, 7, 1),
                          (8, 2, 3), (9, 3, 2), (11, 11, 1), (13, 13, 1), (16, 2, 4)])

    def test_inventory_factorization_and_touching(self):
        inv = self.small['inventory']
        self.assertEqual(inv['prime_count']+inv['square_count']+inv['higher_power_count'], inv['prime_power_count'])
        self.assertEqual(inv['factorization_checked_through'], 16)
        self.assertEqual(inv['classes'][-1], [16, 2, 4])
        self.assertIs(inv['touching_feature_exact_zero'], True)

    def test_empty_interval_is_exact(self):
        r = p.profile(4, 1, 192)
        for row in r['moments'].values():
            self.assertTrue(all(parsed(x) == (0, 0) for x in row))

    def test_complete_vector_reconstruction(self):
        r = self.small
        for u, v, w in zip(r['moments']['original'], r['moments']['compensated_prime'], r['moments']['residual']):
            ul, uh = parsed(u);vl, vh = parsed(v);wl, wh = parsed(w)
            self.assertLessEqual(max(ul, vl+wl), min(uh, vh+wh))

    def test_critical_carrier_not_removed(self):
        r = self.small
        p0, p1 = parsed(r['moments']['prime_only'][0]), parsed(r['moments']['compensated_prime'][0])
        self.assertLess(p0[1], p1[0])

    def test_complete_energy_keeps_mixed_term(self):
        r = self.small
        a, b, c = parsed(r['energies']['compensated_prime']), parsed(r['energies']['residual']), parsed(r['mixed_compensated_residual'])
        u = parsed(r['energies']['original'])
        self.assertLessEqual(max(a[0]+b[0]+c[0], u[0]), min(a[1]+b[1]+c[1], u[1]))

    def test_bounded_norm_error_is_not_bounded_energy_error(self):
        v, r = Q(1000), Q(1)
        self.assertEqual((v+r)**2-v**2, 2001)
        self.assertGreater((v+r)**2-v**2, r*r)

    def test_synthetic_beta_still_has_exponential_growth(self):
        # This is not a prime counting function; it prevents claiming that PNT alone closes RH.
        for k in range(1, 12):
            u = Q(8, 5)*Q(-11, 5)**k-Q(2, 3)*Q(-1, 3)**k
            self.assertGreater(abs(u), 2**k)

    def test_scope_is_finite_not_rh(self):
        for name in ['RH_proved', 'all_depth_prime_bound', 'native_Lean_admission', 'new_zero_exclusion', 'enormous_cutoff_enumerated']:
            self.assertIs(self.small[name], False)

    def test_pnt_is_named_not_audited(self):
        r = p.budget_report()
        self.assertIn('Corollary 1.2', r['external_input'])
        self.assertIs(r['external_proof_replayed'], False)


if __name__ == '__main__':
    unittest.main(verbosity=2)
