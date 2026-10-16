"""Exact finite algebra, enclosure checks, and rejection controls; not RH."""
from fractions import Fraction as Q
from math import comb, factorial
from pathlib import Path
import sys
import unittest
import sympy as S

sys.path.insert(0, str(Path(__file__).resolve().parents[2]/'.noeaaeue/scripts'))
import laguerre_dirichlet_bridge as d
import arithmetic_quotient_sections as source


def evaluate(c, x):
    return sum((S.Rational(v.numerator, v.denominator)*x**j for j, v in enumerate(c)), S.S.Zero)


def trial_base(n):
    for p in range(2, n+1):
        if n % p == 0:
            m = n
            while m % p == 0:
                m //= p
            return p if m == 1 else 0
    return 0


class LaguerreDirichletTests(unittest.TestCase):
    def test_pinned_source(self):
        d.source_pin()

    def test_bounds_and_integer_types(self):
        for n in (0, -1, 129, True, Q(1)):
            with self.assertRaises(ValueError):
                d.source_moments(n=n)
        for n in (0, -1, 4097, True):
            with self.assertRaises(ValueError):
                d.prime_label_tail_squared(n)

    def test_reject_primitive_rate(self):
        for rate in (0, -1):
            with self.assertRaises(ValueError):
                d.primitive_coefficients(1, rate)
        with self.assertRaises(TypeError):
            d.primitive_coefficients(1, 0.5)

    def test_reject_unsupported_head_inputs(self):
        with self.assertRaises(ValueError):
            d.finite_head(n=17)
        with self.assertRaises(ValueError):
            d.half_integer_tail(1, Q(5, 2), 2)
        with self.assertRaises(ValueError):
            d.compose_half_plane([])
        with self.assertRaises(ValueError):
            d.inverse_filter([])

    def test_laguerre_coefficients(self):
        t = S.symbols('t')
        for k in range(12):
            self.assertEqual(S.expand(evaluate(d.laguerre_t(k), t)-S.laguerre(k, 2*t)), 0)

    def test_exact_primitive_ODE(self):
        t = S.symbols('t')
        for k in range(12):
            for rate in (Q(1, 2), Q(3, 2), Q(5, 8)):
                p = evaluate(d.primitive_coefficients(k, rate), t)
                self.assertEqual(S.expand(S.Rational(rate)*p-S.diff(p, t)-S.laguerre(k, 2*t)), 0)

    def test_primitive_at_zero(self):
        for k in range(16):
            for rate in (Q(1, 2), Q(3, 2), Q(5, 8)):
                self.assertEqual(d.primitive_coefficients(k, rate)[0], (rate-2)**k/rate**(k+1))

    def test_composition_formula(self):
        w = S.symbols('w')
        jet = [Q(-2), Q(3, 5), Q(-7), Q(0), Q(2), Q(-1)]
        actual = d.compose_half_plane(jet)
        expected = S.series(evaluate(jet, 2*w/(1-w)), w, 0, len(jet)).removeO()
        self.assertEqual(S.expand(evaluate(actual, w)-expected), 0)

    def test_inverse_filter_signed_and_terminal(self):
        u = [Q(-1), Q(3, 2), Q(-2, 7), Q(0), Q(11)]
        p = [-(3*x+(u[k-1] if k else 0))/2 for k, x in enumerate(u)]
        self.assertEqual(d.inverse_filter(p), u)
        self.assertEqual(d.inverse_filter([1, 0]), [Q(-2, 3), Q(2, 9)])
        for invalid in (1.0, True):
            with self.assertRaises(TypeError):
                d.inverse_filter([invalid])
        self.assertNotEqual(d.inverse_filter([0]+p[1:]), u)

    def test_all_prime_powers_independently_factored(self):
        inventory = d.prime_power_bases(4096)
        for n in range(2, 4097):
            self.assertEqual(inventory[n], trial_base(n))
        self.assertEqual(inventory[64], 2)
        self.assertEqual(inventory[81], 3)
        self.assertEqual(inventory[36], 0)

    def test_shell_partition_complete_no_duplicates(self):
        for x in (1, 2, 3, 16, 37, 64, 129):
            shells = d.dyadic_shells(x)
            self.assertEqual([n for a, b in shells for n in range(a+1, b+1)], list(range(2, x+1)))
            self.assertTrue(all(a < b <= 2*a for a, b in shells))

    def test_shell_endpoints_telescope(self):
        z = S.symbols('z0:9')
        shells = d.dyadic_shells(129)
        summed = sum(-z[j+1]+z[j] for j in range(len(shells)))
        self.assertEqual(S.expand(summed-(z[0]-z[len(shells)])), 0)

    def test_empty_prime_head_is_zero(self):
        for box in d.finite_head(8, 1, 256):
            self.assertEqual(box.lo, 0)
            self.assertEqual(box.hi, 0)

    def test_finite_head_against_complete_cells(self):
        bits, x, length = 256, 16, 5
        bases = d.prime_power_bases(x)
        expected = [d.I.point(0, bits) for _ in range(length)]
        psi = d.I.point(0, bits)
        for n in range(1, x):
            if bases[n]:
                psi += source.log_q(Q(bases[n]), bits)
            for k in range(length):
                g = d.half_integer_tail(k, Q(3, 2), n, bits)-d.half_integer_tail(k, Q(3, 2), n+1, bits)
                h = d.half_integer_tail(k, Q(1, 2), n, bits)-d.half_integer_tail(k, Q(1, 2), n+1, bits)
                expected[k] += (psi+1)*g-h
        for a, b in zip(d.finite_head(length, x, bits), expected):
            self.assertLessEqual(max(a.lo, b.lo), min(a.hi, b.hi))

    def test_zeta_only_source_matches_completed_jet(self):
        n, bits = 8, 256
        a, _ = source.logarithmic_xi_jet(n, 64, 48, bits)
        psi, _ = source.psi_h_jet(n, 64, 48, bits)
        invs = source.inverse_affine(Q(3, 2), 1, 1, n, bits)
        r = [x/2+y for x, y in zip(psi, invs)]
        pi = source.pi_box(bits)
        logpi = d.I(source.log_q(pi.lo, bits).lo, source.log_q(pi.hi, bits).hi, bits)
        r[0] -= logpi/2
        r = d.compose_half_plane(r)
        p, u, record = d.source_moments(n, bits, 64, 48)
        for lhs, rhs in zip(p, [x-y for x, y in zip(a, r)]):
            self.assertLessEqual(max(lhs.lo, rhs.lo), min(lhs.hi, rhs.hi))
        self.assertIs(record['gamma_evaluated'], False)
        self.assertIs(record['full_xi_quotient_inverted'], False)
        for k in range(n):
            error = p[k]+(3*u[k]+(u[k-1] if k else 0))/2
            self.assertLessEqual(error.lo, 0)
            self.assertGreaterEqual(error.hi, 0)

    def test_finite_stieltjes_residual_symbolically(self):
        s, x, y, mass = S.symbols('s x y mass', nonzero=True)
        # y^-s, x^-s and x^(1-s) are separate symbols to avoid branch assumptions.
        v, w, q = S.symbols('v w q')
        integral = mass*(v-w)/s-(q-1)/(1-s)+(1-w)/s
        residual = mass*v-(q-1)/(1-s)-(mass-x+1)*w
        self.assertEqual(S.factor((s*integral-residual).subs(q, x*w)), 0)
        self.assertNotEqual(S.expand((s*integral-residual-(mass-x+1)*w).subs(q, x*w)), 0)

    def test_cayley_orientation_and_half_plane(self):
        t = S.symbols('t', real=True)
        omega = (S.I*t-1)/(S.I*t+1)
        self.assertEqual(S.simplify(omega*S.conjugate(omega)), 1)
        self.assertEqual(S.simplify((3+omega)/(2*(1-omega))), S.Rational(1, 2)+S.I*t)
        self.assertEqual(S.simplify(1/(1-omega)), (1+S.I*t)/2)

    def test_boundary_jacobian_normalization(self):
        t = S.symbols('t', real=True)
        self.assertEqual(S.simplify(((1+t*t)/4)*(2/(1+t*t))), S.Rational(1, 2))

    def test_laguerre_fourier_phase(self):
        for k in range(10):
            for t in (-3, -1, 0, 1, 4):
                rate = 1+S.I*t
                transformed = sum(S.Rational(v)*factorial(j)/rate**(j+1)
                                  for j, v in enumerate(d.laguerre_t(k)))
                self.assertEqual(S.simplify(transformed-(rate-2)**k/rate**(k+1)), 0)

    def test_basis_parseval_factor_one_half(self):
        for rate in (Q(1, 2), Q(1), Q(3), Q(5, 4)):
            ratio = (rate-1)/(rate+1)
            self.assertEqual(1/(rate+1)**2/(1-ratio**2), 1/(4*rate))

    def test_phase_kernel_and_removable_diagonal(self):
        for n in range(1, 9):
            for t, v in ((0, 0), (1, 1), (-1, 2), (Q(1, 3), Q(7, 2))):
                w = (S.I*S.Rational(t)-1)/(S.I*S.Rational(t)+1)
                z = (S.I*S.Rational(v)-1)/(S.I*S.Rational(v)+1)
                ratio = z/w
                kernel = sum(ratio**k for k in range(n))
                expected = n if t == v else (1-ratio**n)/(1-ratio)
                self.assertEqual(S.simplify(kernel-expected), 0)

    def test_frequency_weight_absolute_square(self):
        t = S.symbols('t', real=True)
        factor = 1/((S.Rational(1, 2)+S.I*t)*(1-S.I*t))
        self.assertEqual(S.simplify(factor*S.conjugate(factor)-1/((S.Rational(1, 4)+t*t)*(1+t*t))), 0)

    def test_spectrum_tail_rational_budget(self):
        for n in range(1, 65):
            # pi>3 and log 2<1 replace 9/pi^2 and 16*N*log2+1 upward.
            self.assertEqual(d.mellin_frequency_tail_squared(n), Q(n*(16*n+1)**2, 2**(4*n)))
            self.assertEqual(d.total_tail_squared(n), 2*(d.prime_label_tail_squared(n)+d.mellin_frequency_tail_squared(n)))
        for n in range(8, 128):
            self.assertLess(d.total_tail_squared(n+1), d.total_tail_squared(n))

    def test_complete_layer_cake_signed_observations(self):
        # Squares of signed observations; weights and every amplitude remain.
        values, weights = [Q(9), Q(0), Q(1, 4), Q(100), Q(9)], [Q(1), Q(2), Q(3), Q(1, 7), Q(4)]
        layers = d.weighted_layers(values, weights)
        self.assertEqual(sum(x[2] for x in layers), sum(x*y for x, y in zip(values, weights)))
        self.assertEqual(layers[-1][0], 100)
        self.assertNotEqual(sum(x[2] for x in layers[:-1]), sum(x*y for x, y in zip(values, weights)))

    def test_layer_inputs_reject_missing_and_negative(self):
        for values, weights in (([], []), ([1], []), ([-1], [1]), ([1], [-1])):
            with self.assertRaises(ValueError):
                d.weighted_layers(values, weights)
        with self.assertRaises(TypeError):
            d.weighted_layers([1.0], [1])

    def test_zero_layer_and_zero_weight(self):
        self.assertEqual(d.weighted_layers([0, 0], [1, 3]), [])
        self.assertEqual(sum(x[2] for x in d.weighted_layers([1, 8], [0, 0])), 0)

    def test_prime_shell_coefficient_normalization(self):
        for lower in (2, 8, 32):
            bases = d.prime_power_bases(2*lower)
            divisor = source.log_q(Q(2*lower), 192)
            for n in range(lower+1, 2*lower+1):
                if bases[n]:
                    value = (source.log_q(Q(bases[n]), 192)/divisor)*d.I.point(Q(lower, n), 192).sqrt()
                    self.assertLess(value.hi, 1)
                    self.assertGreater(value.lo, 0)

    def test_denominator_safe_on_frequency_axis(self):
        for t in (Q(-100), Q(-1, 2), Q(0), Q(3)):
            self.assertGreater(Q(1, 4)+t*t, 0)
            self.assertGreater(1+t*t, 0)


if __name__ == '__main__':
    unittest.main(verbosity=2)
