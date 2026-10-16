#!/usr/bin/env python3
"""Exact algebra supporting the RH synthesis; not a proof of RH or a Lean audit.
Direction: grwtsk contributors. Derivations/checks: OpenAI ChatGPT.
Tests do not certify any external theorem or the infinite arithmetic target.
"""
from fractions import Fraction as F
from pathlib import Path
import hashlib, json, sys, unittest
import sympy as S

class SynthesisChecks(unittest.TestCase):
    def test_endpoint_derivatives(self):
        u = S.symbols('u'); b = (1-u*u)**4
        self.assertEqual([S.diff(b,u,j).subs(u,1) for j in range(4,9)],
                         [384,3840,17280,40320,40320])
        self.assertTrue(all(S.diff(b,u,j).subs(u,1)==0 for j in range(4)))
    def test_source_normalization_lower_bound(self):
        self.assertGreater(331**2,109395)
        self.assertEqual(F(65536,109395)/16,F(4096,109395))
    def test_endpoint_constant(self):
        c=[384,3840,17280,40320,40320]
        bracket=2*sum(F(a,400**j) for j,a in enumerate(c))
        self.assertLess(bracket,F(788))
        self.assertLess(F(331,64)*F(17,16)*bracket,F(5000))
    def test_density_at_collar(self):
        d=F(3,8)
        nu=15*(F(1,2)-d)/(F(11,2)+5*d)
        self.assertEqual(nu,F(15,59))
    def test_density_transition(self):
        d=F(1,10)
        self.assertEqual(15*(F(1,2)-d)/(F(11,2)+5*d),1)
    def test_optimal_threshold_for_selected_envelope(self):
        self.assertEqual(F(3,4)/(6-F(15,59)),F(59,452))
        self.assertLess(F(59,452),F(2,15))
    def test_threshold_monotonicity_polynomial(self):
        d=S.symbols('d')
        ratio=2*d*(11+10*d)/(51+90*d)
        p=S.Poly(S.expand(S.cancel(S.diff(ratio,d)*(51+90*d)**2)),d)
        self.assertTrue(all(c>0 for c in p.all_coeffs()))
    def test_300_strata_strict_exponential_margin(self):
        kappa=F(2,15); eps=F(1,100)
        margins=[]
        for j in range(300):
            a=F(j,800); b=F(j+1,800)
            nu=min(F(1),15*(F(1,2)-a)/(F(11,2)+5*a))
            margins.append(kappa*(6-nu-eps)-2*b)
        self.assertGreater(min(margins),F(1,100))
        self.assertEqual(F(300,800),F(3,8))
    def test_uniform_margin_estimate(self):
        self.assertEqual(F(2,15)*(6-F(15,59))-F(3,4),F(19,1180))
        self.assertGreater(F(19,1180)-F(1,400)-F(1,750),F(1,100))
    def test_prime_jet_generating_polynomial(self):
        w,x=S.symbols('w x')
        # Use formal finite exponential expansion, sufficient through degree 8.
        gen=sum((-x)**j/S.factorial(j)*(w/(1-w))**j for j in range(9))
        ser=S.series(gen,w,0,9).removeO().expand()
        for k in range(9):
            q=1 if k==0 else sum(S.binomial(k-1,j-1)*(-x)**j/S.factorial(j)
                                  for j in range(1,k+1))
            self.assertEqual(S.expand(ser.coeff(w,k)-q),0)
    def test_actual_quotient_coefficient_recursion_algebra(self):
        w=S.symbols('w'); a=[S.Rational(1,5),-2,S.Rational(3,7),1,-3]
        c=[(a[0]-1)/(a[0]+1)]
        for k in range(1,len(a)):
            c.append((a[k]-sum(a[j]*c[k-j] for j in range(1,k+1)))/(1+a[0]))
        A=sum(a[k]*w**k for k in range(len(a)))
        D=S.series((A-1)/(A+1),w,0,len(a)).removeO().expand()
        self.assertEqual(c,[D.coeff(w,k) for k in range(len(a))])
    def test_quartic_gap(self):
        d,g=S.symbols('d g',real=True)
        p=2*(d*d-g*g);r=(d*d+g*g)**2
        self.assertEqual(S.expand(p*p-4*r+16*d*d*g*g),0)
    def test_pair_inertia_identity(self):
        a=S.Matrix([1,2,-3]);b=S.Matrix([2,-1,1]);v=a+S.I*b
        self.assertEqual((v*v.T+S.conjugate(v)*S.conjugate(v).T).applyfunc(S.expand),
                         2*(a*a.T-b*b.T))
    def test_retained_cubic_mean(self):
        lam,mu=S.symbols('lam mu')
        lhs=mu**3+(lam-mu)**2*(lam+2*mu)-S.Rational(5,9)*lam**3
        rhs=3*(mu-S.Rational(2,3)*lam)**2*(mu+S.Rational(1,3)*lam)
        self.assertEqual(S.expand(lhs-rhs),0)
    def test_doubling_reversal(self):
        for N in [1,2,4,8]:
            c=[S.Rational((-1)**j*(j+1),j+2) for j in range(2*N)]
            T=S.Matrix(2*N,2*N,lambda i,j: c[i-j] if i>=j else 0)
            H=S.Matrix(N,N,lambda i,j:c[i+j+1])
            J=S.Matrix(N,N,lambda i,j:1 if i+j==N-1 else 0)
            self.assertEqual(T[N:2*N,0:N]*J,H)
    def test_heat_and_metric_constants(self):
        d=F(3,8)
        self.assertEqual(2*d*d,F(9,32))
        self.assertEqual(d*d/2,F(9,128))
        self.assertEqual((1-d)/(1+d),F(5,11))
        self.assertEqual(1-d*d,F(55,64))

if __name__=='__main__':
    suite=unittest.defaultTestLoader.loadTestsFromTestCase(SynthesisChecks)
    result=unittest.TextTestRunner(verbosity=2).run(suite)
    record={
        'status':'PASSED' if result.wasSuccessful() else 'FAILED',
        'tests':result.testsRun,'failures':len(result.failures),'errors':len(result.errors),
        'optimization':sys.flags.optimize,
        'source_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        'tail_threshold':'59/452','selected_height_exponent':'2/15',
        'proved_grid_exponential_margin_lower':'1/100',
        'fixed_deviation_strata':300,
        'external_seven_eighths':'IMPORTED_THEOREM_NOT_REPLAYED',
        'external_zero_density':'IMPORTED_PUBLISHED_THEOREM_NOT_REPROVED',
        'continuum_tail_proof':'WRITTEN_ARGUMENT',
        'all_depth_source_estimate':'OPEN',
        'RH_proved':False,'native_Lean_audit':False,'remote_repository_changed':False}
    Path(__file__).with_name('algebra-optimized.json' if sys.flags.optimize else
                            'algebra-normal.json').write_text(json.dumps(record,indent=2)+'\n')
    raise SystemExit(0 if result.wasSuccessful() else 1)
