/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and GRWTSK imports retain upstream author/license obligations. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeCertifiedPairCells

set_option autoImplicit false
noncomputable section

/-!
# Canonical ambient partition by finite geometric shading membership

For each real Euclidean point x, retain the exact finite set of
source indices i whose ACTUAL straight-tube shading contains x.
For each possible pattern A : Finset Index, define its geometric
atom as the collection of points with exactly that pattern.

These atoms are pairwise disjoint and cover the entire ambient space.
Every nonempty positive-index atom is FULLY shaded, while zero-index
atoms are outside the shading union. Crucially, a shaded atom
cannot create a coarse-cell false pair overlap: if i and j both
mark it, they genuinely share the same physical shaded point.

This is an exact finite indexed-shading geometry construction,
not an imported Kakeya tube-overlap estimate. Atom volumes need not
be equal, the atoms can be very small, and their number can grow
exponentially with the number of indexed tubes.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteIndexedShadingVolume

universe u
variable {d : ℕ} {Index : Type u} [Fintype Index]
variable [DecidableEq Index]

namespace Family

variable (S : Family d Index)

/-- The true *geometric source-index pattern* at an ambient point.
Repeated identical cylinders still yield distinct source indices. -/
def shadingPattern (x : Space d) : Finset Index := by
  classical
  exact Finset.univ.filter (fun i => x ∈ S.shading i)

theorem mem_shadingPattern_iff (i : Index) (x : Space d) :
    i ∈ S.shadingPattern x ↔ x ∈ S.shading i := by
  classical
  simp [shadingPattern]

/-- Geometric atom consisting of points covered by exactly
the selected finite set A of source shading indices. -/
def shadingAtom (A : Finset Index) : Set (Space d) :=
  {x | ∀ i : Index, (x ∈ S.shading i ↔ i ∈ A)}

/-- Every point belongs to its own genuine membership-pattern atom.
No random source bit or finite pixel test is needed. -/
theorem mem_own_shadingAtom (x : Space d) :
    x ∈ S.shadingAtom (S.shadingPattern x) := by
  intro i
  exact (S.mem_shadingPattern_iff i x).symm

/-- A point cannot lie in two distinct atoms; the index pattern
it carries is uniquely recoverable from geometric shading. -/
theorem atom_pattern_unique (A B : Finset Index) (x : Space d)
    (hA : x ∈ S.shadingAtom A)
    (hB : x ∈ S.shadingAtom B) : A = B := by
  ext i
  exact (hA i).symm.trans (hB i)

/-- All membership atoms are pairwise disjoint in the true
ambient Euclidean geometry, irrespective of tube overlap. -/
theorem atoms_pairwise_disjoint :
    Set.PairwiseDisjoint (Set.univ : Set (Finset Index))
      S.shadingAtom := by
  intro A _ B _ hAB
  apply Set.disjoint_left.mpr
  intro x hA hB
  exact hAB (S.atom_pattern_unique A B x hA hB)

/-- One actual source-index membership of an atom forces that
entire atom to be a subset of the corresponding original
straight-tube shading. -/
theorem atom_subset_shading
    (A : Finset Index) (i : Index) (hi : i ∈ A) :
    S.shadingAtom A ⊆ S.shading i := by
  intro x hx
  exact (hx i).mpr hi

/-- An atom with at least one marked source index lies entirely
inside the true *union* of the straight-tube shadings. -/
theorem atom_subset_shadingUnion
    (A : Finset Index) (hA : A.Nonempty) :
    S.shadingAtom A ⊆ S.shadingUnion := by
  obtain ⟨i, hi⟩ := hA
  intro x hx
  exact Set.mem_iUnion.mpr ⟨i, S.atom_subset_shading A i hi hx⟩

/-- Canonical finite family of genuinely inhabited atoms that have
at least one source index. The zero-pattern (exterior) atom is
excluded even when its volume is infinite. -/
def populatedShadingAtoms : Finset (Finset Index) := by
  classical
  exact Finset.univ.filter
    (fun A => A.Nonempty ∧ (S.shadingAtom A).Nonempty)

