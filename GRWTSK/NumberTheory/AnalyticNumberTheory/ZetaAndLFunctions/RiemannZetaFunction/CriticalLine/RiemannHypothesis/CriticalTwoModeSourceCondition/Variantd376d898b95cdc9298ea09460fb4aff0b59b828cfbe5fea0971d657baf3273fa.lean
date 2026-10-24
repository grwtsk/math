import FormalResearch.RiemannHypothesis.Conversation.CriticalTwoModeDiophantine

/-!
# Exact rational and linear forms of the two-mode source condition

The source's c/m^2 rational-approximation condition and its c/m linear
condition agree with the explicit nonzero-integer-denominator predicate.
The constant is retained in both directions. This is a compatibility proof,
not a certificate for a chosen irrational frequency. Human source-condition
direction: grwtsk contributors. Local algebraic adapter: OpenAI Codex.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeSourceCondition
open CriticalTwoModeDiophantine
noncomputable section

theorem positive_denominator_linear_rational_iff (α c : ℝ) (m : ℕ) (hm : 1 ≤ m) (n : ℤ) :
    c/(m : ℝ) ≤ |α*(m : ℝ)-(n : ℝ)| ↔
      c/(m : ℝ)^2 ≤ |α-(n : ℝ)/(m : ℝ)| := by
  have hmR : (0 : ℝ) < (m : ℝ) := by exact_mod_cast (by omega : 0 < m)
  have he : α-(n : ℝ)/(m : ℝ) = (α*(m : ℝ)-(n : ℝ))/(m : ℝ) := by
    field_simp [hmR.ne']
  have hc : c/(m : ℝ)^2*(m : ℝ) = c/(m : ℝ) := by
    field_simp [hmR.ne']
  rw [he,abs_div,abs_of_pos hmR,le_div_iff₀ hmR,hc]

theorem badly_approximable_iff_rational_source_condition (α : ℝ) :
    BadlyApproximable α ↔ ∃ c : ℝ, 0 < c ∧ ∀ m : ℕ, 1 ≤ m → ∀ n : ℤ,
      c/(m : ℝ)^2 ≤ |α-(n : ℝ)/(m : ℝ)| := by
  rw [badly_approximable_iff_positive_denominators]
  constructor
  · rintro ⟨c,hc,hbound⟩
    exact ⟨c,hc,fun m hm n ↦ (positive_denominator_linear_rational_iff α c m hm n).mp (hbound m hm n)⟩
  · rintro ⟨c,hc,hbound⟩
    exact ⟨c,hc,fun m hm n ↦ (positive_denominator_linear_rational_iff α c m hm n).mpr (hbound m hm n)⟩

end
end GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeSourceCondition
