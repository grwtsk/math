# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Regularized

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d25789c646300c7696638a4a4334e49f4f9466fc` · SHA-256 `ae990f575c3416d32447764edcba29f3bae1cc703f30a2f3fa3f01d74a5ceb5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Analysis.Complex.Convex
import Mathlib.Analysis.Analytic.Uniqueness
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC
open Complex

/-- Entire completed expression for the regularized zeta product. -/
def regularizedZeta (z : ℂ) : ℂ :=
  (z * (z - 1) * completedRiemannZeta₀ z + 1) * (Gammaℝ z)⁻¹

/-- Exact agreement with the regularized zeta product away from zero and the pole. -/
theorem regularizedZeta_eq {z : ℂ} (hz0 : z ≠ 0) (hz1 : z ≠ 1) :
    regularizedZeta z = z * (z - 1) * riemannZeta z := by
  rw [riemannZeta_def_of_ne_zero hz0, completedRiemannZeta_eq]
  unfold regularizedZeta
  have h1 : 1 - z ≠ 0 := sub_ne_zero.mpr hz1.symm
  field_simp [hz0, h1]
  ring

/-- Pole removal uses Mathlib's completed zeta and inverse real Gamma factor. -/
theorem differentiable_regularizedZeta : Differentiable ℂ regularizedZeta := by
  unfold regularizedZeta
  exact ((differentiable_id.mul (differentiable_id.sub_const 1)).mul
    differentiable_completedZeta₀ |>.add_const 1).mul differentiable_Gammaℝ_inv

end GRWTSK.RiemannHypothesis.CCC
```
