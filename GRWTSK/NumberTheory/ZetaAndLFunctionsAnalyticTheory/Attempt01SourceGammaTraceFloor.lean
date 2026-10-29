import SourceInvariantBoundaryCoefficient
import FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel

/-!
Retain a quantitative favorable PLUS-gamma trace in the actual atom return.
This controls only the fixed prime-two trace, not the complete arithmetic tail.
Direction and conceptual origin: grwtsk contributors.
Native proof construction: OpenAI Codex assistance.
-/
set_option autoImplicit false
noncomputable section
namespace RH16FiniteGammaReturn
open RH16InvariantBoundary
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

/-- A fixed lower budget for the unchanged source's gamma trace. -/
def gammaTraceFloor (Q : ℝ) : ℝ :=
  Real.eulerMascheroniConstant * Real.exp (Real.log 2 / 2) *
    (1 - 5 * Real.log 2 ^ 2 / (2 * Q ^ 2))

/-- The source's first-prime correlation stays near its fixed normalized value. -/
theorem actual_first_prime_correlation_lower (Q A : ℝ) (hQ : 91 ≤ Q) (hA : Q ≤ A) :
    1 - 5 * Real.log 2 ^ 2 / (2 * Q ^ 2) ≤
      sourceCorrelation explicitSecondDerivative A (Real.log 2) := by
  have hC := actual_correlation_zero_taylor_bound A (Real.log 2) (hQ.trans hA)
  have hAA : Q ^ 2 ≤ A ^ 2 := by nlinarith
  have hq : 0 < Q ^ 2 := by have : 0 < Q := by linarith; positivity
  have ha : 0 < A ^ 2 := by have : 0 < A := by linarith; positivity
  have hn : 0 ≤ 5 * Real.log (2 : ℝ) ^ 2 := by positivity
  have hd : 5 * Real.log 2 ^ 2 / (2 * A ^ 2) ≤
      5 * Real.log 2 ^ 2 / (2 * Q ^ 2) :=
    div_le_div_of_nonneg_left hn (by positivity) (by nlinarith)
  have hsame : 5 / A ^ 2 * Real.log (2 : ℝ) ^ 2 / 2 =
      5 * Real.log 2 ^ 2 / (2 * A ^ 2) := by ring
  rw [hsame] at hC
  linarith [(abs_le.mp hC).1]

/-- Keep the favorable gamma trace instead of discarding its fixed positive part. -/
theorem gammaTraceFloor_le_actual (Q A : ℝ) (hQ : 91 ≤ Q) (hA : Q ≤ A) :
    gammaTraceFloor Q ≤ Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) := by
  have hg : 0 ≤ Real.eulerMascheroniConstant := by
    linarith [Real.one_half_lt_eulerMascheroniConstant]
  have hc := actual_first_prime_correlation_lower Q A hQ hA
  unfold gammaTraceFloor criticalPrimeTest
  have hp := mul_le_mul_of_nonneg_left hc
    (mul_nonneg hg (Real.exp_pos _).le)
  nlinarith only [hp]

/-- The retained fixed trace is itself favorable on the complete calibrated tail. -/
theorem gammaTraceFloor_nonneg (Q : ℝ) (hQ : 91 ≤ Q) : 0 ≤ gammaTraceFloor Q := by
  have hg : 0 ≤ Real.eulerMascheroniConstant := by
    linarith [Real.one_half_lt_eulerMascheroniConstant]
  have hl0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hl1 : Real.log (2 : ℝ) ≤ 1 := by
    simpa only [show (2 : ℝ) - 1 = 1 by norm_num] using
      Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
  have hlog : Real.log (2 : ℝ) ^ 2 ≤ 1 := by nlinarith
  have hq : 0 < 2 * Q ^ 2 := by have : 0 < Q := by linarith; positivity
  have ht : 5 * Real.log (2 : ℝ) ^ 2 ≤ 2 * Q ^ 2 := by nlinarith
  have hfrac : 5 * Real.log (2 : ℝ) ^ 2 / (2 * Q ^ 2) ≤ 1 :=
    (div_le_iff₀ hq).mpr (by simpa using ht)
  unfold gammaTraceFloor
  exact mul_nonneg (mul_nonneg hg (Real.exp_pos _).le) (by linarith)
end RH16FiniteGammaReturn
