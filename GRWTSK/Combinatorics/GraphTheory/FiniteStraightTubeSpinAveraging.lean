/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
Read-only reference: openai/math OAI.ClassicalON.BlockOrbit and
OAI.HadwigerCounterexample.BiasedRotationBounds.spinning.
No OAI code copied. Mathlib and source licenses retained. -/
import GRWTSK.Combinatorics.GraphTheory.FiniteStraightTubeSpinDynamics

set_option autoImplicit false
noncomputable section

/-!
# Finite probabilistic spinning of entire straight-tube families

The spin law has finitely many actual Euclidean linear isometries,
nonnegative independent weights summing to one. Each outcome spins
the ENTIRE physical source family by the SAME transformation;
distinct tube indices and their physical shading intersections are
preserved.

Because every outcome preserves first mass, physical pair moment and
union volume exactly, their finite weighted averages are equal to
the original values. There is no Haar or independence assumption.

This is the hostile control needed before applying a
Hadwiger-style exceptional-event spinning argument to Kakeya:
a random common spin has NO overlap improvement. To gain from
independently moved source tubes, one must construct a different
geometry, show it retains required directions/volume/density and
prove an actual bad-event-to-energy-increment theorem.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open MeasureTheory

universe u
variable {d N : ℕ} {Index : Type u} [Fintype Index]

/-- A genuine finite probability law on ambient orthogonal spins;
no claim is made that it is Haar-uniform. -/
structure FiniteRigidSpinLaw (d N : ℕ) where
  spin : Fin N → RigidSpin d
  weight : Fin N → ℝ
  weight_nonneg : ∀ k, 0 ≤ weight k
  weight_sum_one : (∑ k : Fin N, weight k) = 1

namespace Family

variable (S : Family d Index) (L : FiniteRigidSpinLaw d N)

def spunFirstMomentAverage : ℝ :=
  ∑ k : Fin N, L.weight k * (S.spin (L.spin k)).physicalFirstMoment

def spunSecondMomentAverage : ℝ :=
  ∑ k : Fin N, L.weight k * (S.spin (L.spin k)).physicalSecondMoment

def spunUnionVolumeAverage : ℝ :=
  ∑ k : Fin N, L.weight k *
    (volume : Measure (Space d)).real (S.spin (L.spin k)).shadingUnion

/-- Orthogonal spinning cannot improve the average weighted source
first moment, because it is exactly invariant in each outcome. -/
theorem spunFirstMomentAverage_eq :
    S.spunFirstMomentAverage L = S.physicalFirstMoment := by
  unfold spunFirstMomentAverage
  calc
    (∑ k : Fin N,
        L.weight k * (S.spin (L.spin k)).physicalFirstMoment) =
      ∑ k : Fin N, L.weight k * S.physicalFirstMoment := by
        apply Finset.sum_congr rfl
        intro k _
        rw [S.physicalFirstMoment_spin]
    _ = (∑ k : Fin N, L.weight k) * S.physicalFirstMoment := by
        rw [Finset.sum_mul]
    _ = S.physicalFirstMoment := by
        rw [L.weight_sum_one, one_mul]

/-- Exact weighted second-moment invariance under every finite
spin distribution. Thus the OAI spinner proof cannot be ported
as a claim that common spins reduce actual Kakeya overlap. -/
theorem spunSecondMomentAverage_eq :
    S.spunSecondMomentAverage L = S.physicalSecondMoment := by
  unfold spunSecondMomentAverage
  calc
    (∑ k : Fin N,
        L.weight k * (S.spin (L.spin k)).physicalSecondMoment) =
      ∑ k : Fin N, L.weight k * S.physicalSecondMoment := by
        apply Finset.sum_congr rfl
        intro k _
        rw [S.physicalSecondMoment_spin]
    _ = (∑ k : Fin N, L.weight k) * S.physicalSecondMoment := by
        rw [Finset.sum_mul]
    _ = S.physicalSecondMoment := by
        rw [L.weight_sum_one, one_mul]

theorem spunUnionVolumeAverage_eq :
    S.spunUnionVolumeAverage L =
      (volume : Measure (Space d)).real S.shadingUnion := by
  unfold spunUnionVolumeAverage
  calc
    (∑ k : Fin N,
        L.weight k *
          (volume : Measure (Space d)).real
            (S.spin (L.spin k)).shadingUnion) =
      ∑ k : Fin N, L.weight k *
          (volume : Measure (Space d)).real S.shadingUnion := by
        apply Finset.sum_congr rfl
        intro k _
        rw [S.shadingUnion_real_volume_spin]
    _ = (∑ k : Fin N, L.weight k) *
          (volume : Measure (Space d)).real S.shadingUnion := by
        rw [Finset.sum_mul]
    _ = (volume : Measure (Space d)).real S.shadingUnion := by
        rw [L.weight_sum_one, one_mul]

/-- A full finite source law and three separate invariant
observables; no false stochastic mixing gain is inferred. -/
theorem common_random_spin_no_kakeya_gain :
    S.spunFirstMomentAverage L = S.physicalFirstMoment ∧
    S.spunSecondMomentAverage L = S.physicalSecondMoment ∧
    S.spunUnionVolumeAverage L =
      (volume : Measure (Space d)).real S.shadingUnion :=
  ⟨S.spunFirstMomentAverage_eq L,
    S.spunSecondMomentAverage_eq L,
    S.spunUnionVolumeAverage_eq L⟩

end Family
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
