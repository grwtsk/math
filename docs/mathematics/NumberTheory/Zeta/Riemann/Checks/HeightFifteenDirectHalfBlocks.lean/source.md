# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectHalfBlocks

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35673c6bb4bb509e058dcb6d6c07f6606ca2063c` · SHA-256 `39fd0e456b7e1f8ee31061741d1c4fba36bb1807d39708c5d55106047c2b7343`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.BigOperators.CheckedChunkComposition
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenCanonicalBlocks

set_option autoImplicit false

/-!
# Thirty-two-cell direct half-block decomposition of the fixed contour

Each former 64-cell block is split into two 32-cell open chains. The final
11-cell suffix is split into 8 and 3. These are proof-reduction units, not a new
geometric mesh. The old direct predicate and signed term are unchanged.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectHalfBlocks

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
open HeightFifteenBlockDecomposition

/-- Seventy-four 32-cell pieces, then the complete final 8+3 suffix. -/
def halfWidths : List ℕ := List.replicate 74 32 ++ [8,3]

/-- Cell 275 lies in half 8; all other half-chain contributions are zero. -/
def halfExpected : List ℤ := List.replicate 8 0 ++ [1] ++ List.replicate 67 0

theorem halfWidths_shape :
    halfWidths.length = 76 ∧ halfWidths.sum = HeightFifteenJetCandidate.edges := by decide

theorem halfExpected_shape :
    halfExpected.length = halfWidths.length ∧ halfExpected.sum = 1 := by decide

/-- Exact smaller obligations over the old direct cell predicate. -/
def HalfObligations : Prop :=
  Pieces directTest directTerm 0 halfWidths halfExpected

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectHalfBlocks
```
