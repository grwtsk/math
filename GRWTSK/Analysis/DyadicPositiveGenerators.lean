/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic

/-!
# Real limits of rational positive square generators

Natural floors give dyadic rational lower approximants to every nonnegative
real number, with error strictly below `(1/2)^n`. Applying those approximants
to the square root expresses every nonnegative real as a limit of rational
squares. Differences of these positive square generators converge to every
real number.

This is a scalar approximation theorem, based on Mathlib's floor and limit
results. It supplies neither computable access to an arbitrary real input nor
positivity of a particular Weil form or a complexity bound for proof search.
-/

set_option autoImplicit false
noncomputable section
open Filter Topology

namespace GRWTSK.Analysis.DyadicPositiveGenerators

/-- The dyadic lower approximant obtained from an exact natural floor. -/
def lower (x : ℝ) (n : ℕ) : ℝ :=
  (⌊x * (2 : ℝ) ^ n⌋₊ : ℝ) / (2 : ℝ) ^ n

theorem lower_nonneg (x : ℝ) (n : ℕ) : 0 ≤ lower x n := by
  unfold lower
  positivity

/-- Every finite approximant is the cast of an actual rational number. -/
theorem lower_rational (x : ℝ) (n : ℕ) : ∃ q : ℚ, (q : ℝ) = lower x n := by
  refine ⟨(⌊x * (2 : ℝ) ^ n⌋₊ : ℚ) / (2 : ℚ) ^ n, ?_⟩
  simp [lower]

theorem lower_le (x : ℝ) (hx : 0 ≤ x) (n : ℕ) : lower x n ≤ x := by
  unfold lower
  apply (div_le_iff₀ (by positivity : (0 : ℝ) < 2 ^ n)).mpr
  exact Nat.floor_le (mul_nonneg hx (by positivity))

/-- The complete dyadic error is paid for each individual real input. -/
theorem lower_error (x : ℝ) (hx : 0 ≤ x) (n : ℕ) :
    0 ≤ x - lower x n ∧ x - lower x n < (1 / 2 : ℝ) ^ n := by
  constructor
  · exact sub_nonneg.mpr (lower_le x hx n)
  · have hpow : (0 : ℝ) < 2 ^ n := by positivity
    have hfloor := Nat.lt_floor_add_one (x * (2 : ℝ) ^ n)
    have hdiv : x < ((⌊x * (2 : ℝ) ^ n⌋₊ : ℝ) + 1) / (2 : ℝ) ^ n :=
      (lt_div_iff₀ hpow).mpr hfloor
    rw [add_div] at hdiv
    have herr : x - lower x n < 1 / (2 : ℝ) ^ n := by
      unfold lower
      linarith
    simpa only [one_div_pow] using herr

theorem lower_mem_unitInterval (x : ℝ) (hx : x ∈ Set.Icc (0 : ℝ) 1) (n : ℕ) :
    lower x n ∈ Set.Icc (0 : ℝ) 1 :=
  ⟨lower_nonneg x n, (lower_le x hx.1 n).trans hx.2⟩

/-- Convergence reuses Mathlib's natural-floor approximation theorem. -/
theorem tendsto_lower (x : ℝ) (hx : 0 ≤ x) :
    Tendsto (lower x) atTop (𝓝 x) := by
  change Tendsto (fun n : ℕ => (⌊x * (2 : ℝ) ^ n⌋₊ : ℝ) / (2 : ℝ) ^ n)
    atTop (𝓝 x)
  exact (tendsto_nat_floor_mul_div_atTop hx).comp
    (tendsto_pow_atTop_atTop_of_one_lt (by norm_num : (1 : ℝ) < 2))

/-- A positive generator: the square of a rational approximation to the root. -/
def squareLower (x : ℝ) (n : ℕ) : ℝ := (lower (Real.sqrt x) n) ^ 2

theorem squareLower_nonneg (x : ℝ) (n : ℕ) : 0 ≤ squareLower x n :=
  sq_nonneg _

theorem squareLower_rational_square (x : ℝ) (n : ℕ) :
    ∃ q : ℚ, squareLower x n = (q : ℝ) ^ 2 := by
  obtain ⟨q, hq⟩ := lower_rational (Real.sqrt x) n
  exact ⟨q, by simp [squareLower, hq]⟩

theorem squareLower_le (x : ℝ) (hx : 0 ≤ x) (n : ℕ) : squareLower x n ≤ x := by
  have hle := lower_le (Real.sqrt x) (Real.sqrt_nonneg x) n
  have hnonneg := lower_nonneg (Real.sqrt x) n
  have hsqrt := Real.sq_sqrt hx
  unfold squareLower
  nlinarith [Real.sqrt_nonneg x]

/-- Every nonnegative real is a limit of explicitly specified rational squares. -/
theorem tendsto_squareLower (x : ℝ) (hx : 0 ≤ x) :
    Tendsto (squareLower x) atTop (𝓝 x) := by
  change Tendsto (fun n => (lower (Real.sqrt x) n) ^ 2) atTop (𝓝 x)
  simpa only [Real.sq_sqrt hx] using
    (tendsto_lower (Real.sqrt x) (Real.sqrt_nonneg x)).pow 2

/-- Signs are retained as differences of two nonnegative square generators. -/
def signedSquareLower (x : ℝ) (n : ℕ) : ℝ :=
  squareLower (max x 0) n - squareLower (max (-x) 0) n

theorem tendsto_signedSquareLower (x : ℝ) :
    Tendsto (signedSquareLower x) atTop (𝓝 x) := by
  have hlimit :=
    (tendsto_squareLower (max x 0) (le_max_right x 0)).sub
      (tendsto_squareLower (max (-x) 0) (le_max_right (-x) 0))
  have hsplit : max x 0 - max (-x) 0 = x := by
    rcases le_total 0 x with hx | hx
    · rw [max_eq_left hx, max_eq_right (by linarith : -x ≤ 0)]
      ring
    · rw [max_eq_right hx, max_eq_left (by linarith : 0 ≤ -x)]
      ring
  change Tendsto (fun n => squareLower (max x 0) n - squareLower (max (-x) 0) n)
    atTop (𝓝 x)
  simpa only [hsplit] using hlimit

end GRWTSK.Analysis.DyadicPositiveGenerators
