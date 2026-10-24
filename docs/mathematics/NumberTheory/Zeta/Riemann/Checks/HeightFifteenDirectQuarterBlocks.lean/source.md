# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectQuarterBlocks

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f233c11ba4cc473ed0bbe0a99c30012ba6ad947` · SHA-256 `35f9bce0aceed38eafc6f660551b7955dbef6726a84203279b9c0980c72f7dfe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.Algebra.BigOperators.CheckedChunkComposition
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectHalfBlocks

set_option autoImplicit false

/-!
# Sixteen-cell direct quarter-block decomposition of the fixed contour

Every former 32-cell half-block is split into two 16-cell open chains. The final
11-cell suffix remains split into 8 and 3. These are proof-reduction units, not a
new geometric mesh. The old direct predicate and signed term are unchanged.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectQuarterBlocks

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
open HeightFifteenBlockDecomposition

/-- One hundred forty-eight 16-cell pieces, then the complete final 8+3 suffix. -/
def quarterWidths : List ℕ := List.replicate 148 16 ++ [8,3]

/-- Cell 275 lies in quarter 17; all other quarter-chain contributions are zero. -/
def quarterExpected : List ℤ := List.replicate 17 0 ++ [1] ++ List.replicate 132 0

theorem quarterWidths_shape :
    quarterWidths.length = 150 ∧ quarterWidths.sum = HeightFifteenJetCandidate.edges := by decide

theorem quarterExpected_shape :
    quarterExpected.length = quarterWidths.length ∧ quarterExpected.sum = 1 := by decide

/-- Exact smaller obligations over the old direct cell predicate. -/
def QuarterObligations : Prop :=
  Pieces directTest directTerm 0 quarterWidths quarterExpected

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectQuarterBlocks
```
