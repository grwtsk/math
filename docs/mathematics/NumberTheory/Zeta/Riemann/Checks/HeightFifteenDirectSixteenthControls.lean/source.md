# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectSixteenthControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f0aeb72e1d141ac7c94c0ba3b8b742055b7e9e7` · SHA-256 `f0dab074f61f779852aadd999314ed6b884c9aec84c59538ddeecfd5d4f43a6e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectSixteenthClosure

set_option autoImplicit false

/-!
# Controls for four-cell claims, signed orientation, and exact exhaustion

These controls reuse the unexecuted local scripts. They do not provide
independent acceptance and do not run the target calculations again.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectSixteenthControls

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
open HeightFifteenBlockDecomposition HeightFifteenDirectSixteenthBlocks
open HeightFifteenDirectSixteenthClaims HeightFifteenDirectSixteenthClosure

theorem sixteenth68_zero_rejected :
    chunk directTest directTerm 272 4 ≠ some 0 := by
  rw [sixteenth068]
  decide

theorem sixteenth00_one_rejected :
    chunk directTest directTerm 0 4 ≠ some 1 := by
  rw [sixteenth000]
  decide

theorem final_three_present :
    chunk directTest directTerm 2376 3 = some 0 :=
  sixteenth594

theorem exact_exhaustion :
    sixteenthWidths.sum = HeightFifteenJetCandidate.edges :=
  sixteenthWidths_shape.2

theorem none_ne_successful_zero : (none : Option ℤ) ≠ some 0 := by decide

theorem positive_four_exact :
    chunk directTest directTerm 272 4 = some 1 :=
  positive_four

theorem positive_eighth_exact :
    chunk directTest directTerm 272 8 = some 1 :=
  positive_eighth

theorem positive_quarter_exact :
    chunk directTest directTerm 272 16 = some 1 :=
  positive_quarter

theorem positive_half_exact :
    chunk directTest directTerm 256 32 = some 1 :=
  positive_half

theorem positive_block_exact :
    chunk directTest directTerm 256 64 = some 1 :=
  positive_block

theorem claim_sum_one : sixteenthExpected.sum = 1 :=
  sixteenthExpected_shape.2

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectSixteenthControls
```
