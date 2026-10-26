/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and existing GRWTSK imports retain upstream author/license terms. -/
import GRWTSK.Analysis.Geometry.FiniteParallelTubeSeparation
import GRWTSK.Analysis.Geometry.FiniteStraightTubeOppositeDirection

set_option autoImplicit false
noncomputable section

/-!
# Two straight-tube transverse-energy geometry in ambient dimension d

A single tube constrains the orthogonal residual of its points.
For any two points x,y of that SAME tube, the transverse component
of x-y has norm at most twice the original tube radius.

For two different directions, a source-supplied *positive frame
coercivity constant* γ is a separately certified scalar inequality:

  γ ||z||² ≤ ||P_ω^perp z||² + ||P_ν^perp z||².

It fails for parallel and opposite directions (some nonzero axial
vectors give zero RHS). The desired derivation of a uniform γ from
quantified PROJECTIVE direction separation remains an independent
angular geometric theorem; we do not add it as an axiom.

Given a real positive γ, intersection of the two original straight
tubes has bounded diameter and lies inside a Euclidean ball with
an explicit squared-radius budget. This yields a true pair-volume
upper bound by Euclidean ball measure, not a coarse grid hit count.

The bound is deliberately non-sharp in angular scaling; it is not
Wang–Zahl, Kakeya maximal, or 4D full Hausdorff dimension.
-/

namespace GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily

variable {d : ℕ}

/-- The existing true orthogonal-residual map is additive under
subtraction; no ad hoc bent-ray geometry is involved. -/
theorem transversePart_sub
    (ω : Direction d) (a b : Space d) :
    transversePart ω (a - b) =
      transversePart ω a - transversePart ω b := by
  unfold transversePart
  simp only [inner_sub_left, sub_smul]
  abel

namespace Tube

/-- The difference between two points in the original straight
cylinder has transverse norm ≤ 2δ in its actual unit direction. -/
theorem transverse_difference_le_two_radius
    (T : Tube d)
    {x y : Space d}
    (hx : x ∈ T.region) (hy : y ∈ T.region) :
    ‖transversePart T.direction (x - y)‖ ≤ 2 * T.radius := by
  have hxBound :
      ‖transverseOffset T.direction x T.center‖ ≤ T.radius :=
    ((T.mem_region_iff x).mp hx).2
  have hyBound :
      ‖transverseOffset T.direction y T.center‖ ≤ T.radius :=
    ((T.mem_region_iff y).mp hy).2
  have hsub :
      transversePart T.direction (x - y) =
        transverseOffset T.direction x T.center -
          transverseOffset T.direction y T.center := by
    unfold transverseOffset
    have hxy :
        x - y = (x - T.center) - (y - T.center) := by
      abel
    rw [hxy, transversePart_sub]
  rw [hsub]
  calc
    ‖transverseOffset T.direction x T.center -
        transverseOffset T.direction y T.center‖ ≤
      ‖transverseOffset T.direction x T.center‖ +
        ‖transverseOffset T.direction y T.center‖ :=
      norm_sub_le _ _
    _ ≤ T.radius + T.radius := add_le_add hxBound hyBound
    _ = 2 * T.radius := by ring

end Tube

/-- Explicit separately provable two-direction transversality.
A usable projective angular Kakeya theorem must construct this
record with γ depending quantitatively on direction separation;
the record does NOT assert such construction is automatic. -/
structure TwoDirectionTransversality (ω ν : Direction d) where
  gamma : ℝ
  gamma_pos : 0 < gamma
  coercive : ∀ z : Space d,
    gamma * ‖z‖ ^ 2 ≤
      ‖transversePart ω z‖ ^ 2 + ‖transversePart ν z‖ ^ 2

namespace Tube

/-- True finite intersection has a square-distance diameter bound
from the exact two tube radii and a *supplied, proven* γ. -/
theorem shared_points_square_distance_bound
    (T U : Tube d)
    (F : TwoDirectionTransversality T.direction U.direction)
    {x y : Space d}
    (hxT : x ∈ T.region) (hxU : x ∈ U.region)
    (hyT : y ∈ T.region) (hyU : y ∈ U.region) :
    F.gamma * ‖x - y‖ ^ 2 ≤
      4 * (T.radius ^ 2 + U.radius ^ 2) := by
  have ht := T.transverse_difference_le_two_radius hxT hyT
  have hu := U.transverse_difference_le_two_radius hxU hyU
  have htsq :
      ‖transversePart T.direction (x - y)‖ ^ 2 ≤
        (2 * T.radius) ^ 2 := by
    nlinarith [norm_nonneg (transversePart T.direction (x - y)),
      T.radius_pos]
  have husq :
      ‖transversePart U.direction (x - y)‖ ^ 2 ≤
        (2 * U.radius) ^ 2 := by
    nlinarith [norm_nonneg (transversePart U.direction (x - y)),
      U.radius_pos]
  calc
    F.gamma * ‖x - y‖ ^ 2 ≤
        ‖transversePart T.direction (x - y)‖ ^ 2 +
          ‖transversePart U.direction (x - y)‖ ^ 2 :=
      F.coercive (x - y)
    _ ≤ (2 * T.radius) ^ 2 + (2 * U.radius) ^ 2 :=
      add_le_add htsq husq
    _ = 4 * (T.radius ^ 2 + U.radius ^ 2) := by ring

/-- Given an explicit chosen radius R with γR² at least the
true transverse-error budget, the entire intersection is
contained in a real Euclidean closed ball centered at *any*
selected common point x₀. -/
theorem intersection_subset_ball_of_transverse_energy
    (T U : Tube d)
    (F : TwoDirectionTransversality T.direction U.direction)
    (x₀ : Space d)
    (hx₀T : x₀ ∈ T.region) (hx₀U : x₀ ∈ U.region)
    (R : ℝ) (hR : 0 ≤ R)
    (hbudget :
      4 * (T.radius ^ 2 + U.radius ^ 2) ≤ F.gamma * R ^ 2) :
    T.region ∩ U.region ⊆ Metric.closedBall x₀ R := by
  intro x hx
  have hdiam :
      F.gamma * ‖x - x₀‖ ^ 2 ≤
        4 * (T.radius ^ 2 + U.radius ^ 2) :=
    T.shared_points_square_distance_bound U F
      hx.1 hx.2 hx₀T hx₀U
  have hscaled :
      F.gamma * ‖x - x₀‖ ^ 2 ≤ F.gamma * R ^ 2 :=
    hdiam.trans hbudget
  have hsq : ‖x - x₀‖ ^ 2 ≤ R ^ 2 :=
    (mul_le_mul_left F.gamma_pos).mp hscaled
  have hnorm : ‖x - x₀‖ ≤ R := by
    nlinarith [norm_nonneg (x - x₀)]
  simpa only [Metric.mem_closedBall, dist_eq_norm] using hnorm

/-- True Euclidean pair-intersection Lebesgue measure is bounded by
a real ball volume under the same explicit positive transverse
coercivity and squared-radius budget. -/
theorem intersection_volume_le_ball_of_transverse_energy
    (T U : Tube d)
    (F : TwoDirectionTransversality T.direction U.direction)
    (x₀ : Space d)
    (hx₀T : x₀ ∈ T.region) (hx₀U : x₀ ∈ U.region)
    (R : ℝ) (hR : 0 ≤ R)
    (hbudget :
      4 * (T.radius ^ 2 + U.radius ^ 2) ≤ F.gamma * R ^ 2) :
    MeasureTheory.volume (T.region ∩ U.region) ≤
      MeasureTheory.volume (Metric.closedBall x₀ R) :=
  MeasureTheory.measure_mono
    (T.intersection_subset_ball_of_transverse_energy
      U F x₀ hx₀T hx₀U R hR hbudget)

end Tube
end GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
