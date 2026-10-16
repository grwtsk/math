"""Finite exact checks; numerical comparisons are independent diagnostics only."""
from fractions import Fraction as Q
from pathlib import Path
from math import comb, factorial
import itertools
import sys
import unittest
import sympy as S
import mpmath as mp
sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'.noeaaeue/scripts'))
import arithmetic_quotient_sections as a


class IntervalChecks(unittest.TestCase):
    def test_reversed_before_rounding(self):
        with self.assertRaises(ValueError):a.I.outward(Q(1,10**100),0,96)

    def test_nonexact_inputs(self):
        for x in (True,0.1,float('nan'),complex(1,0)):
            with self.subTest(x=repr(x)),self.assertRaises((ValueError,TypeError)):
                a.exact(x)

    def test_products_enclose_corners(self):
        for aa,bb in itertools.product([(-3,-1),(-2,5),(1,7)],repeat=2):
            x,y=a.I(*aa),a.I(*bb);z=x*y
            for v,w in itertools.product(aa,bb):self.assertTrue(z.lo<=v*w<=z.hi)

    def test_square_and_reciprocal(self):
        self.assertEqual(a.I(-2,3).square().lo,0)
        r=a.I(2,3).reciprocal()
        self.assertLessEqual(r.lo,Q(1,3));self.assertGreaterEqual(r.hi,Q(1,2))
        with self.assertRaises(ZeroDivisionError):a.I(-1,2).reciprocal()

    def test_square_root(self):
        for q in [Q(0),Q(2),Q(1,3),Q(25,49)]:
            r=a.I.point(q).sqrt()
            self.assertLessEqual(r.lo**2,q);self.assertGreaterEqual(r.hi**2,q)
        with self.assertRaises(ValueError):a.I(-1,2).sqrt()

    def test_precision_guard(self):
        with self.assertRaises(ValueError):a.I.point(1,32)
        with self.assertRaises(ValueError):a.I.point(1,96)+a.I.point(1,256)
        with self.assertRaises(ValueError):a.produce(33)

    def test_log_and_pi_independent_diagnostics(self):
        with mp.workdps(120):
            for x in [Q(1,7),Q(1),Q(2),Q(17),Q(123,7)]:
                b=a.log_q(x);v=mp.log(mp.mpf(x.numerator)/x.denominator)
                self.assertLessEqual(mp.mpf(b.lo.numerator)/b.lo.denominator,v)
                self.assertGreaterEqual(mp.mpf(b.hi.numerator)/b.hi.denominator,v)
            b=a.pi_box();self.assertLessEqual(mp.mpf(b.lo.numerator)/b.lo.denominator,mp.pi)
            self.assertGreaterEqual(mp.mpf(b.hi.numerator)/b.hi.denominator,mp.pi)


class JetChecks(unittest.TestCase):
    def test_bernoulli_exact(self):
        b=a.bernoulli(32)
        for k,v in enumerate(b):
            expected=-S.Rational(1,2) if k==1 else S.bernoulli(k)
            self.assertEqual(S.Rational(v.numerator,v.denominator),expected)

    def test_laguerre_recursion_binomial_formula(self):
        rows=a.prime_jet_polynomials(33)
        self.assertEqual(rows[0],[Q(1)])
        for k in range(1,33):
            self.assertEqual(rows[k],[Q(0)]+[Q(comb(k-1,j-1)*(-1)**j,factorial(j)) for j in range(1,k+1)])

    def test_laguerre_generating_identity(self):
        w,x=S.symbols('w x');rows=a.prime_jet_polynomials(8)
        expression=sum((-x)**j/S.factorial(j)*(w/(1-w))**j for j in range(8))
        series=S.series(expression,w,0,8).removeO().expand()
        for k,row in enumerate(rows):
            p=sum(S.Rational(v.numerator,v.denominator)*x**j for j,v in enumerate(row))
            self.assertEqual(S.expand(series.coeff(w,k)-p),0)

    def test_zeta_two_em_profiles_overlap(self):
        p,_=a.zeta_h_jet(8,32,24,160);q,_=a.zeta_h_jet(8,64,48,256)
        for x,y in zip(p,q):self.assertLessEqual(max(x.lo,y.lo),min(x.hi,y.hi))

    def test_digamma_two_em_profiles_overlap(self):
        p,_=a.psi_h_jet(8,32,24,160);q,_=a.psi_h_jet(8,64,48,256)
        for x,y in zip(p,q):self.assertLessEqual(max(x.lo,y.lo),min(x.hi,y.hi))

    def test_initial_source_value_diagnostic(self):
        r=a.produce(4)
        with mp.workdps(120):
            s=mp.mpf(3)/2
            v=1/s+1/(s-1)-mp.log(mp.pi)/2+mp.digamma(s/2)/2+mp.diff(mp.zeta,s)/mp.zeta(s)
            c=(v-1)/(v+1)
            b=r['quotient_coefficients'][0]
            lo,hi=Q(b['lower']),Q(b['upper'])
            self.assertLessEqual(mp.mpf(lo.numerator)/lo.denominator,c)
            self.assertGreaterEqual(mp.mpf(hi.numerator)/hi.denominator,c)

    def test_source_initial_h_coefficients_diagnostic(self):
        z,_=a.zeta_h_jet(4);p,_=a.psi_h_jet(4)
        with mp.workdps(120):
            for k in range(4):
                for box,value in [(z[k],mp.diff(mp.zeta,mp.mpf(3)/2,k)/factorial(k)),
                                  (p[k],mp.polygamma(k,mp.mpf(3)/4)/(2**k*factorial(k)))]:
                    self.assertLessEqual(mp.mpf(box.lo.numerator)/box.lo.denominator,value)
                    self.assertGreaterEqual(mp.mpf(box.hi.numerator)/box.hi.denominator,value)

    def test_nonclaims_preserved(self):
        r=a.produce(2,32,24,160)
        for k in ['RH_proved','all_depth_bound','native_Lean_admission']:self.assertIs(r[k],False)


class QuotientChecks(unittest.TestCase):
    def test_exact_formal_inverse(self):
        d=[Q(3,2),Q(-2),Q(7,5),Q(-1),Q(4)]
        self.assertEqual(a.conv(d,a.inverse(d,len(d)),len(d)),[Q(1)]+[Q(0)]*4)

    def test_quotient_identity(self):
        for n in (1,2,4,8):
            aa=[Q((-1)**k,k+2) for k in range(n)]
            boxes,_=a.certified_quotient([a.I.point(x) for x in aa])
            b=a.inverse([x+(1 if k==0 else 0) for k,x in enumerate(aa)],n)
            c=[(1 if k==0 else 0)-2*b[k] for k in range(n)]
            for v,x in zip(c,boxes):self.assertTrue(x.lo<=v<=x.hi)
            self.assertEqual(a.conv([x+(1 if k==0 else 0) for k,x in enumerate(aa)],c,n),
                             [x-(1 if k==0 else 0) for k,x in enumerate(aa)])

    def test_all_box_vertices(self):
        aa=[a.I(Q(1,4),Q(1,3)),a.I(-2,-1),a.I(Q(-1,7),Q(1,5)),a.I(2,3)]
        boxes,_=a.certified_quotient(aa)
        for vertex in itertools.product(*[(x.lo,x.hi) for x in aa]):
            b=a.inverse([x+(1 if k==0 else 0) for k,x in enumerate(vertex)],4)
            for k,x in enumerate(boxes):self.assertTrue(x.lo<=(1 if k==0 else 0)-2*b[k]<=x.hi)

    def test_neumann_global_norm_not_required(self):
        aa=[a.I.point(0),a.I(-2,2)]+[a.I.point(0)]*6
        boxes,record=a.certified_quotient(aa)
        self.assertGreater(Q(record['q_l1_upper']),1)
        for x in (Q(-2),Q(-1),Q(0),Q(1),Q(2)):
            for k,b in enumerate(boxes):
                val=-1 if k==0 else -2*(-x)**k
                self.assertTrue(b.lo<=val<=b.hi)

    def test_custom_candidate_shared_residual(self):
        aa=[a.I.point(Q(1,3)),a.I(Q(-1,10),Q(1,10)),a.I(2,3)]
        b,_=a.certified_quotient(aa,[0,0,0]);self.assertTrue(b[0].lo<=Q(-1,2)<=b[0].hi)
        with self.assertRaises(ValueError):a.certified_quotient(aa,[0])

    def test_unresolved_constant_rejected(self):
        for aa in [[a.I(-2,0)],[a.I(-1,0)],[a.I.point(-1)]]:
            with self.assertRaises(ZeroDivisionError):a.certified_quotient(aa)


