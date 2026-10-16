#!/usr/bin/env python3
"""Finite exact tests; general analytic proofs and the infinite target remain separate."""
from fractions import Fraction as Q
from itertools import product
from pathlib import Path
import json
import subprocess
import sys
import unittest
from unittest.mock import patch

import signed_residual_calculus as s
import bessel_bilinear_reduction as r
import bessel_mobius_packet_compiler as c
import bessel_packet_integrals as b
import bessel_prefix_defect as p


class GenericCorrectionTests(unittest.TestCase):
    def test_signed_covariance_complete_identity(self):
        for A in ([[1]], [[2,1],[1,3]], [[0,1],[1,1]]):
            size=len(A)
            for u in product((Q(1,3),Q(1),Q(2)),repeat=size):
                for residual in product((-1,0,1),repeat=size):
                    v=s.covariance_step(A,u,residual)
                    self.assertEqual(v.new_residual,v.quadratic)
                    self.assertEqual(v.cross,tuple(-x for x in residual))
                    self.assertLessEqual(s.norm_sq(v.new_residual),v.squared_norm_budget)

    def test_quadratic_remainder_cannot_be_deleted(self):
        v=s.covariance_step([[1]],[1],[1])
        self.assertEqual(v.increment,(Q(-1,2),))
        self.assertEqual(v.new_residual,(Q(1,4),))
        self.assertNotEqual(v.new_residual,(0,))

    def test_small_amplitude_destroys_contraction(self):
        v=s.covariance_step([[1]],[Q(1,1000)],[1])
        self.assertGreater(s.norm_sq(v.new_residual),1)
        self.assertEqual(v.new_residual,(Q(250000),))

    def test_invalid_covariance_inputs(self):
        for A,u,v in (([[1,2],[2,4]],[1,1],[1,1]),([[1]],[0],[1]),
                      ([[1,2]],[1],[1]),([[1]],[1],[True])):
            with self.assertRaises((ValueError,TypeError)):
                s.covariance_step(A,u,v)

    def test_regular_volterra_axis_and_equation(self):
        for exponent in (Q(-1,2),0,Q(1,6),1,3):
            for coeff in product((-1,0,1),repeat=3):
                primitive=s.regular_primitive_polynomial(exponent,coeff)
                mean=s.weighted_mean_polynomial(exponent,coeff)
                self.assertEqual(primitive[0],0)
                self.assertEqual(s.derivative(primitive)[0],Q(coeff[0])/(exponent+1))
                for x in (0,Q(1,3),1,2):
                    self.assertEqual(x*s.evaluate(s.derivative(primitive),x)
                                     +exponent*s.evaluate(primitive,x), x*s.evaluate(coeff,x))
                    self.assertEqual(s.evaluate(primitive,x),x*s.evaluate(mean,x))

    def test_axis_integrability_is_required(self):
        for exponent in (-1,-2):
            with self.assertRaises(ValueError):
                s.weighted_mean_polynomial(exponent,[1])
        with self.assertRaises(TypeError):
            s.weighted_mean_polynomial(1.0,[1])

    def test_newton_square_for_arbitrary_finite_data(self):
        for values in product((-1,0,1),repeat=4):
            a=(0,)+values
            eta=s.arithmetic_defect(a)
            updated=s.newton_inverse_step(a)
            self.assertEqual(s.arithmetic_defect(updated),tuple(-x for x in s.convolution(eta,eta)))

    def test_weighted_l1_submultiplicativity(self):
        rows=[(0,)+values for values in product((-1,1),repeat=4)]
        for a in rows:
            for d in rows:
                conv=s.convolution(a,d)
                self.assertLessEqual(s.weighted_l1(conv),s.weighted_l1(a)*s.weighted_l1(d))

    def test_conditional_norm_budget_keeps_all_costs(self):
        self.assertEqual(s.norm_return_sq(1,3,[4,5]),145)
        with self.assertRaises(ValueError):
            s.norm_return_sq(1,3,[-1])
        self.assertNotEqual(s.norm_return_sq(1,3,[4,5]),s.norm_return_sq(1,3,[4]))


class ArithmeticReductionTests(unittest.TestCase):
    def test_integer_root_boundaries(self):
        for order in (2,3,5,8):
            for k in range(2,80):
                self.assertEqual(r.integer_root_ceiling(k**order,order),k)
                self.assertEqual(r.integer_root_ceiling(k**order+1,order),k+1)
                self.assertEqual(r.integer_root_ceiling(k**order-1,order),k)

    def test_degree_plans_exact_and_large(self):
        for n in list(range(2,4097))+[2**k for k in range(20,401,20)]:
            plan=r.degree_plan(n); U=plan['mobius_input_limit']
            self.assertLess((U-1)**5,n**3)
            self.assertLessEqual(n**3,U**5)
            self.assertLessEqual(32*U**5,243*n**3)
            self.assertLessEqual(n,U**2)
            self.assertLessEqual(U,n)
            self.assertLess(U**2,(U+1)**2)

    def test_independent_actual_coefficient_reconstruction(self):
        for n in range(2,100):
            pack=r.compile_bilinear(n)
            self.assertEqual(pack.reconstructed,tuple([0]+[c.mobius_by_factorization(k)
                                                     for k in range(1,pack.limit+1)]))
            self.assertEqual(pack.middle_linear[:pack.cutoff+1],(0,)*(pack.cutoff+1))

    def test_compiler_queries_only_short_prefix(self):
        original=c.mobius_by_factorization
        for n in (2,8,32,128):
            queried=[]
            def read(k):
                queried.append(k)
                return original(k)
            with patch.object(c,'mobius_by_factorization',side_effect=read):
                pack=r.compile_bilinear(n)
            self.assertEqual(queried,list(range(1,pack.cutoff+1)))

    def test_square_gate_must_be_strict(self):
        a=(0,1,0,0,0)
        new=s.newton_inverse_step(a)
        self.assertEqual(new[4],-1)
        self.assertEqual(c.mobius_by_factorization(4),0)
        self.assertNotEqual(new[4],c.mobius_by_factorization(4))

    def test_full_remainder_not_discarded_outside_gate(self):
        for U in range(1,7):
            prime=next(k for k in range(U+1,2*U+3) if k>1 and all(k%d for d in range(2,k)))
            K=prime**2+5
            a=(0,)+tuple(c.mobius_by_factorization(k) if k<=U else 0 for k in range(1,K+1))
            mu=(0,)+tuple(c.mobius_by_factorization(k) for k in range(1,K+1))
            eta=s.arithmetic_defect(a)
            remainder=s.convolution(mu,s.convolution(eta,eta))
            new=s.newton_inverse_step(a)
            self.assertEqual(mu,tuple(x+y for x,y in zip(new,remainder)))
            self.assertEqual(remainder[prime**2],1)

    def test_volterra_bessel_series_equation(self):
        # B'=-1/(1-y)*weightedMean_(1/6)((lambda-r)B).
        for n in range(2,11):
            count=18
            coeff=b.kernel_coefficients(n,count)
            potential=b.potential(count)
            lam=n*(n+Q(7,6))
            forcing=[lam*coeff[j]-sum(potential[k]*coeff[j-k] for k in range(j+1))
                     for j in range(count)]
            mean=s.weighted_mean_polynomial(Q(1,6),forcing)
            for j in range(count-1):
                self.assertEqual((j+1)*coeff[j+1],-sum(mean[:j+1]))

    def test_kernel_tail_bound_actual_enclosures(self):
        for n in (2,3,4,6,8):
            calc=b.KernelIntegral(n,32,4*n*n)
            bn=abs(b.normalization(n))
            for k in sorted({n,n+1,n*n-1,n*n}):
                val=calc.atom(k)
                budget=Q(16,27)*bn/k**2
                self.assertLessEqual(max(abs(val.lo),abs(val.hi)),budget)

    def test_unconditional_short_source_pairing(self):
        for n in range(2,25):
            U=r.degree_plan(n)['mobius_input_limit']
            for coeff in ([0]+[1]*U,
                          [0]+[(-1)**k for k in range(1,U+1)],
                          [0]+[c.mobius_by_factorization(k) for k in range(1,U+1)]):
                actual=p.short_jacobi(n,coeff)
                bound=90*b.positive_root(Q(1,n**31),30,64)+30*b.positive_root(Q(1,n**11),10,64)
                self.assertLessEqual(abs(actual),bound.lo)

    def test_complete_actual_integrals_and_tail(self):
        for n in (2,3,4,5,8):
            rec=r.degree_record(n,32)
            self.assertTrue(all(rec['checks'].values()))
            U=rec['mobius_input_limit']
            self.assertEqual(rec['middle_source_limit'],U*U)
            tail=rec['intervals']['high_source_bessel']
            self.assertLessEqual(max(abs(Q(tail['lower'])),abs(Q(tail['upper']))),
                                 r.coefficient_tail_budget(n))

    def test_shared_kernel_finite_signed_transports(self):
        for n in range(2,25):
            pack=r.compile_bilinear(n)
            for shift in (1,2,3):
                weights=[Q(0)]+[Q((-1)**k,k+shift) for k in range(1,pack.limit+1)]
                direct=sum(weights[k]*pack.reconstructed[k] for k in range(1,pack.limit+1))
                split=sum(weights[k]*(pack.short[k]-pack.middle_linear[k])
                          for k in range(1,pack.limit+1))
                self.assertEqual(direct,split)

    def test_smallest_middle_touching_cutoff(self):
        pack=r.compile_bilinear(2)
        self.assertEqual((pack.cutoff,pack.limit),(2,4))
        self.assertEqual(c.atom_window(2,4),(Q(1,16),Q(1,16)))

    def test_exact_constants_and_balanced_exponent(self):
        cert=r.budget_certificate()
        self.assertTrue(all(cert['checks'].values()))
        self.assertFalse(cert['MertensLogSquareBound_required'])
        for theta in (Q(7,12),Q(3,5),Q(5,8),Q(2,3)):
            gain=min(Q(1,3)-theta/2,2*theta-Q(7,6))
            self.assertLessEqual(gain,Q(1,30))

    def test_invalid_inputs(self):
        for n in (True,1,0,-1,Q(2),2.0):
            with self.assertRaises((ValueError,TypeError)):
                r.degree_plan(n)
        with self.assertRaises(ValueError):
            r.degree_record(32,32)
        with self.assertRaises(ValueError):
            r.degree_record(2,97)

    def test_cli_scope_flags(self):
        script=Path(r.__file__)
        out=subprocess.run([sys.executable,'-B',str(script),'--degree','4'],
                           capture_output=True,text=True,check=True)
        data=json.loads(out.stdout)
        self.assertFalse(data['uniform_energy_bound_proved'])
        self.assertEqual(data['native_lean_replay'],'NOT_RUN')


if __name__=='__main__':
    unittest.main()
