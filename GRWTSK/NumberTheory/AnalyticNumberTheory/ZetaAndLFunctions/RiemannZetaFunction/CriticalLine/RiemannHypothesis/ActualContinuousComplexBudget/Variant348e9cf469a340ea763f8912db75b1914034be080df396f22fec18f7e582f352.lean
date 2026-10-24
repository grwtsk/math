import FormalResearch.RiemannHypothesis.Conversation.ActualContinuousTransformScaling
import FormalResearch.RiemannHypothesis.Conversation.ActualComplexTransformBudget

/-!
# Complete continuous complex-input budget at every positive source scale

Continuous real comparison inputs embed into the complex magnitude class
and approach its exact full-window price. The actual complex product is
genuinely interval-integrable for every positive-domain continuous input.
The literal physical scale and all source points remain in the transform.
Human full input-class direction: grwtsk contributors. Local complex continuity
and complete-budget consumer: OpenAI Codex. Qualified source and Mathlib
identities retain their origins; no arithmetic probe is substituted.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualContinuousComplexBudget
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ActualContinuousTransformScaling ActualComplexTransformBudget ActualWeightedTransformNorm
open ActualWeightedTransformScaling CorrelationRegularity MeasureTheory Set
noncomputable section
local notation "C" => sourceCorrelation Realization.explicitSecondDerivative

theorem real_embedding_retains_positive_domain_continuity (J : ℝ → ℝ)
    (hJ : ContinuousOn J (Ioi 0)) : ContinuousOn (fun x ↦ (J x : ℂ)) (Ioi 0) :=
  Complex.continuous_ofReal.comp_continuousOn hJ

theorem every_continuous_complex_product_genuinely_integrable {A Z : ℝ}
    (hA : 1 ≤ A) (hZ : 0 < Z) (J : ℝ → ℂ) (hJ : ContinuousOn J (Ioi 0)) :
    IntervalIntegrable (fun u ↦ ((C A u * Real.exp (3 * u / 16) : ℝ) : ℂ) *
      J (Z * Real.exp u)) volume (-2 * A) (2 * A) := by
  have hmap : Continuous (fun u ↦ J (Z * Real.exp u)) := by
    apply continuous_iff_continuousAt.mpr
    intro u
    have ht : ContinuousAt (fun t : ℝ ↦ Z * Real.exp t) u :=
      (continuous_const.mul Real.continuous_exp).continuousAt
    have hj : ContinuousAt J (Z * Real.exp u) :=
      hJ.continuousAt (Ioi_mem_nhds (mul_pos hZ (Real.exp_pos u)))
    exact ContinuousAt.comp (f := fun t : ℝ ↦ Z * Real.exp t) (g := J) (x := u) hj ht
  have hfactor : Continuous (fun u ↦ ((C A u * Real.exp (3 * u / 16) : ℝ) : ℂ)) :=
    Complex.continuous_ofReal.comp
      ((sourceCorrelation_contDiff A (by linarith)).continuous.mul
        (Real.continuous_exp.comp ((continuous_const.mul continuous_id).div_const 16)))
  exact (hfactor.mul hmap).intervalIntegrable _ _

theorem continuous_complex_inputs_approach_every_positive_scale {A a Z : ℝ}
    (hA : 1 ≤ A) (hZ : 0 < Z) {δ : ℝ} (hδ : 0 < δ) :
    ∃ J : ℝ → ℂ, ContinuousOn J (Ioi 0) ∧
      (∀ x : ℝ, 0 < x → ‖J x‖ ≤ x ^ a) ∧
      Z ^ a * normPrice A (a + 3 / 16) - ‖complexTransformAt A J Z‖ < δ := by
  obtain ⟨J, hcont, hclass, hnear⟩ :=
    continuous_inputs_approach_every_positive_scale (a := a) hA hZ hδ
  refine ⟨fun x ↦ (J x : ℂ), real_embedding_retains_positive_domain_continuity J hcont,
    fun x hx ↦ ?_, ?_⟩
  · simpa only [Complex.norm_real, Real.norm_eq_abs] using hclass x hx
  · rw [embedded_real_input_retains_literal_transform, Complex.norm_real, Real.norm_eq_abs]
    have h := le_abs_self (transformAt A J Z)
    linarith

theorem exact_continuous_complex_input_budget_every_positive_scale {A a Z B : ℝ}
    (hA : 1 ≤ A) (hZ : 0 < Z) :
    (∀ J : ℝ → ℂ, ContinuousOn J (Ioi 0) →
      (∀ x : ℝ, 0 < x → ‖J x‖ ≤ x ^ a) → ‖complexTransformAt A J Z‖ ≤ B) ↔
      Z ^ a * normPrice A (a + 3 / 16) ≤ B := by
  constructor
  · intro h
    apply le_of_forall_pos_le_add
    intro δ hδ
    obtain ⟨J, hcont, hclass, hnear⟩ :=
      continuous_complex_inputs_approach_every_positive_scale (a := a) hA hZ hδ
    have hbudget := h J hcont hclass
    linarith
  · intro h J _hcont hclass
    exact (complete_complex_magnitude_triangle hA hZ J hclass).trans h

end
end GRWTSK.RiemannHypothesis.Conversation.ActualContinuousComplexBudget
