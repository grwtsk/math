/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoBoundaryHighBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPackedSignExtension
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPackedOperandChunks

/-!
# Packed boundary observations for the radius-two Schur seed

Bisect the unsigned word to check its individual 64-bit lanes. The
sign check identifies the signed decoder with the nonnegative lane.
Two integer inequalities place the dyadic lane within `2 / 10^8`
of the exact rational high-mode center. The literal radius-two
boundary estimate adds `58 / 10^8` at each mode from 1024 onward.

The checked word supplies the pointwise observation used in the remote
diagonal seed price. Archive coverage and the weighted moment have
separate finite checks. Independent mathematical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPackedBoundaryObservations

open GRWTSK.NumberTheory.WeilQuadraticForm
open GRWTSK.Algebra.LinearAlgebra.PackedSignedLanes
open GRWTSK.Algebra.LinearAlgebra.PackedCovarianceConvolution
open OddBoundarySignalBounds RadiusTwoBoundaryHighBounds

private def base : ℕ := 2^64

/-- Read one unsigned little-endian 64-bit lane. -/
def digit (word i : ℕ) : ℕ := word / base^i % base

/-- Check the sign and the two directed integer comparisons. -/
def laneChecked (n z : ℕ) : Prop :=
  let den := 1000000000 * n
  let center := 281474976710656 * den + 46453453 * 562949953421312
  let tolerance := 562949953421312 * den
  z < 2^63 ∧
  50000000 * (z * den) ≤ 50000000 * center + tolerance ∧
  50000000 * center ≤ 50000000 * (z * den) + tolerance

def checked (word start i : ℕ) : Prop := laneChecked (start+i) (digit word i)

instance (word start i : ℕ) : Decidable (checked word start i) := by
  unfold checked laneChecked
  infer_instance

/-- Check a dyadic block by bisecting its exact word before visiting each half. -/
def checkBlock : ℕ → ℕ → ℕ → Bool
  | 0, start, word => decide (checked word start 0)
  | d+1, start, word =>
    let p := base^(2^d)
    checkBlock d start (word % p) && checkBlock d (start+2^d) (word / p)

theorem checkBlock_sound (d start word i : ℕ) (hi : i < 2^d)
    (h : checkBlock d start word = true) : checked word start i := by
  induction d generalizing start word i with
  | zero =>
    have hz : i = 0 := by omega
    subst i
    simpa only [checkBlock, decide_eq_true_eq] using h
  | succ d ih =>
    have hHalf := Bool.and_eq_true_iff.mp h
    by_cases hLow : i < 2^d
    · have hd : digit (word % base^(2^d)) i = digit word i := by
        simpa only [digitWindow, pow_zero, Nat.div_one, Nat.zero_add, digit] using
          digitWindow_read base word 0 (2^d) i hLow
      simpa only [checked, hd] using ih start (word % base^(2^d)) i hLow hHalf.1
    · let j := i-2^d
      have hIdx : 2^d+j = i := by dsimp [j]; omega
      have hj : j < 2^d := by rw [pow_succ] at hi; dsimp [j]; omega
      have hd : digit (word / base^(2^d)) j = digit word i := by
        simp only [digit, Nat.div_div_eq_div_mul, ← Nat.pow_add, hIdx]
      simpa only [checked, hd, Nat.add_assoc start, hIdx] using
        ih (start+2^d) (word / base^(2^d)) j hj hHalf.2

theorem literalErrorOfLane {mode raw : ℕ} (hMode : 1024 ≤ mode) (h : laneChecked mode raw) :
    |((mode : ℕ) : ℝ) * boundarySignal 2 (mode) -
      (signedDigit (raw) : ℝ)/2^49| ≤ 6/10^7 := by
  obtain ⟨hSign,hUpper,hLower⟩ := h
  let n : ℝ := ((mode : ℕ) : ℝ)
  let z : ℝ := (raw : ℝ)
  let den : ℝ := 1000000000 * n
  let center : ℝ := 281474976710656 * den + 46453453 * 562949953421312
  let tolerance : ℝ := 562949953421312 * den
  have hn : 0 < n := by
    have hn' : 0 < mode := by omega
    dsimp only [n]
    exact_mod_cast hn'
  have hUpperR : 50000000 * (z * den) ≤ 50000000 * center + tolerance := by
    dsimp only [n, z, den, center, tolerance]
    exact_mod_cast hUpper
  have hLowerR : 50000000 * center ≤ 50000000 * (z * den) + tolerance := by
    dsimp only [n, z, den, center, tolerance]
    exact_mod_cast hLower
  have hCenter : (scaledBoundaryCenter (mode) : ℝ) =
      1/2 + (46453453/1000000000)/n := by
    push_cast [scaledBoundaryCenter, n]
    norm_num
  have hScale : 0 < 50000000 * tolerance := by positivity
  have hIdentity : (z / (2:ℝ)^49 - (scaledBoundaryCenter (mode) : ℝ)) *
      (50000000 * tolerance) = 50000000 * (z * den) - 50000000 * center := by
    rw [hCenter]
    dsimp only [tolerance, den, center]
    norm_num
    field_simp [hn.ne']
    ring
  have hScaled : |(z / (2:ℝ)^49 - (scaledBoundaryCenter (mode) : ℝ)) *
      (50000000 * tolerance)| ≤ tolerance := by
    rw [hIdentity, abs_le]
    constructor <;> linarith only [hUpperR, hLowerR]
  have hR : |(raw : ℝ)/2^49 - (scaledBoundaryCenter (mode) : ℝ)| ≤ 2/10^8 := by
    rw [abs_mul, abs_of_pos hScale] at hScaled
    apply le_of_mul_le_mul_right ?_ hScale
    calc
      _ ≤ tolerance := hScaled
      _ = 2/10^8 * (50000000 * tolerance) := by ring
  rw [signedDigit, ite_eq_left hSign, Int.cast_natCast]
  calc
    _ ≤ |((mode : ℕ) : ℝ) * boundarySignal 2 (mode) -
        (scaledBoundaryCenter (mode) : ℝ)| +
        |(scaledBoundaryCenter (mode) : ℝ) - (raw : ℝ)/2^49| :=
      abs_sub_le _ _ _
    _ ≤ 58/100000000 + 2/10^8 := by
      rw [abs_sub_comm (scaledBoundaryCenter (mode) : ℝ)]
      exact add_le_add (abs_scaled_boundarySignal_sub_center_le hMode) hR
    _ = _ := by norm_num

/-- A checked digit is an enclosure of the literal source at its physical mode. -/
theorem literalError {word start i : ℕ} (hMode : 1024 ≤ start+i) (h : checked word start i) :
    |((start+i : ℕ) : ℝ) * boundarySignal 2 (start+i) -
      (signedDigit (digit word i) : ℝ)/2^49| ≤ 6/10^7 :=
  literalErrorOfLane hMode h

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPackedBoundaryObservations
