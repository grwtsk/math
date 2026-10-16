"""Exact scalar and symbolic controls; no native or source-integral acceptance."""
import sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'.noeaaeue/scripts'))
import unittest
from fractions import Fraction as Q
from math import factorial, comb
import sympy as s
import weil_spectral_lower_bounds as w

class Constants(unittest.TestCase):
    def test_gamma_upper(self):
        H=sum((Q(1,j) for j in range(1,33)),Q(0))
        self.assertLess(H-5*Q(693,1000),Q(3,5))
        self.assertGreater(w.log_bounds(Q(2),4)[0],Q(693,1000))
    def test_pi_upper(self):
        def at(x,N):
            v=sum(((-1)**k*x**(2*k+1)/Q(2*k+1) for k in range(N)),Q(0))
            e=x**(2*N+1)/Q(2*N+1)
            return (v,v+e) if N%2==0 else (v-e,v)
        a,b=at(Q(1,5),8); c,d=at(Q(1,239),8)
        self.assertLess(16*b-4*c,Q(22,7)); self.assertGreater(16*a-4*d,3)
    def test_log_constants(self):
        self.assertGreater(w.exp_bounds(Q(7,10),4)[0],2)
        self.assertGreater(w.exp_bounds(Q(6,5),4)[0],Q(22,7))
        self.assertLess(Q(3,5)+Q(11,7)+Q(21,10)+Q(6,5),w.B0)
    def test_log_refinement(self):
        for x in [Q(1,16),Q(2),Q(3),Q(127),Q(65537)]:
            a,b=w.log_bounds(x,8); c,d=w.log_bounds(x,32)
            self.assertLessEqual(a,c); self.assertLessEqual(d,b)
    def test_log_scaling(self):
        a,b=w.log_bounds(Q(2)); c,d=w.log_bounds(Q(8))
        self.assertEqual(c,3*a); self.assertEqual(d,3*b)
    def test_exp_reciprocal(self):
        a,b=w.exp_bounds(Q(3,2)); c,d=w.exp_bounds(-Q(3,2))
        self.assertEqual(c,1/b); self.assertEqual(d,1/a)
    def test_sqrt(self):
        for n in range(1,100):
            x=w.sqrt_lower(Q(n),32); self.assertLessEqual(x*x,n)
            self.assertGreater((x+Q(1,2**32))**2,n)
    def test_type_and_resource_guards(self):
        for x in [True,0.5,'1/2',None]:
            with self.assertRaises((ValueError,TypeError)): w.rational(x)
        with self.assertRaises(ValueError): w.log_bounds(Q(0))
        with self.assertRaises(ValueError): w.exp_bounds(Q(100),4)
        with self.assertRaises(ValueError): w.prime_cost(Q(4),cap=10)

class SourceCoercivity(unittest.TestCase):
    def test_prime_power_inventory(self):
        expected={2:2,3:3,4:2,5:5,7:7,8:2,9:3,11:11,13:13,16:2,17:17,19:19}
        got={n:w.prime_base(n) for n in range(2,21) if w.prime_base(n)}
        self.assertEqual(got,expected)
    def test_actual_support_cutoffs(self):
        for A,nodes in [(Q(1,4),[]),(Q(1,2),[2]),(Q(1),[2,3,4,5,7])]:
            _,rows,_=w.prime_cost(A)
            self.assertEqual([r['n'] for r in rows],nodes)
    def test_ambiguous_endpoint_included(self):
        lower,_=w.log_bounds(Q(2))
        _,rows,_=w.prime_cost(lower/2)
        self.assertEqual(rows[0]['n'],2)
        self.assertEqual(rows[0]['cutoff'],'included_uncertain')
    def test_arch_monotone(self):
        old=-w.B0
        for t in [2,4,8,16,32,64,128,1024]:
            lo=w.arch_lower(Q(t)); self.assertGreater(lo,old); old=lo
    def test_digamma_summand_integral(self):
        x,y=s.symbols('x y',positive=True)
        primitive=s.log(x)-s.log(x*x+y*y)/2
        self.assertEqual(s.simplify(s.diff(primitive,x)-y*y/(x*(x*x+y*y))),0)
        self.assertLess(s.diff(y*y/(x*(x*x+y*y)),x).subs({x:2,y:3}),0)
    def test_seed_all_test_lower_bound(self):
        r=w.seed_profile(); self.assertGreater(Q(r['computed_lower_rounded']),Q(1,4))
        self.assertFalse(r['pole_null_required']); self.assertEqual(r['prime_powers'],[])
    def test_moment_integrals(self):
        x=s.symbols('x')
        for n in range(1,10):
            p=s.legendre(n,x)
            for j in range(n): self.assertEqual(s.integrate(x**j*p,(x,-1,1)),0)
            self.assertEqual(s.integrate(p*p,(x,-1,1)),s.Rational(2,2*n+1))
    def test_leakage_formula_and_bound(self):
        for r in [Q(1,4),Q(1),Q(3),Q(8)]:
            m=max(1,w.ceilq(6*r))
            exact=w.moment_leakage(r,Q(1),m)
            self.assertLessEqual(exact,w.leakage_geometric(r,Q(1),m))
    def test_invalid_leakage(self):
        with self.assertRaises(ValueError): w.leakage_geometric(Q(1),Q(2),11)
        with self.assertRaises(ValueError): w.moment_leakage(Q(1),Q(2),1001)
    def test_profiles(self):
        for A in [Q(1,64),Q(1,8),Q(1,4),Q(1,2)]:
            r=w.coercivity_profile(A)
            self.assertGreaterEqual(Q(r['scalar_gap_lower_rounded']),Q(1,2))
            self.assertFalse(r['full_source_nonnegative'])
            self.assertIsNone(r['low_block_or_schur_bound'])
    def test_polar_debt(self):
        a=w.coercivity_profile(Q(1,2)); b=w.coercivity_profile(Q(1,2),True)
        self.assertGreater(Q(a['polar_cost_upper']),0)
        self.assertEqual(Q(b['polar_cost_upper']),0)
        self.assertTrue(b['pole_null_required'])
    def test_schur_identity(self):
        a,b,c,x,y=s.symbols('a b c x y')
        q=a*x*x+2*b*x*y+c*y*y
        self.assertEqual(s.expand(c*q-(c*y+b*x)**2-(a*c-b*b)*x*x),0)
    def test_diagonals_do_not_prove_positivity(self):
        M=s.Matrix([[1,2],[2,1]]); v=s.Matrix([1,-1])
        self.assertEqual((v.T*M*v)[0],-2)
    def test_continuity_seed_not_global(self):
        self.assertGreater(1-Q(1,64),0); self.assertLess(1-2,0)

class Escape(unittest.TestCase):
    def test_exact_pair_poles(self):
        z=s.symbols('z')
        for t,b in [(Q(0),Q(1,4)),(Q(2),Q(1,4)),(Q(2),Q(1,16))]:
            q=w.normalized_pair_quotient(t,b)
            p=(z*z+s.Rational(1,4))*sum(s.Rational(a.numerator,a.denominator)*z**j for j,a in enumerate(q))
            r=s.Rational(t.numerator,t.denominator)+s.I*s.Rational(b.numerator,b.denominator)
            self.assertEqual(s.simplify(p.subs(z,r)),s.I)
            self.assertEqual(s.simplify(p.subs(z,s.I/2)),0)
            self.assertEqual(s.simplify(p.subs(z,-s.I/2)),0)
    def test_no_axis_or_pole_division(self):
        for b in [Q(0),Q(1,2),Q(3,4)]:
            with self.assertRaises(ValueError): w.normalized_pair_quotient(Q(0),b)
    def test_cutoff_commutator(self):
        x=s.symbols('x'); chi=1-x*x; g=1+x+x**3
        op=lambda f:-s.diff(f,x,2)+f/4
        self.assertEqual(s.expand(op(chi*g)-chi*op(g)+s.diff(chi,x,2)*g+2*s.diff(chi,x)*s.diff(g,x)),0)
    def test_three_term_norm_identity(self):
        a,b,c=s.symbols('a b c')
        self.assertEqual(s.expand(3*(a*a+b*b+c*c)-(a+b+c)**2-(a-b)**2-(a-c)**2-(b-c)**2),0)
    def test_gaussian_moment_constants(self):
        for k in range(15):
            val=Q(factorial(2*k),4**k*factorial(k))
            self.assertLessEqual(val,factorial(k))
    def test_norm_polynomial_composition(self):
        q=[Q(3),Q(-2),Q(5)]; t=Q(2); x=s.symbols('x')
        coeff=w.shift(q,t)
        p=sum(s.Rational(a.numerator,a.denominator)*x**j for j,a in enumerate(q))
        r=sum(s.Rational(a.numerator,a.denominator)*x**j for j,a in enumerate(coeff))
        self.assertEqual(s.expand(p.subs(x,x+2)-r),0)
        self.assertGreater(w.gaussian_norm_constant(q,t),0)
    def test_joint_schedule_monotonic_bound(self):
        for k in range(4,25):
            for L in [4*k,4*k+1,8*k,100*k]:
                self.assertLessEqual(Q(L+1,L)**k,Q(4,3))
                self.assertLessEqual(Q(L+1,L)**k/4,Q(1,3))
    def test_profiles_negative_budgets(self):
        for t,b in [(Q(0),Q(1,4)),(Q(2),Q(1,4)),(Q(2),Q(1,16))]:
            r=w.escape_profile(t,b)
            self.assertLess(Q(r['tail_upper']),Q(r['mass'])/4)
            self.assertLess(Q(r['cutoff_upper']),Q(r['mass'])/4)
            self.assertEqual(r['half_support'],8*r['L_first_checked'])
            self.assertEqual(Q(r['negative_growth_rate_in_half_support']),b*b/4)
            self.assertFalse(r['actual_source_integral_evaluated'])
    def test_complete_signed_error(self):
        x,y=s.symbols('x y')
        self.assertEqual(s.expand((x+y)**2-x*x-2*x*y-y*y),0)
        self.assertGreater((10+Q(1,100))**2-100,Q(1,100)**2)
    def test_escape_scaling(self):
        b,L=s.symbols('b L',positive=True)
        self.assertEqual(s.expand(2*b*b*L-(b*b/4)*(8*L)),0)
        self.assertEqual(s.expand(8*(b*b/8)*L-2*b*b*L),-b*b*L)
    def test_results_nonclaims(self):
        r=w.results(); self.assertFalse(r['RH']); self.assertEqual(r['native_admissions'],0)
        self.assertFalse(r['all_support_source_lower_bound_proved'])

if __name__=='__main__': unittest.main()
