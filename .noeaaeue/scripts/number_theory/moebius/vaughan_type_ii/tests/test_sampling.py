import sys,unittest
from pathlib import Path
from fractions import Fraction as F
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
from sampled_source import *

class CertifiedArithmetic(unittest.TestCase):
    def test_pi_strict_calibration(self):
        p=pi_interval();self.assertGreater(p.lo,I.rat(157,50).hi);self.assertLess(p.hi,I.rat(22,7).lo)
    def test_sqrt_integer_enclosure(self):
        r=sqrt_interval(TWO);self.assertLessEqual(r.lo*r.lo,2*SCALE*SCALE);self.assertGreaterEqual(r.hi*r.hi,2*SCALE*SCALE)
    def test_positive_reciprocal(self):
        self.assertTrue(inverse(I.rat(3,7)).contains(F(7,3)))
    def test_invalid_reciprocal(self):
        with self.assertRaises(ValueError):inverse(I(-1,1))
    def test_invalid_sqrt(self):
        with self.assertRaises(ValueError):sqrt_interval(I(-1,1))
    def test_complex_inverse(self):
        x=C(I.rat(2),I.rat(3));prod=x*x.inv();self.assertTrue(prod.re.contains(F(1)));self.assertTrue(prod.im.contains(F(0)))
    def test_zero_angle(self):
        c=cis_minus(ZERO);self.assertTrue(c.re.contains(F(1)));self.assertTrue(c.im.contains(F(0)))
    def test_pi_angle(self):
        c=cis_minus(pi_interval());self.assertTrue(c.re.contains(F(-1)));self.assertTrue(c.im.contains(F(0)))
    def test_quarter_turn(self):
        c=cis_minus(pi_interval().div(2));self.assertTrue(c.re.contains(F(0)));self.assertTrue(c.im.contains(F(-1)))
    def test_reduced_large_angle(self):
        a=cis_minus(pi_interval().scale(101).div(2));self.assertTrue(a.re.contains(F(0)));self.assertTrue(a.im.contains(F(-1)))
    def test_phase_conjugation(self):
        a=cis_minus(I.rat(2,3));b=cis_minus(I.rat(-2,3));self.assertTrue(a.conjugate().overlaps(b))
    def test_phase_addition(self):
        a=cis_minus(I.rat(1,3))*cis_minus(I.rat(2,5));b=cis_minus(I.rat(11,15));self.assertTrue(a.overlaps(b))
    def test_zero_background(self):
        self.assertTrue(background_sample(7,ZERO,ZERO).re.contains(F(0)))
    def test_background_zero_frequency(self):
        got=background_sample(0,ZERO,ONE);expect=(sqrt_interval(TWO)-ONE).scale(2)
        self.assertTrue(got.re.overlaps(expect));self.assertTrue(got.im.contains(F(0)))
    def test_frequency_separation(self):
        self.assertGreater((pi_interval()*inverse(log_int(2))).lo,4*SCALE)
    def test_tail_constant(self):
        self.assertLess(log_int(2).scale(14).hi,pi_interval().square().lo)
    def test_dimension_free_weight_sum(self):
        for K in [0,1,4,16,128]:
            self.assertLess(weighted_sample_sum([CONE]*(K+1)).hi,3*SCALE)
    def test_empty_samples_reject(self):
        with self.assertRaises(ValueError):weighted_sample_sum([])

class KernelIdentities(unittest.TestCase):
    def test_brownian_at_zero_screen(self):
        self.assertEqual(kernel_half_integer(F(5,4),F(7,4),0),F(5,4))
    def test_ungrounded_alias_is_nonzero(self):
        self.assertEqual(kernel_half_integer(F(1),F(1),0,True),F(3))
    def test_signed_alias_can_be_negative(self):
        n=[F(1),F(2)];w=[F(1),F(-3,4)]
        self.assertEqual(rational_quadratic(n,w,0,True)-rational_quadratic(n,w),F(-1,4))
    def test_grounded_alias_exactly_zero(self):
        n,w,M=rational_ground([F(5,4),F(3,2),F(7,4)],[F(2),F(-3),F(5,7)])
        self.assertEqual(sum(w),0);self.assertEqual(sum(y*a for y,a in zip(n,w)),0)
        self.assertEqual(rational_quadratic(n,w,0,True),rational_quadratic(n,w))
    def test_center_energy_restoration(self):
        n=[F(1),F(4,3),F(2)];w=[F(2,3),F(-5,2),F(7,4)]
        nn,ww,M=rational_ground(n,w)
        self.assertEqual(rational_quadratic(n,w),M+rational_quadratic(nn,ww))
    def test_periodic_comparison_signed(self):
        for m in [4,8,17]:
            n=[F(1),F(9,8),F(3,2),F(2)];w=[F(5,7),F(-3),F(2,3),F(-1,9)]
            q=rational_quadratic(n,w,m);d=rational_quadratic(n,w,m,True)
            self.assertGreater(q,0);self.assertLessEqual(d,F(11,10)*q);self.assertGreaterEqual(d,F(9,10)*q)
    def test_two_moments_do_not_bound_remainder(self):
        n,w,M=rational_ground([F(3,2)],[F(1)])
        self.assertEqual(sum(w),0);self.assertGreater(rational_quadratic(n,w),0)
        self.assertEqual(rational_quadratic(n,[3*a for a in w]),9*rational_quadratic(n,w))
    def test_endpoint_mass_is_retained(self):
        for y in [F(1),F(2)]:self.assertEqual(rational_quadratic([y],[F(2)]),4*y)
    def test_kernel_domain_reject(self):
        with self.assertRaises(ValueError):kernel_half_integer(F(0),F(1),4)
    def test_complete_return_constants(self):
        self.assertLess(F(17,16)*F(11,10)*45,53)
        self.assertLess(F(17,16)*F(11,10)*118,138)
        self.assertLess(F(174)+F(34,4),183)

class ActualSource(unittest.TestCase):
    def test_x16_actual_samples(self):
        r=compute_row(16,previous_rows()[16],direct=True)
        self.assertEqual(r['coefficient_identities'],16)
        self.assertGreater(readI(r['omitted_sample_tail']).lo,0)
        self.assertEqual(len(r['samples']),5)
    def test_actual_integer_supremum(self):
        model=ArithmeticModel.make(512,4)
        for n in range(1,513):
            fi,fii,fl=model.forms(n);fact=factor(n,model.spf)
            self.assertTrue(all(abs(c)<=4*fact.get(p,0) for p,c in fii.items()))
    def test_non_dyadic_reject(self):
        with self.assertRaises(ValueError):compute_row(17)
    def test_changed_source_reject(self):
        row=dict(previous_rows()[16]);row['coefficient_form_sha256']='0'*64
        with self.assertRaises(ValueError):compute_row(16,row)
    def test_no_unbounded_range(self):
        with self.assertRaises(ValueError):compute_row(1<<(MAX_EXPONENT+1))

if __name__=='__main__':unittest.main(verbosity=2)
