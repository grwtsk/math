# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.TentEdgeBoundControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b090482911f98b85259e0540127adb76462a09ae` · SHA-256 `4580e51788afc636710e519416f75d399f8808aace8c7699f02dfcbd999cc1b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.TentEdgeBounds
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Contour-majorant domain and rate controls

These source checks are not executed Lean tests or zeta-zero certificates.
Negative powers reverse endpoint ordering; an inverse-height expression does
not cover height zero; pointwise finite bounds are not decay rates.
-/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.TentEdgeBoundControls

open MeasureTheory
open scoped Interval BigOperators
open GRWTSK.Analysis.Complex.TentMellinKernel
open GRWTSK.Analysis.Complex.TentContourMajorants
open GRWTSK.RiemannHypothesis.AdmissibleRectangles
open GRWTSK.NumberTheory.Chebyshev.TentEdgeBounds

noncomputable section

theorem negative_power_reverses_endpoint_order :
    (4 : ℝ) ^ (-1 : ℤ) < (2 : ℝ) ^ (-1 : ℤ) := by norm_num

theorem nonnegative_beta_rejects_left_substitution : ¬ (0 : ℝ) ≤ -2 := by norm_num

theorem inverse_height_zero_is_not_cauchy_majorant :
    ((0 : ℝ) ^ 2)⁻¹ = 0 ∧ (1 + (0 : ℝ) ^ 2)⁻¹ = 1 := by norm_num

theorem first_left_cutoff_outside_majorant_domain :
    leftEdge 0 = -1 ∧ ¬ leftEdge 0 ≤ -2 := by norm_num [leftEdge]

/-- Actual tent kernel, not a singular quotient evaluated at its center. -/
theorem left_kernel_at_zero_height :
    ‖tentKernel 3 1 (-3)‖ ≤ 4 * powerProfile 2 (-3) := by
  simpa using norm_kernel_left_le 3 1 (-3) 0 (by norm_num) (by norm_num) (by norm_num)

theorem endpoint_one_rejects_log_budget : ¬ (1 : ℝ) < 3 - 2 := by norm_num

/-- A finite bound that grows like T^2 leaves a nonzero normalized rate. -/
theorem quadratic_horizontal_growth_does_not_decay (T : ℝ) (hT : T ≠ 0) :
    T ^ 2 / T ^ 2 = 1 := div_self (pow_ne_zero _ hT)

/-- An empty local pole sum does not control an independently present analytic constant. -/
theorem empty_principal_sum_does_not_bound_regular :
    (∑ p ∈ (∅ : Finset ℂ), (p : ℂ)) = 0 ∧ ¬ ‖(7 : ℂ)‖ ≤ 0 := by norm_num

end
end GRWTSK.NumberTheory.Chebyshev.Checks.TentEdgeBoundControls
```
