/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and existing GRWTSK source retain upstream license/credit. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeAtomVolume

set_option autoImplicit false
noncomputable section

/-!
# Variable-volume Lebesgue second moment of actual tube-shading atoms

The canonical finite partition consists of true measurable sets of
points covered by exactly each source-index membership pattern.
Unlike a coarse touched-cell grid, the atoms are disjoint and fully
source shaded; their volumes are NOT assumed equal.

For each atom A, put v_A = real(volume atom A), and
m_A = sum of the original indexed shading weights in A.
Finite Cauchy proves:
  (Σ v_A m_A)² ≤ (Σ v_A)(Σ v_A m_A²).
With measurable finite-volume source shadings, the first volume
factor equals the ACTUAL real Lebesgue volume of the shading union.
The second factor still requires strong geometric pairwise incidence
bounds; no Kakeya or angular transversality assertion is imported.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open MeasureTheory

universe u
variable {d : ℕ} {Index : Type u}
variable [Fintype Index] [DecidableEq Index]

namespace Family

variable (S : Family d Index)

/-- Actual real Lebesgue volume of the selected source-pattern atom. -/
def atomRealVolume (A : Finset Index) : ℝ :=
  (volume : Measure (Space d)).real (S.shadingAtom A)

theorem atomRealVolume_nonneg (A : Finset Index) :
    0 ≤ S.atomRealVolume A := by
  exact measureReal_nonneg

/-- Original independent source weights, without deduplicating tubes. -/
def atomSourceMass (A : Finset Index) : ℝ :=
  ∑ i ∈ A, S.weight i

theorem atomSourceMass_nonneg (A : Finset Index) :
    0 ≤ S.atomSourceMass A := by
  unfold atomSourceMass
  exact Finset.sum_nonneg (fun i _ => S.weight_nonneg i)

/-- Finite source volumes preclude the invalid toReal(∞)=0 collapse on
every nonempty positive-pattern atom. -/
theorem atom_volume_finite_of_source_finite
    (hfinite : ∀ i, volume (S.shading i) ≠ ∞)
    (A : Finset Index) (hA : A.Nonempty) :
    volume (S.shadingAtom A) ≠ ∞ := by
  obtain ⟨i, hi⟩ := hA
  exact measure_ne_top_of_subset
    (S.atom_subset_shading A i hi) (hfinite i)

theorem populated_atom_volume_finite
    (hfinite : ∀ i, volume (S.shading i) ≠ ∞)
    (A : Finset Index) (hA : A ∈ S.populatedShadingAtoms) :
    volume (S.shadingAtom A) ≠ ∞ := by
  classical
  exact S.atom_volume_finite_of_source_finite hfinite A
    (Finset.mem_filter.mp hA).2.1

/-- Real total shading volume, before proving its equality with
the original Euclidean union measure. -/
def atomTotalVolume : ℝ :=
  ∑ A ∈ S.populatedShadingAtoms, S.atomRealVolume A

def atomFirstMoment : ℝ :=
  ∑ A ∈ S.populatedShadingAtoms,
    S.atomRealVolume A * S.atomSourceMass A

def atomSecondMoment : ℝ :=
  ∑ A ∈ S.populatedShadingAtoms,
    S.atomRealVolume A * (S.atomSourceMass A) ^ 2

theorem atomFirstMoment_nonneg :
    0 ≤ S.atomFirstMoment := by
  unfold atomFirstMoment
  apply Finset.sum_nonneg
  intro A _
  exact mul_nonneg
    (S.atomRealVolume_nonneg A) (S.atomSourceMass_nonneg A)

theorem atomSecondMoment_nonneg :
    0 ≤ S.atomSecondMoment := by
  unfold atomSecondMoment
  apply Finset.sum_nonneg
  intro A _
  exact mul_nonneg (S.atomRealVolume_nonneg A)
    (sq_nonneg (S.atomSourceMass A))

/-- Exact measured union equals the sum of the VARIABLE real atom
volumes. This is measure additivity, not a cell-count calibration. -/
theorem real_volume_shadingUnion_eq_atomTotalVolume
    (hmeas : ∀ i, MeasurableSet (S.shading i))
    (hfinite : ∀ i, volume (S.shading i) ≠ ∞) :
    (volume : Measure (Space d)).real S.shadingUnion =
      S.atomTotalVolume := by
  rw [S.shadingUnion_eq_populated_atoms]
  exact measureReal_biUnion_finset
    (S.atoms_disjoint_on S.populatedShadingAtoms)
    (fun A hA => S.measurableSet_shadingAtom hmeas A)
    (S.populated_atom_volume_finite hfinite)

/-- Direct weighted Cauchy on true Lebesgue source atoms; unequal
atom volumes and repeated tube source indices are fully retained. -/
theorem atom_moment_cauchy :
    S.atomFirstMoment ^ 2 ≤
      S.atomTotalVolume * S.atomSecondMoment := by
  unfold atomFirstMoment atomTotalVolume atomSecondMoment
  apply Finset.sum_sq_le_sum_mul_sum_of_sq_le_mul
    S.populatedShadingAtoms
    (r := fun A => S.atomRealVolume A * S.atomSourceMass A)
    (f := fun A => S.atomRealVolume A)
    (g := fun A =>
      S.atomRealVolume A * (S.atomSourceMass A) ^ 2)
  · intro A _
    exact S.atomRealVolume_nonneg A
  · intro A _
    exact mul_nonneg (S.atomRealVolume_nonneg A)
      (sq_nonneg _)
  · intro A _
    apply le_of_eq
    ring

/-- A genuinely Lebesgue, not counting-grid, lower volume bound in
the original ambient dimension d. The unresolved Kakeya supplier
is a scale-uniform UPPER estimate of the source-derived second
moment, not an asserted full-cell occupancy hypothesis. -/
theorem physical_volume_lower_of_atom_second_moment
    (hmeas : ∀ i, MeasurableSet (S.shading i))
    (hfinite : ∀ i, volume (S.shading i) ≠ ∞)
    (hQ : 0 < S.atomSecondMoment) :
    S.atomFirstMoment ^ 2 / S.atomSecondMoment ≤
      (volume : Measure (Space d)).real S.shadingUnion := by
  rw [S.real_volume_shadingUnion_eq_atomTotalVolume hmeas hfinite]
  apply (div_le_iff₀ hQ).2
  exact S.atom_moment_cauchy

end Family
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
