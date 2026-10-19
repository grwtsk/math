import FormalResearch.RiemannHypothesis.Conversation.FiniteObstructions

/-!
# The retained low/high boundary certificate has its exact knee

Batch 03's CL03-01 is exact exponent bookkeeping on the stated retained
geometry. Both strict margins are equivalent to beta exceeding the maximum
of the low and high certificate. Improving gamma past its knee cannot improve
the unchanged high certificate. This supplies no Gram, contour, exceptional
row or source-rate estimate and does not validate the external manuscript.

Human improvement target and fixed-geometry direction: grwtsk contributors.
Local rational threshold interface and Lean proofs: OpenAI Codex. External
source evidence and the actual analytic estimates retain their separate owners.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.BoundaryCertificate

noncomputable section

/-- The certificate in this module, with the following exact parameterization.

def certificate (γ : ℝ) : ℝ := max (83 / 96 + γ / 16) (385511 / 440640)
-/
def certificate (γ : ℝ) : ℝ := max (83 / 96 + γ / 16) (385511 / 440640)
/-- The knee in this module, with the following exact parameterization.

def knee : ℝ := 4541 / 27540
-/
def knee : ℝ := 4541 / 27540

theorem knee_equality : (83 / 96 : ℝ) + knee / 16 = 385511 / 440640 := by
  norm_num [knee]

theorem knee_improvement : (1 / 6 : ℝ) - knee = 49 / 27540 := by norm_num [knee]

theorem exact_two_margin_certificate (β γ : ℝ) :
    ((17 / 96 + γ / 16 : ℝ) < β - 11 / 16 ∧
      (3 / 16 - 49 / 440640 : ℝ) < β - 11 / 16) ↔ certificate γ < β := by
  rw [certificate, max_lt_iff]
  constructor <;> rintro ⟨hl, hh⟩ <;> constructor <;> linarith

theorem below_knee_high_certificate_controls {γ : ℝ} (hγ : γ ≤ knee) :
    certificate γ = 385511 / 440640 := by
  apply max_eq_right
  linarith [knee_equality]

theorem above_knee_low_certificate_controls {γ : ℝ} (hγ : knee ≤ γ) :
    certificate γ = 83 / 96 + γ / 16 := by
  apply max_eq_left
  linarith [knee_equality]

theorem unchanged_high_certificate_is_floor (γ : ℝ) :
    (385511 / 440640 : ℝ) ≤ certificate γ := le_max_right _ _

theorem certificate_monotone : Monotone certificate := by
  intro γ δ h
  apply max_le_max _ le_rfl
  linarith

theorem further_low_improvement_cannot_move_retained_floor {γ δ : ℝ}
    (hγ : γ ≤ knee) (hδ : δ ≤ knee) : certificate γ = certificate δ := by
  rw [below_knee_high_certificate_controls hγ, below_knee_high_certificate_controls hδ]

end
end GRWTSK.RiemannHypothesis.Conversation.BoundaryCertificate
