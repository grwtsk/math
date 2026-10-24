# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectEighthBlocks

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8087b3661fc095f77604f912d83ead9e8690b218` · SHA-256 `ab8f7d876557b8685e7305f9174159c2ce96b57dbd04482473c2287de3efea6e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.Algebra.BigOperators.CheckedChunkComposition
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectQuarterBlocks

set_option autoImplicit false

/-!
# Eight-cell direct eighth-block decomposition of the fixed contour

Every former 16-cell quarter-block is split into two 8-cell open chains. The final
3-cell suffix remains explicit. These are proof-reduction units, not a new
geometric mesh. The old direct predicate and signed term are unchanged.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectEighthBlocks

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
open HeightFifteenBlockDecomposition

/-- Two hundred ninety-seven 8-cell pieces, then the complete final 3-cell suffix. -/
def eighthWidths : List ℕ := List.replicate 297 8 ++ [3]

/-- Cell 275 lies in eighth 34; all other eighth-chain contributions are zero. -/
def eighthExpected : List ℤ := List.replicate 34 0 ++ [1] ++ List.replicate 263 0

theorem eighthWidths_shape :
    eighthWidths.length = 298 ∧ eighthWidths.sum = HeightFifteenJetCandidate.edges := by decide

theorem eighthExpected_shape :
    eighthExpected.length = eighthWidths.length ∧ eighthExpected.sum = 1 := by decide

/-- Exact smaller obligations over the old direct cell predicate. -/
def EighthObligations : Prop :=
  Pieces directTest directTerm 0 eighthWidths eighthExpected

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectEighthBlocks
```
