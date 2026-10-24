# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectSixteenthBlocks

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd5112a7cf5af5160cfad50f3191dae849f4367e` · SHA-256 `2eacbb08fe5710fac37f671727ee5114cc820e613e014eb0b8a2a92e399da17e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.Algebra.BigOperators.CheckedChunkComposition
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectEighthBlocks

set_option autoImplicit false

/-!
# Four-cell direct sixteenth-block decomposition of the fixed contour

Every former 8-cell eighth-block is split into two 4-cell open chains. The final
3-cell suffix remains explicit. These are proof-reduction units, not a new
geometric mesh. The old direct predicate and signed term are unchanged.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectSixteenthBlocks

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
open HeightFifteenBlockDecomposition

/-- Five hundred ninety-four 4-cell pieces, then the complete final 3-cell suffix. -/
def sixteenthWidths : List ℕ := List.replicate 594 4 ++ [3]

/-- Cell 275 lies in sixteenth 68; all other sixteenth-chain contributions are zero. -/
def sixteenthExpected : List ℤ := List.replicate 68 0 ++ [1] ++ List.replicate 526 0

theorem sixteenthWidths_shape :
    sixteenthWidths.length = 595 ∧ sixteenthWidths.sum = HeightFifteenJetCandidate.edges := by decide

theorem sixteenthExpected_shape :
    sixteenthExpected.length = sixteenthWidths.length ∧ sixteenthExpected.sum = 1 := by decide

/-- Exact smaller obligations over the old direct cell predicate. -/
def SixteenthObligations : Prop :=
  Pieces directTest directTerm 0 sixteenthWidths sixteenthExpected

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectSixteenthBlocks
```
