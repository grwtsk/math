#!/usr/bin/env python3
"""Finite exact tests; no uniform Bessel/Jacobi energy admission."""
from fractions import Fraction as Q
from itertools import product
from math import comb
from pathlib import Path
import json
import subprocess
import sys
import unittest

import bessel_packet_integrals as b
import bessel_mobius_packet_compiler as c


def power(a, exponent, count):
    """Independent formal power using A*C'=exponent*A'*C, A(0)=1."""
    out = [Q(1)]
    for k in range(1,count):
        out.append(sum((((exponent+1)*i-k)*a[i]*out[k-i]
                        for i in range(1,k+1)),Q(0))/k)
    return out


def expression_coefficients(n,count):
    A = [Q(comb(2*k,k),4**k*(2*k+1)) for k in range(count)]
    pref = b.multiply(power(A,Q(2,3),count),
                      power([Q(1),Q(-1)]+[Q(0)]*(count-2),Q(-1,4),count),count)
    nu = n+Q(7,12)
    arg = [Q(0)]+[-nu**2*x for x in b.multiply(A,A,count-1)]
    term = [Q(1)]+[Q(0)]*(count-1)
    total = term[:]
    for k in range(1,count):
        term = [x/(k*(k+Q(1,6))) for x in b.multiply(term,arg,count)]
        total = [x+y for x,y in zip(total,term)]
    return [b.normalization(n)*v for v in b.multiply(pref,total,count)]


class IntegralTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.shell2 = b.shell(2,32)
        cls.calc = b.KernelIntegral(2,32,100)

    def test_01_rational_interval_inclusion(self):
        for a,b0,c0,d in ((-2,3,-5,7),(1,2,3,4),(-3,-1,2,5)):
            x,y = b.Ball(Q(a),Q(b0)),b.Ball(Q(c0),Q(d))
            z=x*y
            for s,t in product((Q(a),Q(a+b0,2),Q(b0)),(Q(c0),Q(c0+d,2),Q(d))):
                self.assertLessEqual(z.lo,s*t);self.assertLessEqual(s*t,z.hi)
            self.assertGreaterEqual(x.square().lo,0)

    def test_02_outward_rounding(self):
        for v in (Q(-1,3),Q(1,7),Q(15,16)):
            z=b.Ball.point(v).rounded(8)
            self.assertLessEqual(z.lo,v);self.assertLessEqual(v,z.hi)
            self.assertLessEqual(z.hi-z.lo,Q(1,256))

    def test_03_root_power_certificates(self):
        for order in (2,4):
            for x in (Q(1,225),Q(1,16),Q(1,256),Q(3,5),Q(4)):
                z=b.positive_root(x,order,64)
                self.assertLessEqual(z.lo**order,x);self.assertLessEqual(x,z.hi**order)
        self.assertEqual(b.positive_root(Q(1,256),4,32),b.Ball.point(Q(1,4)))

    def test_04_potential_constant(self):
        self.assertEqual(b.potential(1)[0],Q(35,432))
        A=[Q(1),Q(1,6),Q(3,40),Q(5,112)]
        inv2=power(A,Q(-2),4)
        self.assertEqual(b.potential(3),tuple(Q(1,16)-inv2[k+1]/18 for k in range(3)))

    def test_05_ode_matches_independent_bessel_composition(self):
        for n in range(2,13):
            self.assertEqual(b.kernel_coefficients(n,9),expression_coefficients(n,10))

    def test_06_frequency_shift_and_endpoint(self):
        for n in range(2,33):
            p=b.kernel_coefficients(n,1)
            jacobi_derivative=-Q(6,7)*n*(n+Q(7,6))*p[0]
            self.assertEqual(p[1]-jacobi_derivative,Q(5,72)*p[0])
            self.assertNotEqual(p[1],jacobi_derivative)

    def test_07_ode_all_coefficients(self):
        for n in (2,5,9):
            a=b.kernel_coefficients(n,17);r=b.potential(17)
            for m in range(17):
                residual=(m+1)*(m+Q(7,6))*a[m+1]+(n*(n+Q(7,6))-m*(m+Q(7,6)))*a[m]
                residual-=sum((r[k]*a[m-k] for k in range(m+1)),Q(0))
                self.assertEqual(residual,0)

    def test_08_valid_complex_disks(self):
        for n in range(2,130):
            rho,q,M=b.disk_parameters(n)
            self.assertTrue(Q(1,n)<rho<1)
            self.assertLessEqual(q,Q(2,3))
            self.assertGreater(M,abs(b.normalization(n)))

    def test_09_cauchy_derivative_tail(self):
        for n in (2,3,8,31):
            rho,q,M=b.disk_parameters(n)
            for L in (2,7,20):
                exact=b.derivative_tail(n,L)
                partial=M/rho*sum((k*q**(k-1) for k in range(L+1,L+51)),Q(0))
                self.assertGreater(exact,partial)
                self.assertGreater(exact,b.derivative_tail(n,L+1))

    def test_10_selected_order_meets_budget(self):
        for n in (2,3,8,31):
            L=b.choose_order(n,48)
            self.assertLessEqual(b.derivative_tail(n,L),Q(1,1<<48))
            if L>1:self.assertGreater(b.derivative_tail(n,L-1),Q(1,1<<48))

    def test_11_insufficient_order_rejected(self):
        with self.assertRaises(ArithmeticError):b.KernelIntegral(2,32,1,order=5)
        with self.assertRaises(ArithmeticError):b.choose_order(2,100,max_order=3)

    def test_12_primitive_differentiation(self):
        calc=self.calc
        for r,v in enumerate(calc.q):
            self.assertEqual(calc.F[r+1]*(r+1),v)
            self.assertEqual(calc.H[r]*(r+Q(3,4)),v)

    def test_13_touching_atom_and_future_support(self):
        self.assertEqual(self.calc.atom(4),b.Ball.point(0))
        self.assertEqual(self.calc.atom(5),b.Ball.point(0))
        self.assertGreater(self.calc.atom(1).lo,Q(8,100))

    def test_14_finite_actual_coefficients(self):
        records=self.shell2['records']
        for row in records:self.assertTrue(all(row['checks'].values()))
        self.assertGreater(Q(records[0]['intervals']['t']['lower']),Q(32,1000))
        self.assertLess(Q(records[0]['intervals']['t']['upper']),Q(34,1000))
        self.assertGreater(Q(records[1]['intervals']['t']['lower']),Q(4,1000))

    def test_15_carry_deletion_changes_actual_coefficient(self):
        row=self.shell2['records'][0]
        self.assertGreater(Q(row['intervals']['discarded_carry_control']['lower']),Q(8,100))
        t=row['intervals']['t'];a=row['intervals']['discarded_carry_control']
        self.assertLess(Q(t['upper'])-Q(a['lower']),0)
        self.assertGreater(Q(t['lower']),0)

    def test_16_actual_six_term_cancellation(self):
        e=self.shell2['energies']
        self.assertGreater(Q(e['diagonal_only']['lower']),Q(6,5))
        self.assertLess(Q(e['joint']['upper']),Q(12,1000))
        self.assertLess(Q(e['mixed']['upper']),-Q(6,5))
        self.assertTrue(Q(e['identity_residual']['lower'])<=0<=Q(e['identity_residual']['upper']))

    def test_17_source_mutation_not_erased(self):
        mu=[0,1,-1,-1,0]
        roots=[b.Ball.point(0)]+[self.calc.atom(k) for k in range(1,5)]
        changed=mu[:];changed[3]=1
        delta=b.contract(changed,roots,96)-b.contract(mu,roots,96)
        self.assertFalse(delta.zero_inside())
        self.assertTrue((delta-2*roots[3]).zero_inside())

    def test_18_remainder_propagates_arbitrary_test_coefficients(self):
        roots=[b.Ball.point(0)]+[self.calc.atom(k) for k in range(1,5)]
        for a in product((-1,0,1),repeat=3):
            row=[0,*a,0]
            self.assertTrue((b.contract(row,roots,128)-self.calc.from_cells(row)).zero_inside())

    def test_19_precision_refinement_overlaps(self):
        other=b.KernelIntegral(2,48,100)
        for k in range(1,4):
            a,z=self.calc.atom(k),other.atom(k)
            self.assertLessEqual(max(a.lo,z.lo),min(a.hi,z.hi))
            self.assertLess(z.hi-z.lo,a.hi-a.lo)

    def test_20_strict_source_gate(self):
        bad=c.CubicPacket(9,1,c.compile_prefix(9).branches)
        with self.assertRaises(ValueError):b.record(2,bad,32)
        with self.assertRaises(ValueError):self.calc.from_cells([0,1,-1,-1])

    def test_21_exact_input_validation(self):
        b.potential(1) # warm cache, then test equal-value wrong types
        for x in (True,Q(1),1.0):
            with self.assertRaises(ValueError):b.potential(x)
        with self.assertRaises(TypeError):b.Ball.point(1.0)
        with self.assertRaises(ValueError):b.KernelIntegral(1,32)
        with self.assertRaises(ValueError):b.KernelIntegral(65,32)
        with self.assertRaises(ValueError):b.positive_root(Q(0),2,32)

    def test_22_cli_rejects_invalid_shell(self):
        command=[sys.executable,'-B',str(Path(__file__).with_name('bessel_packet_integrals.py')),'--shell','3']
        result=subprocess.run(command,capture_output=True,text=True,check=False)
        self.assertEqual(result.returncode,2)
        self.assertIn('power of two',result.stderr)
        self.assertEqual(result.stdout,'')


if __name__=='__main__':
    unittest.main()
