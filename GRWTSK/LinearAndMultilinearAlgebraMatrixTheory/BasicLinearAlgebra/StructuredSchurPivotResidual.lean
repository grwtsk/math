/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteSchurResidualChain

/-!
# Local residuals of rounded Schur pivots with Cauchy generators

A proposed pivot column gives an exact unrounded update of each generator.
The node differences cancel in the discrepancy between this update and the
Schur step. The remaining off-diagonal errors depend on the scaled column
errors and the generator rounding. The related structured elimination appears in bramble_trace,
*Full-source Schur certificates for Weil positivity at support radius two*,
rStation paper 60, version 1, §8 (2026). The bound below uses the
actual finite nodes and the stated scaled error checks.
https://rstation.ai/problems/riemann_hypothesis/papers/60/v1

Local attribution is to grwtsk contributors.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Algebra.LinearAlgebra.StructuredSchurPivotResidual

variable {σ : Type*} [Fintype σ]

/-- Sum of skew generator pairs giving a Cauchy displacement numerator. -/
def numerator (v u v' u' : σ → ℝ) : ℝ :=
  ∑ l, (v l * u' l - u l * v' l)

private theorem numerator_swap (v u v' u' : σ → ℝ) :
    numerator v u v' u' = -numerator v' u' v u := by
  rw [numerator, numerator, ← Finset.sum_neg_distrib]
  exact Finset.sum_congr rfl (fun l _ => by ring)

private theorem numerator_update (p c d : ℝ) (v₀ u₀ v u v' u' : σ → ℝ) :
    numerator (fun l => v l - c / p * v₀ l) (fun l => u l - c / p * u₀ l)
      (fun l => v' l - d / p * v₀ l) (fun l => u' l - d / p * u₀ l) =
    numerator v u v' u' -
      (c / p * numerator v₀ u₀ v' u' + d / p * numerator v u v₀ u₀) := by
  simp only [numerator, Finset.mul_sum, ← Finset.sum_add_distrib, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro l _
  ring

private theorem product_rounding (x y x' y' ex ey gx gy : ℝ)
    (hx : |x' - x| ≤ ex) (hy : |y' - y| ≤ ey) (hgx : |x| ≤ gx) (hgy : |y| ≤ gy) :
    |x' * y' - x * y| ≤ ex * gy + ey * gx + ex * ey := by
  have hex : 0 ≤ ex := (abs_nonneg _).trans hx
  have hey : 0 ≤ ey := (abs_nonneg _).trans hy
  rw [show x' * y' - x * y =
    (x' - x) * y + (y' - y) * x + (x' - x) * (y' - y) by ring]
  refine (abs_add_le _ _).trans (add_le_add ?_ ?_)
  · refine (abs_add_le _ _).trans (add_le_add ?_ ?_)
    · rw [abs_mul]
      exact mul_le_mul hx hgy (abs_nonneg _) hex
    · rw [abs_mul]
      exact mul_le_mul hy hgx (abs_nonneg _) hey
  · rw [abs_mul]
    exact mul_le_mul hx hy (abs_nonneg _) hex

/-- Outward error in the displacement numerator after rounding both rows.
The supplied magnitudes bound the unrounded generators. -/
theorem abs_numerator_sub_le_of_rounding (v u v' u' V U V' U' eV eU gV gU : σ → ℝ)
    (hV : ∀ l, |V l - v l| ≤ eV l) (hU : ∀ l, |U l - u l| ≤ eU l)
    (hV' : ∀ l, |V' l - v' l| ≤ eV l) (hU' : ∀ l, |U' l - u' l| ≤ eU l)
    (hv : ∀ l, |v l| ≤ gV l) (hu : ∀ l, |u l| ≤ gU l)
    (hv' : ∀ l, |v' l| ≤ gV l) (hu' : ∀ l, |u' l| ≤ gU l) :
    |numerator v u v' u' - numerator V U V' U'| ≤
      2 * ∑ l, (eV l * gU l + eU l * gV l + eV l * eU l) := by
  rw [numerator, numerator, ← Finset.sum_sub_distrib, Finset.mul_sum]
  refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum ?_)
  intro l _
  rw [show v l * u' l - u l * v' l - (V l * U' l - U l * V' l) =
    (U l * V' l - u l * v' l) - (V l * U' l - v l * u' l) by ring]
  refine (abs_sub_le _ 0 _).trans ?_
  simp only [sub_zero, zero_sub, abs_neg]
  have h₁ := product_rounding _ _ _ _ _ _ _ _ (hU l) (hV' l) (hu l) (hv' l)
  have h₂ := product_rounding _ _ _ _ _ _ _ _ (hV l) (hU' l) (hv l) (hu' l)
  rw [mul_comm (eU l) (eV l), add_comm (eU l * gV l) (eV l * gU l)] at h₁
  simpa only [two_mul] using add_le_add h₁ h₂

/-- Exact scaled residual for two retained, distinct nodes. The errors in the
two pivot column entries remain scaled by their pivot node differences. -/
theorem scaled_offDiagonal_residual (p c d x y x₀ : ℝ) (hp : p ≠ 0) (hxy : x ≠ y)
    (v₀ u₀ v u v' u' V U V' U' : σ → ℝ) :
    (x - y) * (numerator v u v' u' / (x - y) -
      numerator V U V' U' / (x - y) - c * d / p) =
    (d * (numerator v u v₀ u₀ - (x - x₀) * c) -
      c * (numerator v' u' v₀ u₀ - (y - x₀) * d)) / p +
    (numerator (fun l => v l - c / p * v₀ l) (fun l => u l - c / p * u₀ l)
        (fun l => v' l - d / p * v₀ l) (fun l => u' l - d / p * u₀ l) -
      numerator V U V' U') := by
  rw [numerator_update, numerator_swap v₀ u₀ v' u']
  field_simp [hp, sub_ne_zero.mpr hxy]
  ring

/-- Off-diagonal residual of a proposed Schur pivot, with all errors measured
against the actual updated stored generators and the proposed pivot column. -/
theorem abs_offDiagonal_residual_le (p c d x y x₀ C eCol : ℝ)
    (hp : 0 < p) (hxy : x ≠ y) (hc : |c| ≤ C) (hd : |d| ≤ C)
    (v₀ u₀ v u v' u' V U V' U' eV eU gV gU : σ → ℝ)
    (hCol : |numerator v u v₀ u₀ - (x - x₀) * c| ≤ eCol)
    (hCol' : |numerator v' u' v₀ u₀ - (y - x₀) * d| ≤ eCol)
    (hV : ∀ l, |V l - (v l - c / p * v₀ l)| ≤ eV l)
    (hU : ∀ l, |U l - (u l - c / p * u₀ l)| ≤ eU l)
    (hV' : ∀ l, |V' l - (v' l - d / p * v₀ l)| ≤ eV l)
    (hU' : ∀ l, |U' l - (u' l - d / p * u₀ l)| ≤ eU l)
    (hv : ∀ l, |v l - c / p * v₀ l| ≤ gV l)
    (hu : ∀ l, |u l - c / p * u₀ l| ≤ gU l)
    (hv' : ∀ l, |v' l - d / p * v₀ l| ≤ gV l)
    (hu' : ∀ l, |u' l - d / p * u₀ l| ≤ gU l) :
    |numerator v u v' u' / (x - y) -
      numerator V U V' U' / (x - y) - c * d / p| ≤
      (2 * C * eCol / p + 2 * ∑ l, (eV l * gU l + eU l * gV l + eV l * eU l)) /
        |x - y| := by
  have hC : 0 ≤ C := (abs_nonneg _).trans hc
  have hxy₀ : 0 < |x - y| := abs_pos.mpr (sub_ne_zero.mpr hxy)
  rw [le_div_iff₀ hxy₀, mul_comm, ← abs_mul,
    scaled_offDiagonal_residual p c d x y x₀ hp.ne' hxy v₀ u₀ v u v' u' V U V' U']
  refine (abs_add_le _ _).trans (add_le_add ?_ ?_)
  · rw [abs_div, abs_of_pos hp]
    apply div_le_div_of_nonneg_right _ hp.le
    refine (abs_sub_le _ 0 _).trans ?_
    simp only [sub_zero, zero_sub, abs_neg]
    rw [abs_mul, abs_mul, two_mul, add_mul]
    exact add_le_add (mul_le_mul hd hCol (abs_nonneg _) hC)
      (mul_le_mul hc hCol' (abs_nonneg _) hC)
  · exact abs_numerator_sub_le_of_rounding _ _ _ _ _ _ _ _ _ _ _ _
      hV hU hV' hU' hv hu hv' hu'

open Matrix QuadraticCertificates FiniteSchurResidualChain

/-- Reconstruct a finite matrix from its distinct nodes, diagonal and Cauchy
generators. The displacement pairs may have any finite size. -/
def cauchyMatrix {ι : Type*} [DecidableEq ι] (node diag : ι → ℝ)
    (V U : ι → σ → ℝ) : Matrix ι ι ℝ :=
  fun i j => if i = j then diag i else numerator (V i) (U i) (V j) (U j) / (node i - node j)

private theorem cauchyMatrix_swap {ι : Type*} [DecidableEq ι] (node diag : ι → ℝ)
    (V U : ι → σ → ℝ) (i j : ι) :
    cauchyMatrix node diag V U i j = cauchyMatrix node diag V U j i := by
  rcases eq_or_ne i j with rfl | h
  · rfl
  simp only [cauchyMatrix, h, h.symm, ite_false]
  rw [numerator_swap (V i) (U i) (V j) (U j), ← neg_sub (node j) (node i), neg_div_neg_eq]

private theorem quadratic_lower_of_symmetric_radii {ι : Type*} [Fintype ι]
    (A R : Matrix ι ι ℝ) (price : ℝ) (x : ι → ℝ)
    (hentry : ∀ i j, |A i j| ≤ R i j) (hsymm : ∀ i j, R i j = R j i)
    (hrows : ∀ i, ∑ j, R i j ≤ price) :
    -price * ∑ i, (x i)^2 ≤ quadratic A x := by
  have hswap : (∑ i, ∑ j, R i j * (x j)^2) = ∑ i, ∑ j, R i j * (x i)^2 := by
    rw [Finset.sum_comm]
    exact Finset.sum_congr rfl (fun i _ => Finset.sum_congr rfl (fun j _ => by rw [hsymm j i]))
  have hrow : (∑ i, (∑ j, R i j) * (x i)^2) ≤ price * ∑ i, (x i)^2 := by
    rw [Finset.mul_sum]
    exact Finset.sum_le_sum (fun i _ => mul_le_mul_of_nonneg_right (hrows i) (sq_nonneg _))
  have hmajor (i j : ι) : - (R i j * ((x i)^2 + (x j)^2) / 2) ≤ x i * (A i j * x j) := by
    have hR : 0 ≤ R i j := (abs_nonneg _).trans (hentry i j)
    have hYoung : |x i| * |x j| ≤ ((x i)^2 + (x j)^2) / 2 := by
      have h := sq_nonneg (|x i| - |x j|)
      rw [sub_sq, sq_abs, sq_abs] at h
      linarith
    have hAbs : |x i * (A i j * x j)| ≤ R i j * ((x i)^2 + (x j)^2) / 2 := by
      rw [abs_mul, abs_mul, show |x i| * (|A i j| * |x j|) =
        |A i j| * (|x i| * |x j|) by ring, mul_div_assoc]
      exact (mul_le_mul_of_nonneg_right (hentry i j)
        (mul_nonneg (abs_nonneg _) (abs_nonneg _))).trans (mul_le_mul_of_nonneg_left hYoung hR)
    exact (neg_le_neg hAbs).trans (neg_abs_le _)
  have hsum := Finset.sum_le_sum (fun i (_ : i ∈ Finset.univ) =>
    Finset.sum_le_sum (fun j (_ : j ∈ Finset.univ) => hmajor i j))
  have hQuad : quadratic A x = ∑ i, ∑ j, x i * (A i j * x j) := by
    simp only [quadratic, Matrix.mulVec, dotProduct, Finset.mul_sum]
  simp only [Finset.sum_neg_distrib, mul_add, add_div, Finset.sum_add_distrib,
    ← Finset.sum_div] at hsum
  rw [hswap, ← two_mul, ← mul_div_assoc,
    mul_div_cancel_left₀ _ (by norm_num : (2 : ℝ) ≠ 0)] at hsum
  simp only [Finset.sum_mul] at hrow
  rw [hQuad]
  linarith only [hrow, hsum]

private theorem abs_update_error_le (p c a b z e : ℝ) (hp : 0 < p)
    (h : |p * (b - a) + c * z| ≤ p * e) :
    |b - (a - c / p * z)| ≤ e := by
  rw [show b - (a - c / p * z) = (p * (b - a) + c * z) / p by
    field_simp [hp.ne']
    ring, abs_div, abs_of_pos hp, div_le_iff₀ hp, mul_comm e p]
  exact h

private theorem abs_unrounded_le (a b e g : ℝ) (h : |b - a| ≤ e)
    (hg : |b| + e ≤ g) : |a| ≤ g := by
  rw [show a = b - (b - a) by ring]
  refine (abs_sub_le b 0 (b - a)).trans ?_
  simp only [sub_zero, zero_sub, abs_neg]
  exact (add_le_add le_rfl h).trans hg

/-- A rounded Schur step supplies the local quadratic residual for
`FiniteSchurResidualChain`. The reciprocal-separation bound is summed over
all nodes, using the zero contribution at the coincident node. -/
theorem quadratic_lower_of_roundedPivot {n : ℕ} (node diag : Fin (n + 1) → ℝ)
    (V U : Fin (n + 1) → σ → ℝ) (diag' c : Fin n → ℝ) (V' U' : Fin n → σ → ℝ)
    (eV eU gV gU : σ → ℝ) (C eCol eDiag H : ℝ)
    (hp : 0 < diag 0) (hnode : Function.Injective node)
    (heDiag : 0 ≤ eDiag) (heCol : 0 ≤ eCol)
    (hc : ∀ i, |c i| ≤ C)
    (hCol : ∀ i, |numerator (V i.succ) (U i.succ) (V 0) (U 0) -
      (node i.succ - node 0) * c i| ≤ eCol)
    (hDiag : ∀ i, |diag 0 * (diag' i - diag i.succ) + (c i)^2| ≤ diag 0 * eDiag)
    (hV : ∀ i l, |diag 0 * (V' i l - V i.succ l) + c i * V 0 l| ≤ diag 0 * eV l)
    (hU : ∀ i l, |diag 0 * (U' i l - U i.succ l) + c i * U 0 l| ≤ diag 0 * eU l)
    (hgV : ∀ i l, |V' i l| + eV l ≤ gV l)
    (hgU : ∀ i l, |U' i l| + eU l ≤ gU l)
    (hsep : ∀ i, ∑ j, (|node i - node j|)⁻¹ ≤ H)
    (x : Fin (n + 1) → ℝ) :
    let off := max eCol (2 * C * eCol / diag 0 +
      2 * ∑ l, (eV l * gU l + eU l * gV l + eV l * eU l));
    -(eDiag + off * H) * ∑ i, (x i)^2 ≤ quadratic
      (cauchyMatrix node diag V U -
        reassemblePivot (diag 0) c (cauchyMatrix (fun i => node i.succ) diag' V' U')) x := by
  dsimp only
  let p := diag 0
  have hp' : p ≠ 0 := hp.ne'
  let off := max eCol (2 * C * eCol / p +
    2 * ∑ l, (eV l * gU l + eU l * gV l + eV l * eU l))
  let A' := cauchyMatrix (fun i => node i.succ) diag' V' U'
  let A := cauchyMatrix node diag V U
  let R : Matrix (Fin (n + 1)) (Fin (n + 1)) ℝ :=
    fun i j => (if i = j then eDiag else 0) + off * (|node i - node j|)⁻¹
  have hV' (i : Fin n) (l : σ) :
      |V' i l - (V i.succ l - c i / p * V 0 l)| ≤ eV l :=
    abs_update_error_le _ _ _ _ _ _ hp (hV i l)
  have hU' (i : Fin n) (l : σ) :
      |U' i l - (U i.succ l - c i / p * U 0 l)| ≤ eU l :=
    abs_update_error_le _ _ _ _ _ _ hp (hU i l)
  have hgV' (i : Fin n) (l : σ) : |V i.succ l - c i / p * V 0 l| ≤ gV l :=
    abs_unrounded_le _ _ _ _ (hV' i l) (hgV i l)
  have hgU' (i : Fin n) (l : σ) : |U i.succ l - c i / p * U 0 l| ≤ gU l :=
    abs_unrounded_le _ _ _ _ (hU' i l) (hgU i l)
  have hoff : 0 ≤ off := heCol.trans (le_max_left _ _)
  have hrow (i : Fin (n + 1)) : (∑ j, R i j) ≤ eDiag + off * H := by
    have hi : (∑ j : Fin (n + 1), if i = j then eDiag else 0) = eDiag := by
      simp
    simp only [R, Finset.sum_add_distrib, ← Finset.mul_sum, hi]
    exact add_le_add le_rfl (mul_le_mul_of_nonneg_left (hsep i) hoff)
  have hsym (i j : Fin (n + 1)) : R i j = R j i := by
    rcases eq_or_ne i j with rfl | h
    · rfl
    simp only [R, h, h.symm, ite_false, abs_sub_comm]
  have hcorner : reassemblePivot p c A' 0 0 = p := by
    change p * (1 * 1) + 0 = p
    ring
  have hcol (i : Fin n) : reassemblePivot p c A' i.succ 0 = c i := by
    change p * (c i / p * 1) + 0 = c i
    field_simp [hp']
    exact add_zero _
  have hrow₀ (i : Fin n) : reassemblePivot p c A' 0 i.succ = c i := by
    change p * (1 * (c i / p)) + 0 = c i
    field_simp [hp']
    exact add_zero _
  have htail (i j : Fin n) : reassemblePivot p c A' i.succ j.succ =
      A' i j + c i * c j / p := by
    change p * (c i / p * (c j / p)) + A' i j = _
    field_simp [hp']
    ring
  have hcolRadius (i : Fin n) : |A i.succ 0 - c i| ≤ R i.succ 0 := by
    have hi := Fin.succ_ne_zero i
    have hΔ : node i.succ - node 0 ≠ 0 := sub_ne_zero.mpr (hnode.ne hi)
    simp only [A, cauchyMatrix, R, hi, ite_false, zero_add, ← div_eq_mul_inv]
    rw [div_sub' hΔ, abs_div]
    exact div_le_div_of_nonneg_right ((hCol i).trans (le_max_left _ _)) (abs_nonneg _)
  change -(eDiag + off * H) * ∑ i, (x i)^2 ≤ quadratic (A - reassemblePivot p c A') x
  refine quadratic_lower_of_symmetric_radii _ R _ x ?_ hsym hrow
  intro i j
  refine Fin.cases ?_ (fun i => ?_) i
  · refine Fin.cases ?_ (fun j => ?_) j
    · simpa [Matrix.sub_apply, hcorner, A, cauchyMatrix, p, R] using heDiag
    · rw [Matrix.sub_apply, hrow₀, hsym]
      change |cauchyMatrix node diag V U 0 j.succ - c j| ≤ R j.succ 0
      rw [cauchyMatrix_swap node diag V U]
      exact hcolRadius j
  · refine Fin.cases ?_ (fun j => ?_) j
    · rw [Matrix.sub_apply, hcol]
      exact hcolRadius i
    · rw [Matrix.sub_apply, htail]
      rcases eq_or_ne i j with rfl | hij
      · simp [A, A', cauchyMatrix, R]
        have hEq : diag i.succ - (diag' i + c i * c i / p) =
            - (p * (diag' i - diag i.succ) + (c i)^2) / p := by
          field_simp [hp']
          ring
        rw [hEq, abs_div, abs_neg, abs_of_pos hp, div_le_iff₀ hp]
        simpa only [mul_comm] using hDiag i
      · have hsij : i.succ ≠ j.succ := Fin.succ_injective _ |>.ne hij
        simp only [A, A', cauchyMatrix, R, hij, hsij, ite_false, zero_add, ← div_eq_mul_inv,
          sub_add_eq_sub_sub]
        exact (abs_offDiagonal_residual_le p (c i) (c j) _ _ _ C eCol hp
          (hnode.ne hsij) (hc i) (hc j) _ _ _ _ _ _ _ _ _ _ _ _ _ _
          (hCol i) (hCol j) (hV' i) (hU' i) (hV' j) (hU' j)
          (hgV' i) (hgU' i) (hgV' j) (hgU' j)).trans
          (div_le_div_of_nonneg_right (le_max_right _ _) (abs_nonneg _))

end GRWTSK.Algebra.LinearAlgebra.StructuredSchurPivotResidual