class MatrixChecks(unittest.TestCase):
    def test_terminal_hankel_coefficient(self):
        for n in [1,2,4,8]:
            c=[a.I.point(0)]*(2*n);c[-1]=a.I.point(1)
            r=a.section_moments(c,n)
            expected=1-Q(n-1,n**3)
            b=r['relative_cubic_J']
            self.assertTrue(Q(b['lower'])<=expected<=Q(b['upper']))
            self.assertEqual(r['highest_coefficient_used'],2*n-1)

    def test_missing_terminal_rejected(self):
        with self.assertRaises(ValueError):a.section_moments([a.I.point(0)]*7,4)

    def test_zero_hankel(self):
        c=[a.I.point(1)]+[a.I.point(0)]*7
        r=a.section_moments(c,4)
        self.assertEqual(r['relative_cubic_J'],{'lower':'0','upper':'0'})

    def test_signed_cubic_matches_independent_matrix(self):
        n=4;coeff=[Q((-1)**k*(k+2),k+3) for k in range(8)]
        r=a.section_moments([a.I.point(x) for x in coeff],n)
        h=S.Matrix(n,n,lambda i,j:S.Rational(coeff[i+j+1].numerator,coeff[i+j+1].denominator))
        g=h*h.T;expected=S.trace(g**3)-(n-1)*(S.trace(g)/n)**3
        expected=Q(int(S.numer(expected)),int(S.denom(expected)))
        box=r['retained_cubic_numerator'];self.assertTrue(Q(box['lower'])<=expected<=Q(box['upper']))

    def test_rank_one_exponential_control(self):
        n=8;c=[a.I.point(2**k) for k in range(2*n)]
        r=a.section_moments(c,n)
        self.assertGreater(Q(r['relative_cubic_J']['lower']),1)
        self.assertIs(r['all_depth_bound'],False)


class DensityChecks(unittest.TestCase):
    def test_complete_contiguous_bands(self):
        d=a.density_bands();rows=d['rows']
        self.assertEqual(len(rows),300);self.assertEqual(Q(rows[0]['lower']),0)
        self.assertEqual(Q(rows[-1]['upper']),Q(3,8))
        for x,y in zip(rows,rows[1:]):self.assertEqual(x['upper'],y['lower'])

    def test_every_exponent_margin(self):
        d=a.density_bands()
        for r in d['rows']:self.assertGreater(Q(r['decay_margin']),Q(1,100))
        self.assertEqual(Q(d['minimum_margin']),Q(8489,589500))

    def test_asymptotic_constant_not_invented(self):
        d=a.density_bands()
        self.assertIs(d['density_constant_evaluated'],False)
        self.assertIs(d['all_height_zero_exclusion'],False)

    def test_threshold_arithmetic(self):
        self.assertEqual(Q(3,4)/(6-Q(15,59)),Q(59,452))
        self.assertLess(Q(59,452),Q(2,15))


if __name__=='__main__':unittest.main(verbosity=2)
