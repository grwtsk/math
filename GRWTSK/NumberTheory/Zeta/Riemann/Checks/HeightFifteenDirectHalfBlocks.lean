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
