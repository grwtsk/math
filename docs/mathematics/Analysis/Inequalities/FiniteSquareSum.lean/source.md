# Complete source: GRWTSK.Analysis.Inequalities.FiniteSquareSum

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9922916c382300bf727104526cd5bacd59f1c8fc` · SHA-256 `e99545553f851d1f6021dcca762e81e52bf82481acd46ca9d7f4edb09e96530e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Adapted from OpenAI's openai/math, revision
1581d4cbdd69a0faf34b2089614fe2a814316a6a,
lean/OAI/Algebra/DepthFive/TraceRank.lean.
Upstream authorship: OpenAI, per lean/formalization.yaml.
Released under Apache-2.0; see LICENSES/OpenAI-Apache-2.0.txt.
Changes: separate finite-sum interface, mathematical namespace, minimal imports,
and replay under this repository's pinned environment.
Human project direction: grwtsk contributors. Adaptation assistance: OpenAI Codex.
Mathlib retains its upstream authorship and licensing.
-/
import Mathlib.Algebra.Order.Chebyshev
import Mathlib.Data.Real.Basic

/-! # A support-sensitive finite square-sum inequality -/

set_option autoImplicit false

namespace GRWTSK.Analysis.FiniteSquareSum

open scoped BigOperators

/-- Cauchy-Schwarz with only nonzero summands counted. -/
theorem sq_sum_le_support_card_mul_sum_sq {ι : Type*} [Fintype ι]
    (f : ι → ℝ) :
    (∑ i, f i) ^ 2 ≤ (Fintype.card {i // f i ≠ 0} : ℝ) * ∑ i, f i ^ 2 := by
  classical
  let s := Finset.univ.filter (fun i => f i ≠ 0)
  have hsum : ∑ i ∈ s, f i = ∑ i, f i := by
    exact Finset.sum_filter_ne_zero _
  have hsq : ∑ i ∈ s, f i ^ 2 = ∑ i, f i ^ 2 := by
    apply Finset.sum_subset (Finset.filter_subset _ _)
    intro i hi his
    have hf : f i = 0 := by simpa [s] using his
    simp [hf]
  have h := sq_sum_le_card_mul_sum_sq (s := s) (f := f)
  simpa only [hsum, hsq, Fintype.card_subtype] using h

end GRWTSK.Analysis.FiniteSquareSum
```
