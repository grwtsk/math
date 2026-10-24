import FormalResearch.RiemannHypothesis.SourceCompensatedFourier
import FormalResearch.RiemannHypothesis.SourceProjectionReadout
import FormalResearch.RiemannHypothesis.SourceKapitzaQuadratureCurvature

/-!
# Projection rows for the literal compensated arithmetic operator

This adapter uses the complete all-integer operator on every projected state. Its real signed
coefficients establish self-adjointness without substituting a scalar compensation that agrees
only on the original source. The combined rows retain diagonal and cross terms. The uniform
source-generated row-square budget remains an explicit, unpaid premise of issue 443.

grwtsk contributors supplied the research direction and source-preservation requirements. OpenAI
Codex supplied this adapter and its direct application to the existing all-real estimate return.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceCompensatedProjection

open scoped InnerProductSpace BigOperators
open SourceReflectionDuality SourceScaleL2Continuity SourceMangoldtInteraction
open SourceCompensatedFourier SourceProjectionReadout SourceKapitzaCompensatedReadout
open CompensatedReadout
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

/-- Every coefficient is real, including every negative integer compensation. -/
theorem compensatedInteraction_inner_symmetric (A : ℝ) (f g : ComplexL2) :
    ⟪compensatedInteraction A f, g⟫_ℂ = ⟪f, compensatedInteraction A g⟫_ℂ := by
  simp only [compensatedInteraction_apply, sum_inner, inner_sum, inner_smul_left,
    inner_smul_right, Complex.conj_ofReal, symmetricTranslation_inner_symmetric]

/-- Self-adjointness holds on arbitrary intermediate states, not only on the unit source. -/
theorem compensatedInteraction_selfAdjoint (A : ℝ) :
    IsSelfAdjoint (compensatedInteraction A) :=
  ContinuousLinearMap.isSelfAdjoint_iff_isSymmetric.mpr
    (compensatedInteraction_inner_symmetric A)

variable (V : ℕ → Submodule ℂ ComplexL2) [∀ j, (V j).HasOrthogonalProjection]

/-- The existing full-row consumer now applies to the actual compensated operator. -/
theorem compensated_abs_le_of_projection_rows (hV : Monotone V) (hzero : V 0 = ⊥)
    (A : ℝ) (hA : 0 < A) (n : ℕ) (hq : originalSourceState A ∈ V n) (B : ℝ)
    (hB : (∑ j ∈ Finset.range n,
      ‖combinedProjectionRow V (compensatedInteraction A)
        (originalSourceState A) j‖ ^ 2) ≤ B) :
    |compensatedSourceSum A| ≤ Real.sqrt B := by
  have h := full_readout_abs_le_of_projection_rows V hV hzero (compensatedInteraction A)
    (compensatedInteraction_selfAdjoint A) (originalSourceState A) n hq B hB
  rw [originalSourceState_norm hA, one_mul] at h
  simpa only [compensatedSourceSum_eq_quadratic hA, quadraticReadout] using h

/-- Scale-specific refinements with a uniform full-row budget return the original estimate. -/
theorem estimate_of_uniform_projection_rows
    (W : ℝ → ℕ → Submodule ℂ ComplexL2) [∀ A j, (W A j).HasOrthogonalProjection]
    (hW : ∀ A, Monotone (W A)) (hzero : ∀ A, W A 0 = ⊥)
    (R B : ℝ) (hR : 1 ≤ R)
    (hrows : ∀ A : ℝ, R ≤ A → ∃ n : ℕ,
      originalSourceState A ∈ W A n ∧
      (∑ j ∈ Finset.range n,
        ‖combinedProjectionRow (W A) (compensatedInteraction A)
          (originalSourceState A) j‖ ^ 2) ≤ B) :
    CorrelationAssembly.EstimateObligation := by
  apply SourceKapitzaQuadratureCurvature.estimate_of_compensated_cap R (Real.sqrt B) hR
  intro A hA
  obtain ⟨n, hq, hB⟩ := hrows A hA
  exact (le_abs_self _).trans
    (compensated_abs_le_of_projection_rows (W A) (hW A) (hzero A) A (by linarith) n hq B hB)

end FormalResearch.RiemannHypothesis.SourceCompensatedProjection
