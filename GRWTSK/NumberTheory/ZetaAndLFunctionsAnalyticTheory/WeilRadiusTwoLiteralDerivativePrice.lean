/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoSeedRemoteObservations
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCandidateScalarComparison

/-!
# Literal derivative price for the radius-two Schur seed

Round the interval for the literal prime mass outward to a short rational
bracket before evaluating the derivative price. The exact comparison
keeps the exponential correction square and the same rational center,
distant floor and split as the frozen radius-two seed.

This supplies the derivative-price field of the literal seed comparison.
The remote diagonal and its boundary moments are separate. Independent
mathematical review is pending.
-/

set_option autoImplicit false
set_option maxRecDepth 50000
set_option maxHeartbeats 12000000

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoLiteralDerivativePrice

open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open RadiusTwoSeedRemoteObservations RadiusTwoCandidateScalarComparison RadiusTwoRemoteScalars

/-- The exact rational center used for the derivative price in the frozen seed. -/
def archivedDerivativeCenter : ℚ :=
  let pi := 3141592653589793238465 / (10^21 : ℚ)
  let mass := 2438329183515615 / (10^14 : ℚ)
  let expTwo := 135335283236612692 / (10^18 : ℚ)
  let expEight := 335462627902512 / (10^18 : ℚ)
  let boundary := (1 + expTwo / (1 - expEight)) * 4 / pi^2
  let distant := 149/100
  let split := 1/4
  let L := (1200000 : ℚ)
  (1+split)*2*(1/2+mass/pi)^2/(3*L^3*distant) +
    (3*(1+1/split)/(5*L^5*distant))*boundary^2

private def compactPrimeMass : Bounds := (243832/10000, 243834/10000)

private theorem compactPrimeMass_sound : Encloses compactPrimeMass (LowSchur.primeMass 2) := by
  have h := primeMassBounds_sound 16
  have hlo : compactPrimeMass.1 ≤ (primeMassBounds 16).1 := by decide +kernel
  have hhi : (primeMassBounds 16).2 ≤ compactPrimeMass.2 := by decide +kernel
  exact ⟨((Rat.cast_le (K := ℝ)).mpr hlo).trans h.1,
    h.2.trans ((Rat.cast_le (K := ℝ)).mpr hhi)⟩

/-- The source interval keeps the literal prime mass and exponential square. -/
theorem archivedDerivativeCenter_error :
    |literal.derivativePrice - (archivedDerivativeCenter : ℝ)| ≤ 1 / 10^21 := by
  let b := derivativePriceBounds 1200000 (1/4) (149/100) compactPrimeMass
  have h : Encloses b literal.derivativePrice := by
    have hInterval := derivativePriceBounds_sound 1200000 (1/4) (149/100) compactPrimeMass_sound
    rw [show ((1/4 : ℚ) : ℝ) = (1/4 : ℝ) by norm_num,
      show ((149/100 : ℚ) : ℝ) = (149/100 : ℝ) by norm_num] at hInterval
    exact hInterval
  have hlo : archivedDerivativeCenter - 1/10^21 ≤ b.1 := by decide +kernel
  have hhi : b.2 ≤ archivedDerivativeCenter + 1/10^21 := by decide +kernel
  have hlo' := (Rat.cast_le (K := ℝ)).mpr hlo
  have hhi' := (Rat.cast_le (K := ℝ)).mpr hhi
  push_cast at hlo' hhi'
  rw [abs_le]
  exact ⟨by linarith [hlo'.trans h.1], by linarith [h.2.trans hhi']⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoLiteralDerivativePrice
