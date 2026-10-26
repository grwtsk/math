/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib/GRWTSK source retains original authorship and license duties. -/
import GRWTSK.Analysis.Geometry.FiniteStraightTubeOppositeDirection
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

set_option autoImplicit false
noncomputable section

/-!
# Required projective direction convention for unoriented Kakeya lines

The existing family predicate DirectionsSeparated uses distance between
ORIENTED unit vectors. This alone is too weak for line geometry because
ω and -ω differ by distance 2 but describe the SAME unoriented axis.

The new predicate requires both ||ω_i-ω_j|| ≥ σ and
||ω_i+ω_j|| ≥ σ, equivalently projective gap ≥ σ.

An explicit two-index source family has opposite directions, both
shadings equal to the SAME physical straight cylinder and positive
ordered physical overlap; it satisfies the old oriented-distance
predicate for every σ ≤ 2, but violates projective separation for
every σ > 0. No Kakeya theorem may silently use the old predicate
as an unoriented angular separation hypothesis.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily

universe u
variable {d : ℕ} {Index : Type u} [Fintype Index]

namespace Family

/-- Unoriented/projective line-axis separation, with the ambient
dimension and the requested scale σ explicit. -/
def ProjectivelySeparated (S : Family d Index) (σ : ℝ) : Prop :=
  ∀ i j : Index, i ≠ j →
    σ ≤ projectiveDirectionGap
      (S.tube i).direction (S.tube j).direction

theorem projectivelySeparated_implies_oriented
    (S : Family d Index) (σ : ℝ)
    (h : S.ProjectivelySeparated σ) :
    S.DirectionsSeparated σ := by
  intro i j hij
  exact (h i j hij).trans
    (projectiveDirectionGap_le_oriented
      (S.tube i).direction (S.tube j).direction)

theorem projective_separation_nonneg
    (S : Family d Index) {σ : ℝ}
    (hσ : 0 ≤ σ) (h : S.ProjectivelySeparated σ) :
    S.DirectionsSeparated σ :=
  S.projectivelySeparated_implies_oriented σ h

end Family

/-- The same original true cylinder occurs with two different,
antipodal *source direction labels*. Both independent source
weights remain one; no geometric deduplication is performed. -/
def antipodalFamily (T : Tube d) : Family d (Fin 2) where
  tube i := if i = 0 then T else T.reverse
  shading i := if i = 0 then T.region else T.reverse.region
  shading_subtube := by
    intro i x hx
    fin_cases i <;> simpa [antipodalFamily] using hx
  weight := fun _ => 1
  weight_nonneg := fun _ => by norm_num

theorem antipodalFamily_same_shadings (T : Tube d) :
    (antipodalFamily T).shading 0 =
      (antipodalFamily T).shading 1 := by
  simp [antipodalFamily, T.reverse_region]

theorem antipodalFamily_oriented_distance_two (T : Tube d) :
    dist (((antipodalFamily T).tube 0).direction : Space d)
      (((antipodalFamily T).tube 1).direction : Space d) = 2 := by
  simpa [antipodalFamily] using
    opposite_direction_dist_two T.direction

theorem antipodalFamily_projective_gap_zero (T : Tube d) :
    projectiveDirectionGap
        ((antipodalFamily T).tube 0).direction
        ((antipodalFamily T).tube 1).direction = 0 := by
  simpa [antipodalFamily] using
    projectiveDirectionGap_opposite_zero T.direction

/-- Old oriented separation can hold even for an identical physical
tube whose index is duplicated with opposite orientation. -/
theorem antipodalFamily_oriented_separated
    (T : Tube d) {σ : ℝ} (hσ : σ ≤ 2) :
    (antipodalFamily T).DirectionsSeparated σ := by
  intro i j hij
  fin_cases i <;> fin_cases j
  · exact False.elim (hij rfl)
  · simpa [antipodalFamily] using
      (hσ.trans_eq
        (antipodalFamily_oriented_distance_two T).symm)
  · have htwo :
        dist (((antipodalFamily T).tube 1).direction : Space d)
          (((antipodalFamily T).tube 0).direction : Space d) = 2 := by
      rw [dist_comm]
      exact antipodalFamily_oriented_distance_two T
    exact htwo ▸ hσ
  · exact False.elim (hij rfl)

/-- New projective separation rejects the coincident-tube pair at
every strictly positive scale, although oriented distance = 2. -/
theorem antipodalFamily_not_projectively_separated
    (T : Tube d) {σ : ℝ} (hσ : 0 < σ) :
    ¬ (antipodalFamily T).ProjectivelySeparated σ := by
  intro h
  have hij := h (0 : Fin 2) (1 : Fin 2) (by decide)
  rw [antipodalFamily_projective_gap_zero T] at hij
  exact (not_lt_of_ge hij) hσ

/-- The off-diagonal physical pair intersection in this hostile
fixture is the entire nonzero physical cylinder, not a small
angular-transverse overlap. -/
theorem antipodalFamily_pair_intersection (T : Tube d) :
    (antipodalFamily T).shading 0 ∩
      (antipodalFamily T).shading 1 = T.region := by
  simp [antipodalFamily, T.reverse_region]

theorem antipodalFamily_pair_volume (T : Tube d) :
    MeasureTheory.volume
        ((antipodalFamily T).shading 0 ∩
          (antipodalFamily T).shading 1) = T.lebesgueVolume := by
  rw [antipodalFamily_pair_intersection]
  rfl

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
