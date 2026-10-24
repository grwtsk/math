# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.RoundedEvaluationControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ae4618f69355cb07f15d234b1e1823f13106551` · SHA-256 `46f776f6d1b5247645a85d81ecba402949c28333b7c43dd82edb3f3d111fdf11`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT. -/
import GRWTSK.Analysis.Complex.RoundedLogPowerEvaluation

set_option autoImplicit false

/-!
# Directed-rounding and bounded-selection controls

Synthetic rational examples only. These declarations have not been executed.
No zero identity, zero-file completeness, or prime margin is established.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.RoundedEvaluationControls

open GRWTSK.Analysis.Complex.DyadicRoundedSquaring
open GRWTSK.Analysis.ErrorBounds.FinitePrecisionSelection

noncomputable section

/-- Negative components require floor, not truncation toward zero. -/
theorem negative_floor (bits : ℕ) (x : ℝ) (hx : x < 0) : down bits x < 0 :=
  lt_of_le_of_lt (down_bounds bits x).1 hx

/-- Upward rounding of an error must never shrink its input. -/
theorem upward_never_shrinks (bits : ℕ) (error : ℝ) : error ≤ up bits error :=
  (up_bounds bits error).1

/-- Initial rounding remains even when no restoration squares are requested. -/
theorem seed_is_rounded (bits : ℕ) (v : ℂ) :
    roundedValue bits v 0 = quantize bits v := rfl

theorem seed_roundoff_is_charged (bits : ℕ) (v : ℂ) (e : ℝ) :
    e + roundoff bits ≤ roundedError bits v e 0 := (up_bounds bits _).1

/-- The nonlinear part is not interchangeable with its linearization. -/
theorem quadratic_error_is_needed :
    (11 / 10 : ℚ) ^ 2 - 1 > 2 * (1 / 10 : ℚ) := by norm_num

/-- A local error from an early stage is amplified by a subsequent square. -/
theorem early_rounding_is_amplified :
    (101 / 100 : ℚ) ^ 2 - 1 > (1 / 100 : ℚ) := by norm_num

/-- A two-coordinate error can exceed either single-coordinate allowance. -/
theorem two_coordinates_not_one :
    (3 / 4 : ℚ) ^ 2 + (3 / 4 : ℚ) ^ 2 > 1 := by norm_num

/-- Zero bits is valid coarse rounding, not zero rounding error. -/
theorem zero_bits_roundoff : roundoff 0 = 2 := by norm_num [roundoff, scale]

theorem empty_candidates_fail (tolerance : ℝ) :
    firstWithin (fun x : ℝ => x) tolerance [] = none := rfl

/-- Accept the first passing final budget, not the first well-formed candidate. -/
theorem selection_skips_bad_budget :
    firstWithin (fun x : ℝ => x) (1 / 4) [1, 1 / 8, 0] = some (1 / 8) := by
  norm_num [firstWithin]

theorem finite_exhaustion_is_failure :
    firstWithin (fun x : ℝ => x) (1 / 4) [1, 1 / 2] = none := by
  norm_num [firstWithin]

/-- Equality meets an error tolerance; this does not relax the separate prime margin. -/
theorem tolerance_allows_equality :
    firstWithin (fun x : ℝ => x) (1 / 4) [1 / 4] = some (1 / 4) := by
  norm_num [firstWithin]

theorem prime_margin_still_strict : ¬ (0 < (0 : ℝ)) := lt_irrefl _

end
end GRWTSK.NumberTheory.Chebyshev.Checks.RoundedEvaluationControls
```
