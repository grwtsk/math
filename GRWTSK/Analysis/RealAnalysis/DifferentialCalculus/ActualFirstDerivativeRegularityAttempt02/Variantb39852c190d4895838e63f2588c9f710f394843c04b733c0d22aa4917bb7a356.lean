-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualFirstDerivativeEqProjection.Variant2646d21adfb0a6669cb98cfe93b904da804025d29cdc868ee9bc4e7a0b796da4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2646d21adfb0a6669cb98cfe93b904da804025d29cdc868ee9bc4e7a0b796da4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualFirstDerivativeEqProjection.Variant2646d21adfb0a6669cb98cfe93b904da804025d29cdc868ee9bc4e7a0b796da4","mathematical_subject":"Analysis.Calculus","original_sha256":"2646d21adfb0a6669cb98cfe93b904da804025d29cdc868ee9bc4e7a0b796da4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-challenge-next/ActualFirstDerivativeRegularity.attempt02.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualSourceWeakSecondDerivative
import Mathlib.Analysis.Calculus.ContDiff.RCLike
import Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun

/-!
Global Lipschitz and absolute continuity of the actual source first derivative.
Projection to the closed support retains its zero endpoint traces. Ordinary
derivatives of this first derivative are asserted only almost everywhere;
its actual second-derivative profile has nonzero interior endpoint traces.
AI attribution: OpenAI Codex independent mathematical research.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualFirstDerivativeEqProjection.Variant2646d21adfb0a6669cb98cfe93b904da804025d29cdc868ee9bc4e7a0b796da4

set_option autoImplicit false

namespace RH16IndependentChallengeNext

open MeasureTheory Set Filter
open scoped Topology NNReal
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

noncomputable section

/-- Zero endpoint traces make the exact zero extension a polynomial composed with projection. -/
theorem actual_first_derivative_eq_projection (A : ℝ) (hA : 0 < A) :
    deriv (normalizedTest explicitSecondDerivative A) = fun x =>
      normalizedInteriorDerivative A (projIcc (-A) A (by linarith) x) := by
  have hab : -A ≤ A := by linarith
  have hl := (normalizedInterior_frontier A hA (-A) (by rw [frontier_Icc hab]; simp)).2
  have hr := (normalizedInterior_frontier A hA A (by rw [frontier_Icc hab]; simp)).2
  funext x
  rw [actual_first_derivative_eq_indicator A hA]
  by_cases hx : x ∈ Icc (-A) A
  · rw [indicator_of_mem hx, projIcc_of_mem hab hx]
  · rw [indicator_of_notMem hx]
    have hout : x < -A ∨ A < x := by
      simpa only [mem_Icc, not_and_or, not_le] using hx
    rcases hout with hx | hx
    · rw [projIcc_of_le_left hab hx.le]
      exact hl.symm
    · rw [projIcc_of_right_le hab hx.le]
      exact hr.symm

/-- The actual first derivative is globally Lipschitz; no global ordinary second derivative is used. -/
theorem actual_first_derivative_lipschitz (A : ℝ) (hA : 0 < A) :
    ∃ K : ℝ≥0, LipschitzWith K (deriv (normalizedTest explicitSecondDerivative A)) := by
  have hp : ContDiff ℝ 1 (normalizedInteriorDerivative A) := by
    unfold normalizedInteriorDerivative thirdInterior firstInterior
    fun_prop
  obtain ⟨K, hK⟩ := hp.contDiffOn.exists_lipschitzOnWith
    (s := Icc (-A) A) (by norm_num) (convex_Icc _ _) isCompact_Icc
  have hab : -A ≤ A := by linarith
  have hc := hK.to_restrict.comp (LipschitzWith.projIcc hab)
  refine ⟨K, ?_⟩
  rw [actual_first_derivative_eq_projection A hA]
  simpa only [mul_one, Function.comp_def] using hc

/-- Actual first-derivative absolute continuity is concluded on every finite real interval. -/
theorem actual_first_derivative_absolutelyContinuous (A : ℝ) (hA : 0 < A) (a b : ℝ) :
    AbsolutelyContinuousOnInterval (deriv (normalizedTest explicitSecondDerivative A)) a b := by
  obtain ⟨K, hK⟩ := actual_first_derivative_lipschitz A hA
  exact hK.lipschitzOnWith.absolutelyContinuousOnInterval

/-- Ordinary derivatives away from both support seams have the actual weak polynomial values. -/
theorem actual_first_derivative_hasDerivAt_of_ne_endpoints (A x : ℝ) (hA : 0 < A)
    (hx0 : x ≠ -A) (hx1 : x ≠ A) :
    HasDerivAt (deriv (normalizedTest explicitSecondDerivative A))
      (actualSecondProfile A x) x := by
  by_cases hm : x ∈ Icc (-A) A
  · have hxi : x ∈ Ioo (-A) A :=
      ⟨lt_of_le_of_ne hm.1 hx0.symm, lt_of_le_of_ne hm.2 hx1⟩
    have he : deriv (normalizedTest explicitSecondDerivative A) =ᶠ[𝓝 x]
        normalizedInteriorDerivative A := by
      filter_upwards [isOpen_Ioo.mem_nhds hxi] with y hy
      rw [actual_first_derivative_eq_indicator A hA,
        indicator_of_mem (Ioo_subset_Icc_self hy)]
    rw [actualSecondProfile_eq_interior A x hA hm]
    exact (normalizedInteriorDerivative_hasDerivAt_second A x).congr_of_eventuallyEq he
  · have he : deriv (normalizedTest explicitSecondDerivative A) =ᶠ[𝓝 x]
        fun _ => (0 : ℝ) := by
      filter_upwards [isClosed_Icc.isOpen_compl.mem_nhds hm] with y hy
      rw [actual_first_derivative_eq_indicator A hA, indicator_of_notMem hy]
    have hv : actualSecondProfile A x = 0 := by
      rw [actualSecondProfile_eq_indicator A hA, indicator_of_notMem hm]
    rw [hv]
    exact (hasDerivAt_const x (0 : ℝ)).congr_of_eventuallyEq he

/-- Almost-everywhere ordinary derivatives have the actual weak polynomial values. -/
theorem actual_first_derivative_ae_hasDerivAt (A : ℝ) (hA : 0 < A) :
    ∀ᵐ x : ℝ, HasDerivAt (deriv (normalizedTest explicitSecondDerivative A))
      (actualSecondProfile A x) x := by
  filter_upwards [volume.ae_ne (-A), volume.ae_ne A] with x hx0 hx1
  exact actual_first_derivative_hasDerivAt_of_ne_endpoints A x hA hx0 hx1

end
end RH16IndependentChallengeNext
