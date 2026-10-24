-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CorrelationBudget.Variant2f53d2af7c73fe956b62e1c4ef8d6ee176bc7251202223c39ca93558d5525a10","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2f53d2af7c73fe956b62e1c4ef8d6ee176bc7251202223c39ca93558d5525a10","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CorrelationBudget.Variant2f53d2af7c73fe956b62e1c4ef8d6ee176bc7251202223c39ca93558d5525a10","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"2f53d2af7c73fe956b62e1c4ef8d6ee176bc7251202223c39ca93558d5525a10","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/pnt-rate-one/SourcePNTPairingBound.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondDerivative
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CorrelationBudget.Variant2f53d2af7c73fe956b62e1c4ef8d6ee176bc7251202223c39ca93558d5525a10

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTPairingBound
open MeasureTheory Set Filter
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourceComparison
open Realization CorrelationRegularity CorrelationDifferenceMoments

noncomputable section

def correlationBudget : ℝ := Real.sqrt (65/3) + 1/2

theorem correlationBudget_nonneg : 0 ≤ correlationBudget := by
  unfold correlationBudget
  positivity

theorem correlationDifference_uniform (A t : ℝ) (hA : 1 ≤ A) :
    |correlationDifference A t| ≤ correlationBudget := by
  apply (CorrelationSecondDerivative.correlationDifference_abs_le A t hA).trans
  unfold correlationBudget
  exact add_le_add (div_le_self (Real.sqrt_nonneg _) hA) le_rfl

theorem sourcePairing_intervalIntegrable (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun t ↦ errorProfile t * sourceWeight explicitSecondDerivative A t)
      volume lowerEndpoint (2*A) := by
  let F := PrimePowerDescent.exponentialTest
    (sourceCorrelation explicitSecondDerivative A)
  have hc := sourceCorrelation_contDiff A (by linarith : 0 < A)
  have hf : ContDiff ℝ 1 F := PrimePowerDescent.exponentialTest_contDiff _ hc
  have hp := PrimePowerDescent.chebyshev_mul_deriv_intervalIntegrable
    (2*A) (source_interval_order A hA) F hf
  have he := (Real.continuous_exp.mul hf.continuous_deriv_one).intervalIntegrable (μ := volume)
    lowerEndpoint (2*A)
  have hi := hp.sub he
  simpa only [errorProfile, chebyshevError, sub_mul, Pi.mul_apply, F,
    PrimePowerDescent.exponentialTest_deriv _ hc, sourceWeight] using hi

theorem exp_half_intervalIntegral (a b : ℝ) :
    (∫ t in a..b, Real.exp (t/2)) = 2*Real.exp (b/2)-2*Real.exp (a/2) := by
  apply intervalIntegral.integral_eq_sub_of_hasDerivAt
  · intro t _
    convert (((hasDerivAt_id t).div_const 2).exp).const_mul 2 using 1 <;> first | rfl | (simp only [id_eq]; ring)
  · exact (Real.continuous_exp.comp (continuous_id.div_const 2)).intervalIntegrable a b

theorem source_integrand_bound (A t D : ℝ) (hA : 1 ≤ A) (hD : 0 ≤ D)
    (he : |errorProfile t| ≤ D * Real.exp t) :
    |errorProfile t * sourceWeight explicitSecondDerivative A t| ≤
      D * correlationBudget * Real.exp (t/2) := by
  change |errorProfile t * (Real.exp (-t/2) * correlationDifference A t)| ≤ _
  rw [abs_mul, abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    _ ≤ (D*Real.exp t) * (Real.exp (-t/2)*correlationBudget) :=
      mul_le_mul he
        (mul_le_mul_of_nonneg_left (correlationDifference_uniform A t hA)
          (Real.exp_nonneg _)) (by positivity) (by positivity)
    _ = D*correlationBudget*Real.exp (t/2) := by
      calc
        _ = D*correlationBudget*(Real.exp t*Real.exp (-t/2)) := by ring
        _ = _ := by rw [← Real.exp_add]; congr 2; ring

theorem source_interval_bound (A a b D : ℝ) (hA : 1 ≤ A) (hab : a ≤ b)
    (hD : 0 ≤ D) (he : ∀ t ∈ Icc a b, |errorProfile t| ≤ D*Real.exp t) :
    |∫ t in a..b, errorProfile t * sourceWeight explicitSecondDerivative A t| ≤
      2*D*correlationBudget*Real.exp (b/2) := by
  have hb := intervalIntegral.norm_integral_le_of_norm_le
    (f := fun t ↦ errorProfile t * sourceWeight explicitSecondDerivative A t) hab
    (Eventually.of_forall (fun t ht ↦ by
      simpa only [Real.norm_eq_abs, Function.comp_apply, id_eq] using source_integrand_bound A t D hA hD
        (he t ⟨ht.1.le, ht.2⟩)))
    (((Real.continuous_exp.comp (continuous_id.div_const 2)).const_mul
      (D*correlationBudget)).intervalIntegrable (μ := volume) a b)
  simp only [Function.comp_apply, id_eq] at hb
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul, exp_half_intervalIntegral] at hb
  apply hb.trans
  nlinarith [mul_nonneg hD correlationBudget_nonneg,
    Real.exp_pos (a/2), Real.exp_pos (b/2)]

theorem signedPairing_bound (A C c : ℝ) (hA : 1 ≤ A) (hstart : lowerEndpoint ≤ A)
    (hC : 0 ≤ C)
    (hglobal : ∀ t ∈ Icc lowerEndpoint A, |errorProfile t| ≤ C*Real.exp t)
    (hpnt : ∀ t ∈ Icc A (2*A),
      |errorProfile t| ≤ C*Real.exp t*Real.exp (-c*A^((1:ℝ)/10))) :
    |signedPairing explicitSecondDerivative A| ≤
      2*C*correlationBudget*(Real.exp (A/2) +
        Real.exp A*Real.exp (-c*A^((1:ℝ)/10))) := by
  have hAt : A ≤ 2*A := by linarith
  have hall := sourcePairing_intervalIntegrable A hA
  have hleft := hall.mono_set (show uIcc lowerEndpoint A ⊆ uIcc lowerEndpoint (2*A) by
    rw [uIcc_of_le hstart, uIcc_of_le (hstart.trans hAt)]
    exact Icc_subset_Icc le_rfl hAt)
  have hright := hall.mono_set (show uIcc A (2*A) ⊆ uIcc lowerEndpoint (2*A) by
    rw [uIcc_of_le hAt, uIcc_of_le (hstart.trans hAt)]
    exact Icc_subset_Icc hstart le_rfl)
  have htail : ∀ t ∈ Icc A (2*A), |errorProfile t| ≤
      (C*Real.exp (-c*A^((1:ℝ)/10)))*Real.exp t := by
    intro t ht
    simpa only [mul_assoc, mul_left_comm, mul_comm] using hpnt t ht

  unfold signedPairing
  rw [← intervalIntegral.integral_add_adjacent_intervals hleft hright]
  apply (abs_add_le _ _).trans
  have hl := source_interval_bound A lowerEndpoint A C hA hstart hC hglobal
  have hr := source_interval_bound A A (2*A) (C*Real.exp (-c*A^((1:ℝ)/10)))
    hA hAt (by positivity) htail
  calc
    _ ≤ 2*C*correlationBudget*Real.exp (A/2) +
        2*(C*Real.exp (-c*A^((1:ℝ)/10)))*correlationBudget*Real.exp ((2*A)/2) :=
      add_le_add hl hr
    _ = _ := by rw [mul_div_cancel_left₀ A (by norm_num : (2:ℝ) ≠ 0)]; ring

/-- The actual signed pairing inherits the checked quantitative arithmetic saving. -/
theorem signedPairing_eventual_bound :
    ∃ C ≥ 0, ∃ c > 0, ∀ᶠ A : ℝ in atTop,
      |signedPairing explicitSecondDerivative A| ≤
        C*(Real.exp (A/2) + Real.exp A*Real.exp (-c*A^((1:ℝ)/10))) := by
  obtain ⟨c, hc, C, hC, T, hT, htail⟩ := SourcePNTInput.errorProfile_quantitative_tail
  let D := max C (Real.log 4+5)
  have hD : 0 ≤ D := le_trans hC.le (le_max_left _ _)
  refine ⟨2*D*correlationBudget, mul_nonneg (mul_nonneg (by norm_num) hD)
    correlationBudget_nonneg, c, hc, ?_⟩
  filter_upwards [eventually_ge_atTop T] with A hA
  have hA1 : 1 ≤ A := hT.trans hA
  have hstart : lowerEndpoint ≤ A := by
    apply le_trans _ hA1
    unfold lowerEndpoint
    have h := Real.log_le_sub_one_of_pos (by norm_num : (0:ℝ) < 2)
    norm_num at h ⊢
    exact h
  apply signedPairing_bound A D c hA1 hstart hD
  · intro t _
    exact (SourcePNTInput.errorProfile_abs_le t).trans
      (mul_le_mul_of_nonneg_right (le_max_right _ _) (Real.exp_nonneg _))
  · intro t ht
    apply (htail A hA t ht.1).trans
    gcongr
    exact le_max_left _ _

end
end FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTPairingBound
