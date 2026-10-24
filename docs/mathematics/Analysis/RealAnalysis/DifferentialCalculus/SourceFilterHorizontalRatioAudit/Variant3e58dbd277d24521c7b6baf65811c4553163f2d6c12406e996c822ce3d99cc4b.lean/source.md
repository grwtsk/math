# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceFilterHorizontalRatioAudit.Variant3e58dbd277d24521c7b6baf65811c4553163f2d6c12406e996c822ce3d99cc4b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c97c49b2511ed18d180cb2ba66bd9e01008af930` · SHA-256 `09f2cd9f4ab07d90e1366382aab4002c4e8aa3671f93776a3f555e2b225cb639`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RadialBoundaryEnergyIdentity.Variant0d003a69464628fb215523e370ed34d65a7950649208ecfcac05292c41c84478","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0d003a69464628fb215523e370ed34d65a7950649208ecfcac05292c41c84478","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.RadialBoundaryEnergyIdentity.Variant0d003a69464628fb215523e370ed34d65a7950649208ecfcac05292c41c84478","mathematical_subject":"Analysis.Calculus","original_sha256":"0d003a69464628fb215523e370ed34d65a7950649208ecfcac05292c41c84478","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-filter-global/SourceFilterHorizontalRatioAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.SourceBumpAdapter
import FormalResearch.RiemannHypothesis.SourceComparison.SourceBumpGlobal
import Mathlib.Analysis.InnerProductSpace.Calculus
/-! Horizontal source-bump modulus monotonicity from the full radial boundary energy. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RadialBoundaryEnergyIdentity.Variant0d003a69464628fb215523e370ed34d65a7950649208ecfcac05292c41c84478

set_option autoImplicit false
namespace SourceBumpHorizontalScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.SourceBumpMoments FormalResearch.RiemannHypothesis.SourceComparison.SourceBumpGlobal
noncomputable section

/-- Retaining the boundary term gives the radial energy identity for every complex parameter. -/
theorem radial_boundary_energy_identity (z : ℂ) :
    z * bumpMoment 1 z * star (bumpMoment 0 z) =
      (radialEnergy z : ℂ) + z ^ 2 * (radialMass z : ℂ) := by
  have hpc : Continuous (radialProfile z) := by
    exact (bumpMoment_continuous 0).comp (continuous_const.mul Complex.continuous_ofReal)
  have hfc : Continuous (radialFlux z) := by
    change Continuous (fun r : ℝ => (r : ℂ)^10 * z * bumpMoment 1 (z * (r : ℂ)))
    have hm := bumpMoment_continuous 1
    fun_prop
  have hdp : Continuous (fun r : ℝ => z * bumpMoment 1 (z * (r : ℂ))) := by
    have hm := bumpMoment_continuous 1
    fun_prop
  have hdf : Continuous (fun r : ℝ => z ^ 2 * (r : ℂ) ^ 10 * radialProfile z r) := by
    exact ((continuous_const.mul (Complex.continuous_ofReal.pow 10)).mul
      hpc)
  have hid := intervalIntegral.integral_deriv_mul_eq_sub_of_hasDerivAt
    (a := (0 : ℝ)) (b := 1) hfc.continuousOn
    (hpc |>.star |>.continuousOn)
    (fun r _ => radialFlux_hasDerivAt z r)
    (fun r _ => (radialProfile_hasDerivAt z r).star)
    (hdf.intervalIntegrable 0 1) (hdp.star.intervalIntegrable 0 1)
  have hrhs : radialFlux z 1 * star (radialProfile z 1) -
      radialFlux z 0 * star (radialProfile z 0) =
        z * bumpMoment 1 z * star (bumpMoment 0 z) := by
    simp [radialFlux, radialProfile]
  rw [hrhs] at hid
  have hpoint (r : ℝ) :
      z ^ 2 * (r : ℂ) ^ 10 * radialProfile z r * star (radialProfile z r) +
      radialFlux z r * star (z * bumpMoment 1 (z * (r : ℂ))) =
      z ^ 2 * ((r ^ 10 * ‖radialProfile z r‖ ^ 2 : ℝ) : ℂ) +
        ((r ^ 10 * ‖z * bumpMoment 1 (z * (r : ℂ))‖ ^ 2 : ℝ) : ℂ) := by
    rw [Complex.ofReal_mul, Complex.ofReal_pow, Complex.ofReal_pow,
      ← Complex.mul_conj']
    rw [Complex.ofReal_mul, Complex.ofReal_pow, Complex.ofReal_pow,
      ← Complex.mul_conj']
    dsimp [radialFlux]
    ring
  have hiD : IntervalIntegrable
      (fun r : ℝ => ((r ^ 10 * ‖radialProfile z r‖ ^ 2 : ℝ) : ℂ)) volume 0 1 :=
    by
      apply Continuous.intervalIntegrable
      exact Complex.continuous_ofReal.comp
        ((continuous_id.pow 10).mul (hpc.norm.pow 2))
  have hiE : IntervalIntegrable (fun r : ℝ =>
      ((r ^ 10 * ‖z * bumpMoment 1 (z * (r : ℂ))‖ ^ 2 : ℝ) : ℂ)) volume 0 1 :=
    by
      apply Continuous.intervalIntegrable
      exact Complex.continuous_ofReal.comp
        ((continuous_id.pow 10).mul (hdp.norm.pow 2))
  have heq : z ^ 2 * (radialMass z : ℂ) + (radialEnergy z : ℂ) =
      z * bumpMoment 1 z * star (bumpMoment 0 z) := by
    calc
      _ = ∫ r : ℝ in 0..1,
          z ^ 2 * ((r ^ 10 * ‖radialProfile z r‖ ^ 2 : ℝ) : ℂ) +
            ((r ^ 10 * ‖z * bumpMoment 1 (z * (r : ℂ))‖ ^ 2 : ℝ) : ℂ) := by
        rw [intervalIntegral.integral_add (hiD.const_mul (z ^ 2)) hiE,
          intervalIntegral.integral_const_mul, intervalIntegral.integral_ofReal,
          intervalIntegral.integral_ofReal]
        rfl
      _ = z * bumpMoment 1 z * star (bumpMoment 0 z) := by
        rw [← hid]
        apply intervalIntegral.integral_congr
        intro r _
        exact (hpoint r).symm
  linear_combination -heq

/-- The boundary energy forces the source logarithmic numerator to have positive real part. -/
theorem bumpMoment_derivative_pairing_nonneg (z : ℂ) (hz : 0 < z.re) :
    0 ≤ (bumpMoment 1 z * star (bumpMoment 0 z)).re := by
  have he := radial_boundary_energy_identity z
  let p : ℂ := bumpMoment 1 z * star (bumpMoment 0 z)
  have he' : z * p = (radialEnergy z : ℂ) + z^2 * (radialMass z : ℂ) := by
    simpa only [p, mul_assoc] using he
  have hr' := congrArg Complex.re he'
  have hi' := congrArg Complex.im he'
  simp only [Complex.mul_re, Complex.mul_im, Complex.add_re, Complex.add_im,
    Complex.ofReal_re, Complex.ofReal_im, pow_two, mul_zero, sub_zero,
    zero_add] at hr' hi'
  have hid : (z.re^2 + z.im^2) * p.re =
      z.re * (radialEnergy z + (z.re^2 + z.im^2) * radialMass z) := by
    linear_combination z.re * hr' + z.im * hi'
  have hp : 0 < z.re^2 + z.im^2 := add_pos_of_pos_of_nonneg
    (sq_pos_of_pos hz) (sq_nonneg _)
  have hnn : 0 ≤ z.re * (radialEnergy z + (z.re^2 + z.im^2) * radialMass z) :=
    mul_nonneg hz.le (add_nonneg (radialEnergy_nonneg z)
      (mul_nonneg hp.le (radialMass_pos z).le))
  have : 0 ≤ (z.re^2 + z.im^2) * p.re := by rw [hid]; exact hnn
  exact (mul_nonneg_iff_of_pos_left hp).mp this

/-- Squared modulus has the exact real derivative on every horizontal line. -/
theorem bumpMoment_horizontal_norm_sq_hasDerivAt (t x : ℝ) :
    HasDerivAt (fun a : ℝ => ‖bumpMoment 0 ((a : ℂ) + (t : ℂ) * Complex.I)‖^2)
      (2 * (bumpMoment 1 ((x : ℂ) + (t : ℂ) * Complex.I) *
        star (bumpMoment 0 ((x : ℂ) + (t : ℂ) * Complex.I))).re) x := by
  have hd := (bumpMoment_hasDerivAt 0 ((x : ℂ) + (t : ℂ) * Complex.I)).comp
    (x : ℂ) ((hasDerivAt_id (x : ℂ)).add_const ((t : ℂ) * Complex.I))
  have hd' : HasDerivAt (fun a : ℝ => bumpMoment 0 ((a : ℂ) + (t : ℂ) * Complex.I))
      (bumpMoment 1 ((x : ℂ) + (t : ℂ) * Complex.I)) x := by
    simpa only [id_eq, zero_add, mul_one] using! hd.comp_ofReal
  convert! hd'.norm_sq using 1

/-- The actual bump modulus is nondecreasing along every horizontal rightward half-line. -/
theorem bumpMoment_horizontal_norm_monotone (t : ℝ) :
    MonotoneOn (fun x : ℝ => ‖bumpMoment 0 ((x : ℂ) + (t : ℂ) * Complex.I)‖)
      (Ici 0) := by
  have hm : MonotoneOn
      (fun x : ℝ => ‖bumpMoment 0 ((x : ℂ) + (t : ℂ) * Complex.I)‖^2) (Ici 0) := by
    apply monotoneOn_of_hasDerivWithinAt_nonneg (convex_Ici 0)
    · have hc := bumpMoment_continuous 0
      apply Continuous.continuousOn
      fun_prop
    · intro x _
      exact (bumpMoment_horizontal_norm_sq_hasDerivAt t x).hasDerivWithinAt
    · intro x hx
      have hx' : 0 < x := by simpa only [interior_Ici, mem_Ioi] using hx
      exact mul_nonneg (by norm_num)
        (bumpMoment_derivative_pairing_nonneg _ (by simpa using hx'))
  intro x hx y hy hxy
  have hh := hm hx hy hxy
  nlinarith [norm_nonneg (bumpMoment 0 ((x : ℂ) + (t : ℂ) * Complex.I)),
    norm_nonneg (bumpMoment 0 ((y : ℂ) + (t : ℂ) * Complex.I))]

/-- The exact imaginary-axis bump value never exceeds its inward horizontal translate. -/
theorem bumpMoment_horizontal_norm_le (ε t : ℝ) (hε : 0 ≤ ε) :
    ‖bumpMoment 0 ((t : ℂ) * Complex.I)‖ ≤
      ‖bumpMoment 0 ((ε : ℂ) + (t : ℂ) * Complex.I)‖ := by
  simpa only [Complex.ofReal_zero, zero_add] using
    bumpMoment_horizontal_norm_monotone t (show (0 : ℝ) ∈ Ici 0 from by simp)
      (show ε ∈ Ici 0 from hε) hε

end
end SourceBumpHorizontalScratch

/-! Actual source-filter horizontal ratio, with its prescribed polynomial factors. -/
set_option autoImplicit false
namespace SourceFilterHorizontalRatioScratch
open FormalResearch.RiemannHypothesis.SourceComparison
open SourceBumpMoments SourceBumpGlobal SourceBumpAdapter
open MobiusSourceFilterQuotient
open SourceBumpHorizontalScratch
noncomputable section

/-- The prescribed quadratic source factor has an explicit uniform horizontal ratio bound. -/
theorem sourceQuadratic_horizontal_bound (ε t : ℝ) :
    (1 - 4 * ε^2) * ‖((t : ℂ) * Complex.I)^2 - 1/4‖ ≤
      ‖((ε : ℂ) + (t : ℂ) * Complex.I)^2 - 1/4‖ := by
  have h0 : ((t : ℂ) * Complex.I)^2 - 1/4 = (-(t^2 + 1/4 : ℝ) : ℂ) := by
    push_cast
    simp only [mul_pow, Complex.I_sq]
    ring
  have hr : (((ε : ℂ) + (t : ℂ) * Complex.I)^2 - 1/4).re =
      ε^2 - t^2 - 1/4 := by
    simp [pow_two, Complex.mul_re, Complex.mul_im]
  have hn := (neg_le_abs (((ε : ℂ) + (t : ℂ) * Complex.I)^2 - 1/4).re).trans
    (Complex.abs_re_le_norm (((ε : ℂ) + (t : ℂ) * Complex.I)^2 - 1/4))
  rw [hr] at hn
  rw [h0, norm_neg, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (by positivity : 0 ≤ t^2 + (1/4 : ℝ))]
  nlinarith [mul_nonneg (sq_nonneg ε) (sq_nonneg t)]

/-- The actual normalized translated filter satisfies the denominator-free horizontal bound. -/
theorem W_horizontal_multiplicative_bound (ε t : ℝ) (hε : 0 ≤ ε)
    (hsmall : ε ≤ 1/4) :
    (1 - 4 * ε^2) * ‖W ((t : ℂ) * Complex.I)‖ ≤
      Real.exp ε * ‖W ((ε : ℂ) + (t : ℂ) * Complex.I)‖ := by
  have hd : 0 < 1 - 4 * ε^2 := by nlinarith
  have hp := sourceQuadratic_horizontal_bound ε t
  have hb := bumpMoment_horizontal_norm_le ε t hε
  have hprod := mul_le_mul hp hb
    (norm_nonneg (bumpMoment 0 ((t : ℂ) * Complex.I)))
    (norm_nonneg (((ε : ℂ) + (t : ℂ) * Complex.I)^2 - 1/4))
  have hnorm (z : ℂ) : ‖W z‖ = Real.exp (-z.re) * ‖z^2 - 1/4‖ *
      ‖bumpMoment 0 z‖ / ‖(Real.sqrt (45056 / 1105 : ℝ) : ℂ)‖ := by
    rw [W_eq_bumpMoment]
    simp only [norm_div, norm_mul, Complex.norm_exp, Complex.neg_re]
  rw [hnorm, hnorm]
  have hre0 : ((t : ℂ) * Complex.I).re = 0 := by simp
  have hreε : ((ε : ℂ) + (t : ℂ) * Complex.I).re = ε := by simp
  rw [hre0, hreε, neg_zero, Real.exp_zero, one_mul]
  have hc : Real.exp ε * Real.exp (-ε) = 1 := by rw [← Real.exp_add]; simp
  calc
    _ = ((1 - 4 * ε^2) * ‖((t : ℂ) * Complex.I)^2 - 1/4‖ *
        ‖bumpMoment 0 ((t : ℂ) * Complex.I)‖) /
        ‖(Real.sqrt (45056 / 1105 : ℝ) : ℂ)‖ := by ring
    _ ≤ (‖((ε : ℂ) + (t : ℂ) * Complex.I)^2 - 1/4‖ *
        ‖bumpMoment 0 ((ε : ℂ) + (t : ℂ) * Complex.I)‖) /
        ‖(Real.sqrt (45056 / 1105 : ℝ) : ℂ)‖ :=
      div_le_div_of_nonneg_right hprod (norm_nonneg _)
    _ = (Real.exp ε * Real.exp (-ε)) *
        ((‖((ε : ℂ) + (t : ℂ) * Complex.I)^2 - 1/4‖ *
          ‖bumpMoment 0 ((ε : ℂ) + (t : ℂ) * Complex.I)‖) /
          ‖(Real.sqrt (45056 / 1105 : ℝ) : ℂ)‖) := by rw [hc, one_mul]
    _ = _ := by ring

/-- The original source filter ratio is bounded uniformly in the real boundary frequency. -/
theorem W_horizontal_ratio_bound (ε t : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1/4) :
    ‖W ((t : ℂ) * Complex.I) / W ((ε : ℂ) + (t : ℂ) * Complex.I)‖ ≤
      Real.exp ε / (1 - 4 * ε^2) := by
  have hd : 0 < 1 - 4 * ε^2 := by nlinarith
  have hb := W_horizontal_multiplicative_bound ε t hε.le hsmall
  rw [norm_div]
  have hB : bumpMoment 0 ((ε : ℂ) + (t : ℂ) * Complex.I) ≠ 0 := by
    intro he
    have hr := bumpMoment_zero_re _ he
    simp only [Complex.add_re, Complex.ofReal_re, Complex.mul_re,
      Complex.I_re, Complex.I_im, Complex.ofReal_im, mul_zero, zero_mul,
      sub_self, add_zero] at hr
    exact hε.ne' hr
  have hq : ((ε : ℂ) + (t : ℂ) * Complex.I)^2 - 1/4 ≠ 0 := by
    intro he
    have hr := congrArg Complex.re he
    simp [pow_two, Complex.mul_re, Complex.mul_im] at hr
    nlinarith [sq_nonneg t]
  have hc : (Real.sqrt (45056 / 1105 : ℝ) : ℂ) ≠ 0 := by
    exact_mod_cast (ne_of_gt (Real.sqrt_pos.mpr (by norm_num : (0 : ℝ) < 45056 / 1105)))
  have hw : W ((ε : ℂ) + (t : ℂ) * Complex.I) ≠ 0 := by
    rw [W_eq_bumpMoment]
    exact div_ne_zero (mul_ne_zero (mul_ne_zero (Complex.exp_ne_zero _) hq) hB) hc
  have hn := norm_pos_iff.mpr hw
  apply (div_le_iff₀ hn).mpr
  rw [div_mul_eq_mul_div]
  apply (le_div_iff₀ hd).mpr
  nlinarith [hb]

end
end SourceFilterHorizontalRatioScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @SourceFilterHorizontalRatioScratch.sourceQuadratic_horizontal_bound
#print SourceFilterHorizontalRatioScratch.sourceQuadratic_horizontal_bound
#print axioms SourceFilterHorizontalRatioScratch.sourceQuadratic_horizontal_bound
#check @SourceFilterHorizontalRatioScratch.W_horizontal_multiplicative_bound
#print SourceFilterHorizontalRatioScratch.W_horizontal_multiplicative_bound
#print axioms SourceFilterHorizontalRatioScratch.W_horizontal_multiplicative_bound
#check @SourceFilterHorizontalRatioScratch.W_horizontal_ratio_bound
#print SourceFilterHorizontalRatioScratch.W_horizontal_ratio_bound
#print axioms SourceFilterHorizontalRatioScratch.W_horizontal_ratio_bound
```
