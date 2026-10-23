/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CheckedJetContour
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenBlockDecomposition

set_option autoImplicit false

/-!
# Witness-driven full jets for the SAME literal height-fifteen contour

No new mesh, image table, numerical schedule or Success definition replaces the
original candidate. This only accepts additional successor-state witnesses.
No concrete full-packet acceptance equation is supplied or asserted here.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenCheckedJets

open HeightFifteenJetCandidate

/-- The same complete 2379-cell input. Original shared-image expressions remain. -/
def result (packets : List CheckedPoleJet.Packet) : Option ℤ :=
  CheckedJetContour.evaluateRectangle 15 edges marks plans image packets

/-- A checked witness bundle must imply the original literal Success, not a new flag. -/
theorem success_of_checked {packets : List CheckedPoleJet.Packet}
    (h : result packets = some 1) : HeightFifteenJetCandidate.Success :=
  CheckedJetContour.rectangle_refines h

/-- The old block decomposition still covers ALL cells with their original tests. -/
theorem blocks_of_checked {packets : List CheckedPoleJet.Packet}
    (h : result packets = some 1) :
    ∃ claims,
      GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks.Pieces
        HeightFifteenBlockDecomposition.directTest HeightFifteenBlockDecomposition.directTerm
        0 HeightFifteenBlockDecomposition.widths claims ∧ claims.sum = 1 :=
  HeightFifteenBlockDecomposition.success_iff_exists_blocks.mp (success_of_checked h)

theorem count_one_of_checked {packets : List CheckedPoleJet.Packet}
    (h : result packets = some 1) : MirrorCountingRectangle.count (15 : ℝ) = 1 :=
  count_one_of_success (success_of_checked h)

theorem complete_pair_of_checked {packets : List CheckedPoleJet.Packet}
    (h : result packets = some 1) :
    ∃ z : CanonicalZeroDivisor.ZeroPoint, CanonicalZeroDivisor.multiplicity z = 1 ∧
      z.1.re = (1/2 : ℝ) ∧ CanonicalZeroDivisor.heightHead (15 : ℝ) =
        {z, LocalZeroSymmetry.conjugatePoint z} :=
  complete_pair_of_success (success_of_checked h)

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenCheckedJets
