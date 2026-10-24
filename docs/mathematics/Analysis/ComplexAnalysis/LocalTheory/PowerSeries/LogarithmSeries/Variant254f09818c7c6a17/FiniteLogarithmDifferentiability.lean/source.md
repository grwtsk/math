# Complete source: GRWTSK.Analysis.ComplexAnalysis.LocalTheory.PowerSeries.LogarithmSeries.Variant254f09818c7c6a17.FiniteLogarithmDifferentiability

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c48598b08676b2f7612a6af7f246e6c3febc3f2f` · SHA-256 `0ba1668be84ee330a3b33c6567c49c7f6bfeeb67702dbe53f87294a49eae003f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Derivative and differentiability of the exact finite logarithm polynomial
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 254f09818c7c6a1791c95ece85e5e3d784a3f20fdfb5d0830e72a725045bb2e9
Organized SHA-256: ab9cd979ca096bdf5c7ae809e5c35ec86615c981668f3584b77fd5fd63ff2d90
PMD: 510.5.030.020.010 power series (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespace/context wrappers and explicit same-version component imports are changed; source-specific Matteo Cipollina copyright, author and Apache-2.0 notice remain exact. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Copyright (c) 2026 Matteo Cipollina. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Matteo Cipollina
-/
module

public import Mathlib.Analysis.SpecialFunctions.Complex.LogBounds

public import GRWTSK.Analysis.ComplexAnalysis.LocalTheory.PowerSeries.LogarithmSeries.Variant254f09818c7c6a17.FiniteLogarithmSums
/-!
# Logarithm estimates for Weierstrass products

This file develops the finite truncation and tail estimates for the logarithm series
`-log (1 - z)`.  These estimates are the local analytic input for bounding Weierstrass
factors and canonical products.
-/

noncomputable section

public section

open scoped BigOperators

open Real Complex

namespace GRWTSK.Analysis.ComplexAnalysis.LocalTheory.PowerSeries.LogarithmSeries.Variant254f09818c7c6a17

namespace Complex

lemma hasDerivAt_partialLogSum (m : ℕ) (z : ℂ) :
    HasDerivAt (partialLogSum m) (∑ j ∈ Finset.range m, z ^ j) z := by
  cases m with
  | zero =>
      have hzero : partialLogSum 0 = fun _ : ℂ ↦ (0 : ℂ) := by
        funext w
        exact partialLogSum_zero w
      simpa [hzero] using (hasDerivAt_const z (c := (0 : ℂ)))
  | succ m =>
      have hsum :
          (∑ j ∈ Finset.range (m + 1), z ^ j) =
            ∑ j ∈ Finset.range (m + 1), (-1) ^ j * (-z) ^ j := by
        refine Finset.sum_congr rfl ?_
        intro j hj
        symm
        calc
          (-1 : ℂ) ^ j * (-z) ^ j = (-1 : ℂ) ^ j * (((-1 : ℂ) * z) ^ j) := by simp
          _ = ((-1 : ℂ) ^ j * (-1 : ℂ) ^ j) * z ^ j := by rw [mul_pow]; ring
          _ = z ^ j := by
                rw [← pow_add, show j + j = 2 * j by omega, pow_mul]
                norm_num
      rw [hsum]
      simpa [partialLogSum] using
        (((hasDerivAt_logTaylor (m + 1) (-z)).comp z (hasDerivAt_neg z)).neg)

lemma differentiable_partialLogSum (m : ℕ) :
    Differentiable ℂ (fun z : ℂ => partialLogSum m z) := by
  intro z
  exact (hasDerivAt_partialLogSum m z).differentiableAt

end Complex

end GRWTSK.Analysis.ComplexAnalysis.LocalTheory.PowerSeries.LogarithmSeries.Variant254f09818c7c6a17
```
