import FormalResearch.RiemannHypothesis.Conversation.WeightedGramPricing
import Mathlib.Analysis.CStarAlgebra.Matrix

/-!
# Operator-norm bounds supply the finite Gram hypotheses

A real matrix is sent through Mathlib's qualified Euclidean continuous-linear
map. Its operator norm bounds every real quadratic evaluation. The literal
anchor-plus-shell matrix then supplies the two hypotheses used by the finite
weighted decoder price; no free quadratic or anchor premise remains at this
adapter boundary.

Source: RH conversation Batch 3, BL03-05. Human programme: grwtsk contributors.
Local norm adapter: OpenAI Codex. Mathlib matrix/inner-product/operator-norm
infrastructure remains upstream, directly imported without renaming.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.MatrixNormPricing
open WeightedGramPricing
open scoped BigOperators RealInnerProductSpace
noncomputable section

/-- The quadratic form in this module, with the following exact parameterization.

def quadraticForm {ι : Type*} [Fintype ι] (M : Matrix ι ι ℝ) (v : ι → ℝ) : ℝ := ∑ i, ∑ j, v i
* M i j * v j
-/
def quadraticForm {ι : Type*} [Fintype ι] (M : Matrix ι ι ℝ) (v : ι → ℝ) : ℝ :=
  ∑ i, ∑ j, v i * M i j * v j

/-- The operator norm in this module, with the following exact parameterization.

def operatorNorm {ι : Type*} [Fintype ι] [DecidableEq ι] (M : Matrix ι ι ℝ) : ℝ :=
‖Matrix.toEuclideanCLM (𝕜 := ℝ) M‖
-/
def operatorNorm {ι : Type*} [Fintype ι] [DecidableEq ι] (M : Matrix ι ι ℝ) : ℝ :=
  ‖Matrix.toEuclideanCLM (𝕜 := ℝ) M‖

theorem quadraticForm_le_operatorNorm {ι : Type*} [Fintype ι] [DecidableEq ι]
    (M : Matrix ι ι ℝ) (v : ι → ℝ) :
    quadraticForm M v ≤ operatorNorm M * ∑ i, v i ^ 2 := by
  let x : EuclideanSpace ℝ ι := WithLp.toLp 2 v
  have hq : quadraticForm M v = ⟪x, Matrix.toEuclideanCLM (𝕜 := ℝ) M x⟫ := by
    rw [Matrix.inner_toEuclideanCLM]
    change (∑ i, ∑ j, v i * M i j * v j) = ∑ i, v i * ∑ j, M i j * v j
    simp_rw [Finset.mul_sum, mul_assoc]
  rw [hq]
  calc
    _ ≤ ‖x‖ * ‖Matrix.toEuclideanCLM (𝕜 := ℝ) M x‖ := real_inner_le_norm _ _
    _ ≤ ‖x‖ * (operatorNorm M * ‖x‖) :=
      mul_le_mul_of_nonneg_left ((Matrix.toEuclideanCLM (𝕜 := ℝ) M).le_opNorm x) (norm_nonneg _)
    _ = operatorNorm M * ‖x‖ ^ 2 := by ring
    _ = _ := by rw [EuclideanSpace.real_norm_sq_eq]

theorem diagonal_entry_le_operatorNorm {ι : Type*} [Fintype ι] [DecidableEq ι]
    (M : Matrix ι ι ℝ) (i : ι) : M i i ≤ operatorNorm M := by
  simpa [quadraticForm, Pi.single_apply] using quadraticForm_le_operatorNorm M (Pi.single i 1)

/-- The anchored matrix in this module, with the following exact parameterization.

def anchoredMatrix (s : Finset ℕ) (b₀ : ℝ) (b : ℕ → ℝ) (K : ℕ → ℕ → ℝ) (anchor : ℕ → ℝ) :
Matrix (Option ↥s) (Option ↥s) ℝ := fun i j ↦ match i, j with | none, none => b₀ ^ 2 | some n,
some m => weightedGram b K n.val m.val | none, some m => b₀ * b m.val * anchor m.val | some n,
none => b n.val * b₀ * anchor n.val
-/
def anchoredMatrix (s : Finset ℕ) (b₀ : ℝ) (b : ℕ → ℝ)
    (K : ℕ → ℕ → ℝ) (anchor : ℕ → ℝ) : Matrix (Option ↥s) (Option ↥s) ℝ :=
  fun i j ↦ match i, j with
  | none, none => b₀ ^ 2
  | some n, some m => weightedGram b K n.val m.val
  | none, some m => b₀ * b m.val * anchor m.val
  | some n, none => b n.val * b₀ * anchor n.val

theorem anchored_matrix_anchor_bound (s : Finset ℕ) (b₀ : ℝ) (b : ℕ → ℝ)
    (K : ℕ → ℕ → ℝ) (anchor : ℕ → ℝ) :
    b₀ ^ 2 ≤ operatorNorm (anchoredMatrix s b₀ b K anchor) := by
  exact diagonal_entry_le_operatorNorm (anchoredMatrix s b₀ b K anchor) (none : Option ↥s)

theorem anchored_matrix_shell_bound (s : Finset ℕ) (b₀ : ℝ) (b : ℕ → ℝ)
    (K : ℕ → ℕ → ℝ) (anchor : ℕ → ℝ) :
    shellForm s b K ≤ operatorNorm (anchoredMatrix s b₀ b K anchor) * shellMass s b := by
  let v : Option ↥s → ℝ := fun i ↦ match i with | none => 0 | some n => b n.val
  have h := quadraticForm_le_operatorNorm (anchoredMatrix s b₀ b K anchor) v
  have hq : quadraticForm (anchoredMatrix s b₀ b K anchor) v = shellForm s b K := by
    unfold quadraticForm shellForm
    simp only [Fintype.sum_option, v, anchoredMatrix, zero_mul, mul_zero,
      Finset.sum_const_zero, zero_add]
    rw [Finset.sum_coe_sort s (fun n : ℕ ↦ ∑ m : s, b n * weightedGram b K n m * b m)]
    apply Finset.sum_congr rfl
    intro n hn
    exact Finset.sum_coe_sort s (fun m : ℕ ↦ b n * weightedGram b K n m * b m)
  have hv : (∑ i, v i ^ 2) = shellMass s b := by
    simp only [Fintype.sum_option, v, zero_pow (by norm_num : (2 : ℕ) ≠ 0), zero_add]
    exact Finset.sum_coe_sort s (fun n : ℕ ↦ b n ^ 2)
  rw [hq, hv] at h
  exact h

end
end GRWTSK.RiemannHypothesis.Conversation.MatrixNormPricing
