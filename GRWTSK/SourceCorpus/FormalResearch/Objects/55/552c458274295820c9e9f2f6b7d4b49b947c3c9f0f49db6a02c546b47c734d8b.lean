import FormalResearch.RiemannHypothesis.Conversation.WeightedVariance

/-!
# The native variance defect counts each chronological pair once

Batch 13's sharp finite identity uses the unordered chronological pair
sum. Every earlier index is paired with each later index exactly once.
Positivity of the variance remains a separate weight condition; the exact
identity holds for arbitrary real weights and signed storage values.

Human direction: grwtsk contributors. Local chronological adapter and Lean
proof: OpenAI Codex. No uniform prime variance gap is claimed.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.OrderedVariance

open scoped BigOperators
noncomputable section

/-- The chronological variance in this module, with the following exact parameterization.

def chronologicalVariance (w B : ℕ → ℝ) (N : ℕ) : ℝ := ∑ j ∈ Finset.range N, ∑ i ∈
Finset.range j, w j * w i * (B j - B i) ^ 2
-/
def chronologicalVariance (w B : ℕ → ℝ) (N : ℕ) : ℝ :=
  ∑ j ∈ Finset.range N, ∑ i ∈ Finset.range j, w j * w i * (B j - B i) ^ 2

private theorem new_pair_expansion (w B : ℕ → ℝ) (N : ℕ) :
    (∑ i ∈ Finset.range N, w N * w i * (B N - B i) ^ 2) =
      w N * B N ^ 2 * (∑ i ∈ Finset.range N, w i) -
      2 * w N * B N * (∑ i ∈ Finset.range N, w i * B i) +
      w N * (∑ i ∈ Finset.range N, w i * B i ^ 2) := by
  calc
    _ = ∑ i ∈ Finset.range N, (w N * B N ^ 2 * w i -
        2 * w N * B N * (w i * B i) + w N * (w i * B i ^ 2)) := by
      apply Finset.sum_congr rfl
      intro i _hi
      ring
    _ = _ := by rw [Finset.sum_add_distrib, Finset.sum_sub_distrib,
      ← Finset.mul_sum, ← Finset.mul_sum, ← Finset.mul_sum]

/-- The exact defect is a once-counted sum over i<j, without the ordered-pair factor 1/2. -/
theorem chronological_variance_identity (w B : ℕ → ℝ) (N : ℕ) :
    (∑ i ∈ Finset.range N, w i) * (∑ i ∈ Finset.range N, w i * B i ^ 2) -
      (∑ i ∈ Finset.range N, w i * B i) ^ 2 = chronologicalVariance w B N := by
  unfold chronologicalVariance
  induction N with
  | zero => simp
  | succ N ih =>
    simp only [Finset.sum_range_succ]
    rw [new_pair_expansion, ← ih]
    ring

theorem chronologicalVariance_nonneg {w B : ℕ → ℝ} {N : ℕ}
    (hw : ∀ i : ℕ, i < N → 0 ≤ w i) : 0 ≤ chronologicalVariance w B N := by
  apply Finset.sum_nonneg
  intro j hj
  apply Finset.sum_nonneg
  intro i hi
  have hjN := Finset.mem_range.mp hj
  have hiN : i < N := (Finset.mem_range.mp hi).trans hjN
  exact mul_nonneg (mul_nonneg (hw j hjN) (hw i hiN)) (sq_nonneg _)

end
end GRWTSK.RiemannHypothesis.Conversation.OrderedVariance
