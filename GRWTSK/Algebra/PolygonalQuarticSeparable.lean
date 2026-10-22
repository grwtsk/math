import GRWTSK.Algebra.PolygonalQuarticSplitting
import Mathlib.FieldTheory.Separable

/-!
Quartic adjacency-value separation and the cubic resolvent.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
All difference identities work in any commutative ring. The no-collision
conclusions require a field and pairwise distinct inputs, not characteristic
zero. No claim about a Galois quotient is made.
-/

namespace GRWTSK.Algebra.PolygonalQuarticSeparable

open Polynomial
open GRWTSK.Algebra.PolygonalQuarticDescent
open GRWTSK.Algebra.PolygonalQuarticSplitting

noncomputable section

variable {R : Type*} [CommRing R]

theorem adjacencyOne_sub_adjacencyTwo (a b c d : R) :
    adjacencyOne a b c d - adjacencyTwo a b c d =
      (a - d) * (c - b) := by
  simp [adjacencyOne, adjacencyTwo, eTwo, qOne, qTwo]
  ring

theorem adjacencyOne_sub_adjacencyThree (a b c d : R) :
    adjacencyOne a b c d - adjacencyThree a b c d =
      (a - c) * (d - b) := by
  simp [adjacencyOne, adjacencyThree, eTwo, qOne, qThree]
  ring

theorem adjacencyTwo_sub_adjacencyThree (a b c d : R) :
    adjacencyTwo a b c d - adjacencyThree a b c d =
      (a - b) * (d - c) := by
  simp [adjacencyTwo, adjacencyThree, eTwo, qTwo, qThree]
  ring

variable {F : Type*} [Field F]

/-- Distinct quartic roots give three distinct adjacency weights in
every characteristic, including 2 and 3. -/
theorem adjacency_values_pairwise_distinct (a b c d : F)
    (hab : a ≠ b) (hac : a ≠ c) (had : a ≠ d)
    (hbc : b ≠ c) (hbd : b ≠ d) (hcd : c ≠ d) :
    adjacencyOne a b c d ≠ adjacencyTwo a b c d ∧
    adjacencyOne a b c d ≠ adjacencyThree a b c d ∧
    adjacencyTwo a b c d ≠ adjacencyThree a b c d := by
  constructor
  · intro h
    have hzero : (a - d) * (c - b) = 0 := by
      rw [← adjacencyOne_sub_adjacencyTwo, sub_eq_zero.mpr h]
    exact (mul_ne_zero (sub_ne_zero.mpr had)
      (sub_ne_zero.mpr (Ne.symm hbc))) hzero
  constructor
  · intro h
    have hzero : (a - c) * (d - b) = 0 := by
      rw [← adjacencyOne_sub_adjacencyThree, sub_eq_zero.mpr h]
    exact (mul_ne_zero (sub_ne_zero.mpr hac)
      (sub_ne_zero.mpr (Ne.symm hbd))) hzero
  · intro h
    have hzero : (a - b) * (d - c) = 0 := by
      rw [← adjacencyTwo_sub_adjacencyThree, sub_eq_zero.mpr h]
    exact (mul_ne_zero (sub_ne_zero.mpr hab)
      (sub_ne_zero.mpr (Ne.symm hcd))) hzero

/-- The cubic is separable whenever the four labelled roots are distinct.
This theorem uses the pinned Mathlib finite-product separability criterion. -/
theorem adjacencyResolvent_separable (a b c d : F)
    (hab : a ≠ b) (hac : a ≠ c) (had : a ≠ d)
    (hbc : b ≠ c) (hbd : b ≠ d) (hcd : c ≠ d) :
    (adjacencyResolventFromRoots a b c d).Separable := by
  obtain ⟨h12, h13, h23⟩ :=
    adjacency_values_pairwise_distinct a b c d hab hac had hbc hbd hcd
  let v : Fin 3 → F :=
    ![adjacencyOne a b c d, adjacencyTwo a b c d,
      adjacencyThree a b c d]
  have hv : Function.Injective v := by
    intro i j hij
    fin_cases i <;> fin_cases j <;>
      simp [v] at hij ⊢
    all_goals first | exact h12 hij | exact h13 hij | exact h23 hij |
      exact (h12 hij.symm) | exact (h13 hij.symm) |
      exact (h23 hij.symm)
  have hsep := (Polynomial.separable_prod_X_sub_C_iff (f := v)).2 hv
  simpa [adjacencyResolventFromRoots, v, Fin.prod_univ_three] using hsep

end
end GRWTSK.Algebra.PolygonalQuarticSeparable
