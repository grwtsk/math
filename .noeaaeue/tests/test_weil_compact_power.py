from __future__ import annotations
import json
import subprocess
import sys
import tempfile
import unittest
from fractions import Fraction as Q
from math import factorial
from pathlib import Path

ROOT=Path(__file__).resolve().parents[2]
sys.path.insert(0,str(ROOT/'.noeaaeue/scripts'))
import weil_compact_power as W
from finite_hermite_isolation import Gaussian as G, I, ZERO, evaluate, trace, isolate
import sympy as s


class CompactPowerTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.r=G(2,Q(1,4))
        cls.nodes=(cls.r,cls.r.conj(),-cls.r,-cls.r.conj(),G(0),G(4),G(-4))
        cls.prof=W.profile(cls.nodes,cls.r,Q(4))

    def test_exact_types(self):
        for x in (True,False,1.0,'1',None):
            with self.subTest(x=x), self.assertRaises((TypeError,ValueError)):
                W.rat(x)

    def test_shift_domain(self):
        for x in (Q(0),Q(-1),Q(257)):
            with self.assertRaises(ValueError): W.profile(self.nodes,self.r,x)

    def test_real_target_rejected(self):
        with self.assertRaises(ValueError): W.profile(self.nodes,G(0),Q(4))

    def test_closed_strip_boundary_rejected(self):
        r=G(0,Q(1,2))
        with self.assertRaises(ValueError): W.profile((r,r.conj()),r,Q(4))

    def test_nonsymmetric_mass_rejected(self):
        with self.assertRaises(ValueError): W.profile(self.nodes+(self.r,),self.r,Q(4))

    def test_poles_are_constraints_not_source(self):
        p=self.prof
        poles={tuple(x) for x in p['test_only_pole_nodes']}
        source={tuple(x['node']) for x in p['finite_source']}
        self.assertFalse(poles&source)
        coeff=tuple(G(Q(c)) for c in p['coefficients'])
        for z in (G(0,Q(1,2)),G(0,-Q(1,2))):
            self.assertEqual(evaluate(coeff,z),ZERO)
        self.assertEqual(trace(self.nodes,coeff,2),-2)

    def test_pair_value_normalization_for_every_power(self):
        for n in range(1,20):
            for v in (Q(3,2),Q(2),Q(7,3)):
                self.assertEqual(I*(G(v)/G(v))**n,I)
                self.assertEqual((-I)*(G(v)/G(v))**n,-I)

    def test_omitted_normalization_changes_pair_mass(self):
        self.assertNotEqual((I*G(2)**3)**2+((-I)*G(2)**3)**2,G(-2))

    def test_literal_square_not_modulus(self):
        self.assertEqual(I**2+(-I)**2,G(-2))
        self.assertEqual(I*I.conj()+(-I)*(-I).conj(),G(2))

    def test_counting_constant(self):
        self.assertEqual(W.quartic_tail_constant(),190)
        for j in range(20):
            partial=Q(30)+sum((Q(120,4**k) for k in range(j)),Q(0))
            self.assertEqual(190-partial,Q(160,4**j))

    def test_synthetic_infinite_counting_envelope(self):
        for T in (Q(1),Q(3,2),Q(2),Q(20),Q(1000)):
            self.assertLessEqual(20+2*T,30*T*T)

    def test_exact_window_integer_gate(self):
        for ell in range(1,130):
            a0=Q(ell+2); E=3**W.ceilq(a0/2); R=W.ceil_sqrt(8*E)
            self.assertGreaterEqual(R*R,8*E)
            self.assertLess((R-1)*(R-1),8*E)
            self.assertLessEqual(Q(4*E,R*R),Q(1,2))

    def test_undersized_window_does_not_pay_decay(self):
        E=27; R=1
        self.assertGreater(Q(4*E,R*R),Q(1,2))

    def test_baseline_power_all_degrees(self):
        for d in range(65):
            n0=(d+3)//2
            self.assertGreaterEqual(2*n0,d+2)
            self.assertGreaterEqual(4*n0-2*d,4)

    def test_integral_norm_constant(self):
        for d in range(65):
            n0=(d+3)//2;k=4*n0-2*d
            integral=4+Q(4,k-1)
            self.assertLessEqual(integral,Q(16,3))
            self.assertLess(integral/6,1)  # 2*pi>6

    def test_polynomial_majorant_scaling(self):
        for coeff in ((Q(1),Q(-3),Q(2)),(Q(0),Q(5)),(Q(7),)):
            for u in (Q(2),Q(5,2),Q(4),Q(17)):
                self.assertLessEqual(W.majorant(coeff,u),W.majorant(coeff,Q(2))*(u/2)**(len(coeff)-1))

    def test_positive_cosh_series_and_monotonicity(self):
        for x in (Q(0),Q(1,16),Q(1,4),Q(1),Q(8)):
            last=Q(0)
            for terms in range(1,12):
                value=W.cosh_lower(x,terms)
                self.assertGreaterEqual(value,last)
                self.assertEqual(value,sum((x**(2*k)/factorial(2*k) for k in range(terms)),Q(0)))
                last=value
        self.assertGreater(W.cosh_lower(Q(1,4)),1)

    def test_rate_identity_symbolic(self):
        b,l=s.symbols('b l',positive=True)
        residual=2*b-2*(l*b-s.Rational(7,10))/(l+2)-(4*b+s.Rational(7,5))/(l+2)
        self.assertEqual(s.factor(residual),0)

    def test_rate_strictly_below_pair_ceiling(self):
        for b in (Q(1,16),Q(1,8),Q(1,4),Q(7,16)):
            last=Q(-1)
            for ell in (1,2,4,8,16,32,64,128,256):
                rate=W.rate_lower(b,Q(ell))
                self.assertLess(rate,2*b)
                self.assertGreaterEqual(rate,last)
                last=rate

    def test_construct_shift_for_requested_rate(self):
        for b in (Q(1,16),Q(1,8),Q(1,4)):
            for factor in (Q(0),Q(1,2),Q(3,4)):
                requested=2*b*factor
                ell=W.shift_for_rate(b,requested)
                self.assertGreater(W.rate_lower(b,Q(ell)),requested)

    def test_rate_at_or_above_ceiling_rejected(self):
        for r in (Q(1,2),Q(3,4)):
            with self.assertRaises(ValueError):W.shift_for_rate(Q(1,4),r)

    def test_resource_exhaustion_is_not_success(self):
        with self.assertRaises(RuntimeError):W.first_tail_index(Q(100),Q(1),1,0)
        with self.assertRaises(ValueError):W.shift_for_rate(Q(1,4),Q(49999,100000))

    def test_strict_tail_margin(self):
        n,tail=W.first_tail_index(Q(2),Q(4),1)
        self.assertEqual(n,2)  # equality at first power does not suffice
        self.assertEqual(tail,Q(1,2))

    def test_full_tail_for_all_later_powers(self):
        p=self.prof; n0=p['baseline_power']; n1=p['first_power'];C=Q(p['baseline_tail_upper']);M=Q(p['pair_mass'])
        for offset in range(25):
            tail=C/Q(4)**(n1+offset-n0)
            self.assertLess(tail,M/2)
            self.assertEqual(tail,Q(p['tail_at_first_power'])/4**offset)

    def test_source_multiplicity_retained(self):
        src=self.nodes+(self.r,self.r.conj())*2
        p=W.profile(src,self.r,Q(4))
        self.assertEqual(p['pair_mass'],'6')
        self.assertEqual(p['negative_margin'],'3')

    def test_zero_height_supported(self):
        r=G(0,Q(1,8))
        p=W.profile((r,r.conj(),G(2),G(-2)),r,Q(16))
        self.assertEqual(p['selected'][0],'0')
        self.assertEqual(p['pair_mass'],'2')

    def test_far_tail_is_outside_closed_window(self):
        p=self.prof;K=p['far_source']['K'];t=Q(p['selected'][0]);R=p['near_window_radius']
        for j in range(30):
            for sign in (1,-1):self.assertGreater(abs(sign*(K+j)-t),R)

    def test_support_not_convolution_support(self):
        p=self.prof
        self.assertEqual(Q(p['convolution_half_support_at_first_power']),2*Q(p['test_half_support_at_first_power']))

    def test_lower_bound_for_required_norm(self):
        # The exact elementary integral defining the evaluation cost, b != 0.
        u,A,b=s.symbols('u A b',positive=True)
        expression=s.integrate(s.exp(-2*b*u),(u,-A,A))
        self.assertEqual(s.simplify(expression-(s.sinh(2*b*A)/b).rewrite(s.exp)),0)

    def test_normalization_prefactor_sign(self):
        for C in (Q(1),Q(3),Q(20)):
            for M in (Q(1),Q(2),Q(6)):
                for v in (Q(3,2),Q(2)):
                    n=3; N=C/v**(2*n); Wval=-M/2
                    self.assertEqual(Wval/N,-M*v**(2*n)/(2*C))
                    self.assertLessEqual(Wval/(N/2),-M*v**(2*n)/(2*C))

    def test_examples_not_actual_source(self):
        result=W.examples()
        self.assertFalse(result['RH_proof'])
        self.assertFalse(result['new_zero_free_region'])
        for p in result['profiles']:
            self.assertEqual(p['source_kind'],'SYNTHETIC_INFINITE_SPECTRUM_NOT_ZETA_DATA')
            self.assertFalse(p['scope']['actual_weil_lower_bound_proved'])
            self.assertFalse(p['scope']['all_near_nodes_are_actual_zeta_nodes'])

    def test_cli_refuses_overwrite(self):
        with tempfile.TemporaryDirectory() as td:
            dest=Path(td)/'out.json';dest.write_text('KEEP')
            p=subprocess.run([sys.executable,'-B',str(ROOT/'.noeaaeue/scripts/weil_compact_power.py'),'--output',str(dest)],capture_output=True,text=True)
            self.assertNotEqual(p.returncode,0)
            self.assertEqual(dest.read_text(),'KEEP')

    def test_subsequence_floor_loss(self):
        for a in (Q(3),Q(6),Q(10)):
            for A in (Q(20),Q(101,2),Q(150)):
                n=A//a
                self.assertLessEqual(n*a,A)
                self.assertLess(A,(n+1)*a)
                self.assertGreaterEqual(Q(n),A/a-1)

    def test_endpoint_cosine_alone_has_aliases(self):
        k=s.symbols('k',integer=True)
        self.assertEqual(s.simplify(s.cos(2*s.pi*k)),1)
        # Bare endpoint masses have no horizontal tail decay.
        self.assertGreater(abs(s.cos(2*s.pi*100)),s.Rational(1,2))

    def test_finite_mass_resource_guard(self):
        r=G(0,Q(1,4))
        with self.assertRaises(ValueError): W.profile((r,r.conj())*11,r,Q(4))

if __name__=='__main__': unittest.main()
