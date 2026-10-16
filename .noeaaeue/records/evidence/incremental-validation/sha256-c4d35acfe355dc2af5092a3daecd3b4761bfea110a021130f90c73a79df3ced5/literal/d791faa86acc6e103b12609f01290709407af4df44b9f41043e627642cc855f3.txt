#!/usr/bin/env python3
"""Positive and hostile finite checks for reflected_zeta_cover.

Analytic identity, Cauchy/Rouche and reflection proofs are written separately.
Finite tests and certificate replay are not a Lean-kernel admission.
"""
from __future__ import annotations
from copy import deepcopy
from fractions import Fraction as Q
from itertools import product
from pathlib import Path
import json
import subprocess
import sys
import unittest
import reflected_zeta_cover as z


def overlap(a:z.Interval,b:z.Interval):
    return max(a.lo,b.lo)<=min(a.hi,b.hi)


def complex_overlap(a:z.ComplexBox,b:z.ComplexBox):
    return overlap(a.re,b.re) and overlap(a.im,b.im)


class ElementaryTests(unittest.TestCase):
    def test_type_policy(self):
        for bad in (True,False,0.5,float('inf'),complex(1,2)):
            with self.assertRaises((ValueError,TypeError)):
                z.rational(bad)
        for bad in (True,Q(2),2.0):
            with self.assertRaises((ValueError,TypeError)):
                z.log_integer(bad,80)
        for bad in (True,63,257):
            with self.assertRaises((ValueError,TypeError)):
                z.Parameters(bits=bad)
        with self.assertRaises(ValueError):
            z.Parameters(radius=Q(1,3))
        z.bernoulli_even(1)
        with self.assertRaises(ValueError):z.bernoulli_even(True)
    def test_interval_arithmetic(self):
        for a,b,c,d in product(range(-2,3),repeat=4):
            if a>b or c>d:continue
            x,y=z.Interval(Q(a),Q(b)),z.Interval(Q(c),Q(d))
            for u,v in product([Q(a),Q(a+b,2),Q(b)],[Q(c),Q(c+d,2),Q(d)]):
                self.assertTrue((x+y).contains(u+v))
                self.assertTrue((x-y).contains(u-v))
                self.assertTrue((x*y).contains(u*v))
    def test_rounding_is_outward(self):
        for n in range(-31,32):
            x=z.Interval(Q(n,37),Q(n+1,37))
            y=x.rounded(8)
            self.assertLessEqual(y.lo,x.lo);self.assertGreaterEqual(y.hi,x.hi)
            self.assertLess(y.hi-y.lo,(x.hi-x.lo)+Q(2,256))
    def test_division_rejects_zero(self):
        with self.assertRaises(ZeroDivisionError):
            _=z.Interval.point(1)/z.Interval(-1,1)
        self.assertTrue((z.Interval(-3,-2)/z.Interval(2,3)).contains(-1))
    def test_complex_products(self):
        for a,b,c,d in product(range(-2,3),repeat=4):
            w=z.ComplexBox.point(a,b)*z.ComplexBox.point(c,d)
            self.assertEqual(w.re,z.Interval.point(a*c-b*d))
            self.assertEqual(w.im,z.Interval.point(a*d+b*c))
    def test_log_brackets(self):
        l=z.log_integer(2,80)
        self.assertLess(Q(693147,1000000),l.lo)
        self.assertLess(l.hi,Q(693148,1000000))
        self.assertEqual(z.log_integer(1,80),z.Interval.point(0))
        self.assertTrue(overlap(z.log_integer(8,80),3*l))
        for n in range(2,33):
            low,high=z.log_integer(n,64),z.log_integer(n,112)
            self.assertLessEqual(low.lo,high.lo)
            self.assertLessEqual(high.hi,low.hi)
    def test_exponential_series(self):
        self.assertEqual(z.complex_exp(z.ComplexBox.point(0),80),z.ComplexBox.point(1))
        e=z.complex_exp(z.ComplexBox.point(1),80)
        self.assertLess(Q(271828,100000),e.re.lo)
        self.assertLess(e.re.hi,Q(271829,100000))
        for n in (2,3,7,16,31):
            a=z.complex_exp(z.ComplexBox(z.log_integer(n,96),z.Interval.point(0)),80)
            self.assertTrue(a.re.contains(n));self.assertTrue(a.im.contains(0))
    def test_conjugate_exponential(self):
        for r,t in [(Q(1,2),Q(7,3)),(Q(-2),Q(31)),(Q(0),Q(-4))]:
            x=z.ComplexBox.point(r,t)
            a=z.complex_exp(x,80).conjugate()
            b=z.complex_exp(x.conjugate(),80)
            self.assertEqual(a,b)
    def test_exact_bernoulli_coefficients(self):
        self.assertEqual(z.bernoulli_even(4),(Q(1,12),Q(-1,720),Q(1,30240),Q(-1,1209600)))
    def test_dyadic_margin(self):
        for n in range(1,41):
            for d in (1,3,7,13):
                value=Q(n,d);k=z.dyadic_floor_power(value)
                self.assertLessEqual(Q(2)**k,value)
                self.assertLess(value,Q(2)**(k+1))
        with self.assertRaises(ValueError):z.dyadic_floor_power(0)


class SourceTests(unittest.TestCase):
    def test_regularization_at_one(self):
        m=z.model(1,0)
        self.assertTrue(m.coefficients[0].re.contains(1))
        self.assertTrue(m.coefficients[0].im.contains(0))
        self.assertGreater(m.zero_free_margin(Q(1,16)),0)
    def test_distinct_euler_cutoffs(self):
        p1=z.Parameters(cutoff=32,euler_order=12)
        p2=z.Parameters(cutoff=48,euler_order=16)
        for x,t in [(Q(1),Q(0)),(Q(3,4),Q(3)),(Q(1,2),Q(113,8)),(Q(7,8),Q(32))]:
            a,b=z.model(x,t,p1),z.model(x,t,p2)
            a0,b0=a.coefficients[0],b.coefficients[0]
            ar=z.ComplexBox(a0.re.widen(a.euler_tail),a0.im.widen(a.euler_tail))
            br=z.ComplexBox(b0.re.widen(b.euler_tail),b0.im.widen(b.euler_tail))
            self.assertTrue(complex_overlap(ar,br))
    def test_complete_source_tail_constant(self):
        value=Q(33*4,6**24*32**23*23)
        for j in range(24):value*=Q(67,2)+j
        self.assertLess(value,Q(1,2**43))
        self.assertGreater(value,0)
    def test_centered_stack_reconstruction(self):
        a=z.model(Q(3,4),Q(10))
        shift=z.ComplexBox.point(Q(1,16),Q(1,32))
        value=z.ComplexBox.point(0)
        for coefficient in reversed(a.coefficients):
            value=(value*shift+coefficient).rounded(112)
        err=a.remainder(Q(3,32))
        value=z.ComplexBox(value.re.widen(err),value.im.widen(err))
        direct=z.model(Q(13,16),Q(321,32)).coefficients[0]
        self.assertTrue(complex_overlap(value,direct))
    def test_mode_completion_is_not_optional(self):
        # At s=1 an uncorrected (s-1)*sum k^-s is exactly zero, but F(1)=1.
        self.assertEqual((z.ComplexBox.point(1)-1)*123,z.ComplexBox.point(0))
        self.assertGreater(z.model(1,0).coefficients[0].lower_abs(),Q(9,10))
    def test_known_root_seeds_are_checked(self):
        roots=z.root_records(z.Parameters(),Q(32))
        self.assertEqual(len(roots),4)
        for root in roots:
            m=z.model(*map(Q,root['center']))
            r=Q(root['radius'])
            self.assertGreater(m.one_zero_margin(r),0)
            self.assertLess(m.zero_free_margin(r),0)
    def test_nonzero_boundary_does_not_exclude_zero(self):
        # Local synthetic analytic function f(z)=z has a nonzero circle boundary.
        coeff=(z.ComplexBox.point(0),z.ComplexBox.point(1),z.ComplexBox.point(0))
        m=z.LocalModel(Q(1,2),Q(0),z.Parameters(degree=2),coeff,Q(0),Q(0))
        self.assertLess(m.zero_free_margin(Q(1,4)),0)
        self.assertEqual(m.one_zero_margin(Q(1,4)),Q(1,4))
    def test_rouche_counts_multiplicity(self):
        # f(z)=z^2 cannot receive a one-zero certificate.
        coeff=(z.ComplexBox.point(0),z.ComplexBox.point(0),z.ComplexBox.point(1))
        m=z.LocalModel(Q(1,2),Q(0),z.Parameters(degree=2),coeff,Q(0),Q(0))
        self.assertLess(m.one_zero_margin(Q(1,4)),0)
    def test_global_domains_are_not_assumed(self):
        for x,t in [(Q(1,3),0),(Q(3,2),0),(Q(1,2),65)]:
            with self.assertRaises(ValueError):z.model(x,t)
        with self.assertRaises(ValueError):z.model(Q(1,2),0).remainder(Q(1,2))
        with self.assertRaises(ValueError):z.build_cover(33)
    def test_exact_reflection_and_symmetric_collision(self):
        for x,t in product([Q(1,4),Q(1,2),Q(3,4)],range(-2,3)):
            J=lambda p:(1-p[0],p[1])
            self.assertEqual(J(J((x,t))),(x,t))
        # F_lambda(s)=(s-1/2)^2-lambda is symmetric but off-line for lambda>0.
        lam=Q(1,16)
        self.assertEqual((Q(3,4)-Q(1,2))**2-lam,0)
        self.assertEqual((Q(1,4)-Q(1,2))**2-lam,0)
        self.assertNotEqual(Q(3,4),Q(1,2))


class CoverageTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.cert=z.build_cover(Q(1))
    def test_complete_small_cover(self):
        summary=z.verify_cover(self.cert)
        self.assertTrue(summary['verified'])
        self.assertEqual(summary['full_strip_zero_count'],0)
    def test_missing_leaf_is_rejected(self):
        r=deepcopy(self.cert);r['leaves'].pop()
        with self.assertRaises((ValueError,ArithmeticError)):z.verify_cover(r)
    def test_duplicate_leaf_is_rejected(self):
        r=deepcopy(self.cert);r['leaves'].append(deepcopy(r['leaves'][0]))
        with self.assertRaises(ValueError):z.verify_cover(r)
    def test_inflated_margin_is_rejected(self):
        r=deepcopy(self.cert);r['leaves'][0]['margin_power']=100
        with self.assertRaises(ArithmeticError):z.verify_cover(r)
    def test_wrong_domain_and_source(self):
        r=deepcopy(self.cert);r['domain'][0]='3/4'
        with self.assertRaises(ValueError):z.verify_cover(r)
        r=deepcopy(self.cert);r['function']='zeta(s)'
        with self.assertRaises(ValueError):z.verify_cover(r)
        r=deepcopy(self.cert);r['native_lean_admission']=True
        with self.assertRaises(ValueError):z.verify_cover(r)
    def test_scope_forgery_is_rejected(self):
        r=deepcopy(self.cert);r['RH_proved']=True
        with self.assertRaises(ValueError):z.verify_cover(r)
        r=deepcopy(self.cert);r['interpretation']='all heights'
        with self.assertRaises(ValueError):z.verify_cover(r)
    def test_resource_exhaustion_not_success(self):
        with self.assertRaises(ArithmeticError):z.build_cover(Q(1),max_depth=1)
        with self.assertRaises(ArithmeticError):z.build_cover(Q(1),max_leaves=1)
    def test_wrong_root_cell_is_rejected(self):
        r=deepcopy(self.cert)
        r['roots']=[dict(center=['1/2','1/2'],radius='1/16',margin_power=-100)]
        with self.assertRaises(ArithmeticError):z.verify_cover(r)
    def test_false_contains_disk_is_rejected(self):
        box=z.Rectangle(Q(1,2),1,14,15)
        self.assertFalse(box.inside_disk(Q(1,2),Q(113,8),Q(1,16)))
        box2=z.Rectangle(Q(1,2),Q(33,64),Q(903,64),Q(905,64))
        self.assertTrue(box2.inside_disk(Q(1,2),Q(113,8),Q(1,16)))
    def test_partition_geometry(self):
        box=z.Rectangle(Q(1,2),1,0,32)
        for _ in range(9):
            a,b=box.split()
            area=lambda r:(r.xmax-r.xmin)*(r.ymax-r.ymin)
            self.assertEqual(area(a)+area(b),area(box))
            self.assertTrue(a.xmax==b.xmin or a.ymax==b.ymin)
            box=a
    def test_cli_invalid_input(self):
        completed=subprocess.run([sys.executable,'-B',str(Path(z.__file__)),'--height','33'],capture_output=True,text=True)
        self.assertEqual(completed.returncode,2)
        self.assertIn('height',completed.stderr)


if __name__=='__main__':unittest.main()
