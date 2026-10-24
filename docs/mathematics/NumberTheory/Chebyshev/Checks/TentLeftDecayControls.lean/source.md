# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.TentLeftDecayControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e80077c35e48033ad4f3ee9a9ac1e53de29e8e60` · SHA-256 `f8ec61cf28a6978bb3ad100b68cfe1be60995fba7383e53eab0bd2c57c8f0fd4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.TentLeftDecay

set_option autoImplicit false

/-! Source controls only. No numerical zeta certificate or Lean execution is represented. -/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.TentLeftDecayControls

open Filter Set
open scoped Topology BigOperators
open GRWTSK.Analysis.Complex.DigammaShift
open GRWTSK.RiemannHypothesis.LeftLogDerivative
open GRWTSK.RiemannHypothesis.AdmissibleRectangles
open GRWTSK.NumberTheory.Chebyshev.TentLeftDecay

noncomputable section

theorem first_left_real_part (t : ℝ) : (leftPoint 0 t).re = -1 := by
  simp [leftPoint, leftEdge]

theorem second_left_reflection (t : ℝ) : 1 - leftPoint 1 t = 4 - (t : ℂ) * Complex.I := by
  rw [leftPoint_reflected]
  norm_num
  ring

theorem zero_height_reciprocal : ‖((2 : ℂ) + 0)⁻¹‖ = (1 / 2 : ℝ) := by norm_num

theorem two_reciprocals_not_zero :
    (∑ j ∈ Finset.range 2, ((2 : ℂ) + (j : ℂ))⁻¹) = 5 / 6 := by
  norm_num [Finset.sum_range_succ]

theorem zero_shift_digamma (z : ℂ) :
    Complex.digamma (z + (0 : ℂ)) = Complex.digamma z := by simp

/-- Synthetic fixed-parameter convergence is deliberately distinct from the diagonal. -/
theorem fixed_parameter_model (T : ℕ) :
    Tendsto (fun N : ℕ => if N < T then (1 : ℝ) else 0) atTop (𝓝 0) := by
  apply tendsto_const_nhds.congr'
  filter_upwards [eventually_ge_atTop T] with N hN
  simp [not_lt.mpr hN]

/-- This moving-parameter sequence equals one at every index despite the previous theorem. -/
theorem growing_parameter_model (N : ℕ) :
    (if N < N + 1 then (1 : ℝ) else 0) = 1 := by simp

/-- The damping base must exceed one: at a=1 there is no decay factor. -/
theorem no_damping_at_one (B : ℝ) (N : ℕ) :
    (B + (N : ℝ)) * Real.exp (-2 * (N : ℝ) * Real.log 1) = B + (N : ℝ) := by simp

end
end GRWTSK.NumberTheory.Chebyshev.Checks.TentLeftDecayControls
```
