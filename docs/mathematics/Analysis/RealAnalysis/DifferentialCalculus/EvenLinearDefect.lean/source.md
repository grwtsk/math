# Complete source: GRWTSK.Analysis.Calculus.EvenLinearDefect

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ffdea9c3caeb2dbac544f6e442815756cf33076` · SHA-256 `66483c9fb8e0b20b0d2a37441c303481ad3a08ee20bce054ed500398d9dab507`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Calculus.Deriv.Comp
import Mathlib.Analysis.Calculus.Deriv.Slope
import Mathlib.Tactic

/-!
# Even functions with a one-sided linear defect

A reusable differentiability obstruction. Applying this to an autocorrelation
requires a separately proved actual translation-energy defect; this module
supplies no integral identity, source regularity claim or arithmetic estimate.
-/

namespace GRWTSK.Analysis.Calculus.EvenLinearDefect

open Filter Set
open scoped Topology

theorem even_deriv_at_zero {f : ℝ → ℝ} (even : Function.Even f)
    (differentiable : DifferentiableAt ℝ f 0) : deriv f 0 = 0 := by
  have original := differentiable.hasDerivAt
  have reflected : HasDerivAt (fun x : ℝ ↦ f (-x)) (-deriv f 0) 0 := by
    have negativeIdentity : HasDerivAt (fun x : ℝ ↦ -x) (-1) 0 := by
      simpa using! ((hasDerivAt_id (0 : ℝ)).neg)
    have atNegativeZero : HasDerivAt f (deriv f 0) (-(0 : ℝ)) := by
      simpa using original
    simpa using! atNegativeZero.comp 0 negativeIdentity
  have equalFunctions : (fun x : ℝ ↦ f (-x)) = f := funext even
  rw [equalFunctions] at reflected
  have sameDerivative := original.unique reflected
  linarith

theorem not_differentiable_at_zero_of_linear_defect {f : ℝ → ℝ}
    (even : Function.Even f) {c : ℝ} (positive : 0 < c)
    (defect : ∀ᶠ h in 𝓝[>] (0 : ℝ), c * h ≤ f 0 - f h) :
    ¬ DifferentiableAt ℝ f 0 := by
  intro differentiable
  have derivativeZero := even_deriv_at_zero even differentiable
  have slopeLimit : Tendsto (fun h : ℝ ↦ h⁻¹ * (f h - f 0))
      (𝓝[>] 0) (𝓝 0) := by
    simpa only [zero_add, smul_eq_mul, derivativeZero] using
      differentiable.hasDerivAt.tendsto_slope_zero_right
  have slopeBound : ∀ᶠ h in 𝓝[>] (0 : ℝ), h⁻¹ * (f h - f 0) ≤ -c := by
    filter_upwards [defect, self_mem_nhdsWithin] with h lower hPositive
    have quotient : (f h - f 0) / h ≤ -c :=
      (div_le_iff₀ hPositive).mpr (by linarith)
    simpa only [div_eq_mul_inv, mul_comm] using quotient
  have impossible : (0 : ℝ) ≤ -c := le_of_tendsto slopeLimit slopeBound
  linarith

end GRWTSK.Analysis.Calculus.EvenLinearDefect
```
