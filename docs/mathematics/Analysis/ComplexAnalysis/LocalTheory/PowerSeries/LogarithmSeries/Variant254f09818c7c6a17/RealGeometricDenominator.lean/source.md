# Complete source: GRWTSK.Analysis.ComplexAnalysis.LocalTheory.PowerSeries.LogarithmSeries.Variant254f09818c7c6a17.RealGeometricDenominator

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `567c98acf83295d99389a8e31297f4f006a84518` · SHA-256 `c90a913d7fffcd53d4f3230555b3a1ed9469dbd90de839e2439c59b488a62fe0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Nonnegative real geometric denominator estimate on r ≤ 1/2
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

namespace Real

/-- If `0 ≤ r ≤ 1 / 2`, then the geometric-factor denominator is bounded by `2`. -/
lemma pow_div_one_sub_le_two_mul {r : ℝ} (hr : 0 ≤ r) (hrhalf : r ≤ 1 / 2) (m : ℕ) :
    r ^ (m + 1) / (1 - r) ≤ 2 * r ^ (m + 1) := by
  have hpow : 0 ≤ r ^ (m + 1) := pow_nonneg hr _
  have hhalf' : (1 / 2 : ℝ) ≤ 1 - r := by linarith
  calc
    r ^ (m + 1) / (1 - r) ≤ r ^ (m + 1) / (1 / 2 : ℝ) := by
      exact div_le_div_of_nonneg_left hpow (by positivity) hhalf'
    _ = 2 * r ^ (m + 1) := by ring

end Real
end GRWTSK.Analysis.ComplexAnalysis.LocalTheory.PowerSeries.LogarithmSeries.Variant254f09818c7c6a17
```
