#!/usr/bin/env python3
"""Independent exact algebra and finite analytic-application controls.

Not the user's missing verify_exact.py and not a Lean-term extractor.
"""
from __future__ import annotations
from fractions import Fraction as Q
import hashlib
from pathlib import Path
import unittest
import sympy as S
import source_hermite_bridge as h
import reflected_zeta_cover as base
import zeta_region_atlas as atlas
from historical_source_pins import validate_recorded_observation

x,y,a,b,p,r,z=S.symbols('x y a b p r z',real=True)
P=x**4+p*x*x+r
G=p*p-4*r
H=S.Matrix([[4,0,-2*p,0],[0,-2*p,0,2*p*p-4*r],[-2*p,0,2*p*p-4*r,0],[0,2*p*p-4*r,0,-2*p**3+6*p*r]])

class Algebra(unittest.TestCase):
    def zero(self,expr):self.assertEqual(S.factor(expr),0)
    def test_orbit_factor(self):
        self.zero(((x-b)**2+a*a)*((x+b)**2+a*a)-(x**4+2*(a*a-b*b)*x*x+(a*a+b*b)**2))
    def test_gap(self):self.zero((2*(a*a-b*b))**2-4*(a*a+b*b)**2+16*a*a*b*b)
    def test_discriminant(self):self.zero(S.discriminant(P,x)-16*r*G*G)
    def test_bezout(self):
        A=16*G*(p*p+2*p*x*x-4*r);B=-8*x*G*(p*p+p*x*x-2*r)
        self.zero(A*P+B*S.diff(P,x)-16*r*G*G)
    def test_resolvent(self):self.zero((y-p)*(y*y-4*r)-(y**3-p*y*y-4*r*y+4*p*r))
    def test_moments(self):
        roots=[b+S.I*a,b-S.I*a,-b+S.I*a,-b-S.I*a]
        expected=[4,0,-2*p,0,2*p*p-4*r,0,-2*p**3+6*p*r]
        for k,m in enumerate(expected):
            self.zero(sum(w**k for w in roots)-S.sympify(m).subs({p:2*(a*a-b*b),r:(a*a+b*b)**2}))
    def test_hermite_gap_vector(self):
        v=S.Matrix([p/2,0,1,0]);self.zero((v.T*H*v)[0]-G)
    def test_hermite_minor(self):self.zero(H.extract([0,2],[0,2]).det()-4*G)
    def test_hermite_determinant(self):self.zero(H.det()-16*r*G*G)
    def test_norm_cost(self):
        v=S.Matrix([p/2,0,1,0]);self.zero((v.T*v)[0]-1-p*p/4)
    def test_axis_sos(self):
        u=S.Matrix(S.symbols('u0:4',real=True))
        self.zero((u.T*H.subs({p:-2*b*b,r:b**4})*u)[0]-4*(u[0]+b*b*u[2])**2-4*b*b*(u[1]+b*b*u[3])**2)
    def test_zero_height(self):
        hh=H.subs({p:2,r:1});self.assertEqual(hh[1,1],-4);self.assertEqual(G.subs({p:2,r:1}),0)
    def test_cayley_pullback(self):
        C=1-p+r;D=4-4*r;E=6+2*p+6*r
        self.zero(S.cancel((1-z)**4*P.subs(x,S.I*(1+z)/(1-z)))-(C*(z**4+1)+D*(z**3+z)+E*z*z))
    def test_cayley_trace_gap(self):
        C=1-p+r;D=4-4*r;E=6+2*p+6*r
        self.zero(D*D-4*E*C+8*C*C-16*G)
    def test_binary_normalization(self):
        I=p*p+12*r;J=72*p*r-2*p**3
        self.zero(4*I**3-J*J-27*16*r*G*G)
    def test_j_lower_is_not_exclusion(self):
        self.zero(256*(a**4+a*a*b*b+b**4)**3-1728*a**4*b**4*(a*a+b*b)**2-64*(a*a-b*b)**2*(a*a+2*b*b)**2*(2*a*a+b*b)**2)
    def test_two_root_gap(self):
        s1=2*b;s2=2*(b*b-a*a);D=2*s2-s1*s1
        self.zero(D+4*a*a);self.zero(s1*s1*D+16*a*a*b*b)
    def test_centered_two_root_test(self):
        s1,s2=S.symbols('s1 s2',real=True);v=S.Matrix([-s1/2,1]);hh=S.Matrix([[2,s1],[s1,s2]])
        self.zero((v.T*hh*v)[0]-(2*s2-s1*s1)/2)
    def test_quartic_norm_degree_eight(self):
        pp=S.expand((x+S.I*y)**4+1);poly=S.Poly(S.expand(pp*S.conjugate(pp)),x,y)
        self.assertEqual(poly.total_degree(),8)
    def test_conjugate_gram_changes_sign(self):
        aa=S.Rational(1,4);bb=S.Integer(2);pp=2*(aa*aa-bb*bb)
        roots=[bb+S.I*aa,bb-S.I*aa,-bb+S.I*aa,-bb-S.I*aa]
        vals=[S.expand(w*w+pp/2) for w in roots]
        signed=S.simplify(sum(v*v for v in vals));absolute=S.simplify(sum(v*S.conjugate(v) for v in vals))
        self.assertLess(signed,0);self.assertGreater(absolute,0)
    def test_aggregation_does_not_preserve_witness(self):
        aa=S.Rational(1,4);bb=S.Integer(2);pp=2*(aa*aa-bb*bb)
        gap=-16*aa*aa*bb*bb
        self.assertLess(gap,0);self.assertGreater(gap+2*(16+pp/2)**2,0)
    def test_duplicate_slots(self):
        self.assertEqual([2,2,-2,-2].count(2),2);self.assertEqual(len(set([2,2,-2,-2])),2)
    def test_psd_approximation_not_robust(self):
        delta=S.Rational(1,10000)
        # p(z)=z^2, f(z)=z^2+delta have arbitrarily small contour difference;
        # p's Hermite matrix is PSD and singular, f's is indefinite.
        hp=S.diag(2,0);hf=S.diag(2,-2*delta)
        self.assertEqual(hp.det(),0);self.assertLess(hf[1,1],0)

