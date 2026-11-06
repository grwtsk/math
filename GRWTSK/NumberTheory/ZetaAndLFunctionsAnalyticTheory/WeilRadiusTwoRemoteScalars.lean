/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoGammaPoleObservations
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPrimeObservations
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddResidualMajorant

/-!
# Scalar enclosures for the literal radius-two remote allowance

The full boundary signal encloses the retained literal sum and charges
its positive tail by the telescoping bound `1/(4K-1)`. The retained
endpoints may be shared with the physical entries, where cancellation
instead bounds the difference of two tails. The sum of the checked
weights on integers 2 through 54 gives the prime mass. The signed
derivative weight retains the exact sine signal, including its sign
in the mixed leading moment. The pole and boundary error factors use
positive reciprocal bounds and the exact radius-two normalizations.

These endpoints feed the complete remote allowance and its projected
quadratic price. The finite budget and its lower-sign comparison are
separate. Independent mathematical review and novelty assessment are
pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRemoteScalars

open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open LowSchur OddBoundarySignalBounds OddBoundaryObservation
open OddResidualRows OddResidualMajorant RadiusTwoPrimeNorm
open RadiusTwoGammaPoleObservations RadiusTwoPrimeObservations

private def boundaryTail (K : ℕ) : ℚ := 1 / (4 * (K : ℚ) - 1)

/-- Enclose the full signal from any checked pair of retained endpoints. -/
def boundaryBoundsFrom (bits K : ℕ) (retained : Bounds) : Bounds :=
  round bits (retained.1, retained.2 + boundaryTail K)

theorem boundaryBoundsFrom_sound (bits : ℕ) {n K : ℕ} (hK : 0 < K) {retained : Bounds}
    (hRetained : Encloses retained (boundarySignalPartial 2 n K)) :
    Encloses (boundaryBoundsFrom bits K retained) (boundarySignal 2 n) := by
  obtain ⟨hLower, hUpper⟩ := boundarySignal_truncation_bounds 2 (by norm_num) n hK
  refine round_sound bits ⟨hRetained.1.trans hLower, hUpper.trans ?_⟩
  push_cast [boundaryTail, boundarySignalTailBound]
  exact add_le_add hRetained.2 le_rfl

/-- The full signal using the same rational partial sum as the physical entries. -/
def boundaryBounds (bits n K : ℕ) : Bounds :=
  boundaryBoundsFrom bits K (boundaryPartialBounds bits n K)

theorem boundaryBounds_sound (bits n : ℕ) {K : ℕ} (hK : 0 < K) :
    Encloses (boundaryBounds bits n K) (boundarySignal 2 n) :=
  boundaryBoundsFrom_sound bits hK (boundaryPartialBounds_sound bits n K)

/-- Twice the checked sum of the weights in the literal support cutoff. -/
def primeMassBounds (bits : ℕ) : Bounds :=
  round bits (scale 2 (sum (Finset.Icc 2 54) primeWeightBounds))

theorem primeMassBounds_sound (bits : ℕ) : Encloses (primeMassBounds bits) (primeMass 2) := by
  unfold primeMassBounds primeMass
  rw [activePrimePowers_two]
  exact round_sound bits (scale_sound 2 (sum_sound _ (fun _ hq => primeWeightBounds_sound hq)))

/-- An interval for the common reciprocal frequency factor. -/
def piInvBounds : Bounds := inv (3.14159265358979323846, 3.14159265358979323847)

theorem piInvBounds_sound : Encloses piInvBounds Real.pi⁻¹ :=
  inv_sound ⟨Real.pi_gt_d20.le, Real.pi_lt_d20.le⟩ (by norm_num)

private def primeTraceBounds (signal : Bounds) : Bounds :=
  mul (scale 2 piInvBounds) signal

private theorem primeTraceBounds_sound {m : ℕ} {signal : Bounds}
    (hSignal : Encloses signal (primeSignal 2 (m : ℝ))) :
    Encloses (primeTraceBounds signal) ((2 / Real.pi) * primeSignal 2 (m : ℝ)) := by
  simpa only [primeTraceBounds, Rat.cast_ofNat, div_eq_mul_inv] using
    mul_sound (scale_sound 2 piInvBounds_sound) hSignal

/-- Retain the signed sine signal in the derivative weight. -/
def derivativeWeightBoundsFrom (bits : ℕ) (signal : Bounds) : Bounds :=
  round bits (add (point (1 / 2)) (primeTraceBounds signal))

theorem derivativeWeightBoundsFrom_sound (bits : ℕ) {m : ℕ} {signal : Bounds}
    (hSignal : Encloses signal (primeSignal 2 (m : ℝ))) :
    Encloses (derivativeWeightBoundsFrom bits signal) (derivativeWeight 2 m) := by
  simpa only [derivativeWeightBoundsFrom, derivativeWeight, Rat.cast_div, Rat.cast_one,
    Rat.cast_ofNat] using round_sound bits
      (add_sound (point_sound (1 / 2)) (primeTraceBounds_sound hSignal))

def derivativeWeightBounds (bits m : ℕ) : Bounds :=
  derivativeWeightBoundsFrom bits (primeSignalBounds bits m)

theorem derivativeWeightBounds_sound (bits m : ℕ) :
    Encloses (derivativeWeightBounds bits m) (derivativeWeight 2 m) :=
  derivativeWeightBoundsFrom_sound bits (primeSignalBounds_sound bits m)

/-- The physical first trace before the alternating sine basis sign. -/
def firstTraceEntryBoundsFrom (bits n : ℕ) (boundary signal : Bounds) : Bounds :=
  round bits (sub (scale (-(n : ℚ)) boundary) (primeTraceBounds signal))

theorem firstTraceEntryBoundsFrom_sound (bits : ℕ) {n : ℕ} {boundary signal : Bounds}
    (hBoundary : Encloses boundary (boundarySignal 2 n))
    (hSignal : Encloses signal (primeSignal 2 (n : ℝ))) :
    Encloses (firstTraceEntryBoundsFrom bits n boundary signal) (firstTraceEntry 2 n) := by
  simpa only [firstTraceEntryBoundsFrom, firstTraceEntry, div_self (by norm_num : (2 : ℝ) ≠ 0),
    neg_one_mul, Rat.cast_neg, Rat.cast_natCast] using
    round_sound bits (sub_sound (scale_sound (-(n : ℚ)) hBoundary) (primeTraceBounds_sound hSignal))

/-- The weight of one physical trial coordinate in the cubic remainder. -/
def remainderWeightBoundsFrom (bits M L n : ℕ) (boundary mass : Bounds) : Bounds :=
  let frac := (M : ℚ) / ((L : ℚ) + 1)
  round bits (add (scale ((n : ℚ) ^ 3 / (1 - frac ^ 2)) boundary)
    (scale ((n : ℚ) ^ 2 / (1 - frac)) (mul mass piInvBounds)))

theorem remainderWeightBoundsFrom_sound (bits M L : ℕ) {n : ℕ} {boundary mass : Bounds}
    (hBoundary : Encloses boundary (boundarySignal 2 n))
    (hMass : Encloses mass (primeMass 2)) :
    Encloses (remainderWeightBoundsFrom bits M L n boundary mass) (remainderWeight M L 2 n) := by
  let frac := (M : ℚ) / ((L : ℚ) + 1)
  have h := round_sound bits (add_sound (scale_sound ((n : ℚ) ^ 3 / (1 - frac ^ 2)) hBoundary)
    (scale_sound ((n : ℚ) ^ 2 / (1 - frac)) (mul_sound hMass piInvBounds_sound)))
  convert h using 1
  · rfl
  · unfold remainderWeight squaredResidualBuffer residualBuffer
    push_cast [frac]
    norm_num [div_eq_mul_inv]
    ring

private def square (a : Bounds) : Bounds := mul a a

private theorem square_sound {a : Bounds} {x : ℝ} (ha : Encloses a x) :
    Encloses (square a) (x ^ 2) := by
  simpa only [square, pow_two] using mul_sound ha ha

def poleNodeBounds : Bounds := square piInvBounds

theorem poleNodeBounds_sound : Encloses poleNodeBounds (poleNode 2) := by
  have h : poleNode 2 = (Real.pi⁻¹) ^ 2 := by
    unfold poleNode
    rw [inv_pow]
    field_simp [Real.pi_ne_zero]
    norm_num
  rw [h]
  exact square_sound piInvBounds_sound

private def expOneBounds : Bounds := (2.7182818283, 2.7182818286)

private theorem expOneBounds_sound : Encloses expOneBounds (Real.exp 1) :=
  ⟨Real.exp_one_gt_d9.le, Real.exp_one_lt_d9.le⟩

private def expNegOneBounds : Bounds := inv expOneBounds

private theorem expNegOneBounds_sound : Encloses expNegOneBounds (Real.exp (-1)) := by
  rw [Real.exp_neg]
  exact inv_sound expOneBounds_sound (by norm_num [expOneBounds])

private def sqrtTwoBounds : Bounds := (1.41421356237309504880, 1.41421356237309504881)

private theorem sqrtTwoBounds_sound : Encloses sqrtTwoBounds (Real.sqrt 2) := by
  unfold sqrtTwoBounds Encloses
  push_cast
  exact ⟨(Real.le_sqrt (by norm_num) (by norm_num)).mpr (by norm_num),
    (Real.sqrt_le_left (by norm_num)).mpr (by norm_num)⟩

/-- The pole scale in the remote trace, whose coefficient is its negative. -/
def poleScaleBounds : Bounds :=
  mul (mul sqrtTwoBounds (sub expOneBounds expNegOneBounds)) piInvBounds

theorem poleScaleBounds_sound : Encloses poleScaleBounds (poleScale 2) := by
  have h : poleScale 2 = Real.sqrt 2 * (Real.exp 1 - Real.exp (-1)) * Real.pi⁻¹ := by
    unfold poleScale
    rw [show (2 : ℝ) / 2 = 1 by norm_num, Real.sinh_eq]
    ring
  rw [h]
  exact mul_sound (mul_sound sqrtTwoBounds_sound
    (sub_sound expOneBounds_sound expNegOneBounds_sound)) piInvBounds_sound

def poleRemainderSquareBounds : Bounds := square (mul poleScaleBounds poleNodeBounds)

theorem poleRemainderSquareBounds_sound :
    Encloses poleRemainderSquareBounds ((poleScale 2 * poleNode 2) ^ 2) :=
  square_sound (mul_sound poleScaleBounds_sound poleNodeBounds_sound)

private def expNegTwoBounds : Bounds := square expNegOneBounds

private theorem expNegTwoBounds_sound : Encloses expNegTwoBounds (Real.exp (-2)) := by
  have h : Real.exp (-2) = Real.exp (-1) ^ 2 := by rw [← Real.exp_nat_mul]; norm_num
  rw [h]
  exact square_sound expNegOneBounds_sound

private def decayDenBounds : Bounds := sub (point 1) (square (square expNegTwoBounds))

private theorem decayDenBounds_sound : Encloses decayDenBounds (1 - Real.exp (-8)) := by
  have h : Real.exp (-8) = (Real.exp (-2) ^ 2) ^ 2 := by
    rw [← pow_mul, ← Real.exp_nat_mul]
    norm_num
  rw [h]
  simpa only [decayDenBounds, Rat.cast_one] using
    sub_sound (point_sound 1) (square_sound (square_sound expNegTwoBounds_sound))

/-- The full radius-two boundary error factor before squaring. -/
def boundaryErrorScaleBounds : Bounds :=
  mul (add (point 1) (mul expNegTwoBounds (inv decayDenBounds))) (scale 4 poleNodeBounds)

theorem boundaryErrorScaleBounds_sound :
    Encloses boundaryErrorScaleBounds (boundaryErrorScale 2) := by
  have hPos : 0 < (decayDenBounds.1 : ℝ) := by
    norm_num [decayDenBounds, expNegTwoBounds, expNegOneBounds, expOneBounds, square,
      sub, point, neg, add, mul, inv, min_def, max_def]
  have h := mul_sound (add_sound (point_sound 1)
    (mul_sound expNegTwoBounds_sound (inv_sound decayDenBounds_sound hPos)))
    (scale_sound 4 poleNodeBounds_sound)
  have hNode : (4 : ℝ) * poleNode 2 = (2 : ℝ) ^ 2 / Real.pi ^ 2 := by
    unfold poleNode
    field_simp [Real.pi_ne_zero]
  simpa only [boundaryErrorScaleBounds, boundaryErrorScale, Rat.cast_ofNat, Rat.cast_one, hNode,
    show -4 * (2 : ℝ) = -8 by norm_num, div_eq_mul_inv] using h

def boundaryErrorSquareBounds : Bounds := square boundaryErrorScaleBounds

theorem boundaryErrorSquareBounds_sound :
    Encloses boundaryErrorSquareBounds ((2 / (2 : ℝ) * boundaryErrorScale 2) ^ 2) := by
  simpa only [boundaryErrorSquareBounds, div_self (by norm_num : (2 : ℝ) ≠ 0), one_mul] using
    square_sound boundaryErrorScaleBounds_sound

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRemoteScalars
