# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.DyadicExponentialControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4143365097b5a32227f6d605ce5865a39b8c760f` · SHA-256 `68b6c517d6d6421f6ba582c9d11f504739096cff380e434ea8322ca4347f9292`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.ScaledLogPowerEvaluation
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-! Synthetic algebra controls only. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Chebyshev.Checks.DyadicExponentialControls

open GRWTSK.Analysis.Complex.FiniteExponentialEnclosure
open GRWTSK.Analysis.Complex.DyadicExponentialEnclosure

noncomputable section

theorem zero_squarings_keeps_value (v : ℂ) : squareValue v 0 = v := rfl

theorem zero_squarings_keeps_error (v : ℂ) (e : ℝ) :
    propagatedError (squareValue v) (fun _ => 0) e 0 = e := rfl

theorem two_squarings_is_fourth_power (v : ℂ) : squareValue v 2 = v ^ 4 := by
  simp only [squareValue]
  ring

/-- Epsilon alone, or 2*epsilon alone, both miss the positive quadratic term. -/
theorem quadratic_error_is_required :
    (11 / 10 : ℝ) ^ 2 - 1 > 2 * (1 / 10 : ℝ) := by norm_num

theorem unit_center_error_step :
    propagatedError (squareValue (1 : ℂ)) (fun _ => 0) (1 / 10) 1 = (21 / 100 : ℝ) := by
  norm_num [propagatedError, squareValue, rectNorm]

/-- An early local error is amplified by a later exact square. -/
theorem early_rounding_is_not_final_rounding :
    (101 / 100 : ℝ) ^ 2 - 1 > (1 / 100 : ℝ) := by norm_num

theorem scaled_argument_guard_example :
    (100 : ℝ) / 2 ^ 7 ≤ 1 ∧ (1 : ℝ) / 2 ^ 7 ≤ 1 := by norm_num

theorem unscaled_small_degree_guard_fails :
    ¬ ((100 : ℝ) / (4 + 1) ≤ 1 / 2) := by norm_num

theorem reduced_small_degree_guard_holds :
    ((100 : ℝ) / 2 ^ 7) / (4 + 1) ≤ 1 / 2 := by norm_num

/-- Repeated squaring changes the polynomial; it is not the old degree-K evaluator. -/
theorem scaled_polynomial_not_unscaled :
    scaledValue (1 : ℂ) 1 2 ≠ expPolynomial (1 : ℂ) 2 := by
  norm_num [scaledValue, squareValue, expPolynomial, Finset.sum_range_succ]

theorem multiplicity_scales_propagated_error :
    3 * (21 / 100 : ℝ) = 63 / 100 := by norm_num

theorem equality_margin_still_rejected : ¬ (0 < (0 : ℝ)) := by norm_num

end
end GRWTSK.NumberTheory.Chebyshev.Checks.DyadicExponentialControls
```
