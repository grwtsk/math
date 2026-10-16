#!/usr/bin/env python3
"""Finite exact checks only; neither an infinite tail bound nor Lean admission."""
from fractions import Fraction as F
from itertools import product
from math import comb, factorial
from pathlib import Path
import json
import subprocess
import sys
import unittest

import reciprocal_moment_energy as m


def inner(p, q, sigma=F(1,3)):
    return sum((a*b/(2*i+2*j+3-2*sigma)
                for i,a in enumerate(p) for j,b in enumerate(q)), F(0))


def solve(A, b):
    a = [list(row)+[v] for row,v in zip(A,b)]
    n = len(a)
    for i in range(n):
        pivot = a[i][i]
        if not pivot:
            raise ValueError('zero pivot')
        a[i] = [v/pivot for v in a[i]]
        for j in range(n):
            if j != i:
                c = a[j][i]
                a[j] = [u-c*v for u,v in zip(a[j],a[i])]
    return [row[-1] for row in a]


def determinant(A):
    a = [list(row) for row in A]
    out = F(1)
    for i in range(len(a)):
        p = a[i][i]
        out *= p
        for j in range(i+1,len(a)):
            r = a[j][i]/p
            a[j] = [x-r*y for x,y in zip(a[j],a[i])]
    return out


def rising(a,n):
    out = F(1)
    for i in range(n):
        out *= a+i
    return out


class MomentTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.cert = m.certificate(32, bits=72)
        cls.moments = m.reciprocal_moments(8, 240)

    def test_interval_operations(self):
        a,b = m.Bounds(F(-2),F(3)),m.Bounds(F(4),F(5))
        self.assertEqual(a.square(),m.Bounds(F(0),F(9)))
        self.assertEqual(a.mul(b),m.Bounds(F(-10),F(15)))
        self.assertEqual(b.reciprocal(),m.Bounds(F(1,5),F(1,4)))
        self.assertEqual(a.scale(-2),m.Bounds(F(-6),F(4)))
        with self.assertRaises(ZeroDivisionError): a.reciprocal()
        with self.assertRaises(ValueError): m.Bounds(F(2),F(1))

    def test_outward_rounding(self):
        for a,b in product(range(-8,9),repeat=2):
            x = m.Bounds(F(min(a,b),7),F(max(a,b),7))
            y=x.outward(16)
            self.assertLessEqual(y.lo,x.lo)
            self.assertGreaterEqual(y.hi,x.hi)

    def test_machin_tangent_branch(self):
        # tan(4 atan(1/5))=120/119; subtract atan(1/239) -> tan=1.
        t=F(1,5)
        t=2*t/(1-t*t)
        t=2*t/(1-t*t)
        self.assertEqual(t,F(120,119))
        self.assertEqual((t-F(1,239))/(1+t/F(239)),1)
        # 0<4 atan(1/5)-atan(1/239)<4/5<pi/2 (pi>3).
        self.assertGreater(4*(F(1,5)-F(1,375))-F(1,239),0)

    def test_arctan_nested_and_pi_width(self):
        for q in [5,239]:
            for n in range(1,9):
                a,b=m.atan_reciprocal(q,n),m.atan_reciprocal(q,n+1)
                self.assertLessEqual(a.lo,b.lo)
                self.assertGreaterEqual(a.hi,b.hi)
        for bits in [16,64,192]:
            a=m.pi_bounds(bits)
            self.assertLess(a.hi-a.lo,F(1,1<<bits))
        a=m.pi_bounds(64)
        self.assertGreater(a.lo,F(3141592653589793,10**15))
        self.assertLess(a.hi,F(3141592653589794,10**15))

    def test_bernoulli_values_and_odd_zeros(self):
        b=m.bernoulli_numbers(40)
        for n,v in {0:F(1),1:F(-1,2),2:F(1,6),4:F(-1,30),6:F(1,42),
                    8:F(-1,30),10:F(5,66),12:F(-691,2730)}.items():
            self.assertEqual(b[n],v)
        for n in range(3,40,2): self.assertEqual(b[n],0)

    def test_jacobi_low_degrees(self):
        self.assertEqual(m.jacobi_coefficients(0),[F(1)])
        self.assertEqual(m.jacobi_coefficients(1),[F(-7,6),F(13,6)])
        self.assertEqual(m.jacobi_coefficients(2,F(1,2)),[F(1),F(-6),F(6)])
        for n in range(15): self.assertEqual(sum(m.jacobi_coefficients(n)),1)

    def test_orthogonality_exact(self):
        for sigma in [F(1,2),F(1,3),F(1,4),F(1,8),F(1,20)]:
            p=[m.jacobi_coefficients(n,sigma) for n in range(11)]
            for i in range(11):
                for j in range(11):
                    expected=F(1)/(4*i+3-2*sigma) if i==j else F(0)
                    self.assertEqual(inner(p[i],p[j],sigma),expected)

    def test_cauchy_determinants(self):
        for sigma in [F(1,2),F(1,3),F(1,7)]:
            for size in range(1,8):
                A=m.gram(size,sigma)
                self.assertEqual(determinant(A),m.gram_determinant(size,sigma))
                self.assertGreater(determinant(A),0)

    def test_exact_quadratic_inverse(self):
        for size in range(1,8):
            for sigma in [F(1,2),F(1,3),F(1,9)]:
                data=[F((-1)**j,j+2) for j in range(size)]
                sol=solve(m.gram(size,sigma),data)
                self.assertEqual(sum((a*b for a,b in zip(data,sol)),F(0)),
                                 m.exact_projection_energy(data,sigma))
        for data in product([-1,0,1],repeat=4):
            self.assertGreaterEqual(m.exact_projection_energy(data),0)

    def test_monotone_finite_energy(self):
        last=F(0)
        for row in self.cert['coefficients']:
            low=F(row['partial_energy']['lower'])
            self.assertGreaterEqual(low,last)
            self.assertGreaterEqual(F(row['energy_term']['lower']),0)
            last=low

    def test_damping_direction(self):
        values=[m.certificate(12,s,bits=64) for s in [F(1,2),F(1,3),F(1,4)]]
        self.assertLess(F(values[0]['partial_energy']['upper']),F(values[1]['partial_energy']['lower']))
        self.assertLess(F(values[1]['partial_energy']['upper']),F(values[2]['partial_energy']['lower']))
        self.assertEqual(values[0]['moments'],values[1]['moments'])

    def test_first_polynomials_in_inverse_pi_squared(self):
        b=m.bernoulli_numbers(6)
        expected=[[F(2)],[F(-7,3),F(195,14)],
                  [F(91,36),F(-1235,28),F(16625,88)]]
        for n in range(3):
            c=[]
            for j,p in enumerate(m.jacobi_coefficients(n)):
                k=j+1
                e=F(2*factorial(2*k),2**(2*k))/abs(b[2*k])
                c.append(p*e/(F(4*j+3,2)*(2*j+2)))
            self.assertEqual(c,expected[n])

    def test_degree_zero_identity(self):
        pi=m.pi_bounds(180)
        q=pi.square().square().reciprocal().scale(F(28,3))
        a=m.certificate(0,bits=96)['partial_energy']
        self.assertTrue(q.overlaps(m.Bounds(F(a['lower']),F(a['upper']))))

    def test_independent_positive_zeta_series(self):
        for j in range(6):
            s=2*j+2; N=128
            low=sum((F(1,n**s) for n in range(1,N+1)),F(0))
            tail=F(1,(s-1)*N**(s-1))
            z=m.Bounds(low,low+tail).reciprocal().scale(1/(F(4*j+3,2)*s))
            self.assertTrue(z.overlaps(self.moments[j]))

    def test_independent_signed_mobius_series(self):
        for j in range(6):
            s=2*j+2; N=128
            total=sum((F(m.moebius_trial(n),n**s) for n in range(1,N+1)),F(0))
            tail=F(1,(s-1)*N**(s-1))
            z=m.Bounds(total-tail,total+tail).scale(1/(F(4*j+3,2)*s))
            self.assertTrue(z.overlaps(self.moments[j]))

    def test_recording_endpoint_zero(self):
        for j in range(5):
            a=m.recording_moment(j,1)
            self.assertTrue(a['finite_recording_moment'].contains(0))
            self.assertGreater(a['coefficient_term'].lo,0)
            self.assertLess(a['weighted_prefix_endpoint'].hi,0)
            self.assertGreater(a['mertens_endpoint'].lo,0)

    def test_real_cutoff_moments_and_tail(self):
        for R in [F(3,2),F(7,2),F(17,2),F(16),F(64)]:
            for j in range(5):
                a=m.recording_moment(j,R)
                v=a['finite_recording_moment']; e=a['infinite_moment_tail_allowance']
                self.assertGreater(e.lo,0)
                self.assertTrue(m.Bounds(v.lo-e.hi,v.hi+e.hi).overlaps(self.moments[j]))

    def test_independent_atom_recording(self):
        for R in [F(7,2),F(17,2),F(16)]:
            for j in range(3):
                z,s=F(4*j+3,2),2*j+2
                rz=m.inverse_sqrt(R,160).scale(R**(-(2*j+1)))
                total=m.Bounds.point(0)
                for n in range(1,R.numerator//R.denominator+1):
                    invn=m.inverse_sqrt(n,160)
                    nz=invn.scale(F(1,n**(2*j+1)))
                    v=invn.mul(nz.add(rz.scale(-1))).scale(2/z)
                    v=v.add(m.Bounds.point(-2*(F(1,n**s)-R**(-s))/s))
                    total=total.add(v.scale(m.moebius_trial(n)))
                self.assertTrue(total.overlaps(m.recording_moment(j,R)['finite_recording_moment']))

    def test_orthogonal_invisible_mode(self):
        # The first N+1 moments cannot bound an unobserved mode's norm.
        for N in range(8):
            p=m.jacobi_coefficients(N+1)
            for j in range(N+1):
                self.assertEqual(inner(p,[F(0)]*j+[F(1)]),0)
            self.assertEqual(inner(p,p),F(1)/(4*(N+1)+F(7,3)))

    def test_complete_comparison_growth(self):
        # Smooth comparison W_*(t)=2(exp(t/2)-1); its moments are rational.
        energies=[]
        for N in [4,16,64]:
            data=[2*(F(1,2*j+1)-1/F(4*j+3,2)) for j in range(N+1)]
            energies.append(m.exact_projection_energy(data))
        self.assertLess(energies[0],energies[1])
        self.assertLess(energies[1],energies[2])
        self.assertGreater(energies[2],10)
        for n in range(16):
            p=m.jacobi_coefficients(n)
            for lam in [F(1,2),F(3,4)]:
                direct=sum((v/(2*(j+lam)) for j,v in enumerate(p)),F(0))
                closed=F((-1)**n,2)*rising(F(7,6)-lam,n)/rising(lam,n+1)
                self.assertEqual(direct,closed)

    def test_inadequate_precision_rejected(self):
        with self.assertRaisesRegex(ArithmeticError,'cancellation'):
            m.certificate(12,bits=64,work_bits=16)

    def test_precision_refinement_overlap(self):
        a=m.certificate(12,bits=40)
        b=m.certificate(12,bits=96)
        for x,y in zip(a['coefficients'],b['coefficients']):
            p,q=x['d'],y['d']
            self.assertTrue(m.Bounds(F(p['lower']),F(p['upper'])).overlaps(
                m.Bounds(F(q['lower']),F(q['upper']))))

    def test_validation_and_no_numeric_key_alias(self):
        for value in [True,F(16),16.0,'16',-1,257]:
            with self.assertRaises((ValueError,TypeError)):
                m.certificate(value)
        for value in [True,F(64),64.0,0,257]:
            with self.assertRaises((ValueError,TypeError)):
                m.certificate(1,bits=value)
        for value in [True,0,F(-1,3),F(2,3),0.333]:
            with self.assertRaises((ValueError,TypeError)):
                m.certificate(1,sigma=value)
        m.pi_bounds(64)
        with self.assertRaises(ValueError): m.pi_bounds(F(64))
        with self.assertRaises(ValueError): m.recording_moment(0,F(1,2))

    def test_finite_not_upper_scope(self):
        self.assertFalse(self.cert['uniform_core_bound_proved'])
        self.assertEqual(self.cert['coefficient_tail_bound'],'UNPAID')
        self.assertIn('NOT an upper bound',self.cert['energy_interpretation'])

    def test_cli_invalid_and_valid(self):
        script=str(Path(m.__file__).resolve())
        bad=subprocess.run([sys.executable,'-B',script,'--sigma','0'],capture_output=True,text=True)
        self.assertEqual(bad.returncode,2)
        ok=subprocess.run([sys.executable,'-B',script,'--degree','2','--bits','48'],capture_output=True,text=True)
        self.assertEqual(ok.returncode,0,ok.stderr)
        self.assertEqual(json.loads(ok.stdout)['highest_zeta_argument'],6)


if __name__=='__main__': unittest.main()
