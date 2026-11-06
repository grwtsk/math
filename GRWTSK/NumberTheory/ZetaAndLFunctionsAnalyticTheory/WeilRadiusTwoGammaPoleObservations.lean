/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.RationalRealBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddBoundaryDifferenceTail
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowOddEntries
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddMultiplierObservation

/-!
# Outward gamma and pole entries for the literal radius-two odd form

The frequency is `pi*n/2`. Enclose the positive denominators and the
weighted boundary summands on a rational grid, with the exponential
reduced to powers of `exp(-1)`. The finite boundary sums can be shared
between the head and every physical residual row. Their off-diagonal
difference is taken before the common tail is bounded. Its error after
scaling is at most the product of the two frequencies divided by
`48*(K-1)^3` for the first `K` retained terms. The pole column retains
its exact alternating sign and the normalization by `sqrt 2`.

The lower sign and high floor at the candidate cutoff remain open.
Independent analytical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoGammaPoleObservations

open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open OddRootProjection OddBoundarySignalBounds OddBoundaryObservation OddBoundaryDifferenceTail
open OddResidualSourceComparison OddDiagonalObservation OddDiagonalSeriesTail
open OddMultiplierBounds OddMultiplierObservation UnitWindowOddEntries
open OddOutputTrace (frequency sinePoleCoefficient)

private def piBounds : Bounds := (3.14159265358979323846, 3.14159265358979323847)

private theorem piBounds_sound : Encloses piBounds Real.pi :=
  ⟨Real.pi_gt_d20.le, Real.pi_lt_d20.le⟩

private def omega (n : ℕ) : Bounds := (piBounds.1 * n / 2, piBounds.2 * n / 2)

private theorem omega_sound (n : ℕ) : Encloses (omega n) (frequency 2 n) := by
  have hn : 0 ≤ (n : ℝ) := Nat.cast_nonneg _
  have hLo := div_le_div_of_nonneg_right
    (mul_le_mul_of_nonneg_right piBounds_sound.1 hn) (by norm_num : 0 ≤ (2 : ℝ))
  have hHi := div_le_div_of_nonneg_right
    (mul_le_mul_of_nonneg_right piBounds_sound.2 hn) (by norm_num : 0 ≤ (2 : ℝ))
  simpa only [omega, frequency, Encloses, Rat.cast_div, Rat.cast_mul, Rat.cast_natCast,
    Rat.cast_ofNat] using And.intro hLo hHi

private theorem omegaLo_nonneg (n : ℕ) : 0 ≤ ((omega n).1 : ℝ) := by
  unfold omega piBounds
  push_cast
  positivity

private def omegaSq (n : ℕ) : Bounds := ((omega n).1 ^ 2, (omega n).2 ^ 2)

private theorem omegaSq_sound (n : ℕ) : Encloses (omegaSq n) (frequency 2 n ^ 2) := by
  have h := omega_sound n
  exact ⟨by simpa only [omegaSq, Rat.cast_pow] using pow_le_pow_left₀ (omegaLo_nonneg n) h.1 2,
    by simpa only [omegaSq, Rat.cast_pow] using
      pow_le_pow_left₀ ((omegaLo_nonneg n).trans h.1) h.2 2⟩

private def rate (j : ℕ) : ℚ := 2 * j + 1 / 2

private theorem rate_pos (j : ℕ) : 0 < (rate j : ℝ) := by
  unfold rate
  push_cast
  positivity

private def denominator (n : ℕ) (r : ℚ) : Bounds := add (point (r ^ 2)) (omegaSq n)

private theorem denominator_sound (n : ℕ) (r : ℚ) :
    Encloses (denominator n r) ((r : ℝ) ^ 2 + frequency 2 n ^ 2) := by
  have h := add_sound (point_sound (r ^ 2)) (omegaSq_sound n)
  rw [Rat.cast_pow] at h
  exact h

private theorem denominator_pos (n : ℕ) {r : ℚ} (hr : 0 < (r : ℝ)) :
    0 < ((denominator n r).1 : ℝ) := by
  unfold denominator add point omegaSq
  push_cast
  positivity

private def expOne : Bounds := (2.7182818283, 2.7182818286)
private def expInv : Bounds := inv expOne

private theorem expOne_sound : Encloses expOne (Real.exp 1) :=
  ⟨Real.exp_one_gt_d9.le, Real.exp_one_lt_d9.le⟩

private theorem expInv_sound : Encloses expInv (Real.exp (-1)) := by
  rw [Real.exp_neg]
  exact inv_sound expOne_sound (by norm_num [expOne])

private def decay (j : ℕ) : Bounds :=
  if j < 8 then (expInv.1 ^ (8 * j + 2), expInv.2 ^ (8 * j + 2)) else (0, 1 / 2 ^ (66 : ℕ))

private theorem decay_sound (j : ℕ) : Encloses (decay j) (Real.exp (-2 * (rate j : ℝ) * 2)) := by
  rw [show Real.exp (-2 * (rate j : ℝ) * 2) = Real.exp (-1) ^ (8 * j + 2) by
    rw [← Real.exp_nat_mul]
    congr 1
    push_cast [rate]
    ring]
  unfold decay
  by_cases hj : j < 8
  · rw [ite_eq_left hj]
    unfold Encloses
    push_cast
    exact ⟨pow_le_pow_left₀ (by norm_num [expInv, inv, expOne]) expInv_sound.1 _,
      pow_le_pow_left₀ (Real.exp_pos _).le expInv_sound.2 _⟩
  · rw [ite_eq_right hj]
    refine ⟨by norm_num; positivity, ?_⟩
    have h := (pow_le_pow_left₀ (Real.exp_pos _).le Real.exp_neg_one_lt_half.le (8 * j + 2)).trans
      (pow_le_pow_of_le_one (by norm_num : 0 ≤ (1 / 2 : ℝ)) (by norm_num) (by omega : 66 ≤ 8 * j + 2))
    exact h.trans_eq (by norm_num)

private def boundaryTerm (n j : ℕ) : Bounds :=
  mul (sub (point 1) (decay j)) (inv (denominator n (rate j)))

private theorem boundaryTerm_sound (n j : ℕ) :
    Encloses (boundaryTerm n j) (boundarySignalTerm 2 n j) := by
  have h := mul_sound (sub_sound (point_sound 1) (decay_sound j))
    (inv_sound (denominator_sound n (rate j)) (denominator_pos n (rate_pos j)))
  have hTerm : boundarySignalTerm 2 n j =
      (1 - Real.exp (-2 * (rate j : ℝ) * 2)) / ((rate j : ℝ) ^ 2 + frequency 2 n ^ 2) := by
    push_cast [rate]
    rfl
  rw [hTerm]
  simpa only [boundaryTerm, Rat.cast_one, div_eq_mul_inv] using h

/-- A shared outward sum of the first `K` literal boundary terms. -/
def boundaryPartialBounds (bits n K : ℕ) : Bounds :=
  sum (Finset.range K) (fun j => round bits (boundaryTerm n j))

theorem boundaryPartialBounds_sound (bits n K : ℕ) :
    Encloses (boundaryPartialBounds bits n K) (boundarySignalPartial 2 n K) :=
  sum_sound (Finset.range K) (fun j _ => round_sound bits (boundaryTerm_sound n j))

private def archScale (m n : ℕ) : ℚ :=
  (-1 : ℚ) ^ (m + n) * (-(m : ℚ) * n) / ((m : ℚ) ^ 2 - (n : ℚ) ^ 2)

private theorem archScale_eq (m n : ℕ) : (archScale m n : ℝ) = archimedeanOffDiagonalScale 2 m n := by
  unfold archScale archimedeanOffDiagonalScale
  push_cast
  norm_num

private def archTailRadius (m n K : ℕ) : ℚ :=
  (omega m).2 * (omega n).2 / (48 * ((K : ℚ) - 1) ^ 3)

/-- Outward off-diagonal entry using shared finite signals and their common tail. -/
def archOffDiagonalBoundsFrom (bits K : ℕ) (retained : ℕ → Bounds) (m n : ℕ) : Bounds :=
  round bits (add (scale (archScale m n) (sub (retained n) (retained m)))
    (-archTailRadius m n K, archTailRadius m n K))

theorem archOffDiagonalBoundsFrom_sound (bits : ℕ) {K m n : ℕ} (hK : 1 < K)
    (hm : 0 < m) (hn : 0 < n) (hmn : m ≠ n) {retained : ℕ → Bounds}
    (hM : Encloses (retained m) (boundarySignalPartial 2 m K))
    (hN : Encloses (retained n) (boundarySignalPartial 2 n K)) :
    Encloses (archOffDiagonalBoundsFrom bits K retained m n)
      (sineArchimedeanEntry 2 (gammaConstant 1 0) 0 m n) := by
  let c : ℝ := archScale m n
  let d := boundarySignal 2 n - boundarySignal 2 m
  let p := boundarySignalPartial 2 n K - boundarySignalPartial 2 m K
  have hDiff := abs_boundarySignal_sub_partialDifference_le 2 (by norm_num) m n hK
  have hScale : |c| * |frequency 2 m ^ 2 - frequency 2 n ^ 2| =
      frequency 2 m * frequency 2 n := by
    have hmR : 0 < (m : ℝ) := by exact_mod_cast hm
    have hnR : 0 < (n : ℝ) := by exact_mod_cast hn
    have hDen : ((m : ℝ) ^ 2 - (n : ℝ) ^ 2) ≠ 0 := by
      apply sub_ne_zero.mpr
      intro h
      have hEq : (m : ℝ) = n := (sq_eq_sq₀ hmR.le hnR.le).mp h
      exact hmn (by exact_mod_cast hEq)
    have hFreq : frequency 2 m ^ 2 - frequency 2 n ^ 2 =
        (Real.pi / 2) ^ 2 * ((m : ℝ) ^ 2 - (n : ℝ) ^ 2) := by unfold frequency; ring
    rw [hFreq, abs_mul, abs_of_nonneg (sq_nonneg (Real.pi / 2))]
    dsimp [c]
    unfold archScale frequency
    push_cast
    simp only [abs_div, abs_mul, abs_pow, abs_neg, abs_one, one_pow, one_mul,
      abs_of_nonneg hmR.le, abs_of_nonneg hnR.le]
    field_simp [abs_ne_zero.mpr hDen]
  have hErr : |c * d - c * p| ≤ (archTailRadius m n K : ℝ) := by
    rw [← mul_sub, abs_mul]
    calc
      _ ≤ |c| * (|frequency 2 m ^ 2 - frequency 2 n ^ 2| / (48 * ((K : ℝ) - 1) ^ 3)) :=
        mul_le_mul_of_nonneg_left hDiff (abs_nonneg _)
      _ = (frequency 2 m * frequency 2 n) / (48 * ((K : ℝ) - 1) ^ 3) := by
        rw [← mul_div_assoc, hScale]
      _ ≤ _ := by
        unfold archTailRadius
        push_cast
        have hKreal : (1 : ℝ) < K := by exact_mod_cast hK
        exact div_le_div_of_nonneg_right
          (mul_le_mul (omega_sound m).2 (omega_sound n).2 (by unfold frequency; positivity)
            ((omegaLo_nonneg m).trans ((omega_sound m).1.trans (omega_sound m).2))) (by positivity)
  have hRem : Encloses (-archTailRadius m n K, archTailRadius m n K) (c * d - c * p) := by
    simpa only [Encloses, Rat.cast_neg] using abs_le.mp hErr
  have hEntry : sineArchimedeanEntry 2 (gammaConstant 1 0) 0 m n = c * d := by
    change _ = (archScale m n : ℝ) * d
    rw [sineArchimedeanEntry_eq_boundary 2 (by norm_num) hm hn hmn, archScale_eq]
    unfold d archimedeanOffDiagonal archimedeanOffDiagonalScale
    ring
  unfold archOffDiagonalBoundsFrom
  apply round_sound
  rw [hEntry, show c * d = c * p + (c * d - c * p) by ring]
  exact add_sound (scale_sound (archScale m n) (sub_sound hN hM)) hRem

private def sqrtTwo : Bounds := (1.41421356237309504880, 1.41421356237309504881)

private theorem sqrtTwo_sound : Encloses sqrtTwo (Real.sqrt 2) := by
  unfold sqrtTwo Encloses
  push_cast
  exact ⟨(Real.le_sqrt (by norm_num) (by norm_num)).mpr (by norm_num),
    (Real.sqrt_le_left (by norm_num)).mpr (by norm_num)⟩

private def poleScale : Bounds := mul (sub expOne expInv) (inv sqrtTwo)

private theorem poleScale_sound : Encloses poleScale (2 * Real.sinh 1 / Real.sqrt 2) := by
  have h := mul_sound (sub_sound expOne_sound expInv_sound)
    (inv_sound sqrtTwo_sound (by norm_num [sqrtTwo]))
  unfold poleScale
  convert h using 1
  rw [Real.sinh_eq, Real.exp_neg]
  ring

/-- The signed pole column on the same dyadic grid as the physical entries. -/
def poleBounds (bits n : ℕ) : Bounds :=
  round bits (scale ((-1 : ℚ) ^ (n + 1))
    (mul (mul poleScale (omega n)) (inv (denominator n (1 / 2)))))

theorem poleBounds_sound (bits : ℕ) {n : ℕ} (hn : 0 < n) :
    Encloses (poleBounds bits n) (literalPoleEntry 2 n) := by
  rw [literalPoleEntry_eq 2 (by norm_num) hn]
  unfold poleBounds
  apply round_sound
  have h := scale_sound ((-1 : ℚ) ^ (n + 1)) (mul_sound
    (mul_sound poleScale_sound (omega_sound n))
    (inv_sound (denominator_sound n (1 / 2)) (denominator_pos n (by norm_num))))
  convert h using 1
  unfold sinePoleCoefficient
  push_cast
  norm_num
  have hSqrt : Real.sqrt 2 ≠ 0 := Real.sqrt_ne_zero'.mpr (by norm_num)
  have hDen : 1 / 4 + frequency 2 n ^ 2 ≠ 0 := by positivity
  field_simp [hSqrt, hDen]

private def correctionTerm (n j : ℕ) : Bounds :=
  neg (mul (omegaSq n) (mul (boundaryTerm n j) (inv (denominator n (rate j)))))

private theorem correctionTerm_sound (n j : ℕ) :
    Encloses (correctionTerm n j) (sineBoundaryTerm 2 n j) := by
  have h := neg_sound (mul_sound (omegaSq_sound n) (mul_sound (boundaryTerm_sound n j)
    (inv_sound (denominator_sound n (rate j)) (denominator_pos n (rate_pos j)))))
  rw [sineBoundaryTerm_eq_exponential 2 (by norm_num)]
  unfold correctionTerm
  convert h using 1
  change -(2 * frequency 2 n ^ 2 * (1 - Real.exp (-(2 * (2 * (j : ℝ) + 1 / 2) * 2)))) /
      (2 * ((2 * (j : ℝ) + 1 / 2) ^ 2 + frequency 2 n ^ 2) ^ 2) = _
  unfold boundarySignalTerm
  push_cast [rate]
  change _ = -(frequency 2 n ^ 2 * ((1 - Real.exp (-2 * (2 * (j : ℝ) + 1 / 2) * 2)) /
    ((2 * (j : ℝ) + 1 / 2) ^ 2 + frequency 2 n ^ 2) *
      ((2 * (j : ℝ) + 1 / 2) ^ 2 + frequency 2 n ^ 2)⁻¹))
  rw [show -(2 * (2 * (j : ℝ) + 1 / 2) * 2) = -2 * (2 * (j : ℝ) + 1 / 2) * 2 by ring]
  have hDen : (2 * (j : ℝ) + 1 / 2) ^ 2 + frequency 2 n ^ 2 ≠ 0 := by positivity
  field_simp [hDen]

private def correctionRadius (n K : ℕ) : ℚ := (omegaSq n).2 / (48 * ((K : ℚ) - 1) ^ 3)

private def correctionBounds (bits K n : ℕ) : Bounds :=
  add (sum (Finset.range K) (fun j => round bits (correctionTerm n j))) (-correctionRadius n K, 0)

private theorem correctionBounds_sound (bits : ℕ) {K n : ℕ} (hK : 1 < K) (hn : 0 < n) :
    Encloses (correctionBounds bits K n) (∑' j, sineBoundaryTerm 2 n j) := by
  let p := ∑ j ∈ Finset.range K, sineBoundaryTerm 2 n j
  let value := ∑' j, sineBoundaryTerm 2 n j
  have hSum := hasSum_sineBoundaryTerm 2 (by norm_num) hn
  have hTail := abs_sineArchimedeanEntry_sub_partialSum_le 2 (by norm_num) hn K hK
  have hErr : value - p = sineArchimedeanEntry 2 (gammaConstant 1 0) 0 n n -
      (gammaConstant 1 0 + periodicMultiplier 0 (frequency 2 n) + p) := by
    dsimp only [value]
    rw [hSum.tsum_eq]
    ring
  have hTailHi : value - p ≤ 0 := by
    dsimp only [value, p]
    rw [← hSum.summable.sum_add_tsum_nat_add K, add_sub_cancel_left]
    exact tsum_nonpos (fun j => sineBoundaryTerm_nonpos 2 (by norm_num) n (j + K))
  have hKreal : (1 : ℝ) < K := by exact_mod_cast hK
  have hRad : frequency 2 n ^ 2 / (48 * ((K : ℝ) - 1) ^ 3) ≤
      (correctionRadius n K : ℝ) := by
    unfold correctionRadius
    push_cast
    exact div_le_div_of_nonneg_right (omegaSq_sound n).2 (by positivity)
  have hTailLo : -(correctionRadius n K : ℝ) ≤ value - p := by
    rw [hErr]
    have h := (abs_le.mp hTail).1
    norm_num at h
    linarith only [h, hRad]
  have hRem : Encloses (-correctionRadius n K, 0) (value - p) := by
    simpa only [Encloses, Rat.cast_neg, Rat.cast_zero] using And.intro hTailLo hTailHi
  have hPart : Encloses (sum (Finset.range K) (fun j => round bits (correctionTerm n j))) p :=
    sum_sound (Finset.range K) (fun j _ => round_sound bits (correctionTerm_sound n j))
  change Encloses (correctionBounds bits K n) value
  rw [show value = p + (value - p) by ring]
  exact add_sound hPart hRem

private def multiplierTermBounds (n j : ℕ) : Bounds :=
  scale (2 / rate j) (mul (omegaSq n) (inv (denominator n (rate j))))

private theorem multiplierTermBounds_sound (n j : ℕ) :
    Encloses (multiplierTermBounds n j) (periodicMultiplierTerm 0 (frequency 2 n) j) := by
  have h := scale_sound (2 / rate j) (mul_sound (omegaSq_sound n)
    (inv_sound (denominator_sound n (rate j)) (denominator_pos n (rate_pos j))))
  unfold multiplierTermBounds
  convert h using 1
  rw [periodicMultiplierTerm, PeriodicBoundary.multiplierSummand]
  have hRate : multiplierRate 0 (j : ℝ) = (rate j : ℝ) := by simp [rate, multiplierRate]
  rw [hRate]
  push_cast
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

private def logTaylor (x : ℚ) : ℚ :=
  -(∑ j ∈ Finset.range 24, (-x) ^ (j + 1) / ((j : ℚ) + 1))

private def logRadius (x : ℚ) : ℚ := x ^ (25 : ℕ) / (1 - x)

private theorem logTaylor_sound {x : ℚ} (hx : 0 ≤ x) (hx' : x < 1) :
    Encloses (logTaylor x - logRadius x, logTaylor x + logRadius x) (Real.log (1 + (x : ℝ))) := by
  have hNonneg : (0 : ℝ) ≤ (x : ℝ) := by exact_mod_cast hx
  have hlt : (x : ℝ) < 1 := by exact_mod_cast hx'
  have hAbs : |-(x : ℝ)| = (x : ℝ) := by rw [abs_neg, abs_of_nonneg hNonneg]
  have h := Real.abs_log_sub_add_sum_range_le (x := -(x : ℝ)) (by simpa [hAbs] using hlt) 24
  rw [hAbs, sub_neg_eq_add, abs_le] at h
  unfold Encloses
  simp only [logTaylor, logRadius, Rat.cast_add, Rat.cast_sub, Rat.cast_neg, Rat.cast_div,
    Rat.cast_pow, Rat.cast_one, Rat.cast_sum, Rat.cast_natCast]
  constructor <;> linarith only [h.1, h.2]

private def tailRatio (n K : ℕ) : Bounds :=
  ((omegaSq n).1 / rate K ^ 2, (omegaSq n).2 / rate K ^ 2)

private theorem tailRatio_sound (n K : ℕ) :
    Encloses (tailRatio n K) (frequency 2 n ^ 2 / multiplierRate 0 K ^ 2) := by
  have hRate : multiplierRate 0 (K : ℝ) = (rate K : ℝ) := by simp [rate, multiplierRate]
  rw [hRate]
  obtain ⟨hLo, hHi⟩ := omegaSq_sound n
  unfold Encloses tailRatio
  push_cast
  exact ⟨div_le_div_of_nonneg_right hLo (sq_nonneg _), div_le_div_of_nonneg_right hHi (sq_nonneg _)⟩

private theorem tailRatio_upper_lt {n K : ℕ} (hK : 1024 ≤ K) (hn : n ≤ 512) : (tailRatio n K).2 < 1 := by
  have hnQ : (n : ℚ) ≤ 512 := by exact_mod_cast hn
  have hKQ : (1024 : ℚ) ≤ K := by exact_mod_cast hK
  have hw0 : 0 ≤ (omega n).2 := by unfold omega piBounds; positivity
  have hRate : 0 < rate K := by unfold rate; positivity
  have hFreq : (omega n).2 < rate K := by
    unfold omega rate piBounds
    nlinarith only [hnQ, hKQ]
  change (omega n).2 ^ 2 / rate K ^ 2 < 1
  apply (div_lt_iff₀ (sq_pos_of_pos hRate)).mpr
  rw [one_mul]
  exact pow_lt_pow_left₀ hFreq hw0 (by decide : 2 ≠ 0)

private def multiplierIntegralBounds (n K : ℕ) : Bounds :=
  let a := tailRatio n K
  ((logTaylor a.1 - logRadius a.1) / 2, (logTaylor a.2 + logRadius a.2) / 2)

private theorem multiplierIntegralBounds_sound {n K : ℕ} (hK : 1024 ≤ K) (hn : n ≤ 512) :
    Encloses (multiplierIntegralBounds n K) (periodicMultiplierTailIntegral 0 (frequency 2 n) K) := by
  obtain ⟨hLo, hHi⟩ := tailRatio_sound n K
  have hlo0 : 0 ≤ (tailRatio n K).1 := by unfold tailRatio omegaSq; positivity
  have hhi0 : 0 ≤ (tailRatio n K).2 := by unfold tailRatio omegaSq; positivity
  have hUpper := tailRatio_upper_lt hK hn
  have hLower : (tailRatio n K).1 < 1 :=
    lt_of_le_of_lt (by exact_mod_cast hLo.trans hHi) hUpper
  have hLogLo := (logTaylor_sound hlo0 hLower).1
  have hLogHi := (logTaylor_sound hhi0 hUpper).2
  have hMonLo := Real.log_le_log (by exact_mod_cast (show 0 < 1 + (tailRatio n K).1 by linarith))
    (add_le_add_right hLo 1)
  have hMonHi := Real.log_le_log (by positivity :
    0 < 1 + frequency 2 n ^ 2 / multiplierRate 0 K ^ 2) (add_le_add_right hHi 1)
  unfold Encloses multiplierIntegralBounds periodicMultiplierTailIntegral
  push_cast at hLogLo hLogHi ⊢
  constructor <;> linarith only [hLogLo, hLogHi, hMonLo, hMonHi]

private def multiplierBounds (bits K n : ℕ) : Bounds :=
  add (sum (Finset.range K) (fun j => round bits (multiplierTermBounds n j)))
    (add (multiplierIntegralBounds n K) (0, (multiplierTermBounds n K).2))

private theorem multiplierBounds_sound (bits : ℕ) {K n : ℕ} (hK : 1024 ≤ K) (hn : n ≤ 512) :
    Encloses (multiplierBounds bits K n) (periodicMultiplier 0 (frequency 2 n)) := by
  let p := periodicMultiplierPartial 0 (frequency 2 n) K
  let i := periodicMultiplierTailIntegral 0 (frequency 2 n) K
  let value := periodicMultiplier 0 (frequency 2 n)
  obtain ⟨hLo, hHi⟩ := periodicMultiplier_truncation_bounds 0 (frequency 2 n) K
  have hFirst := (multiplierTermBounds_sound n K).2
  have hErr : Encloses (0, (multiplierTermBounds n K).2) (value - (p + i)) := by
    unfold Encloses
    push_cast
    dsimp only [value, p, i]
    constructor <;> linarith only [hLo, hHi, hFirst]
  have hPart : Encloses (sum (Finset.range K) (fun j => round bits (multiplierTermBounds n j))) p :=
    sum_sound (Finset.range K) (fun j _ => round_sound bits (multiplierTermBounds_sound n j))
  change Encloses (multiplierBounds bits K n) value
  rw [show value = p + (i + (value - (p + i))) by ring]
  exact add_sound hPart (add_sound (multiplierIntegralBounds_sound hK hn) hErr)

private def logTwo : Bounds := (0.6931471803, 0.6931471808)
private def logThree : Bounds := (1.0986122885, 1.0986122888)

private theorem logTwo_sound : Encloses logTwo (Real.log 2) :=
  ⟨Real.log_two_gt_d9.le, Real.log_two_lt_d9.le⟩

private theorem logThree_sound : Encloses logThree (Real.log 3) :=
  ⟨Real.log_three_gt_d9.le, Real.log_three_lt_d9.le⟩

private def piRatio : Bounds := (piBounds.1 / 3 - 1, piBounds.2 / 3 - 1)

private def logPi : Bounds := add logThree
  (logTaylor piRatio.1 - logRadius piRatio.1, logTaylor piRatio.2 + logRadius piRatio.2)

private theorem logPi_sound : Encloses logPi (Real.log Real.pi) := by
  let x := Real.pi / 3 - 1
  have hRatio : Encloses piRatio x := by
    unfold Encloses piRatio x
    push_cast
    exact ⟨sub_le_sub_right (div_le_div_of_nonneg_right piBounds_sound.1 (by norm_num)) 1,
      sub_le_sub_right (div_le_div_of_nonneg_right piBounds_sound.2 (by norm_num)) 1⟩
  have hLo := (logTaylor_sound (by norm_num [piRatio, piBounds] : 0 ≤ piRatio.1)
    (by norm_num [piRatio, piBounds] : piRatio.1 < 1)).1
  have hHi := (logTaylor_sound (by norm_num [piRatio, piBounds] : 0 ≤ piRatio.2)
    (by norm_num [piRatio, piBounds] : piRatio.2 < 1)).2
  have hMonLo := Real.log_le_log (by norm_num [piRatio, piBounds] : 0 < 1 + (piRatio.1 : ℝ))
    (add_le_add_right hRatio.1 1)
  have hMonHi := Real.log_le_log (by dsimp [x]; linarith [Real.pi_pos] : 0 < 1 + x)
    (add_le_add_right hRatio.2 1)
  have hLog : Encloses
      (logTaylor piRatio.1 - logRadius piRatio.1, logTaylor piRatio.2 + logRadius piRatio.2)
        (Real.log (1 + x)) := ⟨hLo.trans hMonLo, hMonHi.trans hHi⟩
  have hValue : Real.log Real.pi = Real.log 3 + Real.log (1 + x) := by
    dsimp [x]
    rw [show 1 + (Real.pi / 3 - 1) = Real.pi / 3 by ring,
      Real.log_div Real.pi_pos.ne' (by norm_num)]
    ring
  rw [hValue]
  exact add_sound logThree_sound hLog

private def harmonicGrid (n : ℕ) : Bounds :=
  sum (Finset.range n) (fun i => round 48 (point (((i + 1 : ℕ) : ℚ)⁻¹)))

private theorem harmonicGrid_sound (n : ℕ) : Encloses (harmonicGrid n) (harmonic n : ℝ) := by
  unfold harmonicGrid harmonic
  push_cast
  exact sum_sound (Finset.range n) (fun i _ => by
    simpa only [Rat.cast_inv, Rat.cast_natCast, Rat.cast_add, Rat.cast_one, Nat.cast_add, Nat.cast_one] using
      round_sound 48 (point_sound (((i + 1 : ℕ) : ℚ)⁻¹)))

private def eulerBounds : Bounds :=
  add (sub (harmonicGrid 1024) (scale 10 logTwo)) (-1 / 1024, 0)

private theorem eulerBounds_sound : Encloses eulerBounds Real.eulerMascheroniConstant := by
  let base := (harmonic 1024 : ℝ) - Real.log 1024
  have hLog : Real.log 1024 = 10 * Real.log 2 := by
    rw [show (1024 : ℝ) = 2 ^ (10 : ℕ) by norm_num, Real.log_pow]
    norm_num
  have hBase : Encloses (sub (harmonicGrid 1024) (scale 10 logTwo)) base := by
    unfold base
    rw [hLog]
    exact sub_sound (harmonicGrid_sound 1024) (by simpa using scale_sound 10 logTwo_sound)
  have hLower := Real.eulerMascheroniSeq_lt_eulerMascheroniConstant 1024
  have hUpper := Real.eulerMascheroniConstant_lt_eulerMascheroniSeq' 1024
  unfold Real.eulerMascheroniSeq at hLower
  unfold Real.eulerMascheroniSeq' at hUpper
  norm_num only [Nat.cast_ofNat, ne_eq, Nat.reduceEqDiff, not_false_eq_true, ite_eq_right] at hUpper
  norm_num only [Nat.cast_ofNat, Nat.cast_one] at hLower
  have hStep := Real.log_le_sub_one_of_pos (x := (1025 : ℝ) / 1024) (by norm_num)
  rw [Real.log_div (by norm_num) (by norm_num)] at hStep
  have hRem : Encloses (-1 / 1024, 0) (Real.eulerMascheroniConstant - base) := by
    unfold Encloses base
    push_cast
    constructor <;> linarith only [hLower, hUpper, hStep]
  unfold eulerBounds
  rw [show Real.eulerMascheroniConstant = base + (Real.eulerMascheroniConstant - base) by ring]
  exact add_sound hBase hRem

/-- The literal zeta gamma constant with the Euler constant enclosed by a rounded harmonic sum. -/
def gammaConstantBounds : Bounds :=
  neg (add logPi (add eulerBounds (add (scale (1 / 2) piBounds) (scale 3 logTwo))))

theorem gammaConstantBounds_sound : Encloses gammaConstantBounds (gammaConstant 1 0) := by
  have h := neg_sound (add_sound logPi_sound (add_sound eulerBounds_sound
    (add_sound (scale_sound (1 / 2) piBounds_sound) (scale_sound 3 logTwo_sound))))
  rw [gammaConstant_one_zero_eq]
  unfold gammaConstantBounds
  convert h using 1
  push_cast
  ring

/-- Rational enclosures of the complete gamma diagonal, including its signed image tail. -/
def gammaDiagonalBounds (bits K n : ℕ) : Bounds :=
  round bits (add gammaConstantBounds (add (multiplierBounds bits K n) (correctionBounds bits K n)))

theorem gammaDiagonalBounds_sound (bits : ℕ) {K n : ℕ}
    (hK : 1024 ≤ K) (hn : 0 < n) (hn' : n ≤ 512) :
    Encloses (gammaDiagonalBounds bits K n) (sineArchimedeanEntry 2 (gammaConstant 1 0) 0 n n) := by
  have hSum := (hasSum_sineBoundaryTerm 2 (by norm_num) hn).tsum_eq
  rw [show sineArchimedeanEntry 2 (gammaConstant 1 0) 0 n n =
      gammaConstant 1 0 + (periodicMultiplier 0 (frequency 2 n) + ∑' j, sineBoundaryTerm 2 n j) by
    linarith only [hSum]]
  exact round_sound bits (add_sound gammaConstantBounds_sound (add_sound (multiplierBounds_sound bits hK hn')
    (correctionBounds_sound bits (by omega) hn)))

/-- Sum a bounded slice of the rounded terms, starting at the given index. -/
private def boundsSlice (f : ℕ → Bounds) (start count : ℕ) : Bounds :=
  sum (Finset.range count) (fun j => f (start + j))

private theorem boundsSlice_split (f : ℕ → Bounds) (start left right : ℕ) :
    boundsSlice f start (left + right) =
      add (boundsSlice f start left) (boundsSlice f (start + left) right) := by
  simp only [boundsSlice, sum, Finset.sum_range_add, Nat.add_assoc, add]

/-- A finite slice of the shared boundary sum for bounded kernel evaluations. -/
def boundaryBoundsSlice (bits n start count : ℕ) : Bounds :=
  boundsSlice (fun j => round bits (boundaryTerm n j)) start count

theorem boundaryPartialBounds_eq_slice (bits n K : ℕ) :
    boundaryPartialBounds bits n K = boundaryBoundsSlice bits n 0 K := by
  simp only [boundaryPartialBounds, boundaryBoundsSlice, boundsSlice, Nat.zero_add]

theorem boundaryBoundsSlice_split (bits n start left right : ℕ) :
    boundaryBoundsSlice bits n start (left + right) =
      add (boundaryBoundsSlice bits n start left) (boundaryBoundsSlice bits n (start + left) right) :=
  boundsSlice_split _ _ _ _

/-- Finite slices of the multiplier and image correction, respectively. -/
def gammaBoundsSlice (bits n start count : ℕ) : Bounds × Bounds :=
  (boundsSlice (fun j => round bits (multiplierTermBounds n j)) start count,
   boundsSlice (fun j => round bits (correctionTerm n j)) start count)

theorem gammaBoundsSlice_split (bits n start left right : ℕ) :
    gammaBoundsSlice bits n start (left + right) =
      let l := gammaBoundsSlice bits n start left
      let r := gammaBoundsSlice bits n (start + left) right
      (add l.1 r.1, add l.2 r.2) := by
  simp only [gammaBoundsSlice, boundsSlice_split]

/-- Assemble the diagonal from its two rounded sums and the exact rational tail allowances. -/
def gammaDiagonalBoundsFrom (bits K n : ℕ) (constant : Bounds) (slices : Bounds × Bounds) : Bounds :=
  let multiplier := add slices.1 (add (multiplierIntegralBounds n K) (0, (multiplierTermBounds n K).2))
  let correction := add slices.2 (-correctionRadius n K, 0)
  round bits (add constant (add multiplier correction))

theorem gammaDiagonalBounds_eq_slices (bits K n : ℕ) :
    gammaDiagonalBounds bits K n =
      gammaDiagonalBoundsFrom bits K n gammaConstantBounds (gammaBoundsSlice bits n 0 K) := by
  simp only [gammaDiagonalBounds, gammaDiagonalBoundsFrom, gammaBoundsSlice, boundsSlice, Nat.zero_add,
    multiplierBounds, correctionBounds]

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoGammaPoleObservations
