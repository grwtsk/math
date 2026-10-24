import FormalResearch.SUCAS.Realization
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
open MeasureTheory Set
open FormalResearch.SUCAS.Realization
open FormalResearch.RiemannHypothesis.SourcePairing

example : (∫ x : ℝ in (-1)..1, ((1 - x ^ 2) ^ 4) ^ 2) = (65536 / 109395 : ℝ) := by
  have expand : (fun x : ℝ ↦ ((1 - x ^ 2) ^ 4) ^ 2) =
      (fun x ↦ 1 - 8*x^2 + 28*x^4 - 56*x^6 + 70*x^8 - 56*x^10 + 28*x^12 - 8*x^14 + x^16) := by
    funext x; ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub,
    intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num
