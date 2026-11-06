/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteSignDyadicLDL
import Mathlib.Data.Vector.Zip

/-!
# Rowwise replay of an exact dyadic LDL packet

Keep a factor row as a length-checked list, so its weighted dot product
traverses each list once. Check one triangle of the target against those
dot products and test symmetry against the opposite orientation. The
check therefore still detects a change confined to either triangle.
The resulting numerator identity and nonnegative pivots give the same
dyadic quadratic sign as the finite matrix checker. The representation
and equality proof apply to zero pivots as well.

This module supplies a second evaluator for the same certificate,
with the arithmetic proof shared by both evaluators. Independent
mathematical review and packet decoding are separate.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL

open QuadraticCertificates

variable {n : ℕ}

private def listGram (x d y : List.Vector ℤ n) : ℤ :=
  (List.Vector.zipWith (· * ·) (List.Vector.zipWith (· * ·) x d) y).toList.sum

private theorem listGram_eq_sum (x d y : List.Vector ℤ n) :
    listGram x d y = ∑ k, x.get k * d.get k * y.get k := by
  have h : List.Vector.zipWith (· * ·) (List.Vector.zipWith (· * ·) x d) y =
      List.Vector.ofFn (fun k => x.get k * d.get k * y.get k) := by
    ext k
    simp
  rw [listGram, h, List.Vector.toList_ofFn, List.sum_ofFn]

/-- Check every lower entry in one target row and its opposite orientation. -/
def checkListRow (target : Matrix (Fin n) (Fin n) ℤ)
    (factor : Fin n → List.Vector ℤ n) (pivots : List.Vector ℤ n) (i : Fin n) : Bool :=
  decide (0 ≤ pivots.get i ∧ ∀ j : Fin n, j ≤ i →
    target i j = target j i ∧ target i j = listGram (factor i) pivots (factor j))

def checkListRows (target : Matrix (Fin n) (Fin n) ℤ)
    (factor : Fin n → List.Vector ℤ n) (pivots : List.Vector ℤ n) : Bool :=
  decide (∀ i, checkListRow target factor pivots i = true)

theorem checkListRow_implies_checkRow {target : Matrix (Fin n) (Fin n) ℤ}
    {factor : Fin n → List.Vector ℤ n} {pivots : List.Vector ℤ n}
    (h : ∀ i, checkListRow target factor pivots i = true) (i : Fin n) :
    checkRow target (fun j k => (factor j).get k) pivots.get i = true := by
  have hrow (j : Fin n) : 0 ≤ pivots.get j ∧ ∀ k : Fin n, k ≤ j →
      target j k = target k j ∧ target j k = listGram (factor j) pivots (factor k) :=
    of_decide_eq_true (h j)
  unfold checkRow
  refine @decide_eq_true _ (@instDecidableAnd _ _ (Int.decLe _ _) Fintype.decidableForallFintype) ⟨(hrow i).1, fun j => ?_⟩
  rcases le_total j i with hji | hij
  · simpa only [listGram_eq_sum, gramNumerator] using ((hrow i).2 j hji).2
  · obtain ⟨hs, hg⟩ := (hrow j).2 i hij
    rw [← hs, hg, listGram_eq_sum]
    change (∑ k, (factor j).get k * pivots.get k * (factor i).get k) =
      ∑ k, (factor i).get k * pivots.get k * (factor j).get k
    apply Finset.sum_congr rfl
    intro k _
    ring

/-- Rowwise, symmetric replay returns nonnegativity on every real vector. -/
theorem checkListRows_quadratic_nonneg (bits : ℕ) {target : Matrix (Fin n) (Fin n) ℤ}
    {factor : Fin n → List.Vector ℤ n} {pivots : List.Vector ℤ n}
    (h : checkListRows target factor pivots = true) (v : Fin n → ℝ) :
    0 ≤ quadratic ((targetValue bits target).map (Rat.castHom ℝ)) v := by
  apply check_quadratic_nonneg bits (factor := fun j k => (factor j).get k)
    (pivots := pivots.get) _ v
  unfold check
  exact @decide_eq_true _ Fintype.decidableForallFintype (checkListRow_implies_checkRow (of_decide_eq_true h))

section CommonGrid

open Matrix

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

private def integerRadius (lower minorant : Matrix ι ι ℤ) (margin : ℤ) (i j : ι) : ℤ :=
  |lower i j - (if i = j then margin else 0) - minorant i j|

/-- An exact integer check of the paid comparison when lower, minorant,
and margin share one dyadic denominator. -/
def checkCommonGrid (lower minorant : Matrix ι ι ℤ) (margin : ℤ) : Bool :=
  decide (∀ i, (∀ j, integerRadius lower minorant margin i j =
    integerRadius lower minorant margin j i) ∧ (∑ j, integerRadius lower minorant margin i j) ≤ margin)

omit [Fintype ι] in
private theorem minorantRadius_eq_dyadic (bits : ℕ) (lower minorant : Matrix ι ι ℤ)
    (margin : ℤ) (i j : ι) :
    minorantRadius (lower.map (dyadic bits)) (minorant.map (dyadic bits)) (dyadic bits margin) i j =
      dyadic bits (integerRadius lower minorant margin i j) := by
  have hden : 0 < (2 : ℚ)^bits := by positivity
  by_cases hij : i = j <;>
    simp [minorantRadius, integerRadius, hij, dyadic, ← sub_div, abs_div, abs_of_pos hden]

/-- The common-grid check supplies the same comparison as rational replay. -/
theorem checkCommonGrid_implies_checkMinorant (bits : ℕ)
    {lower minorant : Matrix ι ι ℤ} {margin : ℤ} (h : checkCommonGrid lower minorant margin = true) :
    checkMinorant (lower.map (dyadic bits)) (minorant.map (dyadic bits)) (dyadic bits margin) = true := by
  have hrow (i : ι) := (of_decide_eq_true h :
    ∀ i, (∀ j, integerRadius lower minorant margin i j =
      integerRadius lower minorant margin j i) ∧ (∑ j, integerRadius lower minorant margin i j) ≤ margin) i
  unfold checkMinorant
  apply decide_eq_true
  intro i
  unfold checkMinorantRow
  apply decide_eq_true
  simp only [minorantRadius_eq_dyadic]
  refine ⟨fun j => congrArg (dyadic bits) ((hrow i).1 j), ?_⟩
  simp only [dyadic, ← Finset.sum_div]
  apply (div_le_div_iff_of_pos_right (show 0 < (2 : ℚ)^bits by positivity)).2
  exact_mod_cast (hrow i).2

end CommonGrid

section Replay

private def rowFactor : Fin 2 → List.Vector ℤ 2 := ![⟨[4, 0], rfl⟩, ⟨[-2, 4], rfl⟩]
private def rowPivots : List.Vector ℤ 2 := ⟨[3, 0], rfl⟩

example : checkListRows !![48, -24; -24, 12] rowFactor rowPivots = true := by decide +kernel

example : checkListRows !![48, -23; -24, 12] rowFactor rowPivots = false := by decide +kernel

example : checkCommonGrid !![(56 : ℤ), -24; -24, 20] !![48, -24; -24, 12] 8 = true := by
  decide +kernel

end Replay

end GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL
