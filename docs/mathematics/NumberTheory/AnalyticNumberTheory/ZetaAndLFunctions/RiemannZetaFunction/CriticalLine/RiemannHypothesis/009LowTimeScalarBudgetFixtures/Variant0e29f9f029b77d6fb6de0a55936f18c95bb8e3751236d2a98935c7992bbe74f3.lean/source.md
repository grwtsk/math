# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.009LowTimeScalarBudgetFixtures.Variant0e29f9f029b77d6fb6de0a55936f18c95bb8e3751236d2a98935c7992bbe74f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `50eaa472f5bd3d1238b8a4bf2181c6077f36aaa6` · SHA-256 `0e29f9f029b77d6fb6de0a55936f18c95bb8e3751236d2a98935c7992bbe74f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceLowTimeScalarBudget

/-!
UNCOMPILED hostile fixtures. They protect the positive cutoff, literal U factor,
actual centered prefix and fixed numerical margin. No full work estimate follows.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.LowTimeScalarBudgetFixtures

open MeasureTheory
open scoped BigOperators Interval
open SourceLowTimeScalarBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateBetaCentering

noncomputable section

theorem diagonal_prefix_empty (U : ℕ) :
    (∑ n ∈ Finset.Ioc U U, centeredBeta U n) = 0 := by simp

theorem empty_prefix_bound_reuses_literal_row (U : ℕ) (hU : 1 ≤ U) :
    |∑ n ∈ Finset.Ioc U U, centeredBeta U n| ≤ (U : ℝ) :=
  centered_beta_prefix_abs_le_cutoff U U hU le_rfl

theorem cutoff_zero_refutes_exponential_reconstruction :
    (∫ t in Real.log (0 : ℝ)..Real.log (1 : ℝ), Real.exp (t / 2)) ≠
      2 * (Real.sqrt (1 : ℝ) - Real.sqrt (0 : ℝ)) := by norm_num

theorem cutoff_factor_cannot_be_erased :
    1 < 2 * (3 : ℝ) / Real.sqrt ((3 + 1 : ℕ) : ℝ) := by norm_num

theorem exact_curvature_margin :
    2 * ((162826 : ℝ) / 7623 + 1 / 4) < 45 := by norm_num

theorem scale_one_margin_keeps_actual_constant :
    (Real.log 4 + 4 + Real.log 2) *
      (2 * (162826 / (7623 * (1 : ℝ) ^ 2) + 1 / 4)) ≤
      45 * (Real.log 4 + 4 + Real.log 2) :=
  error_times_twice_curvature_budget_le_margin le_rfl

end
end FormalResearch.RiemannHypothesis.LowTimeScalarBudgetFixtures
```
