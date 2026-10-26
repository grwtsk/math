/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Original Mathlib and GRWTSK sources retain author/license duties. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeMediumTransport
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteIndexedPairOverlap
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubePairGeometry

set_option autoImplicit false
noncomputable section

/-!
# No-go theorem: a site potential alone cannot improve geometric overlap

Two coatings with different strengths, but on the SAME family of
physical straight cylinders and shadings, share *exactly*:
- the shading union and its Lebesgue volume;
- the source-indexed cell marking for every cell;
- every ordered pair shared-cell weight;
- the complete finite second-overlap moment Q;
- the direction-separation predicate.

Their finite Hodge energies and sampled leakage bounds can differ.
To deduce a stronger Kakeya volume lower bound, one must first prove
that some actual shading, occupancy or tube/source geometry changes
and carries quantitative estimates. Such change is NOT in the
definition of the coating field here.

The theorem does not prohibit physical optical media from changing
a wave solution; it only forbids changing a *fixed geometric measure
problem* by silently changing an unrelated energy coefficient.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteIndexedShadingVolume

universe u v
variable {d : ℕ} {Index : Type u} {Cell : Type v}
variable [Fintype Index] [Fintype Cell]

namespace Family.Coating

variable {S : Family d Index}
variable (C D : Family.Coating S)

/-- Exact agreement of every pairwise ordered *coarse-cell*
overlap observable, even if the coatings' strengths differ. -/
theorem pairCellWeight_coating_invariant
    (cells : Cell → Set (Space d))
    (covered : Finset Cell) (i j : Index) :
    (C.indexedCells cells).pairCellWeight covered i j =
      (D.indexedCells cells).pairCellWeight covered i j := rfl

/-- In particular the actual complete second-moment quantity Q of
the finite weighted indexed shading family is strength-independent. -/
theorem overlapSecondMoment_coating_invariant
    (cells : Cell → Set (Space d))
    (covered : Finset Cell) :
    (C.indexedCells cells).overlapSecondMoment covered =
      (D.indexedCells cells).overlapSecondMoment covered := rfl

/-- The indexed weighted first-incidence mass is also fixed by
the original straight geometry, not by a potential coefficient. -/
theorem totalIncidence_coating_invariant
    (cells : Cell → Set (Space d)) :
    (C.indexedCells cells).totalIncidence =
      (D.indexedCells cells).totalIncidence := rfl

/-- An actual shared-point shading mark is similarly independent
of either coating; it is a property of the original shadings. -/
theorem sharedShadingMark_coating_invariant
    (cells : Cell → Set (Space d))
    (i j : Index) (c : Cell) :
    S.sharedShadingMark cells i j c =
      S.sharedShadingMark cells i j c := rfl

/-- Coating-dependent finite *energy* and coating-independent physical
volume coexist. No implication from increasing barrier strength
to improving a geometric overlap bound is assumed. -/
theorem geometric_measure_and_Q_invariant
    (cells : Cell → Set (Space d))
    (covered : Finset Cell) :
    MeasureTheory.volume C.shadingUnion =
      MeasureTheory.volume D.shadingUnion ∧
    (C.indexedCells cells).totalIncidence =
      (D.indexedCells cells).totalIncidence ∧
    (C.indexedCells cells).overlapSecondMoment covered =
      (D.indexedCells cells).overlapSecondMoment covered := by
  exact ⟨C.same_geometry_lebesgue_volume D,
    C.totalIncidence_coating_invariant D cells,
    C.overlapSecondMoment_coating_invariant D cells covered⟩

end Family.Coating
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
