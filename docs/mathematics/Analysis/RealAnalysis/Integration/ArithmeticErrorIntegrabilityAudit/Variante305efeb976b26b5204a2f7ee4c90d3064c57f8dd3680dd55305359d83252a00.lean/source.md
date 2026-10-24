# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ArithmeticErrorIntegrabilityAudit.Variante305efeb976b26b5204a2f7ee4c90d3064c57f8dd3680dd55305359d83252a00

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7dee8dd6e6f4c1b08c5b9bb0aac7a780f5ad83f0` · SHA-256 `33915c21d1cddf7bef16bff2e72c755624947988bf8cb6ff2bf81dfacd25e1e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SourcePolynomialLeadingError.Variant7da776a8ffc0806eb9bb83998b0f3ff6668645063ce477af75e73e95167a8255","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7da776a8ffc0806eb9bb83998b0f3ff6668645063ce477af75e73e95167a8255","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SourcePolynomialLeadingError.Variant7da776a8ffc0806eb9bb83998b0f3ff6668645063ce477af75e73e95167a8255","mathematical_subject":"Analysis.Integration","original_sha256":"7da776a8ffc0806eb9bb83998b0f3ff6668645063ce477af75e73e95167a8255","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-controller-admission/ArithmeticErrorIntegrabilityAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.CorrectedControllerBoundary
import FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterDeltaConvergence
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import FormalResearch.RiemannHypothesis.SourceComparison.CorrectedControllerAnalytic
import Mathlib.Analysis.Normed.Group.Bounded
import FormalResearch.RiemannHypothesis.SourceComparison.MobiusPrefixTilt
import Mathlib.NumberTheory.Harmonic.Bounds
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt


/-! Uniform polynomial inverse bounds for the actual reduced source filter. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.SourcePolynomialLeadingError.Variant7da776a8ffc0806eb9bb83998b0f3ff6668645063ce477af75e73e95167a8255

set_option autoImplicit false
namespace ReducedFilterInverseScratch
open Set
open FormalResearch.RiemannHypothesis.SourceComparison
open CorrectedControllerAnalytic SourceBumpAdapter SourceBumpMoments
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSideTargets
noncomputable section

/-- The actual source polynomial differs from its leading term by an explicit cubic bound. -/
theorem sourcePolynomial_leading_error (w : ℂ) (hw : 1 ≤ ‖w‖) :
    ‖transformPolynomial w - w^4‖ ≤ 265 * ‖w‖^3 := by
  have h2 : ‖w‖ ≤ ‖w‖^2 := by nlinarith [norm_nonneg w]
  have h3 : ‖w‖^2 ≤ ‖w‖^3 := by nlinarith [sq_nonneg (‖w‖ - 1)]
  have hb : ‖transformPolynomial w - w^4‖ ≤
      10 * ‖w‖^3 + 45 * ‖w‖^2 + 105 * ‖w‖ + 105 := by
    have he : transformPolynomial w - w^4 = -10*w^3 + 45*w^2 - 105*w + 105 := by
      unfold transformPolynomial
      ring
    rw [he]
    calc
      _ ≤ ‖-10*w^3 + 45*w^2 - 105*w‖ + ‖(105 : ℂ)‖ := norm_add_le _ _
      _ ≤ (‖-10*w^3 + 45*w^2‖ + ‖105*w‖) + ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_sub_le _ _
      _ ≤ ((‖-10*w^3‖ + ‖45*w^2‖) + ‖105*w‖) + ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_add_le _ _
      _ = _ := by norm_num [norm_mul, norm_pow]
  nlinarith

/-- The inward exponential gap is strictly positive for every positive inward shift. -/
theorem sourceTailGap_pos (ε : ℝ) (hε : 0 < ε) : 0 < 1 - Real.exp (-2 * ε) := by
  have he : Real.exp (-2 * ε) < 1 := Real.exp_lt_one_iff.mpr (by linarith)
  linarith

/-- Both exponential endpoints are retained in the explicit large-parameter lower bound. -/
theorem sourceEndpoint_tail_lower (ε : ℝ) (hε : 0 < ε) (w : ℂ) (hw : ε ≤ w.re)
    (hr : max 1 (1060 / (1 - Real.exp (-2 * ε))) ≤ ‖w‖) :
    ((1 - Real.exp (-2 * ε)) / 2) * ‖w‖^4 ≤
      ‖transformPolynomial w - Complex.exp (-2*w) * transformPolynomial (-w)‖ := by
  have hr1 : 1 ≤ ‖w‖ := (le_max_left _ _).trans hr
  have hq := sourceTailGap_pos ε hε
  have he : ‖Complex.exp (-2*w)‖ ≤ Real.exp (-2*ε) := by
    rw [Complex.norm_exp]
    apply Real.exp_le_exp.mpr
    norm_num [Complex.mul_re, Complex.mul_im]
    linarith
  have he1 : ‖Complex.exp (-2*w)‖ ≤ 1 :=
    he.trans (le_of_lt (by linarith : Real.exp (-2*ε) < 1))
  have hpos := sourcePolynomial_leading_error w hr1
  have hneg := sourcePolynomial_leading_error (-w) (by simpa only [norm_neg] using hr1)
  norm_num only [norm_neg, neg_pow, one_mul] at hneg
  have hlead : (1 - Real.exp (-2*ε)) * ‖w‖^4 ≤
      ‖(1 - Complex.exp (-2*w)) * w^4‖ := by
    rw [norm_mul, norm_pow]
    apply mul_le_mul_of_nonneg_right _ (pow_nonneg (norm_nonneg _) _)
    have h := norm_sub_norm_le (1 : ℂ) (Complex.exp (-2*w))
    norm_num only [norm_one] at h
    linarith
  have hrem : ‖(transformPolynomial w - w^4) -
      Complex.exp (-2*w) * (transformPolynomial (-w) - w^4)‖ ≤ 530 * ‖w‖^3 := by
    calc
      _ ≤ ‖transformPolynomial w - w^4‖ +
          ‖Complex.exp (-2*w) * (transformPolynomial (-w) - w^4)‖ := norm_sub_le _ _
      _ ≤ 265 * ‖w‖^3 + 1 * (265 * ‖w‖^3) := by
        rw [norm_mul]
        exact add_le_add hpos (mul_le_mul he1 hneg (norm_nonneg _) (by norm_num))
      _ = _ := by ring
  have htriangle : ‖(1 - Complex.exp (-2*w)) * w^4‖ ≤
      ‖transformPolynomial w - Complex.exp (-2*w) * transformPolynomial (-w)‖ +
      ‖(transformPolynomial w - w^4) -
        Complex.exp (-2*w) * (transformPolynomial (-w) - w^4)‖ := by
    have hid : (1 - Complex.exp (-2*w)) * w^4 =
        (transformPolynomial w - Complex.exp (-2*w) * transformPolynomial (-w)) -
        ((transformPolynomial w - w^4) -
          Complex.exp (-2*w) * (transformPolynomial (-w) - w^4)) := by ring
    rw [hid]
    exact norm_sub_le _ _
  have hrq : 1060 ≤ ‖w‖ * (1 - Real.exp (-2*ε)) :=
    (div_le_iff₀ hq).mp ((le_max_right _ _).trans hr)
  have hm := mul_le_mul_of_nonneg_right hrq (pow_nonneg (norm_nonneg w) 3)
  nlinarith

/-- The reduced filter retains the exact closed formula after its single factor cancellation. -/
theorem reducedW_closedFormula (w : ℂ) (hw : w ≠ 0) :
    reducedW w = 384 * (w + 1/2) *
      (transformPolynomial w - Complex.exp (-2*w) * transformPolynomial (-w)) /
      ((Real.sqrt (45056/1105 : ℝ) : ℂ) * w^9) := by
  rw [reducedW, bumpMoment_closedFormula w hw]
  have he : Complex.exp (-w) * Complex.exp w = 1 := by
    rw [← Complex.exp_add]
    simp
  have he2 : Complex.exp (-w) * Complex.exp (-w) = Complex.exp (-2*w) := by
    rw [← Complex.exp_add]
    congr 1
    ring
  calc
    _ = 384 * (w + 1/2) *
        ((Complex.exp (-w) * Complex.exp w) * transformPolynomial w -
          (Complex.exp (-w) * Complex.exp (-w)) * transformPolynomial (-w)) /
        ((Real.sqrt (45056/1105 : ℝ) : ℂ) * w^9) := by ring
    _ = _ := by rw [he, he2, one_mul]

/-- The remaining linear source factor grows at least as fast as the parameter in the right half-plane. -/
theorem norm_add_half_ge (w : ℂ) (hw : 0 ≤ w.re) : ‖w‖ ≤ ‖w + 1/2‖ := by
  have h0 : ‖w‖^2 = w.re^2 + w.im^2 := by
    rw [← Complex.normSq_eq_norm_sq]
    simp [Complex.normSq_apply, pow_two]
  have h1 : ‖w + 1/2‖^2 = (w.re + 1/2)^2 + w.im^2 := by
    rw [← Complex.normSq_eq_norm_sq]
    simp [Complex.normSq_apply, pow_two]
  nlinarith [norm_nonneg w, norm_nonneg (w + 1/2)]

/-- The actual reduced filter has an explicit fourth-power lower bound outside the finite disk. -/
theorem reducedW_tail_lower (ε : ℝ) (hε : 0 < ε) (w : ℂ) (hw : ε ≤ w.re)
    (hr : max 1 (1060 / (1 - Real.exp (-2 * ε))) ≤ ‖w‖) :
    192 * (1 - Real.exp (-2 * ε)) /
        (Real.sqrt (45056/1105 : ℝ) * ‖w‖^4) ≤ ‖reducedW w‖ := by
  have hr1 : 1 ≤ ‖w‖ := (le_max_left _ _).trans hr
  have hrpos : 0 < ‖w‖ := lt_of_lt_of_le zero_lt_one hr1
  have hS : 0 < Real.sqrt (45056/1105 : ℝ) := Real.sqrt_pos.mpr (by norm_num)
  have hq := sourceTailGap_pos ε hε
  have he := sourceEndpoint_tail_lower ε hε w hw hr
  have hl := norm_add_half_ge w (hε.le.trans hw)
  have hp : 192 * (1 - Real.exp (-2*ε)) * ‖w‖^5 ≤
      384 * ‖w + 1/2‖ *
        ‖transformPolynomial w - Complex.exp (-2*w) * transformPolynomial (-w)‖ := by
    calc
      _ = 384 * (‖w‖ * (((1 - Real.exp (-2*ε))/2) * ‖w‖^4)) := by ring
      _ ≤ 384 * (‖w + 1/2‖ *
          ‖transformPolynomial w - Complex.exp (-2*w) * transformPolynomial (-w)‖) := by
        apply mul_le_mul_of_nonneg_left _ (by norm_num)
        exact mul_le_mul hl he (by positivity) (norm_nonneg _)
      _ = _ := by ring
  have hn : ‖reducedW w‖ = 384 * ‖w + 1/2‖ *
      ‖transformPolynomial w - Complex.exp (-2*w) * transformPolynomial (-w)‖ /
        (Real.sqrt (45056/1105 : ℝ) * ‖w‖^9) := by
    rw [reducedW_closedFormula w (norm_pos_iff.mp hrpos)]
    have h384 : ‖(384 : ℂ)‖ = (384 : ℝ) := by norm_num
    simp only [norm_div, norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs,
      abs_of_pos hS, h384]
  calc
    _ = (192 * (1 - Real.exp (-2*ε)) * ‖w‖^5) /
        (Real.sqrt (45056/1105 : ℝ) * ‖w‖^9) := by
      field_simp
    _ ≤ (384 * ‖w + 1/2‖ *
        ‖transformPolynomial w - Complex.exp (-2*w) * transformPolynomial (-w)‖) /
          (Real.sqrt (45056/1105 : ℝ) * ‖w‖^9) :=
      div_le_div_of_nonneg_right hp (by positivity)
    _ = _ := hn.symm

/-- Inverting the proved positive tail lower bound gives the exact source polynomial budget. -/
theorem reducedW_inverse_tail_bound (ε : ℝ) (hε : 0 < ε) (w : ℂ) (hw : ε ≤ w.re)
    (hr : max 1 (1060 / (1 - Real.exp (-2 * ε))) ≤ ‖w‖) :
    ‖(reducedW w)⁻¹‖ ≤
      (Real.sqrt (45056/1105 : ℝ) / (192 * (1 - Real.exp (-2*ε)))) * ‖w‖^4 := by
  have hb := reducedW_tail_lower ε hε w hw hr
  have hq := sourceTailGap_pos ε hε
  have hrpos : 0 < ‖w‖ := lt_of_lt_of_le zero_lt_one ((le_max_left _ _).trans hr)
  have hS : 0 < Real.sqrt (45056/1105 : ℝ) := Real.sqrt_pos.mpr (by norm_num)
  have hleft : 0 < 192 * (1 - Real.exp (-2*ε)) /
      (Real.sqrt (45056/1105 : ℝ) * ‖w‖^4) := by positivity
  rw [norm_inv]
  calc
    _ ≤ (192 * (1 - Real.exp (-2*ε)) /
        (Real.sqrt (45056/1105 : ℝ) * ‖w‖^4))⁻¹ := inv_anti₀ hleft hb
    _ = _ := by rw [inv_div]; ring

/-- Every positive inward half-plane has a genuine source-only fourth-power inverse bound. -/
theorem reducedW_inverse_uniform_bound (ε : ℝ) (hε : 0 < ε) :
    ∃ C : ℝ, 0 < C ∧ ∀ w : ℂ, ε ≤ w.re →
      ‖(reducedW w)⁻¹‖ ≤ C * (1 + ‖w‖)^4 := by
  let R : ℝ := max 1 (1060 / (1 - Real.exp (-2*ε)))
  let K : Set ℂ := Metric.closedBall 0 R ∩ {w : ℂ | ε ≤ w.re}
  have hK : IsCompact K := (isCompact_closedBall (0 : ℂ) R).inter_right
    (isClosed_le continuous_const Complex.continuous_re)
  have hc : ContinuousOn (fun w : ℂ => (reducedW w)⁻¹) K :=
    reducedW_differentiable.continuous.continuousOn.inv₀
      (fun w hw => reducedW_ne_zero w (hε.trans_le hw.2))
  obtain ⟨M, hM⟩ := hK.exists_bound_of_continuousOn hc
  let T : ℝ := Real.sqrt (45056/1105 : ℝ) / (192 * (1 - Real.exp (-2*ε)))
  have hq := sourceTailGap_pos ε hε
  have hT : 0 ≤ T := by dsimp [T]; positivity
  refine ⟨1 + |M| + T, by positivity, ?_⟩
  intro w hw
  have hpow : 1 ≤ (1 + ‖w‖)^4 := one_le_pow₀ (by linarith [norm_nonneg w])
  by_cases hr : R ≤ ‖w‖
  · have ht := reducedW_inverse_tail_bound ε hε w hw hr
    calc
      _ ≤ T * ‖w‖^4 := ht
      _ ≤ T * (1 + ‖w‖)^4 := by gcongr; linarith
      _ ≤ (1 + |M| + T) * (1 + ‖w‖)^4 := by gcongr; linarith [abs_nonneg M]
  · have hmem : w ∈ K := by
      refine ⟨?_, hw⟩
      simpa only [Metric.mem_closedBall, dist_zero_right] using (le_of_lt (lt_of_not_ge hr))
    calc
      _ ≤ M := hM w hmem
      _ ≤ |M| := le_abs_self M
      _ ≤ 1 + |M| + T := by linarith
      _ ≤ (1 + |M| + T) * (1 + ‖w‖)^4 := by
        exact le_mul_of_one_le_right (by positivity) hpow

end
end ReducedFilterInverseScratch


/-! Uniform half-plane control of the actual entire corrected finite Möbius quotient. -/
set_option autoImplicit false
namespace CorrectedQuotientBudgetScratch
open MeasureTheory Set Filter Finset
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open FiniteMobiusController MobiusPoleNumerator MobiusPrefixTilt
noncomputable section

/-- The actual signed reciprocal-prefix integral, with its original finite endpoint. -/
def quotientIntegral (X : ℕ) (w : ℂ) : ℂ :=
  ∫ x : ℝ in Set.Ioc 1 (X : ℝ), (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
    Complex.exp ((1 / 2 - w) * (Real.log x : ℂ)) / (x : ℂ)

/-- The complete finite prefix integrand is genuinely integrable at every complex parameter. -/
theorem quotient_integrand_integrable (X : ℕ) (w : ℂ) :
    IntegrableOn (fun x : ℝ => (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
      Complex.exp ((1 / 2 - w) * (Real.log x : ℂ)) / (x : ℂ)) (Set.Ioc 1 (X : ℝ)) :=
  (reciprocal_prefix_power_integrable X w).mono_set Set.Ioc_subset_Icc_self

/-- Parameter continuity of the genuine prefix integral includes the canceled point. -/
theorem quotientIntegral_continuous (X : ℕ) : Continuous (quotientIntegral X) := by
  apply continuous_iff_continuousAt.mpr
  intro w
  let G : ℂ × ℝ → ℂ := fun p => Complex.exp ((1 / 2 - p.1) * (Real.log p.2 : ℂ))
  have hl : ContinuousOn (fun p : ℂ × ℝ => (Real.log p.2 : ℂ))
      (Metric.closedBall w 1 ×ˢ Set.Icc (1 : ℝ) X) := by
    apply Complex.continuous_ofReal.comp_continuousOn
    apply Real.continuousOn_log.comp continuous_snd.continuousOn
    intro p hp
    exact ne_of_gt (lt_of_lt_of_le zero_lt_one hp.2.1)
  have hG : ContinuousOn G (Metric.closedBall w 1 ×ˢ Set.Icc (1 : ℝ) X) := by
    exact Complex.continuous_exp.comp_continuousOn
      ((continuous_const.sub continuous_fst).continuousOn.mul hl)
  obtain ⟨C, hC⟩ := ((isCompact_closedBall w 1).prod
    (isCompact_Icc : IsCompact (Set.Icc (1 : ℝ) X))).exists_bound_of_continuousOn hG
  have hb : IntegrableOn (fun x : ℝ => (mobiusReciprocalSum ⌊x⌋₊ : ℂ) / (x : ℂ))
      (Set.Ioc 1 (X : ℝ)) := by
    simpa only [sub_self, zero_mul, Complex.exp_zero, mul_one] using
      quotient_integrand_integrable X (1 / 2)
  apply tendsto_integral_filter_of_dominated_convergence
    (fun x : ℝ => C * ‖(mobiusReciprocalSum ⌊x⌋₊ : ℂ) / (x : ℂ)‖)
  · exact Eventually.of_forall (fun z => (quotient_integrand_integrable X z).aestronglyMeasurable)
  · filter_upwards [Metric.ball_mem_nhds w (by norm_num : (0 : ℝ) < 1)] with z hz
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
    have hcx := hC (z, x) ⟨Metric.ball_subset_closedBall hz, hx.1.le, hx.2⟩
    change ‖Complex.exp ((1 / 2 - z) * (Real.log x : ℂ))‖ ≤ C at hcx
    calc
      ‖(mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
          Complex.exp ((1 / 2 - z) * (Real.log x : ℂ)) / (x : ℂ)‖ =
          ‖(mobiusReciprocalSum ⌊x⌋₊ : ℂ) / (x : ℂ)‖ *
            ‖Complex.exp ((1 / 2 - z) * (Real.log x : ℂ))‖ := by
        rw [← norm_mul]
        congr 1
        ring
      _ ≤ ‖(mobiusReciprocalSum ⌊x⌋₊ : ℂ) / (x : ℂ)‖ * C :=
        mul_le_mul_of_nonneg_left hcx (norm_nonneg _)
      _ = _ := mul_comm _ _
  · exact hb.norm.const_mul C
  · filter_upwards [] with x
    exact (show Continuous (fun z : ℂ => (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
      Complex.exp ((1 / 2 - z) * (Real.log x : ℂ)) / (x : ℂ)) by fun_prop).continuousAt

private theorem correctedQuotient_eq_integral_of_ne (X : ℕ) (w : ℂ) (hw : w ≠ 1 / 2) :
    correctedQuotient X w = quotientIntegral X w := by
  rw [correctedQuotient_of_ne X w hw, correctedNumerator_eq_prefix_integral]
  exact mul_div_cancel_left₀ _ (sub_ne_zero.mpr hw)

/-- The actual entire quotient equals the genuine Abel integral at every point, including one half.
-/
theorem correctedQuotient_eq_integral (X : ℕ) (w : ℂ) :
    correctedQuotient X w = quotientIntegral X w := by
  by_cases hw : w = 1 / 2
  · subst w
    have hQ : Tendsto (correctedQuotient X) (𝓝[≠] (1 / 2))
        (𝓝 (correctedQuotient X (1 / 2))) :=
      ((correctedQuotient_differentiable X).continuous.continuousAt
        (x := (1 / 2 : ℂ))).tendsto.mono_left nhdsWithin_le_nhds
    have hI : Tendsto (quotientIntegral X) (𝓝[≠] (1 / 2))
        (𝓝 (quotientIntegral X (1 / 2))) :=
      ((quotientIntegral_continuous X).continuousAt
        (x := (1 / 2 : ℂ))).tendsto.mono_left nhdsWithin_le_nhds
    have heq : correctedQuotient X =ᶠ[𝓝[≠] (1 / 2)] quotientIntegral X := by
      filter_upwards [self_mem_nhdsWithin] with z hz
      exact correctedQuotient_eq_integral_of_ne X z hz
    exact tendsto_nhds_unique hQ ((tendsto_congr' heq).mpr hI)
  · exact correctedQuotient_eq_integral_of_ne X w hw

/-- Absolute values of the original signed reciprocal prefix are bounded by the harmonic prefix. -/
theorem mobiusReciprocalSum_abs_le_harmonic (N : ℕ) :
    |mobiusReciprocalSum N| ≤ (harmonic N : ℝ) := by
  rw [mobiusReciprocalSum, harmonic_eq_sum_Icc]
  simp only [Rat.cast_sum, Rat.cast_inv, Rat.cast_natCast]
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply Finset.sum_le_sum
  intro n _hn
  rw [abs_div, abs_of_nonneg (show 0 ≤ (n : ℝ) from Nat.cast_nonneg n)]
  have hm : |(ArithmeticFunction.moebius n : ℝ)| ≤ 1 := by
    exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := n))
  simpa only [one_div] using div_le_div_of_nonneg_right hm (Nat.cast_nonneg n)

/-- The real-floor prefix obeys the elementary logarithmic budget on its whole domain. -/
theorem mobiusReciprocalSum_floor_abs_le (x : ℝ) (hx : 1 ≤ x) :
    |mobiusReciprocalSum ⌊x⌋₊| ≤ 1 + Real.log x :=
  (mobiusReciprocalSum_abs_le_harmonic _).trans (harmonic_floor_le_one_add_log x hx)

/-- In the closed right half-plane, the exact integrand is bounded by an inverse-square-root
weight. -/
theorem quotient_integrand_norm_le (X : ℕ) (w : ℂ) (hw : 0 ≤ w.re)
    (x : ℝ) (hx : x ∈ Set.Ioc 1 (X : ℝ)) :
    ‖(mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
      Complex.exp ((1 / 2 - w) * (Real.log x : ℂ)) / (x : ℂ)‖ ≤
        (1 + Real.log (X : ℝ)) / Real.sqrt x := by
  have hx0 : 0 < x := lt_trans zero_lt_one hx.1
  have hxlog : 0 ≤ Real.log x := Real.log_nonneg hx.1.le
  have hm : |mobiusReciprocalSum ⌊x⌋₊| ≤ 1 + Real.log (X : ℝ) :=
    (mobiusReciprocalSum_floor_abs_le x hx.1.le).trans
      (add_le_add le_rfl (Real.log_le_log hx0 hx.2))
  have hs : 0 < Real.sqrt x := Real.sqrt_pos.mpr hx0
  have hsq : Real.sqrt x * Real.sqrt x = x := Real.mul_self_sqrt hx0.le
  have he : Real.exp ((1 / 2 - w.re) * Real.log x) ≤ Real.sqrt x := by
    calc
      _ ≤ Real.exp ((1 / 2) * Real.log x) := by
        apply Real.exp_le_exp.mpr
        nlinarith
      _ = Real.sqrt x := by
        rw [Real.sqrt_eq_rpow, Real.rpow_def_of_pos hx0]
        congr 1
        ring
  rw [norm_div, norm_mul, Complex.norm_real, Complex.norm_real,
    Real.norm_eq_abs, Real.norm_eq_abs, abs_of_pos hx0, Complex.norm_exp]
  simp only [Complex.mul_re, Complex.sub_re, Complex.div_ofNat_re, Complex.one_re,
    Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero]
  calc
    |mobiusReciprocalSum ⌊x⌋₊| * Real.exp ((1 / 2 - w.re) * Real.log x) / x ≤
        (1 + Real.log (X : ℝ)) * Real.sqrt x / x :=
      div_le_div_of_nonneg_right (mul_le_mul hm he (Real.exp_pos _).le
        (le_trans (abs_nonneg _) hm)) hx0.le
    _ = _ := by
      apply (div_eq_div_iff hx0.ne' hs.ne').mpr
      rw [mul_assoc, hsq]

private theorem inverse_sqrt_integrable (X : ℕ) :
    IntegrableOn (fun x : ℝ => (Real.sqrt x)⁻¹) (Set.Ioc 1 (X : ℝ)) := by
  apply ContinuousOn.integrableOn_Icc ?_ |>.mono_set Set.Ioc_subset_Icc_self
  apply Real.continuous_sqrt.continuousOn.inv₀
  intro x hx
  exact (Real.sqrt_pos.mpr (lt_of_lt_of_le zero_lt_one hx.1)).ne'

private theorem integral_inverse_sqrt (X : ℕ) (hX : 1 ≤ X) :
    (∫ x : ℝ in Set.Ioc 1 (X : ℝ), (Real.sqrt x)⁻¹) = 2 * (Real.sqrt (X : ℝ) - 1) := by
  have hXr : (1 : ℝ) ≤ X := by exact_mod_cast hX
  have hint : IntervalIntegrable (fun x : ℝ => (Real.sqrt x)⁻¹) volume 1 X := by
    exact (intervalIntegrable_iff_integrableOn_Ioc_of_le hXr).mpr
      (inverse_sqrt_integrable X)
  have hd : ∀ x ∈ uIcc (1 : ℝ) X,
      HasDerivAt (fun x : ℝ => 2 * Real.sqrt x) ((Real.sqrt x)⁻¹) x := by
    intro x hx
    rw [uIcc_of_le hXr] at hx
    have hx0 : 0 < x := lt_of_lt_of_le zero_lt_one hx.1
    have hs : Real.sqrt x ≠ 0 := (Real.sqrt_pos.mpr hx0).ne'
    simpa [div_eq_mul_inv, mul_comm, mul_left_comm] using
      (Real.hasDerivAt_sqrt hx0.ne').const_mul 2
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt hd hint
  rw [intervalIntegral.integral_of_le hXr] at h
  simpa only [Real.sqrt_one, mul_one, mul_sub] using h

/-- The actual entire corrected quotient has the uniform requested budget, including w=one half. -/
theorem correctedQuotient_norm_le (X : ℕ) (hX : 1 ≤ X) (w : ℂ) (hw : 0 ≤ w.re) :
    ‖correctedQuotient X w‖ ≤ 2 * Real.sqrt (X : ℝ) * (1 + Real.log (X : ℝ)) := by
  have hXr : (1 : ℝ) ≤ X := by exact_mod_cast hX
  have hC : 0 ≤ 1 + Real.log (X : ℝ) := by
    have := Real.log_nonneg hXr
    linarith
  rw [correctedQuotient_eq_integral, quotientIntegral]
  apply (norm_integral_le_integral_norm _).trans
  have hi : IntegrableOn (fun x : ℝ => (1 + Real.log (X : ℝ)) / Real.sqrt x)
      (Set.Ioc 1 (X : ℝ)) := by
    exact ((inverse_sqrt_integrable X).const_mul (1 + Real.log (X : ℝ))).congr
      (Eventually.of_forall (fun x => by simp only [div_eq_mul_inv]))
  calc
    (∫ x : ℝ in Set.Ioc 1 (X : ℝ), ‖(mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
        Complex.exp ((1 / 2 - w) * (Real.log x : ℂ)) / (x : ℂ)‖) ≤
        ∫ x : ℝ in Set.Ioc 1 (X : ℝ), (1 + Real.log (X : ℝ)) / Real.sqrt x := by
      apply integral_mono_ae (quotient_integrand_integrable X w).norm hi
      filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
      exact quotient_integrand_norm_le X w hw x hx
    _ = (1 + Real.log (X : ℝ)) * (2 * (Real.sqrt (X : ℝ) - 1)) := by
      simp only [div_eq_mul_inv, integral_const_mul, integral_inverse_sqrt X hX]
    _ ≤ _ := by nlinarith

end
end CorrectedQuotientBudgetScratch

/-! Genuine vertical-line bounds for the unchanged analytic controller candidate. -/
set_option autoImplicit false
namespace CandidateLineBoundsScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open CorrectedControllerAnalytic MobiusPoleNumerator
open ReducedFilterInverseScratch CorrectedQuotientBudgetScratch
noncomputable section

/-- A simple coercive norm bound on the closed right half-plane. -/
theorem one_add_norm_le_twice (w : ℂ) (hw : 0 ≤ w.re) :
    1 + ‖w‖ ≤ 2 * ‖1 + w‖ := by
  have h1 : 1 ≤ ‖1 + w‖ := by
    have h := Complex.re_le_norm (1 + w)
    simp only [Complex.add_re, Complex.one_re] at h
    linarith
  have hsq : ‖w‖^2 ≤ ‖1+w‖^2 := by
    simp only [← Complex.normSq_eq_norm_sq, Complex.normSq_apply,
      Complex.add_re, Complex.one_re, Complex.add_im, Complex.one_im, zero_add]
    nlinarith
  nlinarith [norm_nonneg w, norm_nonneg (1+w)]

private theorem candidate_parameter_decay (ε : ℝ) (hε : 0 < ε) (C : ℝ) (hC : 0 < C)
    (hbound : ∀ w : ℂ, ε ≤ w.re → ‖(reducedW w)⁻¹‖ ≤ C*(1+‖w‖)^4)
    (X : ℕ) (hX : 1 ≤ X) (h : ℝ) (hh : 0 < h) (hh1 : h ≤ 1)
    (z : ℂ) (hz : 0 ≤ z.re) :
    ‖candidate X ε h z‖ ≤
      256*C*Real.sqrt (X : ℝ)*(1+Real.log (X : ℝ))*h⁻¹^3 /
        (1+h*|z.im|)^3 := by
  let w : ℂ := z + (ε : ℂ)
  have hw : ε ≤ w.re := by change ε ≤ z.re + ε; linarith
  have hw0 : 0 ≤ w.re := hε.le.trans hw
  have hD := correctedQuotient_norm_le X hX w hw0
  have hR := hbound w hw
  have hden := one_add_norm_le_twice w hw0
  have hsden := one_add_norm_le_twice ((h : ℂ)*w) (by
    simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
    exact mul_nonneg hh.le hw0)
  have hhr : ‖(h : ℂ)*w‖ = h*‖w‖ := by
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hh]
  rw [hhr] at hsden
  have hp : 0 < 1+‖w‖ := by positivity
  have hhp : 0 < 1+h*‖w‖ := by positivity
  have hdn : 0 < ‖1+w‖ := by linarith
  have hsn : 0 < ‖1+(h : ℂ)*w‖ := by linarith
  have hs : ‖(1+(h : ℂ)*w)⁻¹‖ ≤ 2/(1+h*‖w‖) := by
    rw [norm_inv, inv_eq_one_div]
    apply (div_le_div_iff₀ hsn hhp).mpr
    simpa only [one_mul] using hsden
  have ho : ‖(1+w)⁻¹‖ ≤ 2/(1+‖w‖) := by
    rw [norm_inv, inv_eq_one_div]
    apply (div_le_div_iff₀ hdn hp).mpr
    simpa only [one_mul] using hden
  have hlog : 0 ≤ 1+Real.log (X : ℝ) := by
    have hx : (1 : ℝ) ≤ X := by exact_mod_cast hX
    linarith [Real.log_nonneg hx]
  have hexact : ‖candidate X ε h z‖ =
      ‖correctedQuotient X w‖ * ‖(reducedW w)⁻¹‖ *
        ‖(1+(h : ℂ)*w)⁻¹‖^6 * ‖(1+w)⁻¹‖ := by
    unfold candidate quotient
    simp only [div_eq_mul_inv, norm_mul, norm_pow, w, add_assoc]
  have hraw : ‖candidate X ε h z‖ ≤
      (2*Real.sqrt (X : ℝ)*(1+Real.log (X : ℝ))) * (C*(1+‖w‖)^4) *
        (2/(1+h*‖w‖))^6 * (2/(1+‖w‖)) := by
    rw [hexact]
    gcongr
  have hratio : (1+‖w‖)^3 ≤ h⁻¹^3 * (1+h*‖w‖)^3 := by
    have h1 : 1+‖w‖ ≤ h⁻¹*(1+h*‖w‖) := by
      apply (le_inv_mul_iff₀ hh).mpr
      nlinarith [hh1]
    simpa only [mul_pow] using pow_le_pow_left₀ (by positivity : 0 ≤ 1+‖w‖) h1 3
  have him : h*|z.im| ≤ h*‖w‖ := by
    apply mul_le_mul_of_nonneg_left _ hh.le
    have hi := Complex.abs_im_le_norm w
    simpa only [w, Complex.add_im, Complex.ofReal_im, add_zero] using hi
  calc
    _ ≤ (2*Real.sqrt (X : ℝ)*(1+Real.log (X : ℝ))) * (C*(1+‖w‖)^4) *
        (2/(1+h*‖w‖))^6 * (2/(1+‖w‖)) := hraw
    _ = (256*C*Real.sqrt (X : ℝ)*(1+Real.log (X : ℝ))) *
        (1+‖w‖)^3 / (1+h*‖w‖)^6 := by field_simp; ring
    _ ≤ (256*C*Real.sqrt (X : ℝ)*(1+Real.log (X : ℝ))) *
        (h⁻¹^3*(1+h*‖w‖)^3) / (1+h*‖w‖)^6 := by gcongr
    _ = (256*C*Real.sqrt (X : ℝ)*(1+Real.log (X : ℝ))) *
        h⁻¹^3 / (1+h*‖w‖)^3 := by field_simp
    _ ≤ _ := by
      apply div_le_div_of_nonneg_left (by positivity) (by positivity)
      gcongr

/-- One source-only constant controls every candidate vertical line and every finite cutoff. -/
theorem candidate_vertical_decay (ε : ℝ) (hε : 0 < ε) :
    ∃ C : ℝ, 0 < C ∧ ∀ (X : ℕ), 1 ≤ X → ∀ h : ℝ, 0 < h → h ≤ 1 →
      ∀ σ : ℝ, 0 ≤ σ → ∀ t : ℝ,
        ‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖ ≤
          C * Real.sqrt (X : ℝ) * (1+Real.log (X : ℝ)) * h⁻¹^3 /
            (1+h*|t|)^3 := by
  obtain ⟨C, hC, hb⟩ := reducedW_inverse_uniform_bound ε hε
  refine ⟨256*C, by positivity, ?_⟩
  intro X hX h hh hh1 σ hσ t
  simpa using candidate_parameter_decay ε hε C hC hb X hX h hh hh1
    ((σ : ℂ)+(t : ℂ)*Complex.I) (by simpa using hσ)

/-- The scaled Cauchy majorant is genuinely integrable, with its exact whole-line mass. -/
theorem scaled_cauchy_integrable_integral (h : ℝ) (hh : 0 < h) :
    Integrable (fun t : ℝ => (1+(h*t)^2)⁻¹) ∧
      (∫ t : ℝ, (1+(h*t)^2)⁻¹) = Real.pi / h := by
  constructor
  · exact integrable_inv_one_add_sq.comp_mul_left' hh.ne'
  · have hi := Measure.integral_comp_mul_left (fun t : ℝ => (1+t^2)⁻¹) h
    simpa only [integral_univ_inv_one_add_sq, abs_of_pos (inv_pos.mpr hh),
      smul_eq_mul, div_eq_mul_inv, mul_comm] using hi

private theorem candidate_square_majorant (X : ℕ) (ε h σ K : ℝ)
    (hh : 0 < h)
    (hdec : ∀ t : ℝ, ‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖ ≤
      K/(1+h*|t|)^3) (t : ℝ) :
    ‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖^2 ≤
      K^2 * (1+(h*t)^2)⁻¹ := by
  have hp : 0 < 1+h*|t| := by positivity
  have hpow : 1+(h*t)^2 ≤ (1+h*|t|)^6 := by
    have hbase : 1 ≤ 1+h*|t| := by linarith [mul_nonneg hh.le (abs_nonneg t)]
    have h26 := pow_le_pow_right₀ hbase (by omega : 2 ≤ 6)
    have h2 : 1+(h*t)^2 ≤ (1+h*|t|)^2 := by
      have hs : (h*|t|)^2 = (h*t)^2 := by rw [mul_pow, mul_pow, sq_abs]
      nlinarith [hs, mul_nonneg hh.le (abs_nonneg t)]
    exact h2.trans h26
  calc
    _ ≤ (K/(1+h*|t|)^3)^2 := by
      exact pow_le_pow_left₀ (norm_nonneg _) (hdec t) 2
    _ = K^2/(1+h*|t|)^6 := by simp only [div_pow, ← pow_mul]
    _ ≤ K^2/(1+(h*t)^2) :=
      div_le_div_of_nonneg_left (sq_nonneg K) (by positivity) hpow
    _ = _ := by rw [div_eq_mul_inv]

/-- Every candidate line has a genuine square integral with one uniform source-only budget. -/
theorem candidate_line_square_integrable_bound (ε : ℝ) (hε : 0 < ε) :
    ∃ C : ℝ, 0 < C ∧ ∀ (X : ℕ), 1 ≤ X → ∀ h : ℝ, 0 < h → h ≤ 1 →
      ∀ σ : ℝ, 0 ≤ σ →
        Integrable (fun t : ℝ =>
          ‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖^2) ∧
        (∫ t : ℝ, ‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖^2) ≤
          C * (X : ℝ) * (1+Real.log (X : ℝ))^2 * h⁻¹^7 := by
  obtain ⟨D, hD, hd⟩ := candidate_vertical_decay ε hε
  refine ⟨Real.pi*D^2, by positivity, ?_⟩
  intro X hX h hh hh1 σ hσ
  let K : ℝ := D * Real.sqrt (X : ℝ) * (1+Real.log (X : ℝ)) * h⁻¹^3
  have hdec : ∀ t : ℝ, ‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖ ≤
      K/(1+h*|t|)^3 := hd X hX h hh hh1 σ hσ
  have hmajor := candidate_square_majorant X ε h σ K hh hdec
  have hc : Continuous (fun t : ℝ => candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)) := by
    apply continuous_iff_continuousAt.mpr
    intro t
    exact (candidate_differentiableAt X ε h hε hh.le _ (by simpa using hσ)).continuousAt.comp
      (by fun_prop)
  have hi := (scaled_cauchy_integrable_integral h hh).1.const_mul (K^2)
  have hfi : Integrable (fun t : ℝ =>
      ‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖^2) := by
    apply hi.mono' (hc.norm.pow 2).aestronglyMeasurable
    filter_upwards with t
    change |‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖^2| ≤ _
    rw [abs_of_nonneg (sq_nonneg _)]
    exact hmajor t
  refine ⟨hfi, ?_⟩
  calc
    _ ≤ ∫ t : ℝ, K^2 * (1+(h*t)^2)⁻¹ :=
      integral_mono hfi hi hmajor
    _ = K^2 * (Real.pi/h) := by
      rw [integral_const_mul, (scaled_cauchy_integrable_integral h hh).2]
    _ = _ := by
      dsimp [K]
      have hs : (Real.sqrt (X : ℝ))^2 = (X : ℝ) := Real.sq_sqrt (Nat.cast_nonneg _)
      simp only [mul_pow, hs, div_eq_mul_inv]
      ring

end
end CandidateLineBoundsScratch
/-! Genuine integrability of the complete signed arithmetic boundary error. -/
set_option autoImplicit false
namespace ArithmeticErrorIntegrabilityScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceKernel FixedKernelAdmission FixedLaplaceContinuation FixedLaplaceBoundary
open CorrectedControllerAnalytic CorrectedControllerBoundary SourceFilterDelta
open SourceFilterDeltaConvergence MobiusPoleNumerator MobiusSourceFilterQuotient
open CandidateLineBoundsScratch
noncomputable section

/-- The genuine boundary transform of the actual L1 kernel has its full-kernel norm bound. -/
theorem actualLaplace_boundary_norm_le (t : ℝ) :
    ‖actualLaplace ((t : ℂ)*Complex.I)‖ ≤ ∫ u : ℝ in Ioi 0, |fixedKernel u| := by
  apply norm_integral_le_of_norm_le fixedKernel_integrableOn_Ioi.abs
  filter_upwards with u
  simp [Complex.norm_real, Real.norm_eq_abs, Complex.norm_exp,
    Complex.mul_re, Complex.mul_im]

/-- The exact full-axis arithmetic error uses the unchanged signed zeta–Möbius factor. -/
def arithmeticErrorSq (X : ℕ) (ε h : ℝ) : ℝ :=
  (1/(2*Real.pi)) * ∫ t : ℝ,
    ‖boundaryFilter ε h t * (1-riemannZeta (1/2+(t : ℂ)*Complex.I) *
      correctedNumerator X ((ε : ℂ)+(t : ℂ)*Complex.I))‖^2

/-- Every finite corrected family has a genuine signed arithmetic-error square integral. -/
theorem arithmetic_error_sq_integrable (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hsmall : ε ≤ 1/4) (hh : 0 < h) (hh1 : h ≤ 1) :
    Integrable (fun t : ℝ =>
      ‖boundaryFilter ε h t * (1-riemannZeta (1/2+(t : ℂ)*Complex.I) *
        correctedNumerator X ((ε : ℂ)+(t : ℂ)*Complex.I))‖^2) := by
  let Q : ℝ → ℂ := fun t => candidate X ε h ((t : ℂ)*Complex.I)
  let L : ℝ → ℂ := fun t => actualLaplace ((t : ℂ)*Complex.I)
  let H : ℝ → ℂ := fun t => boundaryFilter ε h t
  let M : ℝ := ∫ u : ℝ in Ioi 0, |fixedKernel u|
  have hM : 0 ≤ M := integral_nonneg (fun _ => abs_nonneg _)
  have hL : Continuous L := actualLaplace_continuousOn_closed.comp_continuous
    (by fun_prop) (fun t => by simp)
  have hQ : Continuous Q := by
    apply continuous_iff_continuousAt.mpr
    intro t
    exact (candidate_differentiableAt X ε h hε hh.le _ (by simp)).continuousAt.comp
      (by fun_prop)
  have hH : Measurable H := by
    dsimp [H, boundaryFilter]
    have hw : Continuous W := (Complex.continuous_exp.comp continuous_neg).mul V_continuous
    fun_prop
  have hHsq : Integrable (fun t : ℝ => ‖H t‖^2) := by
    apply (integrable_inv_one_add_sq.const_mul ((2*Real.exp 1)^2)).mono'
      (hH.norm.pow_const 2).aestronglyMeasurable
    filter_upwards with t
    change |‖H t‖^2| ≤ _
    rw [abs_of_nonneg (sq_nonneg _)]
    have hn := boundaryFilter_norm_le ε h t hε hsmall hh.le
    have hsq := pow_le_pow_left₀ (norm_nonneg _) hn 2
    have hden : ‖1+(t : ℂ)*Complex.I‖^2 = 1+t^2 := by
      rw [← Complex.normSq_eq_norm_sq]
      simp [Complex.normSq_apply, pow_two]
    simpa only [H, div_eq_mul_inv, mul_pow, inv_pow, hden] using hsq
  obtain ⟨C, _, hc⟩ := candidate_line_square_integrable_bound ε hε
  have hQsq : Integrable (fun t : ℝ => ‖Q t‖^2) := by
    simpa only [Q, Complex.ofReal_zero, zero_add] using (hc X hX h hh hh1 0 le_rfl).1
  have hLQsq : Integrable (fun t : ℝ => ‖L t * Q t‖^2) := by
    apply (hQsq.const_mul (M^2)).mono' ((hL.mul hQ).norm.pow 2).aestronglyMeasurable
    filter_upwards with t
    change |‖L t * Q t‖^2| ≤ _
    rw [abs_of_nonneg (sq_nonneg _), norm_mul, mul_pow]
    apply mul_le_mul_of_nonneg_right _ (sq_nonneg _)
    exact pow_le_pow_left₀ (norm_nonneg _) (actualLaplace_boundary_norm_le t) 2
  have hmemH : MemLp H 2 volume := (memLp_two_iff_integrable_sq_norm
    hH.aestronglyMeasurable).mpr hHsq
  have hmemLQ : MemLp (fun t => L t * Q t) 2 volume :=
    (memLp_two_iff_integrable_sq_norm (hL.mul hQ).aestronglyMeasurable).mpr hLQsq
  have hi : Integrable (fun t : ℝ => ‖H t - L t * Q t‖^2) :=
    (memLp_two_iff_integrable_sq_norm (hmemH.sub hmemLQ).aestronglyMeasurable).mp
      (hmemH.sub hmemLQ)
  have heq (t : ℝ) :
      boundaryFilter ε h t * (1-riemannZeta (1/2+(t : ℂ)*Complex.I) *
        correctedNumerator X ((ε : ℂ)+(t : ℂ)*Complex.I)) = H t - L t * Q t := by
    dsimp [H, L, Q]
    rw [actual_boundary_product X ε h t hε (by linarith)]
    ring
  simpa only [heq] using hi

end
end ArithmeticErrorIntegrabilityScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @ArithmeticErrorIntegrabilityScratch.actualLaplace_boundary_norm_le
#print ArithmeticErrorIntegrabilityScratch.actualLaplace_boundary_norm_le
#print axioms ArithmeticErrorIntegrabilityScratch.actualLaplace_boundary_norm_le
#check @ArithmeticErrorIntegrabilityScratch.arithmeticErrorSq
#print ArithmeticErrorIntegrabilityScratch.arithmeticErrorSq
#print axioms ArithmeticErrorIntegrabilityScratch.arithmeticErrorSq
#check @ArithmeticErrorIntegrabilityScratch.arithmetic_error_sq_integrable
#print ArithmeticErrorIntegrabilityScratch.arithmetic_error_sq_integrable
#print axioms ArithmeticErrorIntegrabilityScratch.arithmetic_error_sq_integrable
```
