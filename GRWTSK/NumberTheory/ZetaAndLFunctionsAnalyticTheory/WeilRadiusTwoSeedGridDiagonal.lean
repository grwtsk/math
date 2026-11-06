/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPrimeGridSums
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoGammaSeedLog

/-!
# Fixed-grid diagonal enclosure for the radius-two seed

The diagonal has alternating signs whose product is one at equal
indices. Combining the physical shift with the mass reserved for the
high floor gives the exact addition of 3/10. Round the shift in both
directions and subtract the complete signed prime diagonal enclosure
from the gamma endpoints. The exact stored interval then reduces the
source comparison for each frozen row to rational inequalities.
Independent mathematical review is pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoSeedGridDiagonal

open LowSchur OddRootProjection OddResidualSourceComparison
open RadiusTwoDisplacement RadiusTwoPrimeGridSums RadiusTwoPrimeSeedTrig
open RadiusTwoGammaSeedLog
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds

private def up50 (x : ℚ) : ℚ := (round 50 (point x)).2

/-- The complete physical diagonal interval using a fixed-point prime center. -/
def bounds (gamma : Bounds) (prime : ℚ) : Bounds :=
  (gamma.1 - (prime + up50 (1/10^6)) + grid50 (3/10),
    gamma.2 - (prime - up50 (1/10^6)) + up50 (3/10))

private theorem shiftedDiagonal_eq (n : ℕ) :
    parityCoreEntry n n - 1/5 =
      sineArchimedeanEntry 2 (gammaConstant 1 0) 0 n n -
        (∑ q ∈ activePrimePowers 2, primeWeight q * sineShiftEntry 2 n n (Real.log q)) + 3/10 := by
  unfold parityCoreEntry literalCoreEntry
  rw [show (-1 : ℝ)^(n+n) = 1 by rw [← two_mul, pow_mul]; norm_num]
  simp only [ite_true, one_mul]
  ring

theorem bounds_sound {n : ℕ} {gamma : Bounds} {prime : ℚ}
    (hg : Encloses gamma (sineArchimedeanEntry 2 (gammaConstant 1 0) 0 n n))
    (hp : |(∑ q ∈ activePrimePowers 2, primeWeight q * sineShiftEntry 2 n n (Real.log q)) -
        (prime : ℝ)| ≤ 1/10^6) :
    Encloses (bounds gamma prime) (parityCoreEntry n n - 1/5) := by
  have hR := (round_sound 50 (point_sound (1/10^6 : ℚ))).2
  have hS := round_sound 50 (point_sound (3/10 : ℚ))
  change (grid50 (3/10) : ℝ) ≤ ((3/10 : ℚ) : ℝ) ∧
    ((3/10 : ℚ) : ℝ) ≤ (up50 (3/10) : ℝ) at hS
  change ((1/10^6 : ℚ) : ℝ) ≤ (up50 (1/10^6) : ℝ) at hR
  push_cast at hR hS
  obtain ⟨hpl,hpu⟩ := abs_le.mp hp
  rw [shiftedDiagonal_eq]
  simp only [Encloses, bounds, Rat.cast_add, Rat.cast_sub]
  exact ⟨by linarith only [hg.1,hpu,hR,hS.1], by linarith only [hg.2,hpl,hR,hS.2]⟩

/-- The exact high diagonal interval used by the fixed-grid source comparison. -/
def highBounds (s c : ℤ → ℚ) (w v : ℕ → ℚ) (n : ℕ) : Bounds :=
  bounds (gammaDiagonalFrom gammaSharedBounds (logBoundsFrom logTwoBounds mantissaBounds n) n)
    (diagonal s c w v n)

theorem highBounds_sound (s c : ℤ → ℚ) (w v : ℕ → ℚ)
    (ht : TableSound s c) (hw : WeightTableSound w v) {n : ℕ}
    (hlo : 327 ≤ n) (hhi : n ≤ 1200000) :
    Encloses (highBounds s c w v n) (parityCoreEntry n n - 1/5) :=
  bounds_sound (gammaDiagonalHigh_sound hlo) (diagonal_error s c w v ht hw (by omega) hhi)

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoSeedGridDiagonal
