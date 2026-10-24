/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularExpansion
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact finite evaluation of the Goldbach symmetric singular window

Every ordered pair frequency in the finite singular kernel is integrated
exactly over the symmetric real window. The zero-frequency antidiagonal gives
the explicit diagonal mass

`2 * ρ * (N + 1)`,

while every nonzero frequency is retained through an exact sine quotient.
The finite oscillatory correction and its absolute-value budget are exposed
separately.

No asymptotic estimate, prime-progression estimate, denominator-tail estimate,
minor-arc bound, or Goldbach theorem is supplied.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularEvaluation

open scoped BigOperators Real
open Set MeasureTheory intervalIntegral
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientFactorization
open GRWTSK.NumberTheory.Primes.GoldbachPeriodizedSingularWindow
open GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularExpansion

noncomputable section

/-- The exact real value of one integer character integrated over `[-r,r]`.
The zero frequency is kept separate from the nonzero sine quotient. -/
def goldbachCharacterWindowValue
    (r : ℝ) (m : ℤ) : ℝ :=
  if m = 0 then
    2 * r
  else
    2 * Real.sin ((2 * Real.pi * (m : ℝ)) * r) /
      (2 * Real.pi * (m : ℝ))

/-- The exact symmetric interval integral of one integer character. -/
def goldbachSymmetricCharacterIntegral
    (r : ℝ) (m : ℤ) : ℂ :=
  ∫ β in -r..r, unitCharacter m β

/-- For a nonzero frequency, the declared character-window value has the
usual `sin(2πmr)/(πm)` form. -/
theorem goldbachCharacterWindowValue_of_ne_zero
    {r : ℝ} {m : ℤ} (hm : m ≠ 0) :
    goldbachCharacterWindowValue r m =
      Real.sin ((2 * Real.pi * (m : ℝ)) * r) /
        (Real.pi * (m : ℝ)) := by
  have hmR : (m : ℝ) ≠ 0 := by
    exact_mod_cast hm
  unfold goldbachCharacterWindowValue
  rw [if_neg hm]
  field_simp [Real.pi_ne_zero, hmR]

@[simp]
theorem goldbachCharacterWindowValue_zero (r : ℝ) :
    goldbachCharacterWindowValue r 0 = 2 * r := by
  simp [goldbachCharacterWindowValue]

/-- The symmetric character-window value is even in the integer frequency. -/
theorem goldbachCharacterWindowValue_neg
    (r : ℝ) (m : ℤ) :
    goldbachCharacterWindowValue r (-m) =
      goldbachCharacterWindowValue r m := by
  by_cases hm : m = 0
  · subst m
    simp
  · have hneg : -m ≠ 0 := neg_ne_zero.mpr hm
    rw [goldbachCharacterWindowValue_of_ne_zero hneg,
      goldbachCharacterWindowValue_of_ne_zero hm]
    push_cast
    rw [show
        (2 * Real.pi * (-(m : ℝ))) * r =
          -((2 * Real.pi * (m : ℝ)) * r) by ring,
      Real.sin_neg]
    ring

/-- Exact integration of every integer character on a symmetric interval. -/
theorem goldbachSymmetricCharacterIntegral_formula
    (r : ℝ) (m : ℤ) :
    goldbachSymmetricCharacterIntegral r m =
      (goldbachCharacterWindowValue r m : ℂ) := by
  by_cases hm : m = 0
  · subst m
    simp [goldbachSymmetricCharacterIntegral,
      goldbachCharacterWindowValue]
    ring
  · let c : ℝ := 2 * Real.pi * (m : ℝ)
    have hmR : (m : ℝ) ≠ 0 := by
      exact_mod_cast hm
    have hc : c ≠ 0 := by
      unfold c
      exact mul_ne_zero
        (mul_ne_zero (by norm_num) Real.pi_ne_zero) hmR
    have hfun :
        (fun β : ℝ => unitCharacter m β) =
          fun β : ℝ => Complex.exp ((c * β : ℝ) * Complex.I) := by
      funext β
      simp only [unitCharacter, fourier_coe_apply]
      congr 1
      unfold c
      push_cast
      ring
    unfold goldbachSymmetricCharacterIntegral
    rw [hfun]
    have hscale :=
      intervalIntegral.integral_comp_mul_left
        (f := fun t : ℝ => Complex.exp (t * Complex.I))
        (a := -r) (b := r) hc
    rw [hscale]
    rw [show c * -r = -(c * r) by ring]
    rw [integral_exp_mul_I_eq_sin (c * r)]
    simp only [goldbachCharacterWindowValue, if_neg hm,
      Complex.real_smul]
    norm_cast
    unfold c
    ring

/-- The set-integral definition of the symmetric singular window is the
corresponding oriented interval integral. -/
theorem goldbachSymmetricRealSingularIntegral_eq_interval
    (Q N q : ℕ) :
    goldbachSymmetricRealSingularIntegral Q N q =
      ∫ β in
          -goldbachRationalArcRadius Q N q..
          goldbachRationalArcRadius Q N q,
        goldbachFiniteSingularKernel N β := by
  have hr :
      0 ≤ goldbachRationalArcRadius Q N q :=
    goldbachRationalArcRadius_nonneg Q N q
  unfold goldbachSymmetricRealSingularIntegral
  rw [MeasureTheory.integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (neg_le_self hr)]

/-- Exact pair-by-pair evaluation of the finite symmetric singular integral. -/
theorem goldbachSymmetricRealSingularIntegral_eq_pairEvaluation
    (Q N q : ℕ) :
    goldbachSymmetricRealSingularIntegral Q N q =
      ∑ uv ∈ goldbachSingularPairBox N,
        (goldbachCharacterWindowValue
          (goldbachRationalArcRadius Q N q)
          (goldbachSingularPairFrequency N uv) : ℂ) := by
  rw [goldbachSymmetricRealSingularIntegral_eq_interval]
  simp_rw [goldbachFiniteSingularKernel_eq_pairSum]
  rw [intervalIntegral.integral_finsetSum]
  · apply Finset.sum_congr rfl
    intro uv huv
    exact goldbachSymmetricCharacterIntegral_formula
      (goldbachRationalArcRadius Q N q)
      (goldbachSingularPairFrequency N uv)
  · intro uv huv
    exact
      (continuous_unitCharacter
        (goldbachSingularPairFrequency N uv)).intervalIntegrable
          (-goldbachRationalArcRadius Q N q)
          (goldbachRationalArcRadius Q N q)

/-- The explicit zero-frequency contribution from the `N + 1` diagonal
ordered pairs. -/
def goldbachSingularDiagonalMain
    (Q N q : ℕ) : ℝ :=
  2 * goldbachRationalArcRadius Q N q * (N + 1 : ℝ)

/-- The diagonal mass simplifies exactly to `2Q/q` for every positive
denominator; the factor `N + 1` cancels the declared radius denominator. -/
theorem goldbachSingularDiagonalMain_eq_two_mul_div
    {Q N q : ℕ} (hq : 0 < q) :
    goldbachSingularDiagonalMain Q N q =
      2 * (Q : ℝ) / (q : ℝ) := by
  have hqR : (q : ℝ) ≠ 0 := by
    exact_mod_cast hq.ne'
  have hN : ((N + 1 : ℕ) : ℝ) ≠ 0 := by
    positivity
  unfold goldbachSingularDiagonalMain
    goldbachRationalArcRadius
  push_cast
  field_simp [hqR, hN]

/-- Every nonzero ordered-pair frequency, integrated exactly and retained as a
finite signed correction. -/
def goldbachSingularOscillatoryCorrection
    (Q N q : ℕ) : ℂ :=
  ∑ uv ∈ goldbachSingularOffDiagonalPairs N,
    (goldbachCharacterWindowValue
      (goldbachRationalArcRadius Q N q)
      (goldbachSingularPairFrequency N uv) : ℂ)

/-- The complete finite absolute-value budget for the oscillatory correction. -/
def goldbachSingularOscillatoryBudget
    (Q N q : ℕ) : ℝ :=
  ∑ uv ∈ goldbachSingularOffDiagonalPairs N,
    |goldbachCharacterWindowValue
      (goldbachRationalArcRadius Q N q)
      (goldbachSingularPairFrequency N uv)|

/-- Exact evaluation as diagonal mass plus the complete finite oscillatory
correction. -/
theorem goldbachSymmetricRealSingularIntegral_eq_main_add_correction
    (Q N q : ℕ) :
    goldbachSymmetricRealSingularIntegral Q N q =
      (goldbachSingularDiagonalMain Q N q : ℂ) +
        goldbachSingularOscillatoryCorrection Q N q := by
  rw [goldbachSymmetricRealSingularIntegral_eq_pairEvaluation,
    goldbachSingularPairBox_eq_diagonal_union_offDiagonal,
    Finset.sum_union
      (goldbachSingularDiagonalPairs_disjoint_offDiagonal N)]
  unfold goldbachSingularDiagonalMain
    goldbachSingularOscillatoryCorrection
  congr 1
  calc
    (∑ uv ∈ goldbachSingularDiagonalPairs N,
        (goldbachCharacterWindowValue
          (goldbachRationalArcRadius Q N q)
          (goldbachSingularPairFrequency N uv) : ℂ)) =
      ∑ _uv ∈ goldbachSingularDiagonalPairs N,
        ((2 * goldbachRationalArcRadius Q N q : ℝ) : ℂ) := by
          apply Finset.sum_congr rfl
          intro uv huv
          have hfreq :
              goldbachSingularPairFrequency N uv = 0 :=
            (goldbachSingularPairFrequency_eq_zero_iff
              ((goldbachSingularDiagonalPairs_subset_pairBox N) huv)).2
              (mem_goldbachSingularDiagonalPairs.mp huv)
          simp [hfreq, goldbachCharacterWindowValue]
    _ =
      ((2 * goldbachRationalArcRadius Q N q *
        (N + 1 : ℝ) : ℝ) : ℂ) := by
          simp [goldbachSingularDiagonalPairs, mul_comm]

/-- The finite oscillatory budget is nonnegative. -/
theorem goldbachSingularOscillatoryBudget_nonneg
    (Q N q : ℕ) :
    0 ≤ goldbachSingularOscillatoryBudget Q N q := by
  unfold goldbachSingularOscillatoryBudget
  exact Finset.sum_nonneg fun uv huv => abs_nonneg _

/-- The exact finite correction is controlled by its complete absolute-value
budget, without any assumed cancellation. -/
theorem norm_goldbachSingularOscillatoryCorrection_le
    (Q N q : ℕ) :
    ‖goldbachSingularOscillatoryCorrection Q N q‖ ≤
      goldbachSingularOscillatoryBudget Q N q := by
  unfold goldbachSingularOscillatoryCorrection
    goldbachSingularOscillatoryBudget
  calc
    ‖∑ uv ∈ goldbachSingularOffDiagonalPairs N,
        (goldbachCharacterWindowValue
          (goldbachRationalArcRadius Q N q)
          (goldbachSingularPairFrequency N uv) : ℂ)‖ ≤
      ∑ uv ∈ goldbachSingularOffDiagonalPairs N,
        ‖(goldbachCharacterWindowValue
          (goldbachRationalArcRadius Q N q)
          (goldbachSingularPairFrequency N uv) : ℂ)‖ :=
      norm_sum_le _ _
    _ =
      ∑ uv ∈ goldbachSingularOffDiagonalPairs N,
        |goldbachCharacterWindowValue
          (goldbachRationalArcRadius Q N q)
          (goldbachSingularPairFrequency N uv)| := by
            apply Finset.sum_congr rfl
            intro uv huv
            simp

/-- The exact evaluated singular integral is real. -/
theorem goldbachSymmetricRealSingularIntegral_im
    (Q N q : ℕ) :
    (goldbachSymmetricRealSingularIntegral Q N q).im = 0 := by
  rw [goldbachSymmetricRealSingularIntegral_eq_main_add_correction]
  unfold goldbachSingularOscillatoryCorrection
  simp

/-- The explicit diagonal mass minus the complete finite oscillatory budget is
an unconditional lower bound for the real part of the symmetric integral. -/
theorem goldbachSingularDiagonalMain_sub_budget_le_re
    (Q N q : ℕ) :
    goldbachSingularDiagonalMain Q N q -
        goldbachSingularOscillatoryBudget Q N q ≤
      (goldbachSymmetricRealSingularIntegral Q N q).re := by
  have hnorm :=
    norm_goldbachSingularOscillatoryCorrection_le Q N q
  have hre :
      |(goldbachSingularOscillatoryCorrection Q N q).re| ≤
        goldbachSingularOscillatoryBudget Q N q :=
    (Complex.abs_re_le_norm
      (goldbachSingularOscillatoryCorrection Q N q)).trans hnorm
  have hlower :
      -goldbachSingularOscillatoryBudget Q N q ≤
        (goldbachSingularOscillatoryCorrection Q N q).re :=
    (abs_le.mp hre).1
  rw [goldbachSymmetricRealSingularIntegral_eq_main_add_correction,
    Complex.add_re, Complex.ofReal_re]
  linarith

/-- A strict finite oscillatory budget below the diagonal mass certifies a
positive symmetric singular integral. -/
theorem goldbachSymmetricRealSingularIntegral_re_pos_of_budget
    {Q N q : ℕ}
    (hbudget :
      goldbachSingularOscillatoryBudget Q N q <
        goldbachSingularDiagonalMain Q N q) :
    0 < (goldbachSymmetricRealSingularIntegral Q N q).re := by
  exact lt_of_lt_of_le
    (sub_pos.mpr hbudget)
    (goldbachSingularDiagonalMain_sub_budget_le_re Q N q)

end
end GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularEvaluation
