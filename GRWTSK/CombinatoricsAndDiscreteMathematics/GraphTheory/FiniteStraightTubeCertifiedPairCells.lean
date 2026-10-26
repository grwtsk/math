/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Original Mathlib/GRWTSK sources retain license and credit duties. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubePairGeometry
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteIndexedPairOverlap

set_option autoImplicit false
noncomputable section

/-!
# When an actual geometric pair disjointness certifies zero cell overlap

Two shadings can hit one coarse cell at DIFFERENT points. Consequently
a theorem about physically disjoint Euclidean tube regions cannot in
general be used to zero the corresponding coarse-cell pair term in Q.

A sufficient, explicitly strong bridge is *full occupation on hits*:
whenever an indexed shading marks a cell, that whole cell is contained
in the shading. If selected cells are nonempty, two marked shadings
must then share a physical point. Hence disjoint original tubes cannot
both mark the same selected cell, and their ordered pair term in the
finite weighted second moment is exactly zero.

This hypothesis is NOT asserted for arbitrary Kakeya tubes or shadings;
its derivation or replacement by a quantitative density estimate is a
central open analytic obligation.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteIndexedShadingVolume

universe u v
variable {d : ℕ} {Index : Type u} {Cell : Type v}
variable [Fintype Index] [Fintype Cell]

namespace Family

variable (S : Family d Index)

/-- Strong enough to convert geometric overlap *hits* into actual
point overlap. Importantly not true for merely touched cells. -/
def FullyOccupiedOnHits
    (cells : Cell → Set (Space d)) : Prop :=
  ∀ i c, S.geometricMark cells i c = true →
    cells c ⊆ S.shading i

/-- A genuinely nonempty cell with two FULL shading marks must
contain an actual common geometric point. -/
theorem shared_mark_of_full_occupation
    (cells : Cell → Set (Space d))
    (hfull : S.FullyOccupiedOnHits cells)
    (i j : Index) (c : Cell)
    (hcell : (cells c).Nonempty)
    (hi : S.geometricMark cells i c = true)
    (hj : S.geometricMark cells j c = true) :
    S.sharedShadingMark cells i j c = true := by
  obtain ⟨x, hx⟩ := hcell
  apply (S.sharedShadingMark_eq_true_iff cells i j c).2
  exact ⟨x, hfull i c hi hx, hfull j c hj hx, hx⟩

/-- In a genuinely full-occupation cell system, physical disjointness
of two original straight tubes excludes simultaneous cell marking. -/
theorem not_two_hits_of_disjoint_tubes
    (cells : Cell → Set (Space d))
    (hfull : S.FullyOccupiedOnHits cells)
    (i j : Index) (c : Cell)
    (hcell : (cells c).Nonempty)
    (hdisj : Disjoint (S.tube i).region (S.tube j).region) :
    ¬ (S.geometricMark cells i c = true ∧
        S.geometricMark cells j c = true) := by
  rintro ⟨hi, hj⟩
  have hshared :=
    S.shared_mark_of_full_occupation cells hfull i j c hcell hi hj
  have hfalse :=
    S.shared_mark_false_of_disjoint_tubes cells i j c hdisj
  rw [hfalse] at hshared
  exact Bool.false_ne_true hshared

/-- Actual physical disjointness now yields zero ordered
shared-cell weight, *provided* every selected cell is nonempty
and the independently stated full-occupation bridge holds. -/
theorem pairCellWeight_zero_of_disjoint_tubes
    (cells : Cell → Set (Space d))
    (covered : Finset Cell)
    (hfull : S.FullyOccupiedOnHits cells)
    (hnonempty : ∀ c ∈ covered, (cells c).Nonempty)
    (i j : Index)
    (hdisj : Disjoint (S.tube i).region (S.tube j).region) :
    (S.asIndexedCounting cells).pairCellWeight covered i j = 0 := by
  unfold FiniteIndexedShadingVolume.Family.pairCellWeight
  apply Finset.sum_eq_zero
  intro c hc
  have hnot :=
    S.not_two_hits_of_disjoint_tubes cells hfull i j c
      (hnonempty c hc) hdisj
  by_cases hi : S.geometricMark cells i c = true
  · have hj : S.geometricMark cells j c = false := by
      cases h : S.geometricMark cells j c with
      | false => rfl
      | true => exact False.elim (hnot ⟨hi, h⟩)
    simp [FiniteIndexedShadingVolume.Family.contribution,
      asIndexedCounting, hi, hj]
  · have hf : S.geometricMark cells i c = false := by
      cases h : S.geometricMark cells i c with
      | false => rfl
      | true => exact False.elim (hi h)
    simp [FiniteIndexedShadingVolume.Family.contribution,
      asIndexedCounting, hf]

/-- Geometry-derived zero contribution for parallel separated tubes,
retaining *every* explicit cell-filling and nonemptiness hypothesis.
No claim about differently directed Kakeya tube intersections. -/
theorem pairCellWeight_zero_of_parallel_gap
    (cells : Cell → Set (Space d))
    (covered : Finset Cell)
    (hfull : S.FullyOccupiedOnHits cells)
    (hnonempty : ∀ c ∈ covered, (cells c).Nonempty)
    (i j : Index)
    (hdir : (S.tube i).direction = (S.tube j).direction)
    (hgap : (S.tube i).radius + (S.tube j).radius <
      ‖transversePart (S.tube i).direction
        ((S.tube j).center - (S.tube i).center)‖) :
    (S.asIndexedCounting cells).pairCellWeight covered i j = 0 := by
  exact S.pairCellWeight_zero_of_disjoint_tubes
    cells covered hfull hnonempty i j
    ((S.tube i).disjoint_of_parallel_transverse_separation
      (S.tube j) hdir hgap)

end Family
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
