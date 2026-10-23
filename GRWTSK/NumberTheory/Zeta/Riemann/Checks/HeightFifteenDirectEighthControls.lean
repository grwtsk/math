/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectEighthClosure

set_option autoImplicit false

/-!
# Controls for eight-cell claims, signed orientation, and exact exhaustion

These controls reuse the unexecuted local scripts. They do not provide
independent acceptance and do not run the target calculations again.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectEighthControls

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
open HeightFifteenBlockDecomposition HeightFifteenDirectEighthBlocks
open HeightFifteenDirectEighthClaims HeightFifteenDirectEighthClosure

theorem eighth34_zero_rejected :
    chunk directTest directTerm 272 8 ≠ some 0 := by
  rw [eighth034]
  decide

theorem eighth00_one_rejected :
    chunk directTest directTerm 0 8 ≠ some 1 := by
  rw [eighth000]
  decide

theorem final_three_present :
    chunk directTest directTerm 2376 3 = some 0 :=
  eighth297

theorem exact_exhaustion :
    eighthWidths.sum = HeightFifteenJetCandidate.edges :=
  eighthWidths_shape.2

theorem none_ne_successful_zero : (none : Option ℤ) ≠ some 0 := by decide

theorem positive_quarter_exact :
    chunk directTest directTerm 272 16 = some 1 :=
  positive_quarter

theorem positive_half_exact :
    chunk directTest directTerm 256 32 = some 1 :=
  positive_half

theorem positive_block_exact :
    chunk directTest directTerm 256 64 = some 1 :=
  positive_block

theorem claim_sum_one : eighthExpected.sum = 1 :=
  eighthExpected_shape.2

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectEighthControls
