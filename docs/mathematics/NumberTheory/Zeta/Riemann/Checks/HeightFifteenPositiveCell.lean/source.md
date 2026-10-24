# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenPositiveCell

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7b8c664e17800ee0a97d07b62eca0189f0c2135` · SHA-256 `4d3a5616a591c4c72e0e2406be6fb2028b8301518ff9c5f33577c9584ae4f906`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.Algebra.BigOperators.CheckedChunkComposition
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectSixteenthClosure

set_option autoImplicit false

/-!
# Isolate the unique positive polygon increment to one contour cell

These four one-cell decisions refine the existing positive four-cell piece
[272,276). They use the unchanged direct predicate and signed term. Cell 275 is
a polygon branch-crossing index, not a claimed zeta-zero location.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenPositiveCell

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
open GRWTSK.Algebra.BigOperators.CheckedChunkComposition
open HeightFifteenBlockDecomposition

theorem cell272 : chunk directTest directTerm 272 1 = some 0 := by decide
theorem cell273 : chunk directTest directTerm 273 1 = some 0 := by decide
theorem cell274 : chunk directTest directTerm 274 1 = some 0 := by decide
theorem cell275 : chunk directTest directTerm 275 1 = some 1 := by decide

theorem left_pair : chunk directTest directTerm 272 2 = some 0 := by
  simpa using chunk_add cell272 cell273

theorem right_pair : chunk directTest directTerm 274 2 = some 1 := by
  simpa using chunk_add cell274 cell275

theorem positive_four : chunk directTest directTerm 272 4 = some 1 := by
  simpa using chunk_add left_pair right_pair

theorem cell275_test : directTest 275 = true := by
  have h := (chunk_eq_some_iff directTest directTerm 275 1 1).mp cell275
  simpa [allRange] using h.1

theorem cell275_term : directTerm 275 = 1 := by
  have h := (chunk_eq_some_iff directTest directTerm 275 1 1).mp cell275
  simpa [sumRange] using h.2

theorem original_success : HeightFifteenJetCandidate.Success :=
  HeightFifteenDirectSixteenthClosure.original_success

theorem regional_count_one : MirrorCountingRectangle.count (15 : ℝ) = 1 :=
  HeightFifteenJetCandidate.count_one_of_success original_success

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenPositiveCell
```