class Budgets(unittest.TestCase):
    def test_ratio(self):self.assertEqual(h.log_ratio_budget(Q(1,8),1),Q(1,7))
    def test_count_zero_error(self):self.assertEqual(h.normalized_moment_budget(0,Q(1,8),1),0)
    def test_strict_gate(self):
        for e,m in [(1,1),(2,1),(-1,1),(0,0)]:
            with self.assertRaises(ValueError):h.log_ratio_budget(e,m)
    def test_typed_input(self):
        with self.assertRaises(TypeError):h.log_ratio_budget(True,2)
        with self.assertRaises(TypeError):h.log_ratio_budget(0.1,2)
    def test_matrix_row_budget(self):
        for n in range(1,20):
            self.assertEqual(h.hermite_operator_budget(n,1),max(sum(i+j for j in range(n)) for i in range(n)))
    def test_shifted_root_error(self):
        for delta in (Q(1,2),Q(1,4),Q(1,64),Q(1,1024)):
            for k in range(1,7):self.assertLessEqual(delta**k,h.normalized_moment_budget(k,delta,1))
    def test_discriminant_error(self):
        for m in (Q(-1),Q(0),Q(1)):
            for e1 in (Q(0),Q(1,10)):
                for d1 in (-e1,e1):
                    e2=Q(1,20)
                    for d2 in (-e2,e2):
                        actual=2*d2-2*m*d1-d1*d1
                        self.assertLessEqual(abs(actual),h.pair_discriminant_error(m,e1,e2))

class ActualSource(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.packets=[h.circle_source_packet(Q(t)) for t in ('113/8','21','25','487/16','527/16','601/16')]
    def test_all_source_gates(self):
        for row in self.packets:
            self.assertGreater(row['boundary_surplus'],0)
            self.assertGreater(row['theta'],0)
            self.assertEqual(row['source_count'],1)
            self.assertEqual(row['polynomial_count'],1)
    def test_all_moments_finite(self):
        for row in self.packets:
            for m in row['moments']:
                self.assertLessEqual(m.re.lo,m.re.hi);self.assertLessEqual(m.im.lo,m.im.hi)
    def test_three_source_hermite_forms(self):
        for i in (0,2,4):
            out=h.even_four_divisor(self.packets[i],self.packets[i+1])
            self.assertTrue(out['hermite_positive_definite'])
            self.assertGreater(out['gap'].lo,0)
            self.assertGreater(out['r'].lo,0)
            self.assertLess(out['p'].hi,0)
    def test_overlap_rejected(self):
        with self.assertRaises(ValueError):h.even_four_divisor(self.packets[0],self.packets[0])
    def test_counted_moments_not_orbit_slots(self):
        out=h.even_four_divisor(self.packets[0],self.packets[1])
        self.assertGreater(out['gap'].lo,0)
        # Any single real orbit's gap is <=0, so these cannot be identified.
        self.assertIn('NOT',out['family'])
    def test_historical_dependency_hash_status_is_exact(self):
        expected={'reflected_zeta_cover.py':'9811a697087482c64bb6341e84ae38ccc762480e34f863b003195892bfc4636c',
                  'phase_aware_zeta_cover.py':'7b55e9db8c6f143ad3351371685c4f4645323fa044dabe211f52b6c232cea15a',
                  'zero_region_tracker.py':'957d3d9bb16a7616b47ec09434facd007221dc98d4e7be19e85b0cacb573815b',
                  'zeta_region_atlas.py':'b04761ba005e1fababe00a4571b0a1d7ba3a00e04974098e69351ed4e33a0800'}
        pins={'.noeaaeue/scripts/'+name:sha for name,sha in expected.items()}
        status=validate_recorded_observation(Path(__file__).resolve().parents[2],'source-hermite-bridge',pins)
        self.assertIs(status['mathematical_acceptance'],False)

if __name__=='__main__':unittest.main()
