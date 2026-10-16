#!/usr/bin/env python3
"""Finite exact and interval controls; not a native or all-scale proof replay."""
from fractions import Fraction as Q
from itertools import product
from pathlib import Path
import json
import subprocess
import sys
import unittest
from unittest.mock import patch

import bessel_prefix_defect as m


class PrefixDefectTests(unittest.TestCase):
    def test_constants(self):
        self.assertTrue(all(m.budget_certificate()['checks'].values()))
        self.assertFalse(m.budget_certificate()['uniform_remaining_defect_energy_proved'])

    def test_all_degree_shell_gates(self):
        for j in range(1,101):
            D=1<<j
            p=m.c.shell_plan(D)
            U=p['mobius_input_limit']; K=p['closed_source_limit']
            self.assertTrue(2<=U<=D)
            self.assertLessEqual(U**3,K)
            self.assertLess(K,(U+1)**3)
            for n in (D,2*D-1):
                self.assertLessEqual(U**3,4*n*n)
                self.assertLess(n*n,(U+1)**3)

    def test_degree_plan_boundaries(self):
        for n in range(2,4097):
            p=m.degree_plan(n)
            self.assertLessEqual(p['first_degree'],n)
            self.assertGreaterEqual(p['last_degree'],n)

    def test_no_source_query_above_prefix(self):
        for D in (2,4,8,16,32):
            U=m.c.shell_plan(D)['mobius_input_limit']
            original=m.c.mobius_by_factorization
            calls=[]
            def guard(k):
                calls.append(k)
                if k>U:
                    raise AssertionError('unpaid source query')
                return original(k)
            with patch.object(m.c,'mobius_by_factorization',guard):
                packet=m.compile_defect(D)
            self.assertEqual(calls,list(range(1,U+1)))
            self.assertEqual(len(packet.full),packet.limit+1)

    def test_defect_direct_divisor_formula(self):
        for D in (2,4,8,16):
            p=m.compile_defect(D)
            for k in range(1,p.limit+1):
                direct=sum(p.short[d] for d in range(1,min(k,p.cutoff)+1) if k%d==0)-(k==1)
                self.assertEqual(direct,p.defect[k])

    def test_complete_actual_source(self):
        for D in (2,4,8,16,32):
            p=m.compile_defect(D)
            mu=[0]+[m.c.mobius_by_factorization(k) for k in range(1,p.limit+1)]
            self.assertEqual(p.full,tuple(mu))
            self.assertEqual(p.long,tuple(mu[k] if k>p.cutoff else 0 for k in range(p.limit+1)))

    def test_quadratic_support(self):
        for D in (2,4,8,16,32):
            p=m.compile_defect(D)
            self.assertFalse(any(p.quadratic[:min(p.limit+1,(p.cutoff+1)**2)]))
            self.assertFalse(any(p.long[:p.cutoff+1]))

    def test_full_remainder_outside_gate(self):
        for U in range(1,5):
            K=(U+1)**3
            mu=[0]+[m.c.mobius_by_factorization(k) for k in range(1,K+1)]
            a=mu[:U+1]+[0]*(K-U)
            eta=m.c.dirichlet_convolution(a,[0]+[1]*K,K); eta[1]-=1
            ae=m.c.dirichlet_convolution(a,eta,K)
            ae2=m.c.dirichlet_convolution(ae,eta,K)
            e2=m.c.dirichlet_convolution(eta,eta,K)
            e3=m.c.dirichlet_convolution(e2,eta,K)
            tail=m.c.dirichlet_convolution(mu,e3,K)
            self.assertEqual([a[k]-ae[k]+ae2[k]-tail[k] for k in range(K+1)],mu)
        with self.assertRaises(ValueError):
            m.c.compile_prefix(8,1)

    def test_gate_failure_is_real(self):
        K=8; a=[0,1]+[0]*7
        eta=m.c.dirichlet_convolution(a,[0]+[1]*K,K); eta[1]-=1
        ae=m.c.dirichlet_convolution(a,eta,K)
        ae2=m.c.dirichlet_convolution(ae,eta,K)
        self.assertEqual(a[8]-ae[8]+ae2[8],1)
        self.assertEqual(m.c.mobius_by_factorization(8),0)

    def test_omitted_identity_defect_is_wrong(self):
        p=m.compile_defect(4)
        wrong=list(p.defect); wrong[1]+=1
        aew=m.c.dirichlet_convolution(p.short,wrong,p.limit)
        aew2=m.c.dirichlet_convolution(aew,wrong,p.limit)
        self.assertNotEqual(tuple(y-x for x,y in zip(aew,aew2)),p.long)

    def test_jacobi_atom_by_parts(self):
        for n in range(1,13):
            for k in range(1,13):
                a=[0]*(k+1); a[k]=1
                self.assertEqual(m.short_jacobi(n,a),m.atom_jacobi_by_parts(n,k))

    def test_jacobi_low_degrees(self):
        a=[0,1,-1]
        self.assertEqual(m.short_jacobi(0,a),Q(1,4))
        self.assertEqual(m.jacobi_coefficients(1),[-Q(7,6),Q(13,6)])

    def test_signed_linearity_and_bound(self):
        for U in range(2,5):
            for row in product((-1,0,1),repeat=U):
                a=[0]+list(row)
                for n in (U,U+1,U+3):
                    d=m.short_jacobi(n,a)
                    independent=sum(a[k]*m.atom_jacobi_by_parts(n,k) for k in range(1,U+1))
                    self.assertEqual(d,independent)
                    self.assertLessEqual(abs(d),m.finite_prefix_envelope(n,a).hi)

    def test_actual_moving_prefix(self):
        for n in range(2,33):
            U=m.degree_plan(n)['mobius_input_limit']
            a=[0]+[m.c.mobius_by_factorization(k) for k in range(1,U+1)]
            self.assertLessEqual(abs(m.short_jacobi(n,a)),m.finite_prefix_envelope(n,a).hi)

    def test_joint_squares_keep_mixed_terms(self):
        for s,l,q in product(map(Q,(-2,-1,0,1,2)),repeat=3):
            v=q-l
            self.assertEqual(v*v,l*l+q*q-2*l*q)
            self.assertEqual((s+v)**2,s*s+v*v+2*s*v)
        self.assertEqual((Q(1)-Q(1))**2,0)
        self.assertNotEqual(Q(1)**2+Q(1)**2,0)

    def test_growth_frontier_is_not_zero_exponent(self):
        self.assertEqual(2*(-Q(4,3)+Q(2,3)/2)+1,-1)
        self.assertGreater(2*(-Q(4,3)+Q(3,4)/2)+1,-1)
        self.assertLess(2*(-Q(4,3)+Q(1,2)/2)+1,-1)

    def test_actual_integrals(self):
        p=m.compile_defect(2)
        for n in (2,3):
            rec=m.degree_record(n,p,32)
            self.assertTrue(all(rec['checks'].values()))
            self.assertEqual(rec['long_source_range'],[3,n*n])
            self.assertLessEqual(Q(rec['intervals']['long_squared']['lower']),Q(rec['intervals']['long_squared']['upper']))

    def test_actual_prefix_not_zero(self):
        rec=m.degree_record(2,m.compile_defect(2),32)
        v=rec['intervals']['short_bessel']
        self.assertGreater(Q(v['lower']),0)
        self.assertFalse(Q(v['lower'])<=0<=Q(v['upper']))

    def test_nilpotence_is_not_a_uniform_norm(self):
        for R in range(1,65):
            v=[Q(R*R),Q(-R),Q(1)]
            image=[v[0]+R*v[1],v[1]+R*v[2],v[2]]
            self.assertEqual(image,[0,0,1])
            self.assertEqual(sum(x*x for x in v),1+R*R+R**4)
        p=m.compile_defect(4)
        for k in range(p.cutoff+1,p.limit+1):
            if all(k%d for d in range(2,k)):
                self.assertEqual(p.defect[k],1)

    def test_wrong_types(self):
        for bad in (True,2.0,Q(2),0,-1):
            with self.assertRaises((ValueError,TypeError)):
                m.degree_plan(bad)
        for bad in (True,2.0):
            with self.assertRaises((ValueError,TypeError)):
                m.short_jacobi(2,[0,bad])
        with self.assertRaises(ValueError):
            m.finite_prefix_envelope(2,[0,1,-1,1])
        with self.assertRaises(ValueError):
            m.short_jacobi(2,[0,2])

    def test_shell_outside_resource_guard(self):
        with self.assertRaises(ValueError):
            m.compile_defect(256)
        with self.assertRaises(ValueError):
            m.degree_record(4,m.compile_defect(2))

    def test_cli(self):
        script=Path(__file__).with_name('bessel_prefix_defect.py')
        run=subprocess.run([sys.executable,'-B',str(script),'--shell','2'],capture_output=True,text=True)
        self.assertEqual(run.returncode,0,run.stderr)
        data=json.loads(run.stdout)
        self.assertFalse(data['uniform_defect_bound_proved'])
        self.assertFalse(data['records'][0]['independent_full_source_validation'])
        self.assertEqual(data['records'][0]['degrees'],[])

    def test_cli_rejects_invalid_scope(self):
        script=Path(__file__).with_name('bessel_prefix_defect.py')
        for args in (['--shell','3'],['--bits','8'],['--shell','32','--integrals']):
            run=subprocess.run([sys.executable,'-B',str(script),*args],capture_output=True,text=True)
            self.assertNotEqual(run.returncode,0)
            self.assertEqual(run.stdout,'')


if __name__=='__main__':
    unittest.main()
