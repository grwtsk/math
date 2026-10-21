/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenPositiveCell

set_option autoImplicit false

/-! Local mutation and sign controls; SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenPositiveCellControls

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
open HeightFifteenBlockDecomposition HeightFifteenPositiveCell

theorem cell275_zero_rejected : chunk directTest directTerm 275 1 ≠ some 0 := by
  rw [cell275]
  decide

theorem cell274_one_rejected : chunk directTest directTerm 274 1 ≠ some 1 := by
  rw [cell274]
  decide

theorem exact_four_reconstruction : chunk directTest directTerm 272 4 = some 1 :=
  positive_four

theorem signed_term_not_absolute : directTerm 275 = 1 := cell275_term

theorem none_ne_successful_zero : (none : Option ℤ) ≠ some 0 := by decide

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenPositiveCellControls
