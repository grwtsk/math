# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.C1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abdOrientation.Variantc1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b830fdf8100844ce0081a040d3bbb0b54826c0be` · SHA-256 `c1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaPositiveLift
import Mathlib.GroupTheory.Perm.Fin
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.LinearAlgebra.Vandermonde

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open FormalResearch.PositiveAtlas.Grassmannian

noncomputable section

 theorem rev_sign (k : ℕ) :
    Equiv.Perm.sign (Fin.revPerm : Equiv.Perm (Fin k)) =
      (-1 : ℤˣ) ^ (k * (k - 1) / 2) := by
  rw [Equiv.Perm.sign_eq_prod_prod_Iio]
  have hp : (∏ j : Fin k, ∏ i ∈ Finset.Iio j,
      (if Fin.revPerm i < Fin.revPerm j then (1 : ℤˣ) else -1)) =
      ∏ j : Fin k, (-1 : ℤˣ) ^ j.val := by
    apply Finset.prod_congr rfl
    intro j _
    calc
      _ = ∏ _i ∈ Finset.Iio j, (-1 : ℤˣ) := by
        apply Finset.prod_congr rfl
        intro i hi
        have hij : i < j := Finset.mem_Iio.mp hi
        have hnot : ¬ Fin.revPerm i < Fin.revPerm j := by
          change ¬ i.rev < j.rev
          exact (Fin.rev_lt_rev.mpr hij).not_gt
        rw [if_neg hnot]
      _ = _ := by simp
  rw [hp, Finset.prod_pow_eq_pow_sum]
  congr 1
  rw [Fin.sum_univ_eq_sum_range (fun i : ℕ => i)]
  exact Finset.sum_range_id k

 theorem det_reverse_rows {k : ℕ} (M : Matrix (Fin k) (Fin k) ℝ) :
    Matrix.det (fun i j => M i.rev j) =
      (-1 : ℝ) ^ (k * (k - 1) / 2) * Matrix.det M := by
  have hd := Matrix.det_permute (Fin.revPerm : Equiv.Perm (Fin k)) M
  rw [rev_sign] at hd
  convert hd using 1
  · congr 1
  · simp

namespace Separation

variable {k : ℕ} {r c : Fin k ↪o ℕ}

theorem rowDebt_strictAnti (h : Separation r c) : StrictAnti h.rowDebt := by
  intro i j hij
  have hr := r.strictMono hij
  have hj := h.row_le j
  dsimp [rowDebt]
  omega

/-- Increasing tail orders are obtained by reversing the original row order. -/
def increasingRowDebt (h : Separation r c) : Fin k ↪o ℕ :=
  OrderEmbedding.ofStrictMono (fun i => h.rowDebt i.rev)
    (h.rowDebt_strictAnti.comp Fin.rev_strictAnti)

@[simp] theorem increasingRowDebt_apply (h : Separation r c) (i : Fin k) :
    h.increasingRowDebt i = h.rowDebt i.rev := rfl

@[simp] theorem increasingRowDebt_rev (h : Separation r c) (i : Fin k) :
    h.increasingRowDebt i.rev = h.rowDebt i := by
  simp

/-- Column degrees retain the increasing order of the selected columns. -/
def increasingColumnDegree (h : Separation r c) : Fin k ↪o ℕ :=
  OrderEmbedding.ofStrictMono h.columnDegree (by
    intro i j hij
    have hc := c.strictMono hij
    have hi := h.le_column i
    dsimp [columnDegree]
    omega)

@[simp] theorem increasingColumnDegree_apply (h : Separation r c) (i : Fin k) :
    h.increasingColumnDegree i = h.columnDegree i := rfl

/-- Exact orientation of the original decreasing row-debt matrix. -/
theorem rowDebt_det_eq (h : Separation r c) (nodes : Fin k → ℝ) :
    Matrix.det (fun i j => thetaTail (2 * h.rowDebt i) (nodes j)) =
      (-1 : ℝ) ^ (k * (k - 1) / 2) *
        Matrix.det (fun i j => thetaTail (2 * h.increasingRowDebt i) (nodes j)) := by
  simpa using det_reverse_rows
    (fun i j => thetaTail (2 * h.increasingRowDebt i) (nodes j))

/-- Source sign regularity pays the row-reversal sign exactly. -/
theorem rowDebt_det_nonnegative (hsign : ThetaTailSignRegular)
    (h : Separation r c) (nodes : Fin k ↪o ℝ) (hnodes : ∀ i, 0 ≤ nodes i) :
    0 ≤ Matrix.det (fun i j => thetaTail (2 * h.rowDebt i) (nodes j)) := by
  rw [h.rowDebt_det_eq]
  exact hsign k h.increasingRowDebt nodes hnodes

end Separation

/-- The empty determinant has positive orientation. -/
theorem det_reverse_rows_zero (M : Matrix (Fin 0) (Fin 0) ℝ) :
    Matrix.det (fun i j => M i.rev j) = Matrix.det M := by
  simpa using det_reverse_rows M

/-- Rank one has positive orientation. -/
theorem det_reverse_rows_one (M : Matrix (Fin 1) (Fin 1) ℝ) :
    Matrix.det (fun i j => M i.rev j) = Matrix.det M := by
  simpa using det_reverse_rows M

/-- Rank two has negative orientation. -/
theorem det_reverse_rows_two (M : Matrix (Fin 2) (Fin 2) ℝ) :
    Matrix.det (fun i j => M i.rev j) = -Matrix.det M := by
  simpa using det_reverse_rows M

/-- Rank three also has negative orientation. -/
theorem det_reverse_rows_three (M : Matrix (Fin 3) (Fin 3) ℝ) :
    Matrix.det (fun i j => M i.rev j) = -Matrix.det M := by
  convert det_reverse_rows M using 1
  norm_num

/-- The factorial-scaled consecutive even basis is an exact Vandermonde in squared nodes. -/
theorem evenBasis_consecutive_det {k : ℕ} (nodes : Fin k → ℝ) :
    Matrix.det (fun i j : Fin k => evenBasis j.val (nodes i)) =
      (∏ j : Fin k, (((2 * j.val).factorial : ℝ))⁻¹) *
        ∏ i : Fin k, ∏ j ∈ Finset.Ioi i, ((2 * nodes j) ^ 2 - (2 * nodes i) ^ 2) := by
  have hm : (fun i j : Fin k => evenBasis j.val (nodes i)) =
      Matrix.of (fun i j : Fin k =>
        (((2 * j.val).factorial : ℝ))⁻¹ *
          Matrix.vandermonde (fun i => (2 * nodes i) ^ 2) i j) := by
    ext i j
    simp only [evenBasis, Matrix.of_apply, Matrix.vandermonde_apply]
    rw [← pow_mul, div_eq_mul_inv, mul_comm]
  rw [hm, Matrix.det_mul_row, Matrix.det_vandermonde]

/-- All consecutive-degree transverse determinants are nonnegative at nonnegative
ordered nodes. Arbitrary increasing degrees require a separate generalized theorem. -/
theorem evenBasis_consecutive_det_nonnegative {k : ℕ} (nodes : Fin k → ℝ)
    (hmono : Monotone nodes) (hnodes : ∀ i, 0 ≤ nodes i) :
    0 ≤ Matrix.det (fun i j : Fin k => evenBasis j.val (nodes i)) := by
  rw [evenBasis_consecutive_det]
  apply mul_nonneg
  · exact Finset.prod_nonneg (fun j _ => inv_nonneg.mpr (by positivity))
  · apply Finset.prod_nonneg
    intro i _
    apply Finset.prod_nonneg
    intro j hj
    apply sub_nonneg.mpr
    exact pow_le_pow_left₀ (mul_nonneg (by norm_num) (hnodes i)) (by
      have hij := hmono (Finset.mem_Ioi.mp hj).le
      linarith) 2

/-- Two ordered nonnegative nodes give the expected monomial cross-product sign. -/
theorem monomial_cross_nonnegative {a b : ℕ} {x y : ℝ}
    (hx : 0 ≤ x) (hxy : x ≤ y) (hab : a ≤ b) :
    0 ≤ x ^ a * y ^ b - x ^ b * y ^ a := by
  have hy : 0 ≤ y := hx.trans hxy
  have hp : 0 ≤ y ^ (b - a) - x ^ (b - a) :=
    sub_nonneg.mpr (pow_le_pow_left₀ hx hxy _)
  have hproduct := mul_nonneg (mul_nonneg (pow_nonneg hx a) (pow_nonneg hy a)) hp
  have hb : b = a + (b - a) := (Nat.add_sub_of_le hab).symm
  rw [hb, pow_add, pow_add]
  nlinarith only [hproduct]

/-- The arbitrary-degree generalized Vandermonde sign is unconditional at rank two. -/
theorem evenBasis_two_det_nonnegative (m : Fin 2 ↪o ℕ) (nodes : Fin 2 ↪o ℝ)
    (hnodes : ∀ i, 0 ≤ nodes i) :
    0 ≤ Matrix.det (fun i j : Fin 2 => evenBasis (m j) (nodes i)) := by
  change 0 ≤ Matrix.det (Matrix.of fun i j : Fin 2 => evenBasis (m j) (nodes i))
  rw [Matrix.det_fin_two]
  simp only [Matrix.of_apply]
  simp only [evenBasis]
  rw [div_mul_div_comm, div_mul_div_comm,
    mul_comm (((2 * m 1).factorial : ℝ)) (((2 * m 0).factorial : ℝ)), ← sub_div]
  apply div_nonneg
  · apply monomial_cross_nonnegative
    · exact mul_nonneg (by norm_num) (hnodes 0)
    · exact mul_le_mul_of_nonneg_left (nodes.monotone (by decide)) (by norm_num)
    · exact Nat.mul_le_mul_left 2 (m.monotone (by decide))
  · positivity

/-- Source sign regularity supplies the ordered minors of the original row-debt
factor, including its exact reversal orientation. -/
theorem finiteSourceMatrix_rowDebt_ordered_nonnegative
    (hsign : ThetaTailSignRegular) {k N : ℕ} {r c : Fin k ↪o ℕ}
    (h : Separation r c) (nodes : Fin N ↪o ℝ) (hnodes : ∀ i, 0 ≤ nodes i) :
    PositiveLift.LeftOrderedNonnegative (finiteSourceMatrix h.rowDebt nodes) := by
  intro I
  simpa only [finiteSourceMatrix, Matrix.submatrix_apply, id_eq,
    OrderEmbedding.coe_comp, Function.comp_apply] using
    h.rowDebt_det_nonnegative hsign (I.comp nodes) (fun i => hnodes (I i))

/-- Consecutive degrees furnish every ordered minor of the transverse factor. -/
theorem finiteTransverseMatrix_consecutive_ordered_nonnegative {k N : ℕ}
    (nodes : Fin N ↪o ℝ) (hnodes : ∀ i, 0 ≤ nodes i) :
    PositiveLift.RightOrderedNonnegative
      (finiteTransverseMatrix (fun j : Fin k => j.val) nodes) := by
  intro I
  simpa only [finiteTransverseMatrix, Matrix.submatrix_apply, id_eq,
    OrderEmbedding.coe_comp, Function.comp_apply] using
    evenBasis_consecutive_det_nonnegative (I.comp nodes)
      (I.comp nodes).monotone (fun i => hnodes (I i))

end

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
