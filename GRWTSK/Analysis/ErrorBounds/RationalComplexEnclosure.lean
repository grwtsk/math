/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.ComplexExpScaling
import Mathlib.Data.Rat.Cast.Order

set_option autoImplicit false

/-!
# Finite rational coordinates and exact complex-ball tests

The data and arithmetic definitions below are computable rational expressions.
Only their interpretation in C is noncomputable. Named coordinate multiplication
is used: the default componentwise product on Q x Q is not complex multiplication.
The ball test includes a nonnegative radius check before squaring that radius.
Source proof candidates only: NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure

open scoped BigOperators

/-- Rational real and imaginary coordinates, not a new analytic number system. -/
abbrev Coordinates := ℚ × ℚ

def zero : Coordinates := (0, 0)
def one : Coordinates := (1, 0)
def add (u v : Coordinates) : Coordinates := (u.1 + v.1, u.2 + v.2)
def sub (u v : Coordinates) : Coordinates := (u.1 - v.1, u.2 - v.2)
def mul (u v : Coordinates) : Coordinates :=
  (u.1 * v.1 - u.2 * v.2, u.1 * v.2 + u.2 * v.1)

/-- The evaluator uses this only for 2^s and factorials, which are nonzero. -/
def divNat (u : Coordinates) (n : ℕ) : Coordinates := (u.1 / n, u.2 / n)

def power (u : Coordinates) : ℕ → Coordinates
  | 0 => one
  | n + 1 => mul (power u n) u

/-- M terms, evaluated entirely in Q; the denominator at term j is j!, not j. -/
def taylor (u : Coordinates) : ℕ → Coordinates
  | 0 => zero
  | M + 1 => add (taylor u M) (divNat (power u M) M.factorial)

def squareNorm (u : Coordinates) : ℚ := u.1 ^ 2 + u.2 ^ 2

/-- Exact squared Euclidean test; no floating square root or norm is evaluated. -/
def inBall (u : Coordinates) (r : ℚ) : Bool :=
  decide (0 ≤ r ∧ squareNorm u ≤ r ^ 2)

/-- This interpretation is used in the proofs, never in the Boolean test. -/
noncomputable def toComplex (u : Coordinates) : ℂ := ⟨(u.1 : ℝ), (u.2 : ℝ)⟩

@[simp] theorem sub_self (u : Coordinates) : sub u u = zero := by
  rcases u with ⟨a, b⟩
  simp [sub, zero]

@[simp] theorem inBall_zero : inBall zero 0 = true := by decide +kernel

@[simp] theorem toComplex_real (q : ℚ) : toComplex (q, 0) = (q : ℂ) := by
  apply Complex.ext <;> simp [toComplex]

@[simp] theorem toComplex_zero : toComplex zero = 0 := by
  apply Complex.ext <;> simp [toComplex, zero]

@[simp] theorem toComplex_one : toComplex one = 1 := by
  apply Complex.ext <;> simp [toComplex, one]

@[simp] theorem toComplex_add (u v : Coordinates) :
    toComplex (add u v) = toComplex u + toComplex v := by
  apply Complex.ext <;> simp [toComplex, add]

@[simp] theorem toComplex_sub (u v : Coordinates) :
    toComplex (sub u v) = toComplex u - toComplex v := by
  apply Complex.ext <;> simp [toComplex, sub]

@[simp] theorem toComplex_mul (u v : Coordinates) :
    toComplex (mul u v) = toComplex u * toComplex v := by
  apply Complex.ext <;> simp [toComplex, mul]

@[simp] theorem toComplex_divNat (u : Coordinates) (n : ℕ) :
    toComplex (divNat u n) = toComplex u / (n : ℂ) := by
  apply Complex.ext <;> simp [toComplex, divNat]

@[simp] theorem toComplex_power (u : Coordinates) (n : ℕ) :
    toComplex (power u n) = toComplex u ^ n := by
  induction n with
  | zero => simp [power]
  | succ n ih => simp only [power, toComplex_mul, ih, pow_succ]

/-- Exact refinement of the existing finite Taylor polynomial, not a second exp. -/
theorem toComplex_taylor (u : Coordinates) (M : ℕ) :
    toComplex (taylor u M) = ComplexTaylorEnclosure.taylorValue (toComplex u) M := by
  induction M with
  | zero => simp [taylor, ComplexTaylorEnclosure.taylorValue]
  | succ M ih =>
    rw [taylor, toComplex_add, ih, toComplex_divNat, toComplex_power]
    simp only [ComplexTaylorEnclosure.taylorValue, Finset.sum_range_succ]

theorem norm_sq_toComplex (u : Coordinates) :
    ‖toComplex u‖ ^ 2 = (squareNorm u : ℝ) := by
  rw [Complex.sq_norm, Complex.normSq_apply]
  simp [toComplex, squareNorm, pow_two]

/-- The rational test is equivalent to the intended closed complex ball. -/
theorem inBall_iff (u : Coordinates) (r : ℚ) :
    inBall u r = true ↔ ‖toComplex u‖ ≤ (r : ℝ) := by
  simp only [inBall, decide_eq_true_eq]
  have hid := norm_sq_toComplex u
  have hn := norm_nonneg (toComplex u)
  constructor
  · rintro ⟨hr, hsq⟩
    have hr' : (0 : ℝ) ≤ r := by exact_mod_cast hr
    have hsq' : (squareNorm u : ℝ) ≤ (r : ℝ) ^ 2 := by exact_mod_cast hsq
    nlinarith
  · intro h
    have hr' : (0 : ℝ) ≤ r := hn.trans h
    have hsq' : ‖toComplex u‖ ^ 2 ≤ (r : ℝ) ^ 2 := by
      simpa only [pow_two] using mul_le_mul h h hn hr'
    refine ⟨by exact_mod_cast hr', ?_⟩
    have hrat : (squareNorm u : ℝ) ≤ (r : ℝ) ^ 2 := by simpa only [hid] using hsq'
    exact_mod_cast hrat

/-- Negative radii cannot pass merely because their squares are positive. -/
theorem negative_radius_rejected (u : Coordinates) {r : ℚ} (hr : r < 0) :
    inBall u r = false := by
  simp [inBall, not_le.mpr hr]

/-- Squared Euclidean checking retains diagonal balls without an L1 relaxation. -/
theorem diagonal_ball_control :
    inBall (3, 4) 5 = true ∧ inBall (3, 4) 4 = false := by decide +kernel

/-- The imaginary coordinates participate in both multiplication and the norm. -/
theorem imaginary_arithmetic_control :
    mul (0, 1) (0, 1) = (-1, 0) ∧ inBall (0, 1) 0 = false := by decide +kernel

end GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure
