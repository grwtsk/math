import Mathlib

/-!
# A positive penalty pays its exact residual leakage

Batch 03's finite matrix inequality retains the residual Ld. Normalizing by a
positive Z does not erase either the epsilon error or the penalty quadratic.
The norm-only scalar payment is sharp on a one-dimensional negative form.
No alignment estimate is constructed for the actual arithmetic vector.

Human budget and alignment direction: grwtsk contributors. Local finite matrix
adapter, sharp witness and Lean implementation: OpenAI Codex. Matrix positivity
and quadratic algebra retain Mathlib identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.MatrixLeakage

open scoped BigOperators
noncomputable section

def quadratic {ι : Type*} [Fintype ι] (M : Matrix ι ι ℝ) (d : ι → ℝ) : ℝ :=
  dotProduct d (M.mulVec d)

theorem normalized_penalty_leakage {ι κ : Type*} [Fintype ι] [Fintype κ]
    [DecidableEq ι] (M : Matrix ι ι ℝ) (B : Matrix κ κ ℝ)
    (L : Matrix κ ι ℝ) (d : ι → ℝ) {ε Z : ℝ} (hZ : 0 < Z)
    (hpositive : (M + L.transpose * B * L + ε • (1 : Matrix ι ι ℝ)).PosSemidef) :
    quadratic M d / Z ≥
      -ε * (∑ i, d i ^ 2) / Z - quadratic B (L.mulVec d) / Z := by
  have hp := hpositive.dotProduct_mulVec_nonneg d
  have ht : dotProduct d ((L.transpose * B * L).mulVec d) = quadratic B (L.mulVec d) := by
    unfold quadratic
    rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec,
      Matrix.dotProduct_mulVec, Matrix.vecMul_transpose]
  have hi : dotProduct d ((ε • (1 : Matrix ι ι ℝ)).mulVec d) = ε * ∑ i, d i ^ 2 := by
    simp only [Matrix.smul_mulVec, Matrix.one_mulVec, Pi.smul_apply, smul_eq_mul,
      dotProduct, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i _
    ring
  simp only [star_trivial, Matrix.add_mulVec, dotProduct_add, ht, hi] at hp
  unfold quadratic
  have hn : -ε * (∑ i, d i ^ 2) - quadratic B (L.mulVec d) ≤ dotProduct d (M.mulVec d) := by
    linarith
  have h := div_le_div_of_nonneg_right hn hZ.le
  simpa only [quadratic, sub_div] using h

theorem exact_annihilation_has_no_penalty {ι κ : Type*} [Fintype ι] [Fintype κ]
    [DecidableEq ι] (M : Matrix ι ι ℝ) (B : Matrix κ κ ℝ)
    (L : Matrix κ ι ℝ) (d : ι → ℝ) {ε Z : ℝ} (hZ : 0 < Z)
    (hpositive : (M + L.transpose * B * L + ε • (1 : Matrix ι ι ℝ)).PosSemidef)
    (halign : L.mulVec d = 0) :
    -ε * (∑ i, d i ^ 2) / Z ≤ quadratic M d / Z := by
  have h := normalized_penalty_leakage M B L d hZ hpositive
  simpa [halign, quadratic] using h

theorem norm_payment_consumer {q debt ε normSq b δ Z : ℝ} (hZ : 0 < Z)
    (hpositive : 0 ≤ q + debt + ε * normSq) (hdebt : debt ≤ b * δ ^ 2) :
    -ε * normSq / Z - b * δ ^ 2 / Z ≤ q / Z := by
  have h : -ε * normSq - b * δ ^ 2 ≤ q := by linarith
  simpa only [sub_div] using div_le_div_of_nonneg_right h hZ.le

theorem norm_payment_is_sharp (b δ : ℝ) {Z : ℝ} (_hZ : 0 < Z) :
    (-b * δ ^ 2) / Z = -(b * δ ^ 2 / Z) ∧
      (-b * δ ^ 2) + b * δ ^ 2 = 0 ∧
      ∀ Q : ℝ, (-Q ≤ (-b * δ ^ 2) / Z ↔ b * δ ^ 2 / Z ≤ Q) := by
  refine ⟨by ring, by ring, ?_⟩
  intro Q
  simp only [neg_mul, neg_div, neg_le_neg_iff]

end
end GRWTSK.RiemannHypothesis.Conversation.MatrixLeakage
