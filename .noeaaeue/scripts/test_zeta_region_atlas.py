#!/usr/bin/env python3
"""Exact tests; infinite analytic claims are proved separately in writing."""
from copy import deepcopy
from fractions import Fraction as Q
from itertools import product
import json
from pathlib import Path
import unittest
import zeta_region_atlas as z
import reflected_zeta_cover as r

class AtlasTests(unittest.TestCase):
    def local(self,c,b,a,error=Q(0)):
        coeff=tuple(r.ComplexBox.point(*v) for v in (c,b,a))
        return r.LocalModel(Q(1,2),Q(1),r.Parameters(),coeff,Q(0),error)
    def test_sqrt_exact_enclosures(self):
        for i in range(61):
            for den in (1,3,7,19):
                x=Q(i,den);v=z.sqrt_interval(x,24)
                self.assertLessEqual(v.lo*v.lo,x);self.assertGreaterEqual(v.hi*v.hi,x)
                self.assertLessEqual(v.hi-v.lo,Q(1,1<<24))
    def test_bad_numeric_inputs(self):
        for bad in (True,0.1,float('nan')):
            with self.assertRaises((ValueError,TypeError)): z.sqrt_interval(bad)
        with self.assertRaises(ValueError): z.sqrt_interval(-1)
        with self.assertRaises(ValueError): z.source_tail_schedule(1,0)
        with self.assertRaises(ValueError): z.source_tail_schedule(-1,Q(1,10))
    def test_complex_division(self):
        for a,b in product([(Q(1),Q(2)),(Q(0),Q(-3)),(Q(7),Q(0))],repeat=2):
            self.assertEqual(z.cmul(z.cdiv(a,b),b),a)
    def test_quadratic_value(self):
        c=((Q(1),Q(2)),(Q(-3),Q(1)),(Q(2),Q(-1)))
        for x,y in product(range(-3,4),repeat=2):
            v=z.polynomial_value(c,(Q(x),Q(y)))
            self.assertEqual(v,z.cadd(c[0],z.cadd(z.cmul(c[1],(Q(x),Q(y))),z.cmul(c[2],(Q(x*x-y*y),Q(2*x*y))))))
    def test_two_polynomial_roots_are_not_two_target_roots(self):
        # p=z(z-2): second approximate root is outside the local analytic disk.
        out=z.quadratic_islands(self.local((0,0),(-2,0),(1,0),Q(1,100)),Q(1,4))
        self.assertEqual(sum(b['target_zero_count']==1 for b in out['branches']),1)
        self.assertEqual(sum(b['disjoint_from_parent'] for b in out['branches']),1)
        far=next(b for b in out['branches'] if b['disjoint_from_parent'])
        self.assertIsNone(far['target_zero_count'])
    def test_collision_gate(self):
        out=z.quadratic_islands(self.local((0,0),(0,0),(1,0),Q(1,100)),Q(1,4))
        self.assertEqual(out['branches'],[])
        self.assertTrue(out['status'].startswith('UNRESOLVED'))
    def test_gate_equality_is_not_strict(self):
        # p=z²-1, |Delta|=4=4|a|E.
        out=z.quadratic_islands(self.local((-1,0),(0,0),(1,0),Q(1)),Q(1,4))
        self.assertEqual(Q(out['discriminant_gap']),0)
        self.assertFalse(out['branches'])
    def test_linear_degeneracy(self):
        self.assertFalse(z.quadratic_islands(self.local((0,0),(1,0),(0,0)),Q(1,4))['branches'])
    def test_necessary_cassini_inclusion_grid(self):
        # Fixed roots +-2, E=1/2; every tested member lies within 2E/d=1/4.
        for i,j in product(range(-48,49),range(-12,13)):
            x,y=Q(i,24),Q(j,24)
            d1=(x-2)**2+y*y;d2=(x+2)**2+y*y
            if d1*d2<=Q(1,4): self.assertLessEqual(min(d1,d2),Q(1,16))
    def test_circle_threshold_split(self):
        # Strictly above the split threshold, the midpoint belongs to the oval.
        self.assertLessEqual(Q(2)**4,Q(5)**2)
        out=z.quadratic_islands(self.local((-4,0),(0,0),(1,0),Q(5)),Q(1,4))
        self.assertLess(Q(out['discriminant_gap']),0)
        self.assertFalse(out['branches'])
    def test_no_rouche_existence_at_zero_margin(self):
        c=((Q(0),Q(0)),(Q(1),Q(0)),(Q(0),Q(0)))
        self.assertEqual(z.quadratic_rouche_margin(c,Q(1,10),(Q(0),Q(0)),Q(1,10)),0)
    def test_entire_coefficient_error_retained(self):
        local=self.local((1,0),(0,0),(0,0),Q(2))
        _,err=z.quadratic_data(local,Q(1,8));self.assertEqual(err,2)
    def test_source_schedule_global(self):
        for h in (Q(0),Q(3,2),Q(32),Q(64),Q(10**6),Q(3*10**12)):
            for b in (8,32,80,160):
                row=z.source_tail_schedule(h,Q(1,1<<b));m=row['euler_order'];N=row['cutoff']
                self.assertGreaterEqual(N,h+2*m+1)
                self.assertLessEqual(Q(row['remainder_bound']),Q(1,1<<b))
                if h>64: self.assertFalse(row['within_existing_numeric_profile'])
    def test_source_schedule_contraction(self):
        for h,m in product(range(0,17),range(1,25)):
            def B(j): return Q(4*(h+1)*(h+2*j+1),36**j*(2*j-1))
            self.assertLess(B(m+1),B(m)/18)
    def test_schedule_dominates_actual_profile(self):
        for h in (0,16,32,40,64):
            row=z.source_tail_schedule(h,Q(1,1<<32))
            par=r.Parameters(cutoff=row['cutoff'],euler_order=row['euler_order'])
            for s in (Q(1,2),Q(3,4),Q(1)):
                _,e=r.analytic_bounds(s,Q(h),par)
                self.assertLessEqual(e,Q(row['remainder_bound']))
    def test_unknown_atlas_cannot_claim_complete(self):
        rec=z.build_atlas(('1/2','1','0','1'),centers=(),max_depth=0)
        out=z.verify_atlas(rec)
        self.assertFalse(out['complete_zero_localization']);self.assertIsNone(out['positive_zero_count'])
        self.assertEqual(out['areas']['unresolved'],'1/2')
    def test_unsupported_height_rejected(self):
        with self.assertRaises(ValueError): z.build_atlas(('1/2','1','0','65'),centers=())
    def test_boolean_depth_rejected(self):
        with self.assertRaises(ValueError): z.build_atlas(('1/2','1','0','1'),centers=(),max_depth=True)
    def tiny(self): return z.build_atlas(('1/2','1','32','129/4'),centers=())
    def test_two_cell_bridge(self):
        out=z.verify_atlas(self.tiny());self.assertTrue(out['complete_zero_localization'])
        self.assertEqual(out['positive_zero_count'],0)
    def test_missing_leaf(self):
        rec=self.tiny();rec['leaves'].pop()
        with self.assertRaises((ValueError,ArithmeticError)): z.verify_atlas(rec)
    def test_duplicate_leaf(self):
        rec=self.tiny();rec['leaves'].append(deepcopy(rec['leaves'][0]))
        with self.assertRaises(ValueError): z.verify_atlas(rec)
    def test_inflated_margin(self):
        rec=self.tiny();rec['leaves'][0]['margin_power']=500
        with self.assertRaises(ArithmeticError): z.verify_atlas(rec)
    def test_fake_native_claim(self):
        rec=self.tiny();rec['native_lean_admission']=True
        with self.assertRaises(ValueError): z.verify_atlas(rec)
    def test_source_change(self):
        rec=self.tiny();rec['function']='zeta(s)'
        with self.assertRaises(ValueError): z.verify_atlas(rec)
    def test_extra_zero_count_field(self):
        rec=self.tiny();rec['positive_zero_count']=100
        with self.assertRaises(ValueError): z.verify_atlas(rec)
    def test_false_disk_containment(self):
        rec=z.build_atlas(('1/2','1','32','34'),centers=('527/16',),max_depth=0)
        rec['leaves']=[dict(path='',kind='root',root=0)]
        with self.assertRaises(ArithmeticError): z.verify_atlas(rec)
    def test_new_roots_replayed(self):
        for y in (Q(527,16),Q(601,16)):
            self.assertGreater(r.model(Q(1,2),y).one_zero_margin(Q(1,16)),1)
    def test_seam_gap_rejected(self):
        with self.assertRaises(ValueError):
            z.validate_chain(['1/2','1','0','32'],[{'domain':['1/2','1','129/4','40']}])
    def test_exact_closed_seams(self):
        self.assertEqual(z.validate_chain(['1/2','1','0','32'],
            [{'domain':['1/2','1','32','129/4']},{'domain':['1/2','1','129/4','40']}]),40)
    def test_duplicate_slab_rejected(self):
        with self.assertRaises(ValueError):
            z.validate_chain(['1/2','1','0','32'],[{'domain':['1/2','1','32','33']}]*2)
    def test_joined_fabricated_native_rejected(self):
        with self.assertRaises(ValueError):
            z.verify_joined(dict(schema='joined-zeta-atlas-v1',baseline={},slabs=[],native_lean_admission=True),Path('.'))
    def test_actual_island_contains_only_one_valid_branch(self):
        for y in (Q(113,8),Q(527,16),Q(601,16)):
            out=z.quadratic_islands(r.model(Q(1,2),y),Q(1,16))
            self.assertGreater(Q(out['discriminant_gap']),0)
            self.assertEqual(sum(b['target_zero_count']==1 for b in out['branches']),1)
            self.assertEqual(sum(b['disjoint_from_parent'] for b in out['branches']),1)

if __name__=='__main__': unittest.main()
