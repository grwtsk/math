/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and existing GRWTSK source retain original authors/license duties. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeAtomSecondMoment

set_option autoImplicit false
noncomputable section

/-!
# Source-indexed real first moments and true physical pair intersections

The existing canonical shading-pattern atoms keep the *actual* set
of straight tube/source indices that shade each Euclidean point.
Every populated atom has its own Lebesgue measure, which need NOT
be equal to other atom measures.

The first- and second-order moments are now identified with the
independently indexed original shading volumes and **actual pairwise
shading intersection volumes**, respectively:

  atomFirstMoment  = Σ_i w_i vol(shading_i)
  atomSecondMoment = Σ_i Σ_j w_i w_j vol(shading_i ∩ shading_j).

Diagonal pairs i=j are retained. No deduplication or arbitrary
coarse-cell intersection is allowed. Both equalities use actual
measurability and finite-volume premises before converting ENNReal
volumes to real scalars. No Kakeya-quality bound on the double sum
follows without a further directional/scale hypothesis.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open MeasureTheory

universe u
variable {d : ℕ} {Index : Type u}
variable [Fintype Index] [DecidableEq Index]

namespace Family

variable (S : Family d Index)

/-- True source-indexed real shading-mass contribution. -/
def physicalFirstMoment : ℝ :=
  ∑ i : Index,
    S.weight i * (volume : Measure (Space d)).real (S.shading i)

/-- True ordered source-indexed intersection moment, including i=j
and coincident geometric traces under distinct source IDs. -/
def physicalSecondMoment : ℝ :=
  ∑ i : Index, ∑ j : Index,
    S.weight i * S.weight j *
      (volume : Measure (Space d)).real
        (S.shading i ∩ S.shading j)

/-- One atom's source mass can be expressed over all source IDs,
with its actual finite membership predicate as the only filter. -/
theorem atomSourceMass_eq_univ_indicator (A : Finset Index) :
    S.atomSourceMass A =
      ∑ i : Index, if i ∈ A then S.weight i else 0 := by
  classical
  simp [atomSourceMass, Finset.sum_ite]

/-- True real shading volume is exactly the sum of the volumes of
populated atoms whose source pattern contains this SAME index. -/
theorem real_volume_shading_eq_atom_indicator
    (hmeas : ∀ i, MeasurableSet (S.shading i))
    (hfinite : ∀ i, volume (S.shading i) ≠ ∞)
    (i : Index) :
    (volume : Measure (Space d)).real (S.shading i) =
      ∑ A ∈ S.populatedShadingAtoms,
        if i ∈ A then S.atomRealVolume A else 0 := by
  have hset := S.shading_inter_eq_shared_atoms i i
  simp only [Set.inter_self] at hset
  rw [hset]
  have hv :
      (volume : Measure (Space d)).real
          (⋃ A ∈ S.sharedShadingAtoms i i, S.shadingAtom A) =
        ∑ A ∈ S.sharedShadingAtoms i i,
          S.atomRealVolume A :=
    measureReal_biUnion_finset
      (S.atoms_disjoint_on (S.sharedShadingAtoms i i))
      (fun A _ => S.measurableSet_shadingAtom hmeas A)
      (fun A hA => S.populated_atom_volume_finite
        hfinite A (S.shared_atom_in_populated i i A hA))
  rw [hv]
  classical
  simp [sharedShadingAtoms, Finset.sum_filter]

/-- Each true pairwise real intersection volume is the
source-pattern sum with BOTH source identifiers present. -/
theorem real_volume_pair_eq_atom_indicator
    (hmeas : ∀ i, MeasurableSet (S.shading i))
    (hfinite : ∀ i, volume (S.shading i) ≠ ∞)
    (i j : Index) :
    (volume : Measure (Space d)).real
        (S.shading i ∩ S.shading j) =
      ∑ A ∈ S.populatedShadingAtoms,
        if i ∈ A ∧ j ∈ A then S.atomRealVolume A else 0 := by
  rw [S.shading_inter_eq_shared_atoms i j]
  have hv :
      (volume : Measure (Space d)).real
          (⋃ A ∈ S.sharedShadingAtoms i j, S.shadingAtom A) =
        ∑ A ∈ S.sharedShadingAtoms i j,
          S.atomRealVolume A :=
    measureReal_biUnion_finset
      (S.atoms_disjoint_on (S.sharedShadingAtoms i j))
      (fun A _ => S.measurableSet_shadingAtom hmeas A)
      (fun A hA => S.populated_atom_volume_finite
        hfinite A (S.shared_atom_in_populated i j A hA))
  rw [hv]
  classical
  simp [sharedShadingAtoms, Finset.sum_filter]

/-- Finite source-index pattern exchange, retaining ALL source IDs
and their source weights independently of geometric coincidences. -/
theorem sum_atom_source_mass_swap
    (atoms : Finset (Finset Index))
    (v : Finset Index → ℝ) :
    (∑ A ∈ atoms, v A * S.atomSourceMass A) =
      ∑ i : Index, S.weight i *
        (∑ A ∈ atoms, if i ∈ A then v A else 0) := by
  classical
  calc
    (∑ A ∈ atoms, v A * S.atomSourceMass A) =
        ∑ A ∈ atoms, ∑ i : Index,
          if i ∈ A then v A * S.weight i else 0 := by
      apply Finset.sum_congr rfl
      intro A _
      rw [S.atomSourceMass_eq_univ_indicator A, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i _
      split_ifs <;> simp
    _ = ∑ i : Index, ∑ A ∈ atoms,
          if i ∈ A then v A * S.weight i else 0 := by
      rw [Finset.sum_comm]
    _ = ∑ i : Index, S.weight i *
          (∑ A ∈ atoms, if i ∈ A then v A else 0) := by
      apply Finset.sum_congr rfl
      intro i _
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro A _
      split_ifs <;> simp [mul_comm]

/-- Full source-faithful first moment: no missing index or
coarse-cell volume assumption. -/
theorem atomFirstMoment_eq_physicalFirstMoment
    (hmeas : ∀ i, MeasurableSet (S.shading i))
    (hfinite : ∀ i, volume (S.shading i) ≠ ∞) :
    S.atomFirstMoment = S.physicalFirstMoment := by
  unfold atomFirstMoment physicalFirstMoment
  rw [S.sum_atom_source_mass_swap S.populatedShadingAtoms
    S.atomRealVolume]
  apply Finset.sum_congr rfl
  intro i _
  rw [S.real_volume_shading_eq_atom_indicator hmeas hfinite i]

/-- The square of a finite source sum expands with both source
indices *ordered*; repeated geometric cylinders remain distinct. -/
theorem atomSourceMass_sq_as_pairs (A : Finset Index) :
    (S.atomSourceMass A) ^ 2 =
      ∑ i : Index, ∑ j : Index,
        if i ∈ A ∧ j ∈ A then S.weight i * S.weight j else 0 := by
  classical
  rw [S.atomSourceMass_eq_univ_indicator A, pow_two, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j _
  by_cases hi : i ∈ A <;> by_cases hj : j ∈ A <;>
    simp [hi, hj]

/-- Complete physical second moment identity. This equality uses
the *actual* Lebesgue intersection of the same two shadings,
not the possibly inflated two-hit/coarse-cell Q. -/
theorem atomSecondMoment_eq_physicalSecondMoment
    (hmeas : ∀ i, MeasurableSet (S.shading i))
    (hfinite : ∀ i, volume (S.shading i) ≠ ∞) :
    S.atomSecondMoment = S.physicalSecondMoment := by
  classical
  unfold atomSecondMoment physicalSecondMoment
  calc
    (∑ A ∈ S.populatedShadingAtoms,
        S.atomRealVolume A * (S.atomSourceMass A) ^ 2) =
      ∑ A ∈ S.populatedShadingAtoms,
        ∑ i : Index, ∑ j : Index,
          if i ∈ A ∧ j ∈ A then
            S.atomRealVolume A * (S.weight i * S.weight j) else 0 := by
      apply Finset.sum_congr rfl
      intro A _
      rw [S.atomSourceMass_sq_as_pairs A, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i _
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro j _
      split_ifs <;> simp
    _ = ∑ i : Index, ∑ j : Index,
        ∑ A ∈ S.populatedShadingAtoms,
          if i ∈ A ∧ j ∈ A then
            S.atomRealVolume A * (S.weight i * S.weight j) else 0 := by
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro i _
      rw [Finset.sum_comm]
    _ = ∑ i : Index, ∑ j : Index,
        S.weight i * S.weight j *
          (∑ A ∈ S.populatedShadingAtoms,
            if i ∈ A ∧ j ∈ A then S.atomRealVolume A else 0) := by
      apply Finset.sum_congr rfl
      intro i _
      apply Finset.sum_congr rfl
      intro j _
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro A _
      by_cases h : i ∈ A ∧ j ∈ A
      · simp [h, mul_assoc, mul_comm, mul_left_comm]
      · simp [h]
    _ = ∑ i : Index, ∑ j : Index,
        S.weight i * S.weight j *
          (volume : Measure (Space d)).real
            (S.shading i ∩ S.shading j) := by
      apply Finset.sum_congr rfl
      intro i _
      apply Finset.sum_congr rfl
      intro j _
      rw [S.real_volume_pair_eq_atom_indicator hmeas hfinite i j]

/-- The real first and second moments have their own separate
nonnegativity, without assuming any Kakeya directional bound. -/
theorem physical_moments_nonneg
    (hmeas : ∀ i, MeasurableSet (S.shading i))
    (hfinite : ∀ i, volume (S.shading i) ≠ ∞) :
    0 ≤ S.physicalFirstMoment ∧
      0 ≤ S.physicalSecondMoment := by
  rw [← S.atomFirstMoment_eq_physicalFirstMoment hmeas hfinite,
    ← S.atomSecondMoment_eq_physicalSecondMoment hmeas hfinite]
  exact ⟨S.atomFirstMoment_nonneg, S.atomSecondMoment_nonneg⟩

end Family
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
