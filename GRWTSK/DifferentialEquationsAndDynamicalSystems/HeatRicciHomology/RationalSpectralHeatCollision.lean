/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Rational spectral spacing under a finite heat-refinement step

This module supplies a self-contained finite rational model. The
step q ↦ (1-t)q+t*c is an Euler relaxation toward a fixed reference
level c. It is NOT Tao's continuous heat flow, a Navier–Stokes
solution, a Hodge-theoretic comparison, or a Hilbert–Pólya
realization of actual zeta zeros.

A fixed positive rational scale gives proportional separation. A
nontrivial step with t < 1 preserves collisions exactly; at t = 1
all samples collapse, so the strict hypothesis is essential.
The M23, Rank32 and RS sources are not imported or assumed.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.RationalSpectralHeatCollision

/-- A synthetic rational spectral sample with a fixed reference
level. No claim is made that entries are actual zeta zeros. -/
structure RationalSpectralSample (ι : Type*) where
  zeroCoordinate : ι → ℚ
  reference : ℚ

/-- One rational explicit-Euler heat relaxation step. -/
def heatStep (c t q : ℚ) : ℚ := (1 - t) * q + t * c

/-- Fixed-scale proportional distance, avoiding a moving
normalization that could invalidate contraction. -/
def proportionalGap (scale q r : ℚ) : ℚ :=
  |q - r| / scale

theorem heatStep_difference (c t q r : ℚ) :
    heatStep c t q - heatStep c t r = (1 - t) * (q - r) := by
  unfold heatStep
  ring

theorem heatStep_collision_iff (c t q r : ℚ)
    (ht : t < 1) :
    heatStep c t q = heatStep c t r ↔ q = r := by
  rw [← sub_eq_zero, heatStep_difference]
  constructor
  · intro h
    have hfactor : 1 - t ≠ (0 : ℚ) := ne_of_gt (sub_pos.mpr ht)
    exact sub_eq_zero.mp ((mul_eq_zero.mp h).resolve_left hfactor)
  · intro h
    subst r
    rfl

/-- A nonnegative step below one contracts every rational pair
by exactly the factor 1-t at a fixed positive scale. -/
theorem proportionalGap_heatStep_eq
    (c t scale q r : ℚ)
    (ht0 : 0 ≤ t) (ht1 : t ≤ 1) :
    proportionalGap scale (heatStep c t q) (heatStep c t r) =
      (1 - t) * proportionalGap scale q r := by
  unfold proportionalGap
  rw [heatStep_difference, abs_mul,
    abs_of_nonneg (sub_nonneg.mpr ht1)]
  ring

/-- No collision can be created by a strictly subunit heat step. -/
theorem no_new_collision (c t q r : ℚ) (ht : t < 1)
    (hne : q ≠ r) :
    heatStep c t q ≠ heatStep c t r := by
  intro h
  exact hne ((heatStep_collision_iff c t q r ht).mp h)

/-- At the terminal step all coordinates collide, demonstrating
why the strict step-size assumption cannot be removed. -/
theorem terminal_heatStep (c q : ℚ) :
    heatStep c 1 q = c := by
  unfold heatStep
  ring

end GRWTSK.DifferentialEquationsAndDynamicalSystems.RationalSpectralHeatCollision
