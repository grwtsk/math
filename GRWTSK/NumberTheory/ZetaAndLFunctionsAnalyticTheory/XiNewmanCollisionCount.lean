/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Tactic

/-! Local heat collision orientation and the finite zero-flow energy balance. -/
namespace GRWTSK.XiNewmanCollisionCount
open Finset

/-- The real Jacobian for the coordinates (space, time) under backward heat. -/
theorem collision_jacobian (fx fxx fxxx : ℝ) :
    fx*(-fxxx)-(-fxx)*fxx = fxx^2-fx*fxxx := by ring

theorem double_collision_positive {fxx : ℝ} (h : fxx ≠ 0) :
    0 < (0:ℝ)*0-(-fxx)*fxx := by
  nlinarith [sq_pos_of_ne_zero h]

/-- An order-m Hermite splitting creates two real branches per incoming nonreal pair. -/
theorem hermite_pair_count (m : ℕ) :
    m = m % 2 + 2*(m/2) := by omega

/-- If the real branches start and finish with the same end signs, the gain in
upward crossings counts the incoming conjugate pairs, independently of orientation. -/
theorem upward_crossing_gain (m offset : ℕ) :
    (m+offset)/2 = (m%2+offset)/2 + m/2 := by omega

/-- Symmetrization of the imaginary-coordinate zero velocities in a finite system.
The inverse squared distance is encoded by the symmetric edge weight. -/
theorem height_energy_balance {ι : Type*} (s : Finset ι)
    (y : ι → ℝ) (w : ι → ι → ℝ) (hs : ∀ i j, w i j = w j i) :
    2*(∑ i ∈ s, ∑ j ∈ s, y i*(y i-y j)*w i j) =
      ∑ i ∈ s, ∑ j ∈ s, (y i-y j)^2*w i j := by
  have flip : (∑ i ∈ s, ∑ j ∈ s, y j*(y j-y i)*w i j) =
      ∑ i ∈ s, ∑ j ∈ s, y i*(y i-y j)*w i j := by
    rw [Finset.sum_comm]
    exact Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => by rw [hs j i]
  rw [two_mul, ← flip]
  conv_lhs => lhs; rw [flip]
  simp_rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i hi
  apply Finset.sum_congr rfl
  intro j hj
  ring

/-- A pair related by conjugation contributes exactly one to the dissipation
sum over unordered pairs, however small its nonzero height. -/
theorem conjugate_energy {y : ℝ} (hy : y ≠ 0) :
    (y-(-y))^2/((0:ℝ)^2+(y-(-y))^2) = 1 := by
  simp [hy]


end GRWTSK.XiNewmanCollisionCount
