import OAI.LinearAlgebra.MatrixExponent.Rectangle.Model

/-!
# Evaluating a finite bilinear plan for rectangular matrix products

Local attribution: grwtsk contributors.
-/

namespace GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.FiniteBilinearMatrixPlan

open OAI.LinearAlgebra.MatrixExponent.Rectangle (Pos RankLE)
open scoped BigOperators

/-- The three coefficient tables of the existing `Rectangle.RankLE` witness
are exposed as data so their evaluation does not require choosing a proof witness. -/
structure Plan (F : Type*) (i j k r : ℕ) where
  left : Fin r → Pos i k → F
  right : Fin r → Pos k j → F
  output : Fin r → Pos i j → F

variable {F : Type*} [Field F] {i j k r : ℕ}

/-- The exact tensor entry in row/column output indexing. -/
def Plan.coefficient (P : Plan F i j k r) (x : Pos i k) (y : Pos k j) (z : Pos i j) : F :=
  ∑ l, P.left l x * P.right l y * P.output l z

/-- Coefficient-by-coefficient correctness of the rank witness. -/
def Plan.Correct (P : Plan F i j k r) : Prop :=
  ∀ x y z, P.coefficient x y z = if x.1 = z.1 ∧ x.2 = y.1 ∧ y.2 = z.2 then 1 else 0

/-- The products which can be shared by all output entries. -/
def Plan.products (P : Plan F i j k r) (A : Pos i k → F) (B : Pos k j → F) (l : Fin r) : F :=
  (∑ x, P.left l x * A x) * (∑ y, P.right l y * B y)

/-- Reconstruct every output from the product vector. -/
def Plan.decode (P : Plan F i j k r) (v : Fin r → F) (z : Pos i j) : F :=
  ∑ l, v l * P.output l z

/-- The representation carries exactly the existing finite rank predicate. -/
theorem rankLE_iff_exists_plan : RankLE F i j k r ↔ ∃ P : Plan F i j k r, P.Correct := by
  constructor
  · rintro ⟨a, b, c, h⟩
    exact ⟨⟨a, b, c⟩, h⟩
  · rintro ⟨⟨a, b, c⟩, h⟩
    exact ⟨a, b, c, h⟩

/-- Changing the order of the finite sums exposes the exact bilinear coefficient
of each pair of input entries. -/
theorem Plan.decode_products (P : Plan F i j k r) (A : Pos i k → F)
    (B : Pos k j → F) (z : Pos i j) :
    P.decode (P.products A B) z = ∑ x, ∑ y, A x * B y * P.coefficient x y z := by
  classical
  unfold Plan.decode Plan.products Plan.coefficient
  calc
    _ = ∑ l : Fin r, ∑ x : Pos i k, ∑ y : Pos k j,
        A x * B y * (P.left l x * P.right l y * P.output l z) := by
      refine Finset.sum_congr rfl (fun l _ => ?_)
      rw [Finset.sum_mul, Finset.sum_mul]
      refine Finset.sum_congr rfl (fun x _ => ?_)
      rw [Finset.mul_sum, Finset.sum_mul]
      exact Finset.sum_congr rfl (fun y _ => by ring)
    _ = _ := by
      rw [Finset.sum_comm]
      refine Finset.sum_congr rfl (fun x _ => ?_)
      rw [Finset.sum_comm]
      simp only [Finset.mul_sum]

/-- A correct finite plan evaluates the matrix product over the base field,
including empty dimensions. -/
theorem Plan.eval_matrixProduct {P : Plan F i j k r} (h : P.Correct)
    (A : Pos i k → F) (B : Pos k j → F) (z : Pos i j) :
    P.decode (P.products A B) z = ∑ t : Fin k, A (z.1, t) * B (t, z.2) := by
  classical
  rw [P.decode_products]
  unfold Plan.Correct at h
  simp_rw [h]
  simp only [Fintype.sum_prod_type, mul_ite, mul_one, mul_zero]
  simp [ite_and]
  refine Finset.sum_congr rfl (fun x _ => ?_)
  have hcol (y : Fin k) :
      (∑ c : Fin j, if x = y then if c = z.2 then A (z.1, x) * B (y, c) else 0 else 0) =
        if x = y then A (z.1, x) * B (y, z.2) else 0 := by
    by_cases hxy : x = y <;> simp [hxy]
  simp_rw [hcol]
  simp

end GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.FiniteBilinearMatrixPlan
