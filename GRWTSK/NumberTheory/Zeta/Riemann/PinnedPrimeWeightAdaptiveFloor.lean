/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightRatioSandwich
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Adaptive Bertrand floor and dyadic Chebyshev cancellation

The preceding ratio sandwich used the constant one-prime floor

  log 2 / (2X).A Bertrand witness actually satisfies `X < p ≤ 2X`, hence `X+1 ≤ p`.  The
same argument therefore gives the sharper scale-adaptive floor

  log (X+1) / (2X).This module also audits the pinned global Chebyshev bounds.  On the dyadic
window their leading terms cancel exactly because `log 4 = 2 log 2`.  The
resulting raw window lower expression is nonpositive, so those two global
bounds alone do not furnish a positive full-window coefficient floor.

The adaptive one-prime floor improves the cubic ratio majorant by a factor
`log(X+1)^2`, but it still does not prove a scale-uniform ratio estimate.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
PRIME_WINDOW_THETA_IDENTITY_DEFINED /
CHEBYSHEV_DYADIC_CANCELLATION_DEFINED /
ADAPTIVE_BERTRAND_FLOOR_DEFINED /
LOG_IMPROVED_CUBIC_MAJORANT_DEFINED /
UNIFORM_RATIO_BOUND_OPEN / NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open Chebyshev
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy

/-- The repository's literal prime window is the difference between the two
nested prime initial segments. -/
theorem thetaPrimeWindow_eq_primesLE_sdiff (X : ℕ) :
    thetaPrimeWindow X =
      Nat.primesLE (2 * X) \ Nat.primesLE X := by
  ext p
  simp only [thetaPrimeWindow, window, Finset.mem_filter,
    Finset.mem_Ioc, Finset.mem_sdiff, Nat.mem_primesLE]
  constructor
  · rintro ⟨⟨hXp, hp2X⟩, hpPrime⟩
    exact
      ⟨⟨hp2X, hpPrime⟩,
        fun hpX => (not_le_of_gt hXp) hpX.1⟩
  · rintro ⟨⟨hp2X, hpPrime⟩, hpNotX⟩
    have hXp : X < p := by
      by_contra hnot
      exact hpNotX ⟨Nat.le_of_not_gt hnot, hpPrime⟩
    exact ⟨⟨hXp, hp2X⟩, hpPrime⟩

/-- Exact logarithmic mass identity for the literal dyadic prime window. -/
theorem thetaPrimeWindow_sum_log_eq_theta_sub (X : ℕ) :
    (∑ p ∈ thetaPrimeWindow X, Real.log (p : ℝ)) =
      Chebyshev.theta (((2 * X : ℕ) : ℝ)) -
        Chebyshev.theta (X : ℝ) := by
  rw [thetaPrimeWindow_eq_primesLE_sdiff]
  rw [Chebyshev.theta_eq_sum_primesLE_log,
    Chebyshev.theta_eq_sum_primesLE_log]
  have hsubset : Nat.primesLE X ⊆ Nat.primesLE (2 * X) := by
    intro p hp
    rcases Nat.mem_primesLE.mp hp with ⟨hpX, hpPrime⟩
    exact Nat.mem_primesLE.mpr
      ⟨hpX.trans (by omega), hpPrime⟩
  exact Finset.sum_sdiff_eq_sub hsubset

/-- Raw lower expression obtained by combining the pinned global lower bound at
`2X` with the pinned global upper bound at `X`. -/
def pinnedPrimeWeightChebyshevRawFloor (X : ℕ) : ℝ :=
  2 * (X : ℝ) * Real.log 2 -
    Real.log (2 * (X : ℝ) + 1) -
    2 * Real.sqrt (2 * (X : ℝ)) *
      Real.log (2 * (X : ℝ)) -
    Real.log 4 * (X : ℝ)

/-- The raw Chebyshev expression is indeed a lower bound for the complete
logarithmic mass of the literal prime window. -/
theorem pinnedPrimeWeightChebyshevRawFloor_le_windowLogMass
    (X : ℕ) :
    pinnedPrimeWeightChebyshevRawFloor X ≤
      ∑ p ∈ thetaPrimeWindow X, Real.log (p : ℝ) := by
  rw [thetaPrimeWindow_sum_log_eq_theta_sub]
  have hlower := Chebyshev.theta_ge (2 * X)
  have hlower' :
      2 * (X : ℝ) * Real.log 2 -
          Real.log (2 * (X : ℝ) + 1) -
          2 * Real.sqrt (2 * (X : ℝ)) *
            Real.log (2 * (X : ℝ)) ≤
        Chebyshev.theta (((2 * X : ℕ) : ℝ)) := by
    simpa [Nat.cast_mul, Nat.cast_add] using hlower
  have hupper :
      Chebyshev.theta (X : ℝ) ≤
        Real.log 4 * (X : ℝ) :=
    Chebyshev.theta_le_log4_mul_x (Nat.cast_nonneg X)
  unfold pinnedPrimeWeightChebyshevRawFloor
  linarith

/-- Exact cancellation of the leading Chebyshev terms on a ratio-two window. -/
theorem pinnedPrimeWeightChebyshevRawFloor_eq_negativeErrors
    (X : ℕ) :
    pinnedPrimeWeightChebyshevRawFloor X =
      - Real.log (2 * (X : ℝ) + 1) -
        2 * Real.sqrt (2 * (X : ℝ)) *
          Real.log (2 * (X : ℝ)) := by
  have hlog4 : Real.log (4 : ℝ) = 2 * Real.log 2 := by
    calc
      Real.log (4 : ℝ) = Real.log ((2 : ℝ) ^ 2) := by norm_num
      _ = 2 * Real.log 2 := by
        rw [Real.log_pow]
        norm_num
  unfold pinnedPrimeWeightChebyshevRawFloor
  rw [hlog4]
  ring

/-- Consequently the available global Chebyshev bounds give no positive
full-window lower floor at the dyadic ratio. -/
theorem pinnedPrimeWeightChebyshevRawFloor_nonpositive
    (X : ℕ) :
    pinnedPrimeWeightChebyshevRawFloor X ≤ 0 := by
  rw [pinnedPrimeWeightChebyshevRawFloor_eq_negativeErrors]
  have hlogSucc :
      0 ≤ Real.log (2 * (X : ℝ) + 1) :=
    Real.log_nonneg (by nlinarith [show (0 : ℝ) ≤ (X : ℝ) from Nat.cast_nonneg X])
  rcases X.eq_zero_or_pos with rfl | hX
  · norm_num
  · have htwoX : (1 : ℝ) ≤ 2 * (X : ℝ) := by
      exact_mod_cast (show 1 ≤ 2 * X by omega)
    have hlogTwoX :
        0 ≤ Real.log (2 * (X : ℝ)) :=
      Real.log_nonneg htwoX
    have hsqrt :
        0 ≤ Real.sqrt (2 * (X : ℝ)) :=
      Real.sqrt_nonneg _
    nlinarith [mul_nonneg hsqrt hlogTwoX]

/-- The positive part of the raw Chebyshev lower expression is identically
zero. -/
theorem pinnedPrimeWeightChebyshevRawFloor_positivePart_eq_zero
    (X : ℕ) :
    max 0 (pinnedPrimeWeightChebyshevRawFloor X) = 0 := by
  exact max_eq_left
    (pinnedPrimeWeightChebyshevRawFloor_nonpositive X)

/-- Sharper one-prime floor obtained from `X+1 ≤ p ≤ 2X`. -/
def pinnedPrimeWeightAdaptiveBertrandFloor (X : ℕ) : ℝ :=
  Real.log ((X + 1 : ℕ) : ℝ) / (2 * (X : ℝ))

/-- The adaptive floor is strictly positive at every positive scale. -/
theorem pinnedPrimeWeightAdaptiveBertrandFloor_pos
    {X : ℕ} (hX : 0 < X) :
    0 < pinnedPrimeWeightAdaptiveBertrandFloor X := by
  unfold pinnedPrimeWeightAdaptiveBertrandFloor
  have hSucc : (1 : ℝ) < ((X + 1 : ℕ) : ℝ) := by
    exact_mod_cast (Nat.lt_succ_iff.mpr hX)
  have hXr : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast hX
  exact div_pos (Real.log_pos hSucc)
    (mul_pos (by norm_num) hXr)

/-- One actual Bertrand prime has coefficient at least the adaptive floor. -/
theorem exists_bertrandPrime_coefficient_ge_adaptiveFloor
    {X : ℕ} (hX : 0 < X) :
    ∃ p ∈ thetaPrimeWindow X,
      pinnedPrimeWeightAdaptiveBertrandFloor X ≤ coefficient p := by
  obtain ⟨p, hpPrime, hXp, hp2X⟩ :=
    Nat.exists_prime_lt_and_le_two_mul X (Nat.ne_of_gt hX)
  have hpWindow : p ∈ thetaPrimeWindow X :=
    prime_mem_thetaPrimeWindow hpPrime hXp hp2X
  refine ⟨p, hpWindow, ?_⟩
  rw [primeCoefficient_eq_log_div hpWindow]
  have hSuccP : X + 1 ≤ p := Nat.succ_le_iff.mpr hXp
  have hSuccPos : (0 : ℝ) < ((X + 1 : ℕ) : ℝ) := by
    positivity
  have hpPos : (0 : ℝ) < (p : ℝ) := by
    exact_mod_cast hpPrime.pos
  have hp2Xr : (p : ℝ) ≤ 2 * (X : ℝ) := by
    exact_mod_cast hp2X
  have hlogNonnegative :
      0 ≤ Real.log (((X + 1 : ℕ) : ℝ)) :=
    Real.log_nonneg (by
      exact_mod_cast (Nat.one_le_iff_ne_zero.mpr (by omega : X + 1 ≠ 0)))
  have hlogMonotone :
      Real.log (((X + 1 : ℕ) : ℝ)) ≤
        Real.log (p : ℝ) :=
    Real.log_le_log hSuccPos (by exact_mod_cast hSuccP)
  unfold pinnedPrimeWeightAdaptiveBertrandFloor
  calc
    Real.log (((X + 1 : ℕ) : ℝ)) / (2 * (X : ℝ))
        ≤ Real.log (((X + 1 : ℕ) : ℝ)) / (p : ℝ) :=
      div_le_div_of_nonneg_left
        hlogNonnegative hpPos hp2Xr
    _ ≤ Real.log (p : ℝ) / (p : ℝ) :=
      div_le_div_of_nonneg_right hlogMonotone hpPos.le

/-- The complete pinned amplitude dominates the adaptive Bertrand floor. -/
theorem pinnedPrimeWeightedAmplitude_ge_adaptiveBertrandFloor
    {X : ℕ} (hX : 0 < X) :
    pinnedPrimeWeightAdaptiveBertrandFloor X ≤
      pinnedPrimeWeightedAmplitude X := by
  obtain ⟨p, hpWindow, hpCoefficient⟩ :=
    exists_bertrandPrime_coefficient_ge_adaptiveFloor hX
  have hfactor :
      (1 : ℝ) ≤ |thetaError (p : ℝ)| + 1 := by
    linarith [abs_nonneg (thetaError (p : ℝ))]
  have hcoefficientTerm :
      coefficient p ≤
        coefficient p * (|thetaError (p : ℝ)| + 1) := by
    simpa using
      mul_le_mul_of_nonneg_left hfactor
        (primeCoefficient_nonnegative hpWindow)
  have htermSum :
      coefficient p * (|thetaError (p : ℝ)| + 1) ≤
        pinnedPrimeWeightedAmplitude X := by
    unfold pinnedPrimeWeightedAmplitude
    exact
      Finset.single_le_sum
        (fun q hq => pinnedPrimeWeightSummand_nonnegative hq)
        hpWindow
  exact hpCoefficient.trans (hcoefficientTerm.trans htermSum)

/-- Squared adaptive denominator floor. -/
theorem pinnedPrimeWeightAdaptiveBertrandFloor_sq_le_amplitude_sq
    {X : ℕ} (hX : 0 < X) :
    (pinnedPrimeWeightAdaptiveBertrandFloor X)^2 ≤
      (pinnedPrimeWeightedAmplitude X)^2 := by
  exact
    (sq_le_sq₀
      (le_of_lt (pinnedPrimeWeightAdaptiveBertrandFloor_pos hX))
      (le_of_lt
        (pinnedPrimeWeightedAmplitude_pos_of_ne_zero
          X (Nat.ne_of_gt hX)))).2
      (pinnedPrimeWeightedAmplitude_ge_adaptiveBertrandFloor hX)

/-- The adaptive floor strengthens the constant floor from the preceding
packet. -/
theorem pinnedPrimeWeightBertrandFloor_le_adaptiveBertrandFloor
    {X : ℕ} (hX : 0 < X) :
    pinnedPrimeWeightBertrandFloor X ≤
      pinnedPrimeWeightAdaptiveBertrandFloor X := by
  unfold pinnedPrimeWeightBertrandFloor
    pinnedPrimeWeightAdaptiveBertrandFloor
  have hden : (0 : ℝ) < 2 * (X : ℝ) := by
    positivity
  have hlog :
      Real.log (2 : ℝ) ≤
        Real.log (((X + 1 : ℕ) : ℝ)) := by
    apply Real.log_le_log (by norm_num)
    exact_mod_cast (show 2 ≤ X + 1 by omega)
  exact div_le_div_of_nonneg_right hlog hden.le

/-- Improved one-prime upper benchmark for the exact required-capacity ratio. -/
def pinnedPrimeWeightAdaptiveBertrandMajorant
    (X : ℕ) (v E : ℝ) : ℝ :=
  (X : ℝ) * pinnedPrimeWeightRemainingTarget v E /
    (pinnedPrimeWeightAdaptiveBertrandFloor X)^2

/-- The exact required capacity lies below the adaptive one-prime majorant. -/
theorem pinnedPrimeWeightRequiredCapacity_le_adaptiveBertrandMajorant
    {X : ℕ} (hX : 0 < X) (v E : ℝ) :
    pinnedPrimeWeightRequiredCapacity X v E ≤
      pinnedPrimeWeightAdaptiveBertrandMajorant X v E := by
  unfold pinnedPrimeWeightRequiredCapacity
    pinnedPrimeWeightAdaptiveBertrandMajorant
  have hnum :
      0 ≤ (X : ℝ) * pinnedPrimeWeightRemainingTarget v E :=
    mul_nonneg (Nat.cast_nonneg X)
      (pinnedPrimeWeightRemainingTarget_nonnegative v E)
  have hfloorSq :
      0 < (pinnedPrimeWeightAdaptiveBertrandFloor X)^2 := by
    exact sq_pos_of_ne_zero
      (ne_of_gt (pinnedPrimeWeightAdaptiveBertrandFloor_pos hX))
  exact
    div_le_div_of_nonneg_left hnum hfloorSq
      (pinnedPrimeWeightAdaptiveBertrandFloor_sq_le_amplitude_sq hX)

/-- Exact logarithmically improved cubic normalization. -/
theorem pinnedPrimeWeightAdaptiveBertrandMajorant_eq_logImprovedCubic
    {X : ℕ} (hX : 0 < X) (v E : ℝ) :
    pinnedPrimeWeightAdaptiveBertrandMajorant X v E =
      4 * (X : ℝ)^3 * pinnedPrimeWeightRemainingTarget v E /
        (Real.log (((X + 1 : ℕ) : ℝ)))^2 := by
  have hXr : (X : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt hX)
  have hlog : Real.log (((X + 1 : ℕ) : ℝ)) ≠ 0 := by
    have hSucc : (1 : ℝ) < ((X + 1 : ℕ) : ℝ) := by
      exact_mod_cast (Nat.lt_succ_iff.mpr hX)
    exact ne_of_gt (Real.log_pos hSucc)
  unfold pinnedPrimeWeightAdaptiveBertrandMajorant
    pinnedPrimeWeightAdaptiveBertrandFloor
  field_simp [hXr, hlog]
  ring

/-- The adaptive majorant is no larger than the preceding constant-floor
Bertrand majorant. -/
theorem pinnedPrimeWeightAdaptiveBertrandMajorant_le_bertrandMajorant
    {X : ℕ} (hX : 0 < X) (v E : ℝ) :
    pinnedPrimeWeightAdaptiveBertrandMajorant X v E ≤
      pinnedPrimeWeightBertrandMajorant X v E := by
  unfold pinnedPrimeWeightAdaptiveBertrandMajorant
    pinnedPrimeWeightBertrandMajorant
  have hnum :
      0 ≤ (X : ℝ) * pinnedPrimeWeightRemainingTarget v E :=
    mul_nonneg (Nat.cast_nonneg X)
      (pinnedPrimeWeightRemainingTarget_nonnegative v E)
  have hconstantPos :
      0 < (pinnedPrimeWeightBertrandFloor X)^2 :=
    sq_pos_of_ne_zero
      (ne_of_gt (pinnedPrimeWeightBertrandFloor_pos hX))
  have hsquares :
      (pinnedPrimeWeightBertrandFloor X)^2 ≤
        (pinnedPrimeWeightAdaptiveBertrandFloor X)^2 := by
    exact
      (sq_le_sq₀
        (le_of_lt (pinnedPrimeWeightBertrandFloor_pos hX))
        (le_of_lt
          (pinnedPrimeWeightAdaptiveBertrandFloor_pos hX))).2
        (pinnedPrimeWeightBertrandFloor_le_adaptiveBertrandFloor hX)
  exact div_le_div_of_nonneg_left hnum hconstantPos hsquares

end GRWTSK.RiemannHypothesis
