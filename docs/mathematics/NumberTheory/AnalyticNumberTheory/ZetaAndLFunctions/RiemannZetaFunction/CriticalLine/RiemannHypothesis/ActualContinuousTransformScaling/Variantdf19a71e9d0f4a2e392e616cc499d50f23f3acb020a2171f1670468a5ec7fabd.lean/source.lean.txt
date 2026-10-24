import FormalResearch.RiemannHypothesis.Conversation.ActualContinuousTransformInput
import FormalResearch.RiemannHypothesis.Conversation.ActualWeightedTransformScaling

/-!
# Continuous comparison price at every positive physical source scale

Rescaling the continuous input preserves its positive-domain continuity and
complete magnitude class. The literal J(Z exp u) transform keeps all source
points and its exact Z^a factor. Continuous inputs therefore approach the
full price at every positive Z, and the complete continuous-input budget
covers exactly that price. Human physical-scale and full-input direction:
grwtsk contributors. Local scaling consumer: OpenAI Codex. The comparison
functions are not identified with the actual signed arithmetic probe.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualContinuousTransformScaling
open ActualWeightedTransformNorm ActualWeightedTransformScaling ActualContinuousTransformInput
open MeasureTheory Set
noncomputable section

def rescaledInput (a Z : ℝ) (J : ℝ → ℝ) (x : ℝ) : ℝ := Z ^ a * J (x / Z)

theorem complete_rescaled_input_retains_class {a Z : ℝ} (hZ : 0 < Z)
    (J : ℝ → ℝ) (hJ : ∀ x : ℝ, 0 < x → |J x| ≤ x ^ a) :
    ∀ x : ℝ, 0 < x → |rescaledInput a Z J x| ≤ x ^ a := by
  intro x hx
  have hZa := Real.rpow_pos_of_pos hZ a
  unfold rescaledInput
  rw [abs_mul, abs_of_pos hZa]
  calc
    _ ≤ Z ^ a * (x / Z) ^ a :=
      mul_le_mul_of_nonneg_left (hJ _ (div_pos hx hZ)) hZa.le
    _ = x ^ a := by rw [Real.div_rpow hx.le hZ.le]; field_simp

theorem complete_rescaled_input_continuousOn {a Z : ℝ} (hZ : 0 < Z)
    (J : ℝ → ℝ) (hJ : ContinuousOn J (Ioi 0)) :
    ContinuousOn (rescaledInput a Z J) (Ioi 0) := by
  exact (hJ.comp (continuous_id.div_const Z).continuousOn
    (fun x hx ↦ div_pos hx hZ)).const_mul (Z ^ a)

theorem literal_rescaled_transform_exact {Z : ℝ} (hZ : 0 < Z) (A a : ℝ) (J : ℝ → ℝ) :
    transformAt A (rescaledInput a Z J) Z = Z ^ a * transform A J := by
  unfold transformAt rescaledInput transform
  have he (u : ℝ) : Z * Real.exp u / Z = Real.exp u := by field_simp
  simp_rw [he]
  rw [← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_congr
  intro u _
  ring

theorem continuous_inputs_approach_every_positive_scale {A a Z : ℝ}
    (hA : 1 ≤ A) (hZ : 0 < Z) {δ : ℝ} (hδ : 0 < δ) :
    ∃ J : ℝ → ℝ, ContinuousOn J (Ioi 0) ∧
      (∀ x : ℝ, 0 < x → |J x| ≤ x ^ a) ∧
      Z ^ a * normPrice A (a + 3 / 16) - transformAt A J Z < δ := by
  have hZa := Real.rpow_pos_of_pos hZ a
  obtain ⟨J, hcont, hclass, hnear⟩ :=
    continuous_inputs_approach_native_price (a := a) hA (div_pos hδ hZa)
  refine ⟨rescaledInput a Z J, complete_rescaled_input_continuousOn hZ J hcont,
    complete_rescaled_input_retains_class hZ J hclass, ?_⟩
  rw [literal_rescaled_transform_exact hZ, ← mul_sub]
  have h := mul_lt_mul_of_pos_left hnear hZa
  rw [mul_div_cancel₀ δ hZa.ne'] at h
  exact h

theorem exact_continuous_input_budget_at_every_positive_scale {A a Z B : ℝ}
    (hA : 1 ≤ A) (hZ : 0 < Z) :
    (∀ J : ℝ → ℝ, ContinuousOn J (Ioi 0) →
      (∀ x : ℝ, 0 < x → |J x| ≤ x ^ a) → |transformAt A J Z| ≤ B) ↔
      Z ^ a * normPrice A (a + 3 / 16) ≤ B := by
  constructor
  · intro h
    apply le_of_forall_pos_le_add
    intro δ hδ
    obtain ⟨J, hcont, hclass, hnear⟩ :=
      continuous_inputs_approach_every_positive_scale (a := a) hA hZ hδ
    have hbudget := h J hcont hclass
    have hsigned := (le_abs_self (transformAt A J Z)).trans hbudget
    linarith
  · intro h J _hcont hclass
    exact (actual_transform_triangle_at_every_positive_scale hA hZ J hclass).trans h

end
end GRWTSK.RiemannHypothesis.Conversation.ActualContinuousTransformScaling
