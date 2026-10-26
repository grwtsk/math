/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and existing GRWTSK work retain upstream authorship/licenses. -/
import GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily

set_option autoImplicit false
noncomputable section

/-!
# Opposite oriented directions represent exactly the same line tube

A Kakeya witness here is a finite STRAIGHT line segment with radius.
Its geometric region is unchanged by reversing the unit direction:
replace ω with -ω and the axial parameter t with -t.

Yet the Euclidean distance between the two *oriented* unit vectors is
exactly 2. Consequently ordinary sphere separation between oriented
vectors cannot by itself guarantee small tube intersection volume:
the two opposite orientations may give the SAME physical tube.
Angular separation appropriate for unoriented lines must be measured
on projective directions, or by min(||ω-ν||, ||ω+ν||).

This is a finite Euclidean fact, not a Kakeya maximal theorem.
-/

namespace GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily

variable {d : ℕ}

/-- Unit-vector reversal with the sphere-membership proof intact. -/
def oppositeDirection (ω : Direction d) : Direction d :=
  ⟨-(ω : Space d), by
    have h := direction_norm ω
    simpa only [Metric.mem_sphere, dist_zero_right, norm_neg] using h⟩

@[simp] theorem oppositeDirection_coe (ω : Direction d) :
    ((oppositeDirection ω : Direction d) : Space d) =
      -(ω : Space d) := rfl

/-- The sign-insensitive angular proxy appropriate to unoriented
line axes. It vanishes for either same or opposite directions. -/
def projectiveDirectionGap (ω ν : Direction d) : ℝ :=
  min (dist (ω : Space d) (ν : Space d))
    (dist (ω : Space d) (-(ν : Space d)))

theorem projectiveDirectionGap_nonneg (ω ν : Direction d) :
    0 ≤ projectiveDirectionGap ω ν := by
  unfold projectiveDirectionGap
  exact le_min (dist_nonneg) (dist_nonneg)

theorem projectiveDirectionGap_le_oriented (ω ν : Direction d) :
    projectiveDirectionGap ω ν ≤
      dist (ω : Space d) (ν : Space d) :=
  min_le_left _ _

/-- Euclidean distance between any unit vector and its negative is 2.
This remains true for any ambient dimension admitting a unit vector. -/
theorem opposite_direction_dist_two (ω : Direction d) :
    dist (ω : Space d) (oppositeDirection ω : Space d) = 2 := by
  rw [dist_eq_norm]
  change ‖(ω : Space d) - (-(ω : Space d))‖ = 2
  rw [sub_neg_eq_add]
  have htwo :
      (ω : Space d) + (ω : Space d) =
        (2 : ℝ) • (ω : Space d) := by
    simpa [two_smul]
  rw [htwo, norm_smul, direction_norm]
  norm_num

/-- A pair of numerically maximally separated ORIENTED vectors
can represent the exact same UNORIENTED line. -/
theorem projectiveDirectionGap_opposite_zero (ω : Direction d) :
    projectiveDirectionGap ω (oppositeDirection ω) = 0 := by
  unfold projectiveDirectionGap
  rw [opposite_direction_dist_two]
  have hzero :
      dist (ω : Space d)
        (-(oppositeDirection ω : Space d)) = 0 := by
    simp [oppositeDirection]
  rw [hzero]
  norm_num

namespace Tube

/-- Reverse one actual straight cylinder's direction while keeping
its Euclidean center, positive radius and half-length unchanged. -/
def reverse (T : Tube d) : Tube d where
  center := T.center
  direction := oppositeDirection T.direction
  halfLength := T.halfLength
  halfLength_pos := T.halfLength_pos
  radius := T.radius
  radius_pos := T.radius_pos

/-- The reverse-oriented straight cylinder is exactly the same
Euclidean set, with the parameter map t ↔ -t. -/
theorem reverse_region (T : Tube d) :
    T.reverse.region = T.region := by
  ext x
  constructor
  · rintro ⟨t, ht, u, hu, hr, hx⟩
    refine ⟨-t, ?_, u, ?_, hr, ?_⟩
    · simpa only [abs_neg] using ht
    · have hneg :
          inner ℝ u (-(T.direction : Space d)) = 0 := by
        simpa [reverse, oppositeDirection] using hu
      simpa only [inner_neg_right, neg_eq_zero] using hneg
    · simpa [reverse, oppositeDirection, smul_neg, neg_smul] using hx
  · rintro ⟨t, ht, u, hu, hr, hx⟩
    refine ⟨-t, ?_, u, ?_, hr, ?_⟩
    · simpa only [abs_neg] using ht
    · change inner ℝ u
        ((oppositeDirection T.direction : Direction d) : Space d) = 0
      simpa only [oppositeDirection_coe, inner_neg_right, neg_eq_zero]
        using hu
    · simpa [reverse, oppositeDirection, smul_neg, neg_smul] using hx

/-- Oriented distance 2 DOES NOT imply disjointness: these two
tubes have identical underlying positive-radius regions. -/
theorem reverse_center_and_volume (T : Tube d) :
    T.reverse.center = T.center ∧
      T.reverse.region = T.region ∧
      T.reverse.lebesgueVolume = T.lebesgueVolume :=
  ⟨rfl, T.reverse_region, by simp [Tube.lebesgueVolume, T.reverse_region]⟩

end Tube
end GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
