"""Finite exact tests and actual-source consistency; no universal cross bound."""
from fractions import Fraction as Q
from pathlib import Path
from math import comb, factorial
import sys
import unittest
import sympy as sp
sys.path.insert(0, str(Path(__file__).resolve().parents[2]/'.noeaaeue/scripts'))
import laguerre_centered_atoms as c
import laguerre_discrepancy_energy as e


class CenteredAtomTests(unittest.TestCase):
    def test_constant_and_terminal_inventory(self):
        r=c.source_report(3,8,192)
        self.assertEqual(r['atom_inventory']['count'],7)
        self.assertTrue(r['atom_inventory']['touching_feature_exact_zero'])
        self.assertEqual(r['atom_inventory']['factorization_checked_through'],8)
        self.assertEqual(r['source_comparison_boxes'],3)

    def test_new_source_does_not_drop_non_prime_powers(self):
        r=c.source_report(2,8,192)
        self.assertEqual(r['atom_inventory']['prime_power_count'],6)
        self.assertEqual(r['atom_inventory']['non_prime_powers_kept_with_weight_minus_one'],1)

    def test_grid_is_explicit(self):
        r=c.source_report(2,4,192)
        self.assertEqual(r['output_grid_bits'],160)
        self.assertEqual(r['working_bits'],192)

    def test_scope_flags_are_false(self):
        r=c.source_report(2,4,192)
        for k in ('RH_proved','all_depth_cross_bound','new_zero_exclusion','native_Lean_admission'):
            self.assertIs(r[k],False)

    def test_reject_bad_depth(self):
        for n in (True,0,-1,1.0,Q(1),1000001):
            with self.assertRaises(ValueError):c.scheduled_diagonal_bound(n)

    def test_reject_bad_source_profile(self):
        for args in [(0,8,192),(17,8,192),(2,1,192),(2,4097,192),(2,4,191),(True,4,192)]:
            with self.assertRaises(ValueError):c.source_report(*args)

    def test_reject_bad_gram_coordinates(self):
        for args in [(1,2,8),(2,9,8),(True,2,8),(2,2,1)]:
            with self.assertRaises(ValueError):c.complete_gram_entry(*args)

    def test_reject_incomplete_inventory(self):
        for w,f in [([],[]),([1],[[1],[2]]),([1,2],[[1],[2,3]]),([1],[[]])]:
            with self.assertRaises(ValueError):c.finite_accounting(w,f)

    def test_mesh_split_at_integer_and_noninteger(self):
        # Synthetic masses only; this is the exact floor identity for any masses.
        masses={2:Q(3,2),3:Q(-2),4:Q(7)}
        for x in [Q(1),Q(3,2),Q(2),Q(9,4),Q(3),Q(4),Q(19,4)]:
            floor=x.numerator//x.denominator
            psi=sum(v for n,v in masses.items() if n<=x)
            step=sum(masses.get(n,0)-1 for n in range(2,floor+1))
            self.assertEqual(psi-x+1,step+floor-x)

    def test_full_gram_retains_upper_endpoint(self):
        self.assertEqual(c.complete_gram_entry(2,3,8),Q(5,48))
        self.assertEqual(c.complete_gram_entry(2,8,8),0)
        self.assertNotEqual(c.complete_gram_entry(2,3,8),Q(1,6))

    def test_full_gram_is_function_gram(self):
        nodes=[2,3,5,8];weights=[Q(2),Q(-3),Q(1,2),Q(7)]
        direct=sum(weights[i]*weights[j]*c.complete_gram_entry(m,n,8)
                   for i,m in enumerate(nodes) for j,n in enumerate(nodes))
        cumulative=Q(0);integrated=Q(0)
        for i,m in enumerate(nodes[:-1]):
            cumulative+=weights[i]
            integrated+=cumulative**2*(Q(1,m)-Q(1,nodes[i+1]))/2
        self.assertEqual(direct,integrated)
        self.assertGreaterEqual(direct,0)

    def test_both_offdiagonal_orders(self):
        w=[Q(2),Q(-3),Q(1)];f=[[Q(1),Q(2)],[Q(2),Q(-1)],[Q(3),Q(4)]]
        total,diag,cross,norm=c.finite_accounting(w,f)
        direct=sum(w[i]*w[j]*sum(f[i][k]*f[j][k] for k in range(2))
                   for i in range(3) for j in range(3) if i!=j)
        self.assertEqual(cross,direct)
        self.assertEqual(diag+cross,norm)

    def test_positive_gram_can_have_negative_cross(self):
        _,d,x,n=c.finite_accounting([Q(1),Q(-1)],[[Q(1)],[Q(1)]])
        self.assertEqual((d,x,n),(2,-2,0))

    def test_positive_gram_does_not_supply_upper_cross_bound(self):
        for m in [2,4,8,16]:
            _,d,x,n=c.finite_accounting([Q(1)]*m,[[Q(1)]]*m)
            self.assertEqual((d,x,n),(m,m*(m-1),m*m))

    def test_coefficient_square_inequality(self):
        x=sp.symbols('x',nonnegative=True)
        self.assertEqual(sp.expand(x*x+1-(x-1)**2),2*x)

    def test_factorial_divisor_identity(self):
        for M in range(2,40):
            product=1
            for n,p in e.prime_power_inventory(M):product*=p**(M//n)
            self.assertEqual(product,factorial(M))

    def test_floor_lower_bound_includes_last_half(self):
        for M in range(2,100):
            for n in range(2,M+1):self.assertGreaterEqual(Q(M//n),Q(M,2*n))

    def test_scheduled_polynomial_budget(self):
        for n in [1,2,16,128,1000000]:
            self.assertEqual(c.scheduled_diagonal_bound(n),64*n*n+4*n)

    def test_logarithm_schedule_inequality_is_certified(self):
        self.assertLess(11*c.a.log_q(Q(2),192).hi,8)

    def test_tail_coefficient_equals_centered_dirichlet_feature(self):
        t=sp.symbols('t')
        for k in range(12):
            q=lambda j: (1 if j==0 else sum(sp.Rational((-1)**r*comb(j-1,r-1),factorial(r))*(2*t)**r
                                           for r in range(1,j+1)))
            generated=sp.Rational(2,3)*sum(sp.Rational(-1,3)**(k-j)*q(j) for j in range(k+1))
            polynomial=sum(sp.Rational(x.numerator,x.denominator)*t**j
                           for j,x in enumerate(c.tail_polynomial(k)))
            self.assertEqual(sp.expand(polynomial-generated),0)

    def test_generating_prefactor(self):
        w=sp.symbols('w');s=(3+w)/(2*(1-w))
        self.assertEqual(sp.cancel(1/(s*(1-w))-2/(3+w)),0)

    def test_missing_endpoint_changes_feature(self):
        # At m=X, n^-s-X^-s is zero, whereas dropping the endpoint is nonzero.
        self.assertEqual(Q(2,3)*(Q(1,8)-Q(1,8)),0)
        self.assertNotEqual(Q(2,3)*Q(1,8),0)

    def test_stable_prefactor_filter(self):
        x=[Q(1),Q(-2),Q(3),Q(7)];b=[]
        for value in x:b.append((2*value-(b[-1] if b else 0))/3)
        for k in range(len(x)):self.assertEqual(3*b[k]+(b[k-1] if k else 0),2*x[k])

    def test_synthetic_constant_labels_have_exponential_full_moments(self):
        # Delta=x-1, not the actual Mangoldt discrepancy.
        for k in range(12):
            p=e.laguerre(k,Q(2))
            value=sum(p[j]*factorial(j)*(Q(2)**(j+1)-Q(2,3)**(j+1)) for j in range(k+1))
            expected=2*Q(-3)**k-Q(2,3)*Q(-1,3)**k
            self.assertEqual(value,expected)
            self.assertGreater(abs(value),3**k)

    def test_two_precision_source_channels_overlap(self):
        r1=c.source_report(4,16,192);r2=c.source_report(4,16,256)
        for name in ['step_moments','fractional_moments','source_moments']:
            for x,y in zip(r1[name],r2[name]):
                self.assertLessEqual(max(Q(x['lower']),Q(y['lower'])),min(Q(x['upper']),Q(y['upper'])))
        self.assertLess(Q(r1['fractional_energy']['upper']),Q(1,2))
        self.assertLess(Q(r1['ordered_cross']['upper']),0)

    def test_fractional_mixed_term_is_not_deleted(self):
        r=c.source_report(4,16,192)
        self.assertGreater(Q(r['mixed_fractional']['lower']),0)
        self.assertGreater(Q(r['source_energy']['lower']),Q(r['step_energy']['upper']))


if __name__=='__main__':unittest.main(verbosity=2)
