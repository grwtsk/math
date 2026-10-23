/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Historical centered_ibp content authenticated from f047ec7814a03bf2b6175fc3b96a465ff2b86804.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenModewiseReadout
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

theorem fourierModeValue_hasDerivAt_thin
    {k : ℤ} (hk : k ≠ 0) (t : ℝ) :
    HasDerivAt (fourierModeValue k) (thinFourierSlope k t) t := by
  simpa [thinFourierSlope] using fourierModeValue_hasDerivAt hk t

@[simp] theorem fourierModeValue_zero_thin (k : ℤ) :
    fourierModeValue k 0 = 0 := by
  unfold fourierModeValue
  ring

@[simp] theorem fourierModeValue_one_thin (k : ℤ) :
    fourierModeValue k 1 = 0 := by
  unfold fourierModeValue fourierModePrimitive
  have hp : ((1 : ℝ) : AddCircle (1 : ℝ)) = 0 := by
    simpa using (AddCircle.coe_period (p := (1 : ℝ)))
  rw [hp]
  ring

/-- One step atom integrated against the Fourier derivative. -/
theorem integral_step_mul_thinFourierSlope
    {k : ℤ} (hk : k ≠ 0)
    {r : ℝ} (hr0 : 0 ≤ r) (hr1 : r ≤ 1) :
    (∫ t in (0 : ℝ)..1,
      (thinHistoricalStep r t : ℂ) * thinFourierSlope k t) =
      - fourierModeValue k r := by
  unfold thinHistoricalStep
  rw [intervalIntegral.integral_indicator]
  · rw [← intervalIntegral.integral_of_le hr1]
    have hFTC :=
      intervalIntegral.integral_eq_sub_of_hasDerivAt
        (fun t ht => fourierModeValue_hasDerivAt_thin hk t)
        ((fourierModeSlope_continuous k).intervalIntegrable r 1)
    simpa [thinFourierSlope] using hFTC
  · exact measurableSet_Ici

/-- Logarithmic background integration by parts. -/
theorem integral_log_mul_thinFourierSlope
    {k : ℤ} (hk : k ≠ 0) :
    (∫ t in (0 : ℝ)..1,
      (Real.log (1 + t) : ℂ) * thinFourierSlope k t) =
      - ∫ t in (0 : ℝ)..1,
        fourierModeValue k t / (1 + (t : ℂ)) := by
  have hlog (t : ℝ) (ht : t ∈ Set.uIcc (0 : ℝ) 1) :
      HasDerivAt (fun s : ℝ => (Real.log (1 + s) : ℂ))
        ((1 : ℂ) / (1 + (t : ℂ))) t := by
    have htpos : 0 < 1 + t := by
      rw [Set.uIcc_of_le (by norm_num)] at ht
      linarith [ht.1]
    simpa using
      ((Real.hasDerivAt_log (ne_of_gt htpos)).comp t
        ((hasDerivAt_id t).const_add 1)).ofReal
  have hphi (t : ℝ) (_ht : t ∈ Set.uIcc (0 : ℝ) 1) :
      HasDerivAt (fourierModeValue k) (thinFourierSlope k t) t :=
    fourierModeValue_hasDerivAt_thin hk t
  have hibp := intervalIntegral.integral_mul_deriv_eq_deriv_mul hlog hphi
  simpa [div_eq_mul_inv, mul_comm, mul_left_comm, mul_assoc] using hibp.symm

/-- Constant center pairs to zero with the derivative because the primitive
vanishes at both endpoints. -/
theorem integral_const_mul_thinFourierSlope_zero
    {k : ℤ} (hk : k ≠ 0) (c : ℝ) :
    (∫ t in (0 : ℝ)..1, (c : ℂ) * thinFourierSlope k t) = 0 := by
  rw [← intervalIntegral.integral_const_mul]
  have hFTC :=
    intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun t ht => fourierModeValue_hasDerivAt_thin hk t)
      ((fourierModeSlope_continuous k).intervalIntegrable 0 1)
  rw [hFTC]
  simp

/-- The complete finite-source integration-by-parts identity. -/
theorem thinGreenArithmeticFourierCoordinate_eq_derivative_pairing
    {X : ℕ} (hX : 1 ≤ X)
    {k : ℤ} (hk : k ≠ 0) :
    thinGreenArithmeticFourierCoordinate X k =
      ∫ t in (0 : ℝ)..1,
        thinHistoricalGreenResidual X t * thinFourierSlope k t := by
  unfold thinHistoricalGreenResidual
  rw [cumulative_eq_atomic_sub_log]
  have hloc : ∀ n ∈ centeredGreenWindow X,
      0 ≤ centeredGreenLocation X n ∧ centeredGreenLocation X n ≤ 1 := by
    intro n hn
    unfold centeredGreenWindow centeredGreenLocation at *
    have hnI := Finset.mem_Ioc.mp hn
    have hXr : (0 : ℝ) < X := by exact_mod_cast hX
    constructor
    · have hnR : (X : ℝ) < n := by exact_mod_cast hnI.1
      have : 1 ≤ (n : ℝ) / X := (one_le_div hXr).mpr hnR.le
      linarith
    · have hnR : (n : ℝ) ≤ 2 * X := by exact_mod_cast hnI.2
      have : (n : ℝ) / X ≤ 2 := (div_le_iff₀ hXr).2 (by linarith)
      linarith
  rw [intervalIntegral.integral_sub, intervalIntegral.integral_sub]
  have hatom :
      (∫ t in (0 : ℝ)..1,
        (thinHistoricalAtomicCumulative X t : ℂ) * thinFourierSlope k t) =
      - centeredGreenPrimeCoordinate X (fourierModeValue k) := by
    unfold thinHistoricalAtomicCumulative centeredGreenPrimeCoordinate
    rw [intervalIntegral.integral_finset_sum]
    apply Finset.sum_congr rfl
    intro n hn
    rw [intervalIntegral.integral_const_mul,
      integral_step_mul_thinFourierSlope hk (hloc n hn).1 (hloc n hn).2]
    ring
  have hlog := integral_log_mul_thinFourierSlope hk
  have hcenter := integral_const_mul_thinFourierSlope_zero hk (center X)
  rw [hatom, hlog, hcenter]
  unfold thinGreenArithmeticFourierCoordinate
  ring

theorem thinGreenArithmeticFourierCoordinate_eq_historicalCoeff
    {X : ℕ} (hX : 1 ≤ X) (k : ℤ) :
    thinGreenArithmeticFourierCoordinate X k =
      thinHistoricalGreenFourierCoeff X k := by
  by_cases hk : k = 0
  · subst k
    rw [thinHistoricalGreenFourierCoeff_zero hX]
    simp [thinGreenArithmeticFourierCoordinate,
      fourierModeValue, fourierModePrimitive,
      greenFourierBackgroundCoordinate, centeredGreenPrimeCoordinate]
  · exact thinGreenArithmeticFourierCoordinate_eq_fourierCoeff_of_ibp
      hX hk (thinGreenArithmeticFourierCoordinate_eq_derivative_pairing hX hk)

end GRWTSK.RiemannHypothesis