/-- The chosen canonical cells are true nonempty geometric sets,
not formal Boolean patterns that happen to have no real points. -/
theorem populated_atom_nonempty
    (A : Finset Index) (hA : A ∈ S.populatedShadingAtoms) :
    (S.shadingAtom A).Nonempty := by
  classical
  exact (Finset.mem_filter.mp hA).2.2

/-- Each populated atom is independently and completely filled by
the actual physical shading union. -/
theorem populated_atom_filled
    (A : Finset Index) (hA : A ∈ S.populatedShadingAtoms) :
    S.shadingAtom A ⊆ S.shadingUnion := by
  classical
  exact S.atom_subset_shadingUnion A
    (Finset.mem_filter.mp hA).2.1

/-- The STRONG full-occupation bridge used in the pair-cell theorem
is automatically valid for canonical source-index pattern atoms.
It is not assumed as unexplained data. -/
theorem patternAtoms_fully_occupied :
    S.FullyOccupiedOnHits S.shadingAtom := by
  intro i A hmark x hx
  obtain ⟨y, hyShade, hyAtom⟩ :=
    (S.geometricMark_eq_true_iff S.shadingAtom i A).mp hmark
  have hi : i ∈ A := (hyAtom i).mp hyShade
  exact S.atom_subset_shading A i hi hx

/-- Actual parallel, transversely separated physical cylinders have
ZERO coarse-cell pair weight when cells are the canonical
membership atoms. No extra arbitrary cell-filling record is needed. -/
theorem populatedAtoms_pair_zero_of_parallel_gap
    (i j : Index)
    (hdir : (S.tube i).direction = (S.tube j).direction)
    (hgap : (S.tube i).radius + (S.tube j).radius <
      ‖transversePart (S.tube i).direction
        ((S.tube j).center - (S.tube i).center)‖) :
    (S.asIndexedCounting S.shadingAtom).pairCellWeight
      S.populatedShadingAtoms i j = 0 := by
  exact S.pairCellWeight_zero_of_parallel_gap
    S.shadingAtom S.populatedShadingAtoms
    S.patternAtoms_fully_occupied
    S.populated_atom_nonempty i j hdir hgap

/-- Canonical finite atom representation exists for every point,
but the *nonempty* selected atoms cover only the shading union.
The geometry and source indexing are preserved exactly. -/
theorem shaded_point_has_populated_atom
    (x : Space d) (hx : x ∈ S.shadingUnion) :
    ∃ A ∈ S.populatedShadingAtoms, x ∈ S.shadingAtom A := by
  obtain ⟨i, hi⟩ := Set.mem_iUnion.mp hx
  let A := S.shadingPattern x
  have hmem : i ∈ A := (S.mem_shadingPattern_iff i x).2 hi
  have hA : A.Nonempty := ⟨i, hmem⟩
  have hatom : x ∈ S.shadingAtom A := S.mem_own_shadingAtom x
  refine ⟨A, ?_, hatom⟩
  classical
  exact Finset.mem_filter.mpr
    ⟨Finset.mem_univ A, hA, ⟨x, hatom⟩⟩

/-- The actual shading union is equal to the finite union
of *populated membership atoms*, with no cell-filling assumption.
This identity is at the level of Euclidean point sets. -/
theorem shadingUnion_eq_populated_atoms :
    S.shadingUnion =
      ⋃ A ∈ S.populatedShadingAtoms, S.shadingAtom A := by
  ext x
  constructor
  · intro hx
    obtain ⟨A, hA, hxa⟩ := S.shaded_point_has_populated_atom x hx
    exact Set.mem_iUnion.mpr ⟨A,
      Set.mem_iUnion.mpr ⟨hA, hxa⟩⟩
  · intro hx
    obtain ⟨A, hA, hxa⟩ := Set.mem_iUnion.mp hx
    obtain ⟨hm, hxatom⟩ := Set.mem_iUnion.mp hxa
    exact S.populated_atom_filled A hm hxatom

end Family
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
