# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CausalDuality.Variant167d27c98d2aec11be75247690e1149e5fa69a2a625d0d0b631b741cb3364856

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ee10da167e835b166c2f6405bc65cd20de254fd` · SHA-256 `167d27c98d2aec11be75247690e1149e5fa69a2a625d0d0b631b741cb3364856`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.CausalRecords

/-!
# Finite causal duality preserves chronological credit

Audited RH conversation Batch 07 distinguishes causal prefix control from a
positive-part budget. Nonnegative nonincreasing dual weights are exactly the
tests needed for nonpositive completed prefixes. The converse uses literal
prefix-indicator weights. No actual-prime prefix bound is supplied here.

Human direction: grwtsk contributors. Lean implementation: OpenAI Codex.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.CausalDuality

open scoped BigOperators

/-- The prefix sum in this module, with the following exact parameterization.

def prefixSum (a : ℕ → ℝ) (N : ℕ) : ℝ := ∑ k ∈ Finset.range N, a k
-/
def prefixSum (a : ℕ → ℝ) (N : ℕ) : ℝ := ∑ k ∈ Finset.range N, a k

theorem prefixSum_step (a : ℕ → ℝ) (N : ℕ) :
    prefixSum a (N + 1) = prefixSum a N + a N := Finset.sum_range_succ _ _

/-- Every causal test is a nonnegative combination of completed prefixes. -/
theorem weighted_prefix_identity (a weight : ℕ → ℝ) (N : ℕ) :
    (∑ k ∈ Finset.range N, weight k * a k) = weight N * prefixSum a N +
      ∑ k ∈ Finset.range N, (weight k - weight (k + 1)) * prefixSum a (k + 1) := by
  induction N with
  | zero => simp [prefixSum]
  | succ N ih =>
      rw [Finset.sum_range_succ, Finset.sum_range_succ, ih]
      rw [prefixSum_step]
      ring

theorem causal_weight_bound {a weight : ℕ → ℝ} {N : ℕ} {R : ℝ}
    (hR : 0 ≤ R) (hprefix : ∀ k ≤ N, prefixSum a k ≤ R)
    (hweight : 0 ≤ weight N) (hmono : ∀ k < N, weight (k + 1) ≤ weight k) (hunit : weight 0 ≤ 1) :
    (∑ k ∈ Finset.range N, weight k * a k) ≤ R := by
  rw [weighted_prefix_identity]
  have hs : (∑ k ∈ Finset.range N, (weight k - weight (k + 1))) = weight 0 - weight N := by
    have h := CausalRecords.sum_increments weight N
    have heq : (∑ k ∈ Finset.range N, (weight k - weight (k + 1))) =
        -(∑ k ∈ Finset.range N, (weight (k + 1) - weight k)) := by
      rw [← Finset.sum_neg_distrib]
      apply Finset.sum_congr rfl
      intro k _
      ring
    rw [heq, h]
    ring
  calc
    _ ≤ weight N * R + ∑ k ∈ Finset.range N, (weight k - weight (k + 1)) * R :=
      add_le_add (mul_le_mul_of_nonneg_left (hprefix N le_rfl) hweight)
        (Finset.sum_le_sum (fun k hk =>
          mul_le_mul_of_nonneg_left (hprefix (k + 1) (by
            have := Finset.mem_range.mp hk
            omega)) (sub_nonneg.mpr (hmono k (Finset.mem_range.mp hk)))))
    _ = weight 0 * R := by rw [← Finset.sum_mul, hs]; ring
    _ ≤ R := by simpa only [one_mul] using mul_le_mul_of_nonneg_right hunit hR

theorem prefix_indicator_sum (a : ℕ → ℝ) (N K : ℕ) (hK : K ≤ N) :
    (∑ k ∈ Finset.range N, (if k < K then (1 : ℝ) else 0) * a k) = prefixSum a K := by
  simp only [ite_mul, one_mul, zero_mul]
  rw [← Finset.sum_filter]
  have heq : (Finset.range N).filter (fun k => k < K) = Finset.range K := by
    ext k
    simp only [Finset.mem_filter, Finset.mem_range]
    omega
  rw [heq]
  rfl

/-- The finite converse does not use a probabilistic sign model or an absolute budget. -/
theorem prefixes_nonpositive_iff_causal_tests (a : ℕ → ℝ) (N : ℕ) :
    (∀ K ≤ N, prefixSum a K ≤ 0) ↔
      (∀ weight : ℕ → ℝ, 0 ≤ weight N → (∀ k < N, weight (k + 1) ≤ weight k) → weight 0 ≤ 1 →
        (∑ k ∈ Finset.range N, weight k * a k) ≤ 0) := by
  constructor
  · intro hp weight hweight hm hu
    exact causal_weight_bound (by norm_num) hp hweight hm hu
  · intro ht K hK
    let weight : ℕ → ℝ := fun k => if k < K then 1 else 0
    have hweight : 0 ≤ weight N := by simp [weight, Nat.not_lt.mpr hK]
    have hm : ∀ k < N, weight (k + 1) ≤ weight k := by
      intro k _
      by_cases hk1 : k + 1 < K
      · have hk : k < K := by omega
        simp [weight, hk1, hk]
      · by_cases hk : k < K <;> simp [weight, hk1, hk]
    have hu : weight 0 ≤ 1 := by dsimp [weight]; split_ifs <;> norm_num
    have h := ht weight hweight hm hu
    rw [prefix_indicator_sum a N K hK] at h
    exact h

end GRWTSK.RiemannHypothesis.Conversation.CausalDuality
```
