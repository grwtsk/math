# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceFiniteHeadMinusWeight.Variante960881092c03ce2e6a144d51b832a162360834b5882ca4c88f14df14e912866

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `489ddd01cbe31f5db6d679f4767224bf2258f80f` · SHA-256 `e960881092c03ce2e6a144d51b832a162360834b5882ca4c88f14df14e912866`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceInvariantBoundaryCoefficient

/-!
The actual finite-head minus kernel differs from its -1/2 value by O(A^-2).
Every derivative is in physical t coordinates; source normalization is unchanged.
This bounds a finite-head transport error, not the surviving signed arithmetic tail.
Direction and conceptual origin: grwtsk contributors.
Source calculation and native proof construction: OpenAI Codex assistance.
-/

set_option autoImplicit false
noncomputable section
namespace RH16FiniteHeadMinusWeight

open RH16InvariantBoundary RH16ActualF7
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

/-- Source evenness removes the O(1/A) error of a global first-derivative estimate. -/
theorem actual_minus_kernel_error_t_bound (A t : ℝ) (hA : 91 ≤ A) (ht : 0 ≤ t) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t -
      sourceCorrelation explicitSecondDerivative A t / 2 + 1 / 2| ≤
        5 * t / A ^ 2 + 5 * t ^ 2 / (4 * A ^ 2) := by
  have hd := actual_deriv_abs_le_linear A t hA
  rw [abs_of_nonneg ht] at hd
  have hc := actual_correlation_zero_taylor_bound A t hA
  have he : deriv (sourceCorrelation explicitSecondDerivative A) t -
      sourceCorrelation explicitSecondDerivative A t / 2 + 1 / 2 =
        deriv (sourceCorrelation explicitSecondDerivative A) t -
          (sourceCorrelation explicitSecondDerivative A t - 1) / 2 := by ring
  rw [he]
  calc
    _ ≤ |deriv (sourceCorrelation explicitSecondDerivative A) t| +
        |(sourceCorrelation explicitSecondDerivative A t - 1) / 2| := abs_sub _ _
    _ = |deriv (sourceCorrelation explicitSecondDerivative A) t| +
        |sourceCorrelation explicitSecondDerivative A t - 1| / 2 := by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
    _ ≤ 5 / A ^ 2 * t + (5 / A ^ 2 * t ^ 2 / 2) / 2 :=
      add_le_add hd (div_le_div_of_nonneg_right hc (by norm_num))
    _ = _ := by ring

/-- The same estimate is stated on the literal source's named minus-weight object. -/
theorem minusCorrelationWeight_error_t_bound (A t : ℝ) (hA : 91 ≤ A) (ht : 0 ≤ t) :
    |minusCorrelationWeight A t + 1 / 2| ≤
      5 * t / A ^ 2 + 5 * t ^ 2 / (4 * A ^ 2) :=
  actual_minus_kernel_error_t_bound A t hA ht

/-- Every real coordinate of the complete fixed head through seven has the same A^-2 budget. -/
theorem actual_minus_kernel_error_fixed_head (A t : ℝ) (hA : 91 ≤ A)
    (ht0 : 0 ≤ t) (ht7 : t ≤ Real.log 7) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t -
      sourceCorrelation explicitSecondDerivative A t / 2 + 1 / 2| ≤ 15 / A ^ 2 := by
  have ht2 : t ≤ 2 := ht7.trans log_seven_lt_two.le
  have htsq : t ^ 2 ≤ 4 := by nlinarith
  have h1 : 5 * t / A ^ 2 ≤ 10 / A ^ 2 :=
    div_le_div_of_nonneg_right (by linarith) (sq_nonneg A)
  have h2 : 5 * t ^ 2 / (4 * A ^ 2) ≤ 5 / A ^ 2 := by
    calc
      _ ≤ 5 * 4 / (4 * A ^ 2) :=
        div_le_div_of_nonneg_right (by linarith) (by positivity)
      _ = _ := by ring
  calc
    _ ≤ 5 * t / A ^ 2 + 5 * t ^ 2 / (4 * A ^ 2) :=
      actual_minus_kernel_error_t_bound A t hA ht0
    _ ≤ 10 / A ^ 2 + 5 / A ^ 2 := add_le_add h1 h2
    _ = _ := by ring

end RH16FiniteHeadMinusWeight
```
