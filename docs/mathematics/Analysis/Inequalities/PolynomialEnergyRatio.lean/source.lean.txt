/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# Source derivative coefficient bound

Exact finite algebra for the designated bump's coefficient polynomials. The
analytic derivative-norm/source identification remains a separate proof task.
See docs/research/riemann-hypothesis/collaborative-research/2026-10-02/README.md.
-/

namespace GRWTSK.RiemannHypothesis.SourceDerivativeCoefficientBound

noncomputable section

/-- Denominator polynomial in the finite source coefficient calculation. -/
def normPolynomial (r : ℝ) : ℝ :=
  (4096 / 109395 : ℝ) + (65536 / 45045 : ℝ) * r +
    (196608 / 5005 : ℝ) * r ^ 2

/-- Numerator polynomial in the finite derivative coefficient calculation. -/
def derivativePolynomial (r : ℝ) : ℝ :=
  (8192 / 45045 : ℝ) + (98304 / 5005 : ℝ) * r +
    (65536 / 77 : ℝ) * r ^ 2

/-- Exact bound for the polynomial ratio on the interval `[0, 1]`. -/
def squaredCoefficient : ℝ := (162826 / 7623 : ℝ)

theorem normPolynomial_pos (r : ℝ) (hr : 0 ≤ r) :
    0 < normPolynomial r := by
  unfold normPolynomial
  positivity

theorem exact_coefficient_gap (r : ℝ) :
    squaredCoefficient * normPolynomial r - derivativePolynomial r =
      (32768 / 343378035 : ℝ) * (1 - r) * (126306 * r + 6475) := by
  unfold squaredCoefficient normPolynomial derivativePolynomial
  ring

theorem derivativePolynomial_le (r : ℝ) (hr0 : 0 ≤ r) (hr1 : r ≤ 1) :
    derivativePolynomial r ≤ squaredCoefficient * normPolynomial r := by
  have hgap :
      0 ≤ (32768 / 343378035 : ℝ) * (1 - r) * (126306 * r + 6475) := by
    apply mul_nonneg
    · exact mul_nonneg (by norm_num) (sub_nonneg.mpr hr1)
    · nlinarith
  rw [← exact_coefficient_gap] at hgap
  linarith

theorem exact_ratio_upper_bound (r : ℝ) (hr0 : 0 ≤ r) (hr1 : r ≤ 1) :
    derivativePolynomial r / normPolynomial r ≤ squaredCoefficient := by
  apply (div_le_iff₀ (normPolynomial_pos r hr0)).2
  simpa only [mul_comm] using derivativePolynomial_le r hr0 hr1

theorem squaredCoefficient_lt_twenty_five : squaredCoefficient < 25 := by
  norm_num [squaredCoefficient]

end
end GRWTSK.RiemannHypothesis.SourceDerivativeCoefficientBound
