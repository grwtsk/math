/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Lean v4.34.1 / Mathlib d13f23b7.
Elaboration, kernel replay, transitive axiom audit: NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFinitePrimeObservations
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.Tactic

/-!
# Adaptive rational logarithm observations for actual prime powers

The existing physical Weil source uses a fixed 24-term dyadic
logarithm approximation and a fixed square-root enclosure.
A fixed absolute error budget cannot certify an arbitrarily
large Alpoge-type one-sided X^(1/2+eps) source comparison by
the triangle inequality. This module varies the logarithm
precision and observes TRUE Lambda(n) directly via its
prime-power condition and least prime factor, avoiding the
fixed square-root approximation altogether.

All source equalities are RH-independent. No final theorem,
zeta zero, or analytic estimate is imported or assumed.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.AdaptivePrimeLogObservations

open GRWTSK.NumberTheory.WeilQuadraticForm.FinitePrimeObservations
open ArithmeticFunction

/-- Rational truncated expansion of log(1-x), at arbitrary precision. -/
def logOneMinusHatTerms (bits : ℕ) (x : ℚ) : ℚ :=
  -(∑ i ∈ Finset.range bits, x ^ (i + 1) / (i + 1 : ℕ))

/-- The same exact geometric tail bound as the original 24-term source,
uniform at arbitrary positive precision. -/
theorem logOneMinus_terms_error (bits : ℕ) {x : ℚ}
    (hx : 0 ≤ x) (hx' : x ≤ 1 / 2) :
    |Real.log (1 - (x : ℝ)) - (logOneMinusHatTerms bits x : ℝ)|
      ≤ (1 / 2 : ℝ) ^ bits := by
  have hx0R : (0 : ℝ) ≤ (x : ℝ) := by exact_mod_cast hx
  have hxR : (x : ℝ) ≤ 1 / 2 := by
    simpa only [Rat.cast_div, Rat.cast_one, Rat.cast_ofNat] using
      (Rat.cast_le (K := ℝ)).2 hx'
  have hAbs : |(x : ℝ)| ≤ 1 / 2 :=
    (abs_of_nonneg hx0R).symm ▸ hxR
  have h := Real.abs_log_sub_add_sum_range_le
    (hAbs.trans_lt (by norm_num)) bits
  have hEq : Real.log (1 - (x : ℝ)) -
      (logOneMinusHatTerms bits x : ℝ) =
      (∑ i ∈ Finset.range bits,
        (x : ℝ) ^ (i + 1) / ((i : ℝ) + 1)) +
        Real.log (1 - (x : ℝ)) := by
    simp [logOneMinusHatTerms, add_comm]
  rw [hEq]
  calc
    _ ≤ (1 / 2 : ℝ) ^ (bits + 1) / (1 - |(x : ℝ)|) := by
      exact h.trans (div_le_div_of_nonneg_right
        (pow_le_pow_left₀ (abs_nonneg _) hAbs (bits + 1))
        (by linarith))
    _ ≤ (1 / 2 : ℝ) ^ (bits + 1) / (1 / 2) :=
      div_le_div_of_nonneg_left (by positivity) (by norm_num) (by linarith)
    _ = (1 / 2 : ℝ) ^ bits := by
      rw [pow_succ]
      ring

def logTwoHatTerms (bits : ℕ) : ℚ :=
  -logOneMinusHatTerms bits (1 / 2)

theorem logTwo_terms_error (bits : ℕ) :
    |Real.log 2 - (logTwoHatTerms bits : ℝ)| ≤
      (1 / 2 : ℝ) ^ bits := by
  have h := logOneMinus_terms_error bits
    (x := 1 / 2) (by norm_num) (by norm_num)
  have hEq : Real.log 2 - (logTwoHatTerms bits : ℝ) =
      -(Real.log (1 - ((1 / 2 : ℚ) : ℝ)) -
        (logOneMinusHatTerms bits (1 / 2) : ℝ)) := by
    rw [logTwoHatTerms, Rat.cast_neg,
      show 1 - ((1 / 2 : ℚ) : ℝ) = (2 : ℝ)⁻¹ by norm_num,
      Real.log_inv]
    ring
  rw [hEq, abs_neg]
  exact h

/-- The dyadic reduction itself is the existing unmodified
FinitePrimeObservations.logFraction/logScale. -/
def logHatRawTerms (bits n : ℕ) : ℚ :=
  logOneMinusHatTerms bits (logFraction n) +
    (logScale n : ℚ) * logTwoHatTerms bits

/-- Scale-sensitive adaptive precision. For bits=24 the leading
geometric precision matches the old source, without fixed rounding. -/
theorem logHatRaw_terms_error (bits n : ℕ) (hn : 0 < n) :
    |Real.log (n : ℝ) - (logHatRawTerms bits n : ℝ)| ≤
      ((logScale n : ℝ) + 1) / (2 : ℝ) ^ bits := by
  have hnLo : (2 : ℚ) ^ Nat.log 2 n ≤ n := by
    exact_mod_cast Nat.pow_log_le_self 2 hn.ne'
  have hnHi : (n : ℚ) ≤ 2 ^ logScale n := by
    exact_mod_cast (Nat.lt_pow_succ_log_self (by decide : 1 < 2) n).le
  have hx : 0 ≤ logFraction n := by
    unfold logFraction
    exact sub_nonneg.mpr ((div_le_one (by positivity)).mpr hnHi)
  have hx' : logFraction n ≤ 1 / 2 := by
    unfold logFraction
    have h : (1 / 2 : ℚ) ≤ (n : ℚ) / 2 ^ logScale n := by
      apply (le_div_iff₀ (by positivity)).2
      rw [logScale, pow_succ]
      linarith only [hnLo]
    linarith
  have hnEq : (n : ℝ) =
      (1 - (logFraction n : ℝ)) * 2 ^ logScale n := by
    simp only [logFraction, Rat.cast_sub, Rat.cast_one, Rat.cast_div,
      Rat.cast_natCast, Rat.cast_pow, Rat.cast_ofNat, sub_sub_cancel]
    symm
    exact div_mul_cancel₀ (n : ℝ) (pow_ne_zero _ (by norm_num : (2 : ℝ) ≠ 0))
  have hLog : Real.log (n : ℝ) =
      Real.log (1 - (logFraction n : ℝ)) +
        (logScale n : ℝ) * Real.log 2 := by
    rw [hnEq, Real.log_mul (by linarith) (by positivity), Real.log_pow]
  rw [hLog]
  push_cast [logHatRawTerms]
  rw [show Real.log (1 - (logFraction n : ℝ)) +
      (logScale n : ℝ) * Real.log 2 -
      ((logOneMinusHatTerms bits (logFraction n) : ℝ) +
        (logScale n : ℝ) * (logTwoHatTerms bits : ℝ)) =
      (Real.log (1 - (logFraction n : ℝ)) -
         (logOneMinusHatTerms bits (logFraction n) : ℝ)) +
      (logScale n : ℝ) * (Real.log 2 -
        (logTwoHatTerms bits : ℝ)) by ring]
  refine (abs_add_le _ _).trans ?_
  rw [abs_mul, abs_of_nonneg (Nat.cast_nonneg (α := ℝ) (logScale n))]
  calc
    _ ≤ (1 / 2 : ℝ) ^ bits +
        (logScale n : ℝ) * ((1 / 2 : ℝ) ^ bits) :=
        add_le_add (logOneMinus_terms_error bits hx hx')
          (mul_le_mul_of_nonneg_left (logTwo_terms_error bits)
            (Nat.cast_nonneg _))
    _ = _ := by
        rw [div_eq_mul_inv]
        ring

/-- An adaptive arithmetic Lambda table is defined by the TRUE
prime-power predicate and true least prime factor. No arbitrary
character phases or zero data enter this table. -/
def adaptiveLambdaHat (bits n : ℕ) : ℚ :=
  if IsPrimePow n then logHatRawTerms bits n.minFac else 0

/-- Exact scale-aware relative log error in each prime-power atom.
The original zero entries are retained, not approximated by a
floating point placeholder. -/
theorem adaptiveLambda_error (bits n : ℕ) (hn : 0 < n) :
    |(adaptiveLambdaHat bits n : ℝ) -
        (ArithmeticFunction.vonMangoldt n : ℝ)| ≤
      ((logScale n.minFac : ℝ) + 1) / (2 : ℝ) ^ bits := by
  unfold adaptiveLambdaHat
  rw [ArithmeticFunction.vonMangoldt_apply]
  split_ifs with hprime
  · have h := logHatRaw_terms_error bits n.minFac (Nat.minFac_pos n)
    simpa only [abs_sub_comm] using h
  · simp
    positivity

end GRWTSK.NumberTheory.WeilQuadraticForm.AdaptivePrimeLogObservations
