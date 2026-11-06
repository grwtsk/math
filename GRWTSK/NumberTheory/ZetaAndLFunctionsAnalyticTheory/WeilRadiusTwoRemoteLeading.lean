/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRemoteScalars
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddRemoteAllowanceMatrix

/-!
# Leading coefficients for the literal radius-two remote allowance

The exact Gram for modes 2049 through 8192 uses the rates `1/m` and
`derivativeWeight 2 m / m²`. Their squares and signed cross product
give three sums. Enclose each summand by the rational interval product
and round it outward before summing. Negative derivative weights still
contribute with their sign to the mixed coefficient. The two infinite
tail prices change the squared-trace coefficients only.

The coefficient bounds use any certified derivative table on the
stated range and the literal prime mass bound. The projected remainder
and finite lower sign are separate. Independent mathematical review
and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRemoteLeading

open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open LowSchur OddResidualRows OddRemoteAllowanceMatrix RadiusTwoRemoteScalars

private def traceRange : Finset ℕ := Finset.range (8192 - 2048)

private def traceMode (k : ℕ) : ℕ := 2048 + 1 + k

private def rate (k : ℕ) : ℝ := ((traceMode k : ℕ) : ℝ)⁻¹

private def signedRate (k : ℕ) : ℝ :=
  derivativeWeight 2 (traceMode k) / ((traceMode k : ℕ) : ℝ) ^ 2

/-- Squared first-trace coefficient for the finite leading Gram. -/
def c11 : ℝ := ∑ k ∈ traceRange, rate k ^ 2

/-- Signed mixed coefficient for the finite leading Gram. -/
def c12 : ℝ := ∑ k ∈ traceRange, rate k * signedRate k

/-- Squared derivative-trace coefficient for the finite leading Gram. -/
def c22 : ℝ := ∑ k ∈ traceRange, signedRate k ^ 2

theorem leadingGram_two_eq_signedTraceGram (M : ℕ) :
    leadingGram M 2048 8192 2 =
      signedTraceGram (firstTraceRow M 2) (derivativeTraceRow M) c11 c12 c22 :=
  leadingGram_eq_signedTraceGram M 2048 8192 2

private def rateQ (k : ℕ) : ℚ := ((traceMode k : ℕ) : ℚ)⁻¹

private def signedRateBounds (derivative : ℕ → Bounds) (k : ℕ) : Bounds :=
  scale (rateQ k ^ 2) (derivative (traceMode k))

private theorem signedRateBounds_sound {derivative : ℕ → Bounds} (k : ℕ)
    (hDerivative : Encloses (derivative (traceMode k)) (derivativeWeight 2 (traceMode k))) :
    Encloses (signedRateBounds derivative k) (signedRate k) := by
  have hRate : (↑(rateQ k ^ 2) : ℝ) = (((traceMode k : ℕ) : ℝ) ^ 2)⁻¹ := by
    push_cast [rateQ]
    rw [inv_pow]
  have h := scale_sound (rateQ k ^ 2) hDerivative
  rw [hRate] at h
  simpa only [signedRateBounds, signedRate, div_eq_mul_inv, mul_comm] using h

private theorem traceMode_mem {k : ℕ} (hk : k ∈ traceRange) :
    2048 < traceMode k ∧ traceMode k ≤ 8192 := by
  have h := Finset.mem_range.mp hk
  unfold traceMode
  change k < 8192 - 2048 at h
  omega

def c11Bounds (bits : ℕ) : Bounds :=
  sum traceRange (fun k => round bits (point (rateQ k ^ 2)))

def c12BoundsFrom (bits : ℕ) (derivative : ℕ → Bounds) : Bounds :=
  sum traceRange (fun k => round bits (scale (rateQ k) (signedRateBounds derivative k)))

def c22BoundsFrom (bits : ℕ) (derivative : ℕ → Bounds) : Bounds :=
  sum traceRange (fun k =>
    let r := signedRateBounds derivative k
    round bits (mul r r))

theorem c11Bounds_sound (bits : ℕ) : Encloses (c11Bounds bits) c11 := by
  apply sum_sound
  intro k _
  have h := point_sound (rateQ k ^ 2)
  rw [show (↑(rateQ k ^ 2) : ℝ) = rate k ^ 2 by push_cast [rateQ]; rfl] at h
  exact round_sound bits h

theorem c12BoundsFrom_sound (bits : ℕ) {derivative : ℕ → Bounds}
    (hDerivative : ∀ m, 2048 < m → m ≤ 8192 → Encloses (derivative m) (derivativeWeight 2 m)) :
    Encloses (c12BoundsFrom bits derivative) c12 := by
  apply sum_sound
  intro k hk
  obtain ⟨hl, hu⟩ := traceMode_mem hk
  exact round_sound bits (by
    simpa only [rateQ, rate, Rat.cast_inv, Rat.cast_natCast] using
      scale_sound (rateQ k) (signedRateBounds_sound k (hDerivative _ hl hu)))

theorem c22BoundsFrom_sound (bits : ℕ) {derivative : ℕ → Bounds}
    (hDerivative : ∀ m, 2048 < m → m ≤ 8192 → Encloses (derivative m) (derivativeWeight 2 m)) :
    Encloses (c22BoundsFrom bits derivative) c22 := by
  apply sum_sound
  intro k hk
  obtain ⟨hl, hu⟩ := traceMode_mem hk
  have h := signedRateBounds_sound k (hDerivative _ hl hu)
  exact round_sound bits (by simpa only [pow_two] using mul_sound h h)

/-- First-trace coefficient of the part beyond mode 8192. -/
def linearTail : ℝ := 2 / (8192 : ℝ)

/-- Derivative-trace coefficient of the part beyond mode 8192. -/
def derivativeTail : ℝ := 2 * (1 / 2 + primeMass 2 / Real.pi) ^ 2 / (3 * (8192 : ℝ) ^ 3)

def linearTailBounds : Bounds := point (1 / 4096)

theorem linearTailBounds_sound : Encloses linearTailBounds linearTail := by
  rw [show linearTail = ((1 / 4096 : ℚ) : ℝ) by norm_num [linearTail]]
  exact point_sound (1 / 4096)

/-- Enclose the derivative tail using any certified literal mass endpoints. -/
def derivativeTailBoundsFrom (bits : ℕ) (mass : Bounds) : Bounds :=
  let kappa := add (point (1 / 2)) (mul mass piInvBounds)
  round bits (scale (2 / (3 * (8192 : ℚ) ^ 3)) (mul kappa kappa))

theorem derivativeTailBoundsFrom_sound (bits : ℕ) {mass : Bounds}
    (hMass : Encloses mass (primeMass 2)) :
    Encloses (derivativeTailBoundsFrom bits mass) derivativeTail := by
  have h := add_sound (point_sound (1 / 2)) (mul_sound hMass piInvBounds_sound)
  have hTail := round_sound bits (scale_sound (2 / (3 * (8192 : ℚ) ^ 3)) (mul_sound h h))
  unfold derivativeTailBoundsFrom derivativeTail
  convert hTail using 1
  norm_num [div_eq_mul_inv, pow_two]
  ring

/-- The exact leading and infinite-tail block in the complete remote matrix. -/
theorem leadingWithTail_eq_signedTraceGram (M : ℕ) :
    leadingGram M 2048 8192 2 +
      linearTail • Matrix.vecMulVec (firstTraceRow M 2) (firstTraceRow M 2) +
      derivativeTail • Matrix.vecMulVec (derivativeTraceRow M) (derivativeTraceRow M) =
    signedTraceGram (firstTraceRow M 2) (derivativeTraceRow M)
      (c11 + linearTail) c12 (c22 + derivativeTail) := by
  rw [leadingGram_two_eq_signedTraceGram]
  ext i j
  simp only [signedTraceGram, Matrix.add_apply, Matrix.smul_apply, smul_eq_mul]
  ring

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRemoteLeading
