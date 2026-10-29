-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.SourcePolynomialLeadingError.Variantad2494a4d02e8cb1bdc5879e8823f8c9915bf6fc197edc5b8e6942a115b534c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ad2494a4d02e8cb1bdc5879e8823f8c9915bf6fc197edc5b8e6942a115b534c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.SourcePolynomialLeadingError.Variantad2494a4d02e8cb1bdc5879e8823f8c9915bf6fc197edc5b8e6942a115b534c7","mathematical_subject":"Topology.GeneralTopology","original_sha256":"ad2494a4d02e8cb1bdc5879e8823f8c9915bf6fc197edc5b8e6942a115b534c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-controller-admission/ReducedFilterInverse.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.CorrectedControllerAnalytic
import Mathlib.Analysis.Normed.Group.Bounded

/-! Uniform polynomial inverse bounds for the actual reduced source filter. -/

namespace GRWTSK.Topology.GeneralTopology.SourcePolynomialLeadingError.Variantad2494a4d02e8cb1bdc5879e8823f8c9915bf6fc197edc5b8e6942a115b534c7

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
