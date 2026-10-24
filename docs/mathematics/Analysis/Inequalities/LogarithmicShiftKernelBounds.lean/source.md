# Complete source: GRWTSK.Analysis.Inequalities.LogarithmicShiftKernelBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27e4f29026913080cc07f33f35aa67b7c19c80df` · SHA-256 `daa6bac79228ad02af7a21dba50f876a149ce8eaf4c4726a3159c78ce6eca7a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Inequalities.FiniteLogarithmicProfileBounds
import GRWTSK.Analysis.Inequalities.CompactProfileDifferentialBounds
import GRWTSK.Analysis.IntegralTransforms.CompactProfileLogarithmicMoment
import GRWTSK.Analysis.IntegralTransforms.CompactProfileLogarithmicRegularity

/-!
# Polynomial price for the full literal logarithmic-shift kernel

The actual squared-integral normalized correlation, both
pole moments, complete exponential/logarithmic Jacobian, every integer sample
through the floor, the final full unit interval and the entire lower correction
are retained. This is a prescribed analytic kernel price. It supplies no native
Möbius cancellation, pickup-response Gram identification, amplitude return,
strict negative sector, supplier estimate, unconditional RH or converse.
-/

namespace GRWTSK.NumberTheory.ArithmeticFunctions.LogarithmicShiftKernelBounds

open MeasureTheory Set
open GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticSupplier
open GRWTSK.Analysis.Inequalities
open GRWTSK.Analysis.IntegralTransforms

noncomputable section

/-- The complete literal kernel has a polynomial price at every nonnegative reading. -/
theorem literal_kernel_polynomial_price {A t : ℝ} (hA : 1 ≤ A) (ht : 0 ≤ t) :
    |polarityKernel A t| ≤ 20 / A + 1628260 / (7623 * A ^ 2) + 528 / A ^ 3 := by
  have positive : 0 < A := by linarith
  obtain ⟨admitted, fullZero⟩ :=
    CompactProfileLogarithmicMoment.actual_logarithmic_integral_zero hA t
  have regular : ContDiff ℝ 1 (fun x : ℝ ↦ Real.log x / Real.sqrt x *
      (deriv (deriv (correlation A)) (t + Real.log x) -
        (1 / 2 : ℝ) * deriv (correlation A) (t + Real.log x))) :=
    (CompactProfileLogarithmicRegularity.actual_logarithmic_profile_contDiff_two
      positive t).of_le (by norm_num)
  have differentiable : Differentiable ℝ (fun u : ℝ ↦
      deriv (deriv (correlation A)) u - (1 / 2 : ℝ) * deriv (correlation A) u) :=
    fun u ↦ (CompactProfileDifferentialBounds.differential_hasDerivAt positive u).differentiableAt
  have complete := FiniteLogarithmicProfileBounds.finite_logarithmic_profile_price
    (U := 2 * A) regular differentiable
    (CompactProfileDifferentialBounds.differential_abs_le hA)
    (CompactProfileDifferentialBounds.differential_derivative_abs_le hA)
    admitted fullZero (fun u hu ↦ CompactProfileDifferentialBounds.differential_zero_upper
      positive hu) (by linarith : 0 ≤ 2 * A) ht
  change |polarityKernel A t| ≤
    8 * (162826 / (7623 * A ^ 2) + (5 / A) / 2) +
      4 * (132 / A ^ 3 + (162826 / (7623 * A ^ 2)) / 2) at complete
  exact complete.trans_eq (by ring)

/-- The original window inherits the full literal price, without any polarity assertion. -/
theorem literal_kernel_original_window_price {A t : ℝ} (hA : 1 ≤ A)
    (reading : t ∈ readingWindow A) :
    |polarityKernel A t| ≤ 20 / A + 1628260 / (7623 * A ^ 2) + 528 / A ^ 3 := by
  have logNonneg : 0 ≤ Real.log A := Real.log_nonneg hA
  have left : 2 * Real.log A ≤ t := reading.1
  exact literal_kernel_polynomial_price hA (by linarith)

end

end GRWTSK.NumberTheory.ArithmeticFunctions.LogarithmicShiftKernelBounds
```
