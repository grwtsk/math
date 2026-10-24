# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectQuarterControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ecd7855c06707c045d93d3cfd6043cf8f8ddaf12` · SHA-256 `2ea8b082d3fcfd2dae0d179aba4e4cd2e453cbbc31e2d22d97bf85acb1f8a709`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectQuarterClosure

set_option autoImplicit false

/-!
# Controls for sixteen-cell claims, signed orientation, and exact exhaustion

These controls reuse the unexecuted local scripts. They do not provide
independent acceptance and do not run the target calculations again.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectQuarterControls

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
open HeightFifteenBlockDecomposition HeightFifteenDirectQuarterBlocks
open HeightFifteenDirectQuarterClaims HeightFifteenDirectQuarterClosure

theorem quarter17_zero_rejected :
    chunk directTest directTerm 272 16 ≠ some 0 := by
  rw [quarter017]
  decide

theorem quarter00_one_rejected :
    chunk directTest directTerm 0 16 ≠ some 1 := by
  rw [quarter000]
  decide

theorem final_three_present :
    chunk directTest directTerm 2376 3 = some 0 :=
  quarter149

theorem exact_exhaustion :
    quarterWidths.sum = HeightFifteenJetCandidate.edges :=
  quarterWidths_shape.2

theorem none_ne_successful_zero : (none : Option ℤ) ≠ some 0 := by decide

theorem positive_half_exact :
    chunk directTest directTerm 256 32 = some 1 :=
  positive_half

theorem positive_block_exact :
    chunk directTest directTerm 256 64 = some 1 :=
  positive_block

theorem claim_sum_one : quarterExpected.sum = 1 :=
  quarterExpected_shape.2

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectQuarterControls
```
