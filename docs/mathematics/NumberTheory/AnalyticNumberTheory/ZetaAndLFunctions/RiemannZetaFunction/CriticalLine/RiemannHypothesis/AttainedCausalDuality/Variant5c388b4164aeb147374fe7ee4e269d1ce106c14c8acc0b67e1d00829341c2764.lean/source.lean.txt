import FormalResearch.RiemannHypothesis.Conversation.CausalDuality
import FormalResearch.RiemannHypothesis.Conversation.AccordionConsumer

/-!
# The causal maximum is attained by a literal prefix indicator

Batch 07's finite supremum is an attained maximum. Every nonnegative decreasing
test of height at most one is bounded by the running prefix maximum, and a
prefix indicator reaches that value. The next consumer identifies this maximum
with the actual ordinary-prime record level on the unchanged native clock.
No bound on that prime maximum is supplied.

Human framework: grwtsk contributors. Local finite duality and actual-source
consumer: OpenAI Codex. Finite sums and order infrastructure retain Mathlib
origin; this is no independent originality or RH claim.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.AttainedCausalDuality

open CausalDuality ArithmeticPrimitive OpenArithmeticSuppliers
open scoped BigOperators
noncomputable section

/-- The maximum prefix in this module, with the following exact parameterization.

def maximumPrefix (a : ℕ → ℝ) : ℕ → ℝ | 0 => 0 | N + 1 => max (maximumPrefix a N) (prefixSum a
(N + 1))
-/
def maximumPrefix (a : ℕ → ℝ) : ℕ → ℝ
  | 0 => 0
  | N + 1 => max (maximumPrefix a N) (prefixSum a (N + 1))

/-- The causal test in this module, with the following exact parameterization.

This defines a condition; no witness is supplied by the definition.
def CausalTest (weight : ℕ → ℝ) (N : ℕ) : Prop := 0 ≤ weight N ∧ (∀ k < N, weight (k + 1) ≤
weight k) ∧ weight 0 ≤ 1
-/
def CausalTest (weight : ℕ → ℝ) (N : ℕ) : Prop :=
  0 ≤ weight N ∧ (∀ k < N, weight (k + 1) ≤ weight k) ∧ weight 0 ≤ 1

theorem maximum_prefix_spec (a : ℕ → ℝ) (N : ℕ) :
    0 ≤ maximumPrefix a N ∧
      (∀ K ≤ N, prefixSum a K ≤ maximumPrefix a N) ∧
      ∃ K ≤ N, prefixSum a K = maximumPrefix a N := by
  induction N with
  | zero => simp [maximumPrefix, prefixSum]
  | succ N ih =>
      obtain ⟨h0, hbound, K, hK, hvalue⟩ := ih
      rcases le_total (maximumPrefix a N) (prefixSum a (N + 1)) with hnew | hold
      · rw [maximumPrefix, max_eq_right hnew]
        refine ⟨h0.trans hnew, ?_, N + 1, le_rfl, rfl⟩
        intro j hj
        rcases lt_or_eq_of_le hj with hjlt | hjeq
        · exact (hbound j (by omega)).trans hnew
        · subst j
          rfl
      · rw [maximumPrefix, max_eq_left hold]
        refine ⟨h0, ?_, K, by omega, hvalue⟩
        intro j hj
        rcases lt_or_eq_of_le hj with hjlt | hjeq
        · exact hbound j (by omega)
        · subst j
          exact hold

theorem maximum_is_greatest_causal_response (a : ℕ → ℝ) (N : ℕ) :
    IsGreatest {r : ℝ | ∃ weight : ℕ → ℝ, CausalTest weight N ∧
      (∑ k ∈ Finset.range N, weight k * a k) = r} (maximumPrefix a N) := by
  obtain ⟨h0, hbound, K, hK, hvalue⟩ := maximum_prefix_spec a N
  constructor
  · let weight : ℕ → ℝ := fun k => if k < K then 1 else 0
    refine ⟨weight, ?_, ?_⟩
    · refine ⟨by simp [weight, Nat.not_lt.mpr hK], ?_, ?_⟩
      · intro k _hk
        by_cases hk1 : k + 1 < K
        · have hk : k < K := by omega
          simp [weight, hk, hk1]
        · by_cases hk : k < K <;> simp [weight, hk, hk1]
      · simp only [weight]
        split_ifs <;> norm_num
    · exact (prefix_indicator_sum a N K hK).trans hvalue
  · rintro r ⟨weight, ⟨hw, hm, hu⟩, hreadout⟩
    rw [← hreadout]
    exact causal_weight_bound h0 hbound hw hm hu

/-- The actual prime work in this module, with the following exact parameterization.

def actualPrimeWork (N j : ℕ) : ℝ := cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j) *
cellClock (N + j) (N + j + 1 : ℕ)
-/
def actualPrimeWork (N j : ℕ) : ℝ :=
  cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j) *
    cellClock (N + j) (N + j + 1 : ℕ)

theorem actual_prime_work_prefix {N : ℕ} (hN : 1 ≤ N) (K : ℕ) :
    prefixSum (actualPrimeWork N) K =
      ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N :=
  (AccordionConsumer.actual_signed_work_telescope hN K).symm

theorem actual_prime_record_eq_maximum {N : ℕ} (hN : 1 ≤ N) (K : ℕ) :
    primeRecordLevel N K = maximumPrefix (actualPrimeWork N) K := by
  induction K with
  | zero => rfl
  | succ K ih =>
      rw [primeRecordLevel, maximumPrefix, ih, actual_prime_work_prefix hN]
      simp only [Nat.add_assoc]

theorem actual_prime_record_is_greatest_causal_response {N : ℕ} (hN : 1 ≤ N) (K : ℕ) :
    IsGreatest {r : ℝ | ∃ weight : ℕ → ℝ, CausalTest weight K ∧
      (∑ j ∈ Finset.range K, weight j * actualPrimeWork N j) = r} (primeRecordLevel N K) := by
  rw [actual_prime_record_eq_maximum hN]
  exact maximum_is_greatest_causal_response _ K

end
end GRWTSK.RiemannHypothesis.Conversation.AttainedCausalDuality
