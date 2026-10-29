import FormalResearch.RiemannHypothesis.Conversation.AttainedCausalDuality

/-!
# Bounded causal prefixes do not require a summable positive payment

Batch 07's repeated negative-first pair is one literal infinite sequence.
Every signed prefix is nonpositive and every finite causal maximum is zero,
while the positive payment through 2N steps is exactly N and is not summable.
The actual prime source is not replaced by this comparison sequence.

Human chronological-credit direction: grwtsk contributors. Local sequence,
infinite countermodel and finite consumer: OpenAI Codex. Infinite-sum and
finite-order infrastructure retain their Mathlib identities.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.InfiniteCausalRecords

open CausalDuality AttainedCausalDuality
open scoped BigOperators
noncomputable section

def negativeFirstWork (j : ℕ) : ℝ := if j % 2 = 0 then -1 else 1
def positivePayment (N : ℕ) : ℝ :=
  ∑ j ∈ Finset.range N, max (negativeFirstWork j) 0

theorem even_work (N : ℕ) : negativeFirstWork (2 * N) = -1 := by
  simp [negativeFirstWork]

theorem odd_work (N : ℕ) : negativeFirstWork (2 * N + 1) = 1 := by
  simp [negativeFirstWork, Nat.add_mod]

theorem even_prefix (N : ℕ) : prefixSum negativeFirstWork (2 * N) = 0 := by
  induction N with
  | zero => simp [prefixSum]
  | succ N ih =>
      rw [show 2 * (N + 1) = (2 * N + 1) + 1 by omega]
      rw [prefixSum_step, prefixSum_step, ih, even_work, odd_work]
      norm_num

theorem odd_prefix (N : ℕ) : prefixSum negativeFirstWork (2 * N + 1) = -1 := by
  rw [prefixSum_step, even_prefix, even_work]
  norm_num

theorem every_prefix_nonpositive (N : ℕ) : prefixSum negativeFirstWork N ≤ 0 := by
  have h : N = 2 * (N / 2) ∨ N = 2 * (N / 2) + 1 := by omega
  rcases h with h | h
  · rw [h, even_prefix]
  · rw [h, odd_prefix]
    norm_num

theorem causal_maximum_zero (N : ℕ) : maximumPrefix negativeFirstWork N = 0 := by
  obtain ⟨h0, _hb, K, _hK, hvalue⟩ := maximum_prefix_spec negativeFirstWork N
  have h := every_prefix_nonpositive K
  linarith

theorem all_causal_responses_nonpositive (N : ℕ) (weight : ℕ → ℝ)
    (hw : CausalTest weight N) :
    (∑ j ∈ Finset.range N, weight j * negativeFirstWork j) ≤ 0 := by
  exact causal_weight_bound (by norm_num) (fun j _ => every_prefix_nonpositive j)
    hw.1 hw.2.1 hw.2.2

theorem positive_payment_even (N : ℕ) : positivePayment (2 * N) = N := by
  induction N with
  | zero => simp [positivePayment]
  | succ N ih =>
      unfold positivePayment at *
      rw [show 2 * (N + 1) = (2 * N + 1) + 1 by omega]
      rw [Finset.sum_range_succ, Finset.sum_range_succ, ih, even_work, odd_work]
      push_cast
      norm_num

theorem positive_payment_unbounded (R : ℝ) : ∃ N : ℕ, R < positivePayment N := by
  obtain ⟨N, hN⟩ := exists_nat_gt R
  exact ⟨2 * N, by simpa only [positive_payment_even] using hN⟩

theorem positive_payment_not_summable :
    ¬ Summable (fun j : ℕ => max (negativeFirstWork j) 0) := by
  intro hsum
  obtain ⟨N, hN⟩ := positive_payment_unbounded
    (∑' j : ℕ, max (negativeFirstWork j) 0)
  have hle : positivePayment N ≤ ∑' j : ℕ, max (negativeFirstWork j) 0 :=
    hsum.sum_le_tsum (Finset.range N) (fun _ _ => le_max_right _ _)
  exact (not_lt_of_ge hle) hN

end
end GRWTSK.RiemannHypothesis.Conversation.InfiniteCausalRecords
