import FormalResearch.RiemannHypothesis.Conversation.CorrectionOptimization

/-!
# The balanced splitter's unit correction pays the least coefficient mass

The reciprocal moment and the unweighted coefficient cost are distinct. The
unit correction attains the lower bound. A remote correction has the same
reciprocal moment but its coefficient cost grows with its address; neutrality
alone therefore gives no uniform cost bound.

Source: audited RH conversation Batch 17. Human direction: grwtsk contributors.
Local finite interface and Lean implementation: OpenAI Codex.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.CorrectionCost

open scoped BigOperators
noncomputable section

/-- This is the actual coefficient L1 cost, not only the reciprocal-weighted cost. -/
theorem reciprocal_moment_l1_lower (S : Finset ℕ) (r : ℕ → ℝ)
    (hS : ∀ n ∈ S, 1 ≤ n) :
    |∑ n ∈ S, r n / (n : ℝ)| ≤ ∑ n ∈ S, |r n| := by
  calc
    _ ≤ ∑ n ∈ S, |r n / (n : ℝ)| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ S, |r n| := by
      apply Finset.sum_le_sum
      intro n hn
      have hnr : (1 : ℝ) ≤ n := by exact_mod_cast hS n hn
      rw [abs_div, abs_of_nonneg (show (0 : ℝ) ≤ (n : ℝ) from Nat.cast_nonneg n)]
      exact div_le_self (abs_nonneg _) hnr

theorem unit_moment (S : Finset ℕ) (h1 : 1 ∈ S) (m : ℝ) :
    (∑ n ∈ S, (if n = 1 then m else 0) / (n : ℝ)) = m := by
  simp only [ite_div, zero_div]
  simp [h1]

theorem unit_cost (S : Finset ℕ) (h1 : 1 ∈ S) (m : ℝ) :
    (∑ n ∈ S, |if n = 1 then m else 0|) = |m| := by
  simp only [apply_ite abs, abs_zero]
  simp [h1]

/-- The unit-supported correction is a minimizer among all corrections
with the same actual reciprocal moment. No uniqueness is inferred. -/
theorem unit_correction_minimal (S : Finset ℕ) (h1 : 1 ∈ S)
    (hS : ∀ n ∈ S, 1 ≤ n) (r : ℕ → ℝ) (m : ℝ)
    (hm : (∑ n ∈ S, r n / (n : ℝ)) = m) :
    (∑ n ∈ S, |if n = 1 then m else 0|) ≤ ∑ n ∈ S, |r n| := by
  rw [unit_cost S h1]
  simpa only [hm] using reciprocal_moment_l1_lower S r hS

theorem remote_moment {q : ℕ} (hq : 1 ≤ q) (m : ℝ) :
    (m * q) / (q : ℝ) = m := by
  have hq0 : (q : ℝ) ≠ 0 := by exact_mod_cast (by omega : q ≠ 0)
  field_simp

theorem remote_cost (q : ℕ) (m : ℝ) : |m * q| = |m| * q := by
  rw [abs_mul, abs_of_nonneg (show (0 : ℝ) ≤ (q : ℝ) from Nat.cast_nonneg q)]

/-- A nonzero reciprocal moment admits arbitrarily expensive single-site corrections. -/
theorem remote_cost_unbounded {m : ℝ} (hm : m ≠ 0) (B : ℝ) :
    ∃ q : ℕ, 1 ≤ q ∧ (m * q) / (q : ℝ) = m ∧ B < |m * q| := by
  have hm0 : 0 < |m| := abs_pos.mpr hm
  obtain ⟨q, hq⟩ := exists_nat_gt (max (B / |m|) 1)
  have hq1 : 1 ≤ q := by
    have h := (le_max_right (B / |m|) 1).trans_lt hq
    exact_mod_cast h.le
  refine ⟨q, hq1, remote_moment hq1 m, ?_⟩
  rw [remote_cost]
  have h := (le_max_left (B / |m|) 1).trans_lt hq
  have h' := (div_lt_iff₀ hm0).mp h
  nlinarith

end
end GRWTSK.RiemannHypothesis.Conversation.CorrectionCost
