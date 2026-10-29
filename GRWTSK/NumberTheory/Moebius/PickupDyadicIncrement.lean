/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
import GRWTSK.NumberTheory.Moebius.PickupTwoPrimeBound

/-!
# Exact signed dyadic increments and the available two-prime local allowance

At M=2^j the increment contains exactly the M complete births M,...,2M-1.
The five prescribed Mobius moments, their mixed product, and their complete
self-diagonal subtraction are retained. Updating a coefficient by one birth
cancels the new self-diagonal exactly; only its signed old/new interference
remains. The endpoint defect of the increment is a signed curvature tail whose
absolute value is at most 1/(8*M), rather than two unrelated quarter allowances.

The existing two-prime waveform supplier bounds the energy on this interval by
the integral of its complete squared waveform envelope; the simpler explicit
B(T_(j+1))-B(T_j) allowance is also retained. The actual diagonal difference is
still subtracted. The leading exponential rate is ONE. No bound of exponent
below one, all-positive
rate supplier, or unconditional RH is asserted. Increasing a positive-block
majorant to three primes is obstructed by the maintained exact theorem
`PickupTwoPrimeBound.third_prime_counterexample`.

SOURCE_PROOF_CANDIDATE / compilation, fresh replay, transitive axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupDyadicIncrement

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupCellQuadratic
open GRWTSK.NumberTheory.Moebius.PickupRefinementCriterion
open GRWTSK.NumberTheory.Moebius.PickupSignedQuadrature
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.PickupTwoPrimeBound
open GRWTSK.Analysis.ErrorBounds.ExponentialQuadraticIntegral
open GRWTSK.Analysis.ErrorBounds.ExponentialQuadraticChord

/-- The new self-square cancels the new diagonal, leaving signed interference. -/
theorem coefficient0_step (N : ℕ) :
    coefficient0 (N + 1) - coefficient0 N =
      8 * moebiusReal (N + 1) * (Real.sqrt (N + 1 : ℕ))⁻¹ * weightedMass N := by
  simp only [coefficient0, weightedMass_step, squareMoment_step]
  ring

/-- Both old/new mixed products remain, with no absolute value. -/
theorem coefficient1_step (N : ℕ) :
    coefficient1 (N + 1) - coefficient1 N =
      -8 * moebiusReal (N + 1) *
        (weightedMass N + (Real.sqrt (N + 1 : ℕ))⁻¹ * signedMass N) := by
  simp only [coefficient1, weightedMass_step, signedMass_step, squareMoment_step]
  ring

theorem coefficient2_step (N : ℕ) :
    coefficient2 (N + 1) - coefficient2 N =
      8 * moebiusReal (N + 1) * signedMass N := by
  simp only [coefficient2, signedMass_step, squareMoment_step]
  ring

/-- The literal source-birth increment: the new response times the old signed sum. -/
theorem polynomial_step (N : ℕ) (x : ℝ) :
    polynomial (N + 1) x - polynomial N x =
      8 * moebiusReal (N + 1) * ((Real.sqrt (N + 1 : ℕ))⁻¹ - x) *
        (weightedMass N - x * signedMass N) := by
  calc
    polynomial (N + 1) x - polynomial N x =
        (coefficient0 (N + 1) - coefficient0 N) +
          (coefficient1 (N + 1) - coefficient1 N) * x +
          (coefficient2 (N + 1) - coefficient2 N) * x ^ 2 := by
      unfold polynomial
      ring
    _ = _ := by
      rw [coefficient0_step, coefficient1_step, coefficient2_step]
      ring

/-- Literal five-moment residual, including Q_2, Q_1, Q_0 and the A_N*M_N term. -/
def signedBirthResidual (N : ℕ) : ℝ :=
  4 * ((weightedMass N ^ 2 - squareMoment N 2) -
    (signedMass N ^ 2 - squareMoment N 0) *
      (Real.sqrt (N : ℝ))⁻¹ * (Real.sqrt ((N + 1 : ℕ) : ℝ))⁻¹) *
        Real.log (1 + 1 / (N : ℝ)) +
  (-16 * (weightedMass N * signedMass N - squareMoment N 1) +
    8 * (signedMass N ^ 2 - squareMoment N 0) *
      ((Real.sqrt (N : ℝ))⁻¹ + (Real.sqrt ((N + 1 : ℕ) : ℝ))⁻¹)) *
    ((Real.sqrt (N : ℝ))⁻¹ - (Real.sqrt ((N + 1 : ℕ) : ℝ))⁻¹)

theorem birthExpression_eq_signedBirthResidual (N : ℕ) :
    birthExpression N = signedBirthResidual N := by
  unfold birthExpression signedBirthResidual coefficient0 coefficient1 coefficient2
  ring

private theorem dyadic_sum_sub (f : ℕ → ℝ) (j : ℕ) :
    (∑ k ∈ Finset.range (2 ^ (j + 1) - 1), f (k + 1)) -
      (∑ k ∈ Finset.range (2 ^ j - 1), f (k + 1)) =
        ∑ k ∈ Finset.range (2 ^ j), f (2 ^ j + k) := by
  have hpos : 0 < 2 ^ j := by positivity
  have hlen : 2 ^ (j + 1) - 1 = (2 ^ j - 1) + 2 ^ j := by
    rw [pow_succ]
    omega
  rw [hlen, Finset.sum_range_add]
  have he : (∑ k ∈ Finset.range (2 ^ j), f (2 ^ j - 1 + k + 1)) =
      ∑ k ∈ Finset.range (2 ^ j), f (2 ^ j + k) := by
    apply Finset.sum_congr rfl
    intro k _
    congr 1
    omega
  rw [he]
  ring

/-- Exact cutoff: neither the birth 2^j nor the birth 2^(j+1)-1 is lost. -/
theorem dyadicBirthSum_sub (j : ℕ) :
    dyadicBirthSum (j + 1) - dyadicBirthSum j =
      ∑ k ∈ Finset.range (2 ^ j), birthExpression (2 ^ j + k) :=
  dyadic_sum_sub birthExpression j

/-- This finite signed sum is the remaining arithmetic increment, not its modulus. -/
theorem dyadicBirthSum_sub_eq_residual (j : ℕ) :
    dyadicBirthSum (j + 1) - dyadicBirthSum j =
      ∑ k ∈ Finset.range (2 ^ j), signedBirthResidual (2 ^ j + k) := by
  rw [dyadicBirthSum_sub]
  exact Finset.sum_congr rfl (fun k _ => birthExpression_eq_signedBirthResidual _)

/-- Exact integral on a complete birth; the chord defect is kept separately. -/
def exactBirthValue (N : ℕ) : ℝ :=
  cellValue N (Real.log (N : ℝ)) (Real.log ((N + 1 : ℕ) : ℝ))

/-- The zero-width terminal cell is removed from the exact integral as well. -/
theorem cross_dyadic_eq_birthValue (j : ℕ) :
    pickupCross (dyadicTime j) =
      ∑ k ∈ Finset.range (2 ^ j - 1), exactBirthValue (k + 1) := by
  let M : ℕ := 2 ^ j
  let T : ℝ := dyadicTime j
  let f : ℕ → ℝ := fun k => cellValue (k + 1) (eventCut T k) (eventCut T (k + 1))
  have hM : 0 < M := by dsimp [M]; positivity
  have hsize : M - 1 + 1 = M := by omega
  have hfloor : ⌊Real.exp T⌋₊ = M := dyadic_cutoff j
  have hlog : Real.log (M : ℝ) = T := log_dyadic_cutoff j
  have hlast : eventCut T M = T := by simpa only [hfloor] using eventCut_last T
  have hterminal : f (M - 1) = 0 := by
    have hleft := eventCut_at_active (T := T) (k := M - 1)
      (by rw [hfloor]; omega)
    dsimp only [f]
    rw [hleft, hsize, hlog, hlast]
    exact value_same _ _ _ _
  have hsplit : (∑ k ∈ Finset.range M, f k) =
      (∑ k ∈ Finset.range (M - 1), f k) + f (M - 1) := by
    have h := Finset.sum_range_succ f (M - 1)
    rw [hsize] at h
    exact h
  rw [← canonicalValue_eq_cross (dyadicTime_nonnegative j)]
  change (∑ k ∈ Finset.range ⌊Real.exp T⌋₊, f k) = _
  rw [hfloor, hsplit, hterminal, add_zero]
  apply Finset.sum_congr rfl
  intro k hk
  have hk' := Finset.mem_range.mp hk
  have hleft := eventCut_at_active (T := T) (k := k) (by rw [hfloor]; omega)
  have hright := eventCut_at_active (T := T) (k := k + 1) (by rw [hfloor]; omega)
  dsimp only [f, exactBirthValue]
  rw [hleft, hright]

theorem cross_dyadic_sub (j : ℕ) :
    pickupCross (dyadicTime (j + 1)) - pickupCross (dyadicTime j) =
      ∑ k ∈ Finset.range (2 ^ j), exactBirthValue (2 ^ j + k) := by
  rw [cross_dyadic_eq_birthValue, cross_dyadic_eq_birthValue]
  exact dyadic_sum_sub exactBirthValue j

/-- Signed local curvature tail; no cancellation is discarded in this identity. -/
theorem dyadic_increment_signed_defect (j : ℕ) :
    (dyadicBirthSum (j + 1) - dyadicBirthSum j) -
      (pickupCross (dyadicTime (j + 1)) - pickupCross (dyadicTime j)) =
      ∑ k ∈ Finset.range (2 ^ j), coefficient2 (2 ^ j + k) *
        curvatureMass (Real.log ((2 ^ j + k : ℕ) : ℝ))
          (Real.log ((2 ^ j + k + 1 : ℕ) : ℝ)) := by
  rw [dyadicBirthSum_sub, cross_dyadic_sub, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro k _
  have hN : 1 ≤ 2 ^ j + k := by
    have : 0 < 2 ^ j := by positivity
    omega
  rw [← full_birth_formula hN]
  exact cellChord_exact_defect _ _ _

/-- Return the exact increment to the original energy, original diagonal, and
signed endpoint correction. No mixed term or terminal-cell error is omitted. -/
theorem dyadic_increment_energy_identity (j : ℕ) :
    dyadicBirthSum (j + 1) - dyadicBirthSum j =
      (pickupEnergy (dyadicTime (j + 1)) - pickupEnergy (dyadicTime j)) -
        (pickupDiagonal (dyadicTime (j + 1)) - pickupDiagonal (dyadicTime j)) +
        ∑ k ∈ Finset.range (2 ^ j), coefficient2 (2 ^ j + k) *
          curvatureMass (Real.log ((2 ^ j + k : ℕ) : ℝ))
            (Real.log ((2 ^ j + k + 1 : ℕ) : ℝ)) := by
  have hdefect := dyadic_increment_signed_defect j
  have hleft := pickupEnergy_eq_diagonal_add_cross (dyadicTime_nonnegative j)
  have hright := pickupEnergy_eq_diagonal_add_cross (dyadicTime_nonnegative (j + 1))
  linarith

/-- Adjacent endpoint errors share the old cells exactly. Their price decays as 2^-j. -/
theorem dyadic_increment_error (j : ℕ) :
    |(dyadicBirthSum (j + 1) - dyadicBirthSum j) -
      (pickupCross (dyadicTime (j + 1)) - pickupCross (dyadicTime j))| ≤
      1 / (8 * ((2 ^ j : ℕ) : ℝ)) := by
  let M : ℕ := 2 ^ j
  have hM : 1 ≤ M := by dsimp [M]; positivity
  have hMR : (0 : ℝ) < M := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hM)
  rw [dyadicBirthSum_sub, cross_dyadic_sub, ← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ k ∈ Finset.range M, |birthExpression (M + k) - exactBirthValue (M + k)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ k ∈ Finset.range M,
        1 / (4 * ((M : ℝ) + k) * ((M : ℝ) + k + 1)) := by
      apply Finset.sum_le_sum
      intro k _
      have hN : 1 ≤ M + k := by omega
      have hpos : (0 : ℝ) < ((M + k : ℕ) : ℝ) := by
        exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hN)
      have horder : Real.log ((M + k : ℕ) : ℝ) ≤
          Real.log ((M + k + 1 : ℕ) : ℝ) :=
        Real.log_le_log hpos (by exact_mod_cast Nat.le_succ (M + k))
      rw [← full_birth_formula hN]
      simpa only [exactBirthValue, Nat.cast_add, Nat.cast_one] using
        cellChord_error hN horder le_rfl le_rfl
    _ = 1 / (4 * (M : ℝ)) - 1 / (4 * ((M : ℝ) + M)) :=
      reciprocal_budget M M hM
    _ = 1 / (8 * (M : ℝ)) := by field_simp [hMR.ne']; ring

/-- Keep the complete existing waveform envelope, including its negative
exponential term, before squaring and integrating on the added interval. -/
theorem pickupEnergy_sub_full_two_prime_bound {S T : ℝ}
    (hS : 0 ≤ S) (hST : S ≤ T) :
    pickupEnergy T - pickupEnergy S ≤
      ∫ u in S..T,
        ((2 / 9) * Real.exp (u / 2) + 26 / 9 -
          (28 / 9) * Real.exp (-u / 2)) ^ 2 := by
  have hpoint (u : ℝ) (hu : u ∈ Icc S T) :
      wholePickup u ^ 2 ≤
        ((2 / 9) * Real.exp (u / 2) + 26 / 9 -
          (28 / 9) * Real.exp (-u / 2)) ^ 2 := by
    have h := wholePickup_two_prime_bound (hS.trans hu.1)
    have hs := (sq_le_sq₀ (abs_nonneg (wholePickup u))
      ((abs_nonneg (wholePickup u)).trans h)).mpr h
    simpa only [sq_abs] using hs
  have hc : Continuous (fun u : ℝ =>
      ((2 / 9) * Real.exp (u / 2) + 26 / 9 -
        (28 / 9) * Real.exp (-u / 2)) ^ 2) := by fun_prop
  have hsource := intervalIntegral.integral_add_adjacent_intervals
    (wholePickup_sq_intervalIntegrable 0 S) (wholePickup_sq_intervalIntegrable S T)
  have he : (∫ u in S..T, wholePickup u ^ 2) = pickupEnergy T - pickupEnergy S := by
    change pickupEnergy S + (∫ u in S..T, wholePickup u ^ 2) = pickupEnergy T at hsource
    linarith
  rw [← he]
  exact intervalIntegral.integral_mono_on hST
    (wholePickup_sq_intervalIntegrable S T) (hc.intervalIntegrable S T) hpoint

/-- Integrate the established two-prime bound only on the interval actually added.
The leading exponent stays one; no polynomial is absorbed into another exponent. -/
theorem pickupEnergy_sub_two_prime_bound {S T : ℝ} (hS : 0 ≤ S) (hST : S ≤ T) :
    pickupEnergy T - pickupEnergy S ≤ energyBound T - energyBound S := by
  have hpoint (u : ℝ) (hu : u ∈ Icc S T) :
      wholePickup u ^ 2 ≤ ((2 / 9) * Real.exp (u / 2) + 26 / 9) ^ 2 := by
    have h := wholePickup_two_prime_bound (hS.trans hu.1)
    have hdrop : |wholePickup u| ≤ (2 / 9) * Real.exp (u / 2) + 26 / 9 := by
      linarith [Real.exp_pos (-u / 2)]
    have hs := (sq_le_sq₀ (abs_nonneg (wholePickup u)) (by positivity)).mpr hdrop
    simpa only [sq_abs] using hs
  have hc : Continuous (fun u : ℝ => ((2 / 9) * Real.exp (u / 2) + 26 / 9) ^ 2) := by
    fun_prop
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (a := S) (b := T) (fun u _ => energyBound_derivative u) (hc.intervalIntegrable S T)
  have hsource := intervalIntegral.integral_add_adjacent_intervals
    (wholePickup_sq_intervalIntegrable 0 S) (wholePickup_sq_intervalIntegrable S T)
  have he : (∫ u in S..T, wholePickup u ^ 2) = pickupEnergy T - pickupEnergy S := by
    change pickupEnergy S + (∫ u in S..T, wholePickup u ^ 2) = pickupEnergy T at hsource
    linarith
  have hm := intervalIntegral.integral_mono_on hST
    (wholePickup_sq_intervalIntegrable S T) (hc.intervalIntegrable S T) hpoint
  rw [he, hi] at hm
  exact hm

/-- The octave increment of the existing energy envelope, with its leading rate
visible. The constant exp(log(2)/2) equals sqrt(2); no numerical approximation. -/
theorem energyBound_log_two_increment (T : ℝ) :
    energyBound (T + Real.log 2) - energyBound T =
      (4 / 81) * Real.exp T +
        (208 / 81) * (Real.exp (Real.log 2 / 2) - 1) * Real.exp (T / 2) +
          (676 / 81) * Real.log 2 := by
  have hhalf : Real.exp ((T + Real.log 2) / 2) =
      Real.exp (T / 2) * Real.exp (Real.log 2 / 2) := by
    rw [show (T + Real.log 2) / 2 = T / 2 + Real.log 2 / 2 by ring, Real.exp_add]
  unfold energyBound
  rw [Real.exp_add, Real.exp_log (by norm_num : (0 : ℝ) < 2), hhalf]
  ring

/-- The available envelope has a nonzero rate-one term on every octave.
An exponent below one must come from new control of the actual signed source. -/
theorem energyBound_log_two_increment_lower (T : ℝ) :
    (4 / 81) * Real.exp T ≤ energyBound (T + Real.log 2) - energyBound T := by
  rw [energyBound_log_two_increment]
  have hh : 0 ≤ Real.exp (Real.log 2 / 2) - 1 :=
    sub_nonneg.mpr (Real.one_le_exp_iff.mpr (by linarith [log_two_positive]))
  have hp := mul_nonneg hh (Real.exp_pos (T / 2)).le
  nlinarith [log_two_positive]

theorem dyadicTime_succ (j : ℕ) : dyadicTime (j + 1) = dyadicTime j + Real.log 2 := by
  unfold dyadicTime GRWTSK.Analysis.AsymptoticAnalysis.ArithmeticGridSubexponential.time
  push_cast
  ring

/-- Literal lower bound for the increment allowance, not for the source increment. -/
theorem octaveAllowance_lower (j : ℕ) :
    (4 / 81) * ((2 ^ j : ℕ) : ℝ) ≤
      energyBound (dyadicTime (j + 1)) - energyBound (dyadicTime j) := by
  rw [dyadicTime_succ, ← exp_dyadicTime]
  exact energyBound_log_two_increment_lower _

/-- Actual signed increment bound with its complete diagonal difference and paid
endpoint tail. This is a rate-one allowance, not the missing bound (A). -/
theorem dyadic_increment_two_prime_bound (j : ℕ) :
    dyadicBirthSum (j + 1) - dyadicBirthSum j ≤
      energyBound (dyadicTime (j + 1)) - energyBound (dyadicTime j) -
        (pickupDiagonal (dyadicTime (j + 1)) - pickupDiagonal (dyadicTime j)) +
          1 / (8 * ((2 ^ j : ℕ) : ℝ)) := by
  have hT : dyadicTime j ≤ dyadicTime (j + 1) := by
    unfold dyadicTime GRWTSK.Analysis.AsymptoticAnalysis.ArithmeticGridSubexponential.time
    push_cast
    nlinarith [log_two_positive]
  have henergy := pickupEnergy_sub_two_prime_bound (dyadicTime_nonnegative j) hT
  have hleft := pickupEnergy_eq_diagonal_add_cross (dyadicTime_nonnegative j)
  have hright := pickupEnergy_eq_diagonal_add_cross (dyadicTime_nonnegative (j + 1))
  have herror := (abs_le.mp (dyadic_increment_error j)).2
  linarith

/-- The stronger current two-prime increment bound keeps every term in the
waveform envelope and the exact diagonal difference. It still supplies no
estimate at a positive exponent below one. -/
theorem dyadic_increment_full_two_prime_bound (j : ℕ) :
    dyadicBirthSum (j + 1) - dyadicBirthSum j ≤
      (∫ u in (dyadicTime j)..(dyadicTime (j + 1)),
        ((2 / 9) * Real.exp (u / 2) + 26 / 9 -
          (28 / 9) * Real.exp (-u / 2)) ^ 2) -
        (pickupDiagonal (dyadicTime (j + 1)) - pickupDiagonal (dyadicTime j)) +
          1 / (8 * ((2 ^ j : ℕ) : ℝ)) := by
  have hT : dyadicTime j ≤ dyadicTime (j + 1) := by
    rw [dyadicTime_succ]
    linarith [log_two_positive]
  have henergy := pickupEnergy_sub_full_two_prime_bound (dyadicTime_nonnegative j) hT
  have hleft := pickupEnergy_eq_diagonal_add_cross (dyadicTime_nonnegative j)
  have hright := pickupEnergy_eq_diagonal_add_cross (dyadicTime_nonnegative (j + 1))
  have herror := (abs_le.mp (dyadic_increment_error j)).2
  linarith

end GRWTSK.NumberTheory.Moebius.PickupDyadicIncrement
