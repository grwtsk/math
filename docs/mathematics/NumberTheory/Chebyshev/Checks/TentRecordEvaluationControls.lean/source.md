# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.TentRecordEvaluationControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e592e3e50265bedf980b00020b6fd737bcbe4ea5` · SHA-256 `96256073d8ca91bf79ae285eb96434990590ef1f3d915abec30aa6dd3ae95038`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.CanonicalTentRecordEvaluation
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-! Synthetic source controls only. NOT_RUN / NOT_KERNEL_AUDITED. -/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.TentRecordEvaluationControls

open GRWTSK.Analysis.Complex.FiniteExponentialEnclosure
open GRWTSK.Analysis.Complex.TentKernelEnclosure

noncomputable section

theorem empty_polynomial_retains_error :
    expPolynomial 0 0 = 0 ∧ expRemainder 0 0 = 2 := by
  norm_num [expPolynomial, expRemainder]

theorem quadratic_polynomial_at_half :
    expPolynomial (1 / 2 : ℂ) 3 = 13 / 8 := by
  norm_num [expPolynomial, Finset.sum_range_succ]

theorem degree_guard_rejects_large_argument : ¬ ((4 : ℝ) / (2 + 1) ≤ 1 / 2) := by
  norm_num

theorem zero_center_rejects_denominator (h d : ℝ) (hd : 0 < d) :
    ¬ (d ≤ h * ‖(0 : ℂ)‖ * ‖(0 : ℂ) + 1‖) := by
  simpa using not_le_of_gt hd

theorem minus_one_center_rejects_denominator (h d : ℝ) (hd : 0 < d) :
    ¬ (d ≤ h * ‖(-1 : ℂ)‖ * ‖(-1 : ℂ) + 1‖) := by
  simpa using not_le_of_gt hd

theorem middle_endpoint_error_has_coefficient_two :
    ‖(0 : ℂ) - 2 * 1 + 0‖ = 2 := by norm_num

theorem multiplicity_scales_error : (3 : ℝ) * (1 / 8 + 1 / 16) = 9 / 16 := by
  norm_num

theorem logarithm_error_is_separate :
    (1 / 100 : ℝ) < 1 / 100 + 2 * (2 + 1 / 100) * (1 / 1000) := by norm_num

theorem positive_radius_not_exact_coordinate :
    ‖((3 / 4 : ℂ) + Complex.I) - ((1 / 2 : ℂ) + Complex.I)‖ = 1 / 4 ∧
      ((3 / 4 : ℂ) + Complex.I) ≠ ((1 / 2 : ℂ) + Complex.I) := by
  constructor
  · have he : ((3 / 4 : ℂ) + Complex.I) - ((1 / 2 : ℂ) + Complex.I) = 1 / 4 := by ring
    rw [he]
    norm_num
  · intro he
    have hr := congrArg Complex.re he
    norm_num at hr

theorem same_height_not_same_point :
    (((1 / 4 : ℂ) + Complex.I).im = ((3 / 4 : ℂ) + Complex.I).im) ∧
      ((1 / 4 : ℂ) + Complex.I) ≠ ((3 / 4 : ℂ) + Complex.I) := by
  constructor
  · simp
  · intro he
    have hr := congrArg Complex.re he
    norm_num at hr

end
end GRWTSK.NumberTheory.Chebyshev.Checks.TentRecordEvaluationControls
```
