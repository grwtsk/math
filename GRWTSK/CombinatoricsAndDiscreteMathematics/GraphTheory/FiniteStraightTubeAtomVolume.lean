/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and GRWTSK source retain upstream author/license obligations. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingAtoms

set_option autoImplicit false
noncomputable section

/-!
# Exact physical Lebesgue volume through canonical shading atoms

For finite, actually measurable straight-tube shadings, the canonical
membership atoms are measurable, pairwise disjoint and fill the real
shading union. Lebesgue measure is therefore the exact finite SUM
of atom volumes; no constant cell volume or arbitrary full-occupation
hypothesis is supplied.

Likewise the physical intersection of any two indexed shadings is the
disjoint union of those atoms whose membership sets contain BOTH
indices. Consequently its Lebesgue measure is the corresponding exact
sum. This is a true Euclidean pair-volume decomposition and is
distinct from the earlier possibly inflated coarse-cell mark Q.

The result is an identity, NOT yet a scale-uniform upper bound on
physical intersection volumes for transversely oriented Kakeya tubes.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open MeasureTheory

universe u
variable {d : ℕ} {Index : Type u}
variable [Fintype Index] [DecidableEq Index]

namespace Family

variable (S : Family d Index)

/-- Each finite membership-pattern atom is a finite Boolean
combination of the actual original shadings, hence measurable when
those shadings are measurable. -/
theorem measurableSet_shadingAtom
    (hmeas : ∀ i, MeasurableSet (S.shading i))
    (A : Finset Index) :
    MeasurableSet (S.shadingAtom A) := by
  classical
  have heq :
      S.shadingAtom A =
        ⋂ i : Index,
          if i ∈ A then S.shading i else (S.shading i)ᶜ := by
    ext x
    constructor
    · intro hx
      apply Set.mem_iInter.mpr
      intro i
      by_cases hi : i ∈ A
      · simpa [hi] using (hx i).mpr hi
      · have hnot : x ∉ S.shading i := by
          intro hxi
          exact hi ((hx i).mp hxi)
        simpa [hi] using hnot
    · intro hx
      have hall := Set.mem_iInter.mp hx
      intro i
      constructor
      · intro hxi
        by_contra hi
        have hc : x ∈ (S.shading i)ᶜ := by
          simpa [hi] using (hall i)
        exact hc hxi
      · intro hi
        simpa [hi] using (hall i)
  rw [heq]
  exact MeasurableSet.iInter (fun i => by
    by_cases hi : i ∈ A
    · simpa [hi] using (hmeas i)
    · simpa [hi] using (hmeas i).compl)

/-- Pairwise disjointness restricted to any collection of genuine
membership patterns follows from the actual pointwise uniqueness,
not from a numerical tolerance or pixel layout. -/
theorem atoms_disjoint_on (patterns : Finset (Finset Index)) :
    Set.PairwiseDisjoint (↑patterns : Set (Finset Index))
      S.shadingAtom := by
  intro A hA B hB hAB
  exact S.atoms_pairwise_disjoint
    (Set.mem_univ A) (Set.mem_univ B) hAB

/-- True Euclidean shading union volume is an exact sum over all
nonempty positive-pattern atoms, with each atom's own actual
measured volume. There is no equal-volume-cell assumption. -/
theorem volume_shadingUnion_eq_atom_sum
    (hmeas : ∀ i, MeasurableSet (S.shading i)) :
    volume S.shadingUnion =
      ∑ A ∈ S.populatedShadingAtoms, volume (S.shadingAtom A) := by
  rw [S.shadingUnion_eq_populated_atoms]
  exact measure_biUnion_finset
    (S.atoms_disjoint_on S.populatedShadingAtoms)
    (fun A hA => S.measurableSet_shadingAtom hmeas A)

/-- True finite source-indexed set of membership patterns whose
points belong to BOTH original (not bent) shadings. -/
def sharedShadingAtoms (i j : Index) : Finset (Finset Index) := by
  classical
  exact S.populatedShadingAtoms.filter
    (fun A => i ∈ A ∧ j ∈ A)

theorem shared_atom_in_populated
    (i j : Index) (A : Finset Index)
    (hA : A ∈ S.sharedShadingAtoms i j) :
    A ∈ S.populatedShadingAtoms := by
  classical
  exact (Finset.mem_filter.mp hA).1

theorem shared_atom_has_indices
    (i j : Index) (A : Finset Index)
    (hA : A ∈ S.sharedShadingAtoms i j) :
    i ∈ A ∧ j ∈ A := by
  classical
  exact (Finset.mem_filter.mp hA).2

/-- Real intersection of two original geometric shadings is exactly
the union of membership atoms containing both source indices.
No coarse-cell visitation or assumed overlap constant occurs. -/
theorem shading_inter_eq_shared_atoms (i j : Index) :
    S.shading i ∩ S.shading j =
      ⋃ A ∈ S.sharedShadingAtoms i j, S.shadingAtom A := by
  ext x
  constructor
  · intro hx
    have hsi : x ∈ S.shading i := hx.1
    have hsj : x ∈ S.shading j := hx.2
    let A := S.shadingPattern x
    have hi : i ∈ A := (S.mem_shadingPattern_iff i x).2 hsi
    have hj : j ∈ A := (S.mem_shadingPattern_iff j x).2 hsj
    have hA : A ∈ S.populatedShadingAtoms := by
      classical
      apply Finset.mem_filter.mpr
      exact ⟨Finset.mem_univ A, ⟨i, hi⟩,
        ⟨x, S.mem_own_shadingAtom x⟩⟩
    have hshared : A ∈ S.sharedShadingAtoms i j := by
      classical
      exact Finset.mem_filter.mpr ⟨hA, ⟨hi, hj⟩⟩
    exact Set.mem_iUnion.mpr ⟨A,
      Set.mem_iUnion.mpr ⟨hshared, S.mem_own_shadingAtom x⟩⟩
  · intro hx
    obtain ⟨A, hrest⟩ := Set.mem_iUnion.mp hx
    obtain ⟨hA, hxa⟩ := Set.mem_iUnion.mp hrest
    obtain ⟨hi, hj⟩ := S.shared_atom_has_indices i j A hA
    exact ⟨S.atom_subset_shading A i hi hxa,
      S.atom_subset_shading A j hj hxa⟩

/-- Exact Euclidean *physical* pair-intersection volume. Unlike
coarse-cell Q, this expression has no false-positive pairs created
by cells touched at distinct physical points. -/
theorem volume_shading_inter_eq_atom_sum
    (hmeas : ∀ i, MeasurableSet (S.shading i))
    (i j : Index) :
    volume (S.shading i ∩ S.shading j) =
      ∑ A ∈ S.sharedShadingAtoms i j, volume (S.shadingAtom A) := by
  rw [S.shading_inter_eq_shared_atoms i j]
  exact measure_biUnion_finset
    (S.atoms_disjoint_on (S.sharedShadingAtoms i j))
    (fun A hA => S.measurableSet_shadingAtom hmeas A)

end Family
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
