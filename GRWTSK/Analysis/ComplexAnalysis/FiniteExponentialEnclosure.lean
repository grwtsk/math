/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
import Mathlib.Analysis.Complex.Exponential
import Mathlib.Tactic.Positivity

set_option autoImplicit false

/-!
# Finite exponential polynomials with complete analytic error

A finite Taylor polynomial is exact algebra. Its whole exponential remainder
comes from pinned Mathlib, not a sampled next term. Perturbing its argument
charges a second, separate error. PowerEvaluation requires an independently
proved REAL logarithm enclosure; it does not certify that enclosure or identify
any point as a zeta zero. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.FiniteExponentialEnclosure

open scoped BigOperators
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel

noncomputable section

/-- Rational components give a rational norm ceiling without a square root. -/
def rectNorm (z : ℂ) : ℝ := |z.re| + |z.im|

theorem rectNorm_nonneg (z : ℂ) : 0 ≤ rectNorm z :=
  add_nonneg (abs_nonneg _) (abs_nonneg _)

theorem norm_le_rectNorm (z : ℂ) : ‖z‖ ≤ rectNorm z :=
  Complex.norm_le_abs_re_add_abs_im z

/-- Exactly K terms, including the constant term when K is positive. -/
def expPolynomial (q : ℂ) (K : ℕ) : ℂ :=
  ∑ j ∈ Finset.range K, q ^ j / (j.factorial : ℂ)

/-- Valid when r bounds the argument norm and r/(K+1) <= 1/2. -/
def expRemainder (r : ℝ) (K : ℕ) : ℝ := 2 * r ^ K / (K.factorial : ℝ)

theorem expRemainder_nonneg (r : ℝ) (hr : 0 ≤ r) (K : ℕ) :
    0 ≤ expRemainder r K := by
  unfold expRemainder
  positivity

/-- The degree/radius guard is essential; the full infinite tail is bounded. -/
theorem expPolynomial_error (q : ℂ) (r : ℝ) (K : ℕ)
    (hr : ‖q‖ ≤ r) (hK : r / ((K : ℝ) + 1) ≤ 1 / 2) :
    ‖Complex.exp q - expPolynomial q K‖ ≤ expRemainder r K := by
  have hr0 : 0 ≤ r := (norm_nonneg q).trans hr
  have hq : ‖q‖ / (K.succ : ℝ) ≤ 1 / 2 := by
    simp only [Nat.cast_succ]
    exact (div_le_div_of_nonneg_right hr (by positivity)).trans hK
  have hb := Complex.exp_bound' (x := q) (n := K) hq
  change ‖Complex.exp q - expPolynomial q K‖ ≤ _ at hb
  refine hb.trans ?_
  unfold expRemainder
  have hp : ‖q‖ ^ K ≤ r ^ K := pow_le_pow_left₀ (norm_nonneg q) hr K
  have hd := div_le_div_of_nonneg_right hp (show (0 : ℝ) ≤ K.factorial by positivity)
  calc
    ‖q‖ ^ K / ↑K.factorial * 2 ≤ r ^ K / ↑K.factorial * 2 :=
      mul_le_mul_of_nonneg_right hd (by norm_num)
    _ = 2 * r ^ K / ↑K.factorial := by ring

/-- A small argument displacement has its own complete exponential error. -/
theorem exp_difference_near (u v : ℂ) (d : ℝ)
    (hd : ‖u - v‖ ≤ d) (hd1 : d ≤ 1) :
    ‖Complex.exp u - Complex.exp v‖ ≤ ‖Complex.exp v‖ * (2 * d) := by
  have hb := Complex.exp_bound (x := u - v) (hd.trans hd1) (n := 1) (by norm_num)
  have hb' : ‖Complex.exp (u - v) - 1‖ ≤ 2 * d := by
    norm_num [Finset.sum_range_succ] at hb
    linarith
  have he : Complex.exp u - Complex.exp v =
      Complex.exp v * (Complex.exp (u - v) - 1) := by
    have hu : u = v + (u - v) := by ring
    nth_rw 1 [hu]
    rw [Complex.exp_add]
    ring
  rw [he, norm_mul]
  exact mul_le_mul_of_nonneg_left hb' (norm_nonneg _)

/-- Taylor truncation and argument uncertainty are charged separately. -/
theorem expPolynomial_perturbed_error (u v : ℂ) (r d : ℝ) (K : ℕ)
    (hr : ‖v‖ ≤ r) (hK : r / ((K : ℝ) + 1) ≤ 1 / 2)
    (hd : ‖u - v‖ ≤ d) (hd1 : d ≤ 1) :
    ‖Complex.exp u - expPolynomial v K‖ ≤
      expRemainder r K +
        2 * (rectNorm (expPolynomial v K) + expRemainder r K) * d := by
  have he := expPolynomial_error v r K hr hK
  have hd0 : 0 ≤ d := (norm_nonneg _).trans hd
  have hupper : ‖Complex.exp v‖ ≤ rectNorm (expPolynomial v K) + expRemainder r K := by
    have h := norm_le_norm_sub_add (Complex.exp v) (expPolynomial v K)
    linarith [norm_le_rectNorm (expPolynomial v K)]
  have hnear := (exp_difference_near u v d hd hd1).trans
    (mul_le_mul_of_nonneg_right hupper (by positivity : 0 ≤ 2 * d))
  calc
    _ = ‖(Complex.exp u - Complex.exp v) + (Complex.exp v - expPolynomial v K)‖ := by
      congr 1
      ring
    _ ≤ ‖Complex.exp u - Complex.exp v‖ + ‖Complex.exp v - expPolynomial v K‖ :=
      norm_add_le _ _
    _ ≤ _ := by linarith

/-- A specification of primitive input enclosures, NOT a trusted result field.
No exponential value or exponential-error certificate is supplied. -/
structure PowerEvaluation (t : ℝ) (z : ℂ) where
  logCenter : ℝ
  logError : ℝ
  logError_nonneg : 0 ≤ logError
  log_enclosure : |Real.log t - logCenter| ≤ logError
  degree : ℕ
  radius : ℝ
  argument_bound : ‖z * (logCenter : ℂ)‖ ≤ radius
  degree_guard : radius / ((degree : ℝ) + 1) ≤ 1 / 2
  displacement_guard : rectNorm z * logError ≤ 1

namespace PowerEvaluation

variable {t : ℝ} {z : ℂ}

def value (p : PowerEvaluation t z) : ℂ :=
  expPolynomial (z * (p.logCenter : ℂ)) p.degree

def error (p : PowerEvaluation t z) : ℝ :=
  expRemainder p.radius p.degree +
    2 * (rectNorm p.value + expRemainder p.radius p.degree) * (rectNorm z * p.logError)

theorem error_nonneg (p : PowerEvaluation t z) : 0 ≤ p.error := by
  have hr := (norm_nonneg _).trans p.argument_bound
  have he := expRemainder_nonneg p.radius hr p.degree
  have hv := rectNorm_nonneg p.value
  have hz := rectNorm_nonneg z
  have hl := p.logError_nonneg
  unfold error
  positivity

/-- The power uses the original real-log convention; its value is not an oracle. -/
theorem sound (p : PowerEvaluation t z) : ‖logPower t z - p.value‖ ≤ p.error := by
  have hd : ‖z * (Real.log t : ℂ) - z * (p.logCenter : ℂ)‖ ≤ rectNorm z * p.logError := by
    rw [← mul_sub, norm_mul, ← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs]
    exact mul_le_mul (norm_le_rectNorm z) p.log_enclosure
      (abs_nonneg _) (rectNorm_nonneg z)
  exact expPolynomial_perturbed_error (z * (Real.log t : ℂ))
    (z * (p.logCenter : ℂ)) p.radius (rectNorm z * p.logError) p.degree
    p.argument_bound p.degree_guard hd p.displacement_guard

end PowerEvaluation
end
end GRWTSK.Analysis.ComplexAnalysis.FiniteExponentialEnclosure
