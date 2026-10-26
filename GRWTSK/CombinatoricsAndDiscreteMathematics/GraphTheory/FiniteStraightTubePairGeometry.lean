/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and GRWTSK source retain upstream authorship and license duties. -/
import GRWTSK.Analysis.Geometry.FiniteParallelTubeSeparation
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

set_option autoImplicit false
noncomputable section

/-!
# Shared physical shading point versus two separate coarse cell hits

The existing geometry-derived cell mark is true when an individual
shading intersects a given geometric cell. Two such marks need not
represent the SAME intersection point; a large cell may intersect
two physically disjoint straight tube shadings.

We introduce a separate actual shared-point mark for an ordered pair
of independently indexed source tubes. A shared mark implies two
individual marks, but the converse requires a geometric thickness /
cell-resolution hypothesis. An exact parallel/transverse disjointness
certificate forces the shared-point mark to be false.

This prevents the false identification of a geometric continuous
tube intersection moment with the previously proved coarse-cell
second moment Q.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily

universe u v
variable {d : ℕ} {Index : Type u} {Cell : Type v}
variable [Fintype Index] [Fintype Cell]

namespace Family

variable (S : Family d Index)

/-- A physically shared point in BOTH original indexed shadings,
within the SAME geometric cell. This is stricter than two
independent markings in that cell. -/
def sharedShadingMark
    (cells : Cell → Set (Space d))
    (i j : Index) (c : Cell) : Bool := by
  classical
  exact decide (∃ x : Space d,
    x ∈ S.shading i ∧ x ∈ S.shading j ∧ x ∈ cells c)

theorem sharedShadingMark_eq_true_iff
    (cells : Cell → Set (Space d))
    (i j : Index) (c : Cell) :
    S.sharedShadingMark cells i j c = true ↔
      ∃ x : Space d,
        x ∈ S.shading i ∧ x ∈ S.shading j ∧ x ∈ cells c := by
  classical
  simp [sharedShadingMark]

/-- Every true shared-point mark creates two real individual
tube-cell hits, with exactly the same source IDs. -/
theorem shared_mark_implies_two_hits
    (cells : Cell → Set (Space d))
    (i j : Index) (c : Cell)
    (h : S.sharedShadingMark cells i j c = true) :
    S.geometricMark cells i c = true ∧
      S.geometricMark cells j c = true := by
  obtain ⟨x, hi, hj, hc⟩ :=
    (S.sharedShadingMark_eq_true_iff cells i j c).mp h
  exact ⟨S.geometricMark_complete cells i c x hi hc,
    S.geometricMark_complete cells j c x hj hc⟩

/-- Physical separation at the *original straight tube* level
forbids an actual same-point shading overlap, for every cell. -/
theorem shared_mark_false_of_disjoint_tubes
    (cells : Cell → Set (Space d))
    (i j : Index) (c : Cell)
    (hdisj : Disjoint (S.tube i).region (S.tube j).region) :
    S.sharedShadingMark cells i j c = false := by
  have hn : ¬ S.sharedShadingMark cells i j c = true := by
    intro h
    obtain ⟨x, hi, hj, _⟩ :=
      (S.sharedShadingMark_eq_true_iff cells i j c).mp h
    exact Set.disjoint_left.mp hdisj
      (S.shading_subtube i hi) (S.shading_subtube j hj)
  cases hmark : S.sharedShadingMark cells i j c with
  | false => rfl
  | true => exact False.elim (hn hmark)

/-- One valid geometric Q-supplier: equal-direction source tubes with
transverse center separation > sum of radii have zero *actual shared*
shading mark in EVERY cell. No directional Kakeya gain is inferred. -/
theorem shared_mark_false_of_parallel_gap
    (cells : Cell → Set (Space d))
    (i j : Index) (c : Cell)
    (hdir : (S.tube i).direction = (S.tube j).direction)
    (hgap : (S.tube i).radius + (S.tube j).radius <
      ‖transversePart (S.tube i).direction
        ((S.tube j).center - (S.tube i).center)‖) :
    S.sharedShadingMark cells i j c = false := by
  exact S.shared_mark_false_of_disjoint_tubes cells i j c
    ((S.tube i).disjoint_of_parallel_transverse_separation
      (S.tube j) hdir hgap)

end Family
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
