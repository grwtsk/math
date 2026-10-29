/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and existing GRWTSK source retain upstream license/credit. -/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Exact finite weighted-shading overlap and visible-cell estimate

A source index and a marked cell are deliberately different types.
Distinct indices may have the same marked cells and independent weights.
The exact incidence sum equals the sum of pointwise multiplicities.
The *squared* incidence sum on explicitly provided covered cells is
bounded by the covered-cell count times its second overlap moment.

This is a finite COUNTING measure theorem, not Lebesgue volume of
δ-neighborhoods, a 3D Kakeya theorem, or convex Wolff clustering.
A geometric tube-to-cell map, a grid-cell volume, and a bound on the
overlap second moment are separate mathematical suppliers.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteIndexedShadingVolume

universe u v

variable {Index : Type u} {Cell : Type v}
variable [Fintype Index] [Fintype Cell]

/-- No deduplication of repeated geometric traces: every source index
keeps its own marked cells and an independent nonnegative weight. -/
structure Family (Index : Type u) (Cell : Type v)
    [Fintype Index] [Fintype Cell] where
  marked : Index → Cell → Bool
  weight : Index → ℝ
  weight_nonneg : ∀ i, 0 ≤ weight i

namespace Family

variable (S : Family Index Cell)

/-- Marked-cell count for one selected index (counting measure). -/
def count (i : Index) : ℝ :=
  ∑ c : Cell, if S.marked i c then 1 else 0

/-- Source-indexed total weighted incidence mass. -/
def totalIncidence : ℝ :=
  ∑ i : Index, S.weight i * S.count i

/-- Pointwise **weighted overlap multiplicity**, not the measure of
a Euclidean geometric union. -/
def multiplicity (c : Cell) : ℝ :=
  ∑ i : Index, if S.marked i c then S.weight i else 0

theorem multiplicity_nonneg (c : Cell) :
    0 ≤ S.multiplicity c := by
  unfold multiplicity
  apply Finset.sum_nonneg
  intro i _
  by_cases h : S.marked i c = true
  · simp [h, S.weight_nonneg i]
  · cases hh : S.marked i c with
    | false => simp
    | true => exact False.elim (h hh)

/-- Exact finite weighted Fubini identity. This keeps source indices
distinct even when they occupy identical physical cells. -/
theorem totalIncidence_eq_sum_multiplicity :
    S.totalIncidence = ∑ c : Cell, S.multiplicity c := by
  unfold totalIncidence count
  calc
    (∑ i : Index, S.weight i *
        (∑ c : Cell, if S.marked i c then 1 else 0)) =
        ∑ i : Index, ∑ c : Cell,
          (if S.marked i c then S.weight i else 0) := by
      apply Finset.sum_congr rfl
      intro i _
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro c _
      cases h : S.marked i c <;> simp [h]
    _ = ∑ c : Cell, ∑ i : Index,
          (if S.marked i c then S.weight i else 0) := by
      rw [Finset.sum_comm]
    _ = ∑ c : Cell, S.multiplicity c := rfl

/-- The positive overlap second moment on a selected finite cell
collection. No pointwise maximal-multiplicity claim is hidden. -/
def overlapSecondMoment (covered : Finset Cell) : ℝ :=
  ∑ c ∈ covered, (S.multiplicity c) ^ 2

theorem overlapSecondMoment_nonneg (covered : Finset Cell) :
    0 ≤ S.overlapSecondMoment covered := by
  unfold overlapSecondMoment
  exact Finset.sum_nonneg (fun c _ => sq_nonneg _)

/-- Exact finite volume-from-second-moment inequality, expressed in
CELL COUNT rather than Euclidean Lebesgue measure. A bound on the
second moment is still needed for a useful Kakeya-style conclusion. -/
theorem finite_visible_count_cauchy (covered : Finset Cell) :
    (∑ c ∈ covered, S.multiplicity c) ^ 2 ≤
      (covered.card : ℝ) * S.overlapSecondMoment covered := by
  unfold overlapSecondMoment
  simpa using
    (Finset.sum_mul_sq_le_sq_mul_sq covered
      (fun _ : Cell => (1 : ℝ)) S.multiplicity)

end Family

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteIndexedShadingVolume
