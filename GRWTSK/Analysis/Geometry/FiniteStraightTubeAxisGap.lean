/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Upstream Mathlib and GRWTSK source retain original license/credit. -/
import GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily

set_option autoImplicit false
noncomputable section

/-!
# Axis-distance obstruction to physical intersection of ANY two tubes

The previously established transverse-separation result treated equal
directions. Here the original *straight* cylinder definitions give a
general geometric proximity theorem, with different directions allowed:

  common point in tubes T,U
  ==> there exist permitted axial parameters t,s with
      ||axis_T(t)-axis_U(s)|| ≤ radius_T + radius_U.

Consequently any certified strict lower gap between *all* allowed
axis points makes the physical cylinders disjoint, with no angular
or external Kakeya hypothesis.

A simpler sufficient no-overlap case uses the Euclidean center
distance > sum of half-lengths + radii, independently of directions.
These are genuine finite Euclidean tests, not Kakeya-scale
angular overlap volume estimates.
-/

namespace GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily

variable {d : ℕ}

namespace Tube

/-- An actual shared point in two straight tubes implies that
the respective permitted line-axis witnesses approach within the
sum of their real transverse radii. The directions may differ. -/
theorem axes_near_of_shared_point
    (T U : Tube d)
    {x : Space d}
    (hxT : x ∈ T.region) (hxU : x ∈ U.region) :
    ∃ t s : ℝ,
      |t| ≤ T.halfLength ∧
      |s| ≤ U.halfLength ∧
      ‖T.axis t - U.axis s‖ ≤ T.radius + U.radius := by
  obtain ⟨t, ht, a, _, ha, hxa⟩ := hxT
  obtain ⟨s, hs, b, _, hb, hxb⟩ := hxU
  refine ⟨t, s, ht, hs, ?_⟩
  have hpoint :
      T.center + t • (T.direction : Space d) + a =
        U.center + s • (U.direction : Space d) + b :=
    hxa.symm.trans hxb
  have haxis : T.axis t - U.axis s = b - a := by
    dsimp [axis]
    calc
      T.center + t • (T.direction : Space d) -
          (U.center + s • (U.direction : Space d)) =
        (T.center + t • (T.direction : Space d) + a) -
            (U.center + s • (U.direction : Space d) + b) +
              (b - a) := by
          abel
      _ = b - a := by rw [hpoint]; simp
  calc
    ‖T.axis t - U.axis s‖ = ‖b - a‖ :=
      congrArg norm haxis
    _ ≤ ‖b‖ + ‖a‖ := norm_sub_le b a
    _ ≤ T.radius + U.radius := add_le_add hb ha

/-- A strict gap between every pair of permitted original line
parameters implies actual physical disjointness, including when
the line directions are distinct. -/
theorem disjoint_of_uniform_axis_gap
    (T U : Tube d)
    (hgap : ∀ t s : ℝ,
      |t| ≤ T.halfLength → |s| ≤ U.halfLength →
      T.radius + U.radius < ‖T.axis t - U.axis s‖) :
    Disjoint T.region U.region := by
  apply Set.disjoint_left.mpr
  intro x hxT hxU
  obtain ⟨t, s, ht, hs, hclose⟩ :=
    T.axes_near_of_shared_point U hxT hxU
  exact (not_lt_of_ge hclose) (hgap t s ht hs)

/-- Every axial displacement from a tube center has length at most
the half-length, because its source direction has true norm one. -/
theorem axis_sub_center_norm_le
    (T : Tube d) (t : ℝ) (ht : |t| ≤ T.halfLength) :
    ‖T.axis t - T.center‖ ≤ T.halfLength := by
  have hnorm :
      ‖t • (T.direction : Space d)‖ = |t| := by
    simpa [norm_smul, direction_norm]
  simpa [axis, hnorm] using ht

/-- Shared tubes also have a coarse but TRUE geometric necessary
bound on center distance; no angular/geodesic model is assumed. -/
theorem centers_close_of_shared_point
    (T U : Tube d)
    {x : Space d}
    (hxT : x ∈ T.region) (hxU : x ∈ U.region) :
    ‖T.center - U.center‖ ≤
      T.halfLength + U.halfLength + T.radius + U.radius := by
  obtain ⟨t, s, ht, hs, hclose⟩ :=
    T.axes_near_of_shared_point U hxT hxU
  have heq :
      T.center - U.center =
        (T.axis t - U.axis s) -
          t • (T.direction : Space d) +
            s • (U.direction : Space d) := by
    simp only [axis]
    abel
  have htriangle :
      ‖T.center - U.center‖ ≤
        ‖T.axis t - U.axis s‖ +
          ‖t • (T.direction : Space d)‖ +
          ‖s • (U.direction : Space d)‖ := by
    rw [heq]
    calc
      ‖(T.axis t - U.axis s) -
          t • (T.direction : Space d) +
            s • (U.direction : Space d)‖ ≤
        ‖(T.axis t - U.axis s) -
            t • (T.direction : Space d)‖ +
          ‖s • (U.direction : Space d)‖ := norm_add_le _ _
      _ ≤ (‖T.axis t - U.axis s‖ +
          ‖t • (T.direction : Space d)‖) +
          ‖s • (U.direction : Space d)‖ := by
        exact add_le_add_right (norm_sub_le _ _) _
  have hnormT :
      ‖t • (T.direction : Space d)‖ = |t| := by
    simp [norm_smul, direction_norm]
  have hnormU :
      ‖s • (U.direction : Space d)‖ = |s| := by
    simp [norm_smul, direction_norm]
  rw [hnormT, hnormU] at htriangle
  linarith

/-- Explicit direction-independent sufficient disjointness.
The radii AND both half-lengths are retained; no unbounded
line-distance hypothesis is hidden. -/
theorem disjoint_of_center_distance_large
    (T U : Tube d)
    (hfar : T.halfLength + U.halfLength + T.radius + U.radius <
      ‖T.center - U.center‖) :
    Disjoint T.region U.region := by
  apply Set.disjoint_left.mpr
  intro x hxT hxU
  have h :=
    T.centers_close_of_shared_point U hxT hxU
  exact (not_lt_of_ge h) hfar

end Tube
end GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
