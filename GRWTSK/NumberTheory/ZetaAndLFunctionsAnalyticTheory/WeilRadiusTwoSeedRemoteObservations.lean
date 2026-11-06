/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoWeightedMiddleStructure
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRemoteScalars

/-!
# Normalized observations for the remote seed prices

Factor each remote remainder weight as the square of the mode number
times an affine function of the scaled literal boundary signal. Summing
the exact formula retains all modes through the trial cutoff and allows
one weighted boundary moment and one sum of squares to supply every
remote diagonal. The derivative coefficient keeps both the prime mass
and the complete exponential correction. Numerical moment checks and
rounded pivots are separate. Independent mathematical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoSeedRemoteObservations

open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open LowSchur OddResidualMajorant OddBoundarySignalBounds
open RadiusTwoRemoteScalars RadiusTwoWeightedMiddleStructure

private def fraction (M L : ℕ) : ℚ := (M : ℚ) / ((L : ℚ) + 1)

private def bulk (M L : ℕ) (mass : Bounds) : Bounds :=
  scale (1 / (1 - fraction M L)) (mul mass piInvBounds)

/-- Combine the scaled boundary input with the exact two buffer factors. -/
def weightBoundsFromScaled (M L n : ℕ) (scaledBoundary mass : Bounds) : Bounds :=
  scale ((n : ℚ)^2)
    (add (scale (1 / (1 - fraction M L ^ 2)) scaledBoundary) (bulk M L mass))

theorem weightBoundsFromScaled_sound (M L : ℕ) {n : ℕ} {scaledBoundary mass : Bounds}
    (hBoundary : Encloses scaledBoundary ((n : ℝ) * boundarySignal 2 n))
    (hMass : Encloses mass (primeMass 2)) :
    Encloses (weightBoundsFromScaled M L n scaledBoundary mass) (remainderWeight M L 2 n) := by
  have h := scale_sound ((n : ℚ)^2)
    (add_sound (scale_sound (1 / (1 - fraction M L ^ 2)) hBoundary)
      (scale_sound (1 / (1 - fraction M L)) (mul_sound hMass piInvBounds_sound)))
  unfold weightBoundsFromScaled bulk
  convert h using 1
  unfold remainderWeight squaredResidualBuffer residualBuffer
  push_cast [fraction]
  norm_num [div_eq_mul_inv]
  ring

/-- The complete sum of remainder weights from two ordinary finite moments. -/
def totalWeightBoundsFromMoments (M L : ℕ) (boundaryMoment squareMoment mass : Bounds) : Bounds :=
  add (scale (1 / (1 - fraction M L ^ 2)) boundaryMoment)
    (mul squareMoment (bulk M L mass))

theorem totalWeightBoundsFromMoments_sound (M L : ℕ) {boundaryMoment squareMoment mass : Bounds}
    (hBoundary : Encloses boundaryMoment
      (∑ n ∈ Finset.Icc 1 M, (n : ℝ)^2 * ((n : ℝ) * boundarySignal 2 n)))
    (hSquare : Encloses squareMoment (∑ n ∈ Finset.Icc 1 M, (n : ℝ)^2))
    (hMass : Encloses mass (primeMass 2)) :
    Encloses (totalWeightBoundsFromMoments M L boundaryMoment squareMoment mass)
      (∑ n ∈ Finset.Icc 1 M, remainderWeight M L 2 n) := by
  have h := add_sound (scale_sound (1 / (1 - fraction M L ^ 2)) hBoundary)
    (mul_sound hSquare (scale_sound (1 / (1 - fraction M L)) (mul_sound hMass piInvBounds_sound)))
  unfold totalWeightBoundsFromMoments bulk
  convert h using 1
  simp only [Finset.mul_sum, Finset.sum_mul, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n _
  unfold remainderWeight squaredResidualBuffer residualBuffer
  push_cast [fraction]
  norm_num [div_eq_mul_inv]
  ring

private def tailFactor (L : ℕ) (s : ℚ) : ℚ := 3 * (1 + s⁻¹) / (5 * (L : ℚ)^5)

/-- The derivative term includes the complete boundary error square. -/
def derivativePriceBounds (L : ℕ) (s distant : ℚ) (mass : Bounds) : Bounds :=
  let b := add (point (1/2)) (mul mass piInvBounds)
  scale distant⁻¹
    (add (scale ((1+s) * 2 / (3 * (L : ℚ)^3)) (mul b b))
      (scale (tailFactor L s) boundaryErrorSquareBounds))

theorem derivativePriceBounds_sound (L : ℕ) (s distant : ℚ) {mass : Bounds}
    (hMass : Encloses mass (primeMass 2)) :
    Encloses (derivativePriceBounds L s distant mass)
      ((distant : ℝ)⁻¹ * remoteDerivative L (s : ℝ)) := by
  have hB := add_sound (point_sound (1/2 : ℚ)) (mul_sound hMass piInvBounds_sound)
  have h := scale_sound distant⁻¹ (add_sound
    (scale_sound ((1+s) * 2 / (3 * (L : ℚ)^3)) (mul_sound hB hB))
    (scale_sound (tailFactor L s) boundaryErrorSquareBounds_sound))
  unfold derivativePriceBounds
  convert h using 1
  have hD : remoteDerivative L (s : ℝ) =
      (1 + (s : ℝ)) * (2 * (1/2 + primeMass 2 / Real.pi)^2 / (3 * (L : ℝ)^3)) +
      ((tailFactor L s : ℚ) : ℝ) * ((2 / (2 : ℝ)) * boundaryErrorScale 2)^2 := by
    push_cast [tailFactor]
    rfl
  rw [hD]
  push_cast
  norm_num [div_eq_mul_inv, pow_two]
  (ring_nf; simp)

/-- The complete normalized remote diagonal price from a shared total weight. -/
def diagonalPriceBounds (M L n : ℕ) (s distant : ℚ) (total scaledBoundary mass : Bounds) : Bounds :=
  scale (distant⁻¹ * tailFactor L s)
    (mul total (weightBoundsFromScaled M L n scaledBoundary mass))

theorem diagonalPriceBounds_sound (M L : ℕ) (s distant : ℚ) {n : ℕ}
    {total scaledBoundary mass : Bounds}
    (hTotal : Encloses total (∑ j ∈ Finset.Icc 1 M, remainderWeight M L 2 j))
    (hBoundary : Encloses scaledBoundary ((n : ℝ) * boundarySignal 2 n))
    (hMass : Encloses mass (primeMass 2)) :
    Encloses (diagonalPriceBounds M L n s distant total scaledBoundary mass)
      ((distant : ℝ)⁻¹ * remoteDiag M L (s : ℝ) n) := by
  have h := scale_sound (distant⁻¹ * tailFactor L s)
    (mul_sound hTotal (weightBoundsFromScaled_sound M L hBoundary hMass))
  unfold diagonalPriceBounds
  convert h using 1
  have hD : remoteDiag M L (s : ℝ) n =
      ((tailFactor L s : ℚ) : ℝ) * (∑ j ∈ Finset.Icc 1 M, remainderWeight M L 2 j) *
        remainderWeight M L 2 n := by
    push_cast [tailFactor]
    rfl
  rw [hD]
  push_cast
  ring

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoSeedRemoteObservations
