/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Finite counted Euler obstruction proof drafting assistance: OpenAI. -/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCyclicEdgeCertificate
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Two disconnected balanced loops are not cyclically realizable

The width-two binary blocks 00 and 11 each have multiplicity one,
and 01 and 10 each have multiplicity zero. The resulting counted
directed graph has balanced in/out degrees at both supported vertices
but no single cyclic Euler ordering. This negative fixture preserves
parallel-edge instances and is independent of any Liouville assertion.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

/-- Exactly one 00 and one 11 edge, with no cross edges. -/
def disconnectedTwoLoopCounts (w : BinaryEdgeWord 1) : ℕ :=
  if w ⟨0, by omega⟩ = w ⟨1, by omega⟩ then 1 else 0

/-- The counted edge total is exactly two. -/
theorem disconnectedTwoLoopCounts_total :
    countedBinaryEdgeTotal 1 disconnectedTwoLoopCounts = 2 := by
  decide

/-- Every supported edge is a loop, so the graph is degree balanced.
The two loops lie in different weak components. -/
theorem disconnectedTwoLoopCounts_loops (w : BinaryEdgeWord 1)
    (hw : 0 < disconnectedTwoLoopCounts w) :
    binaryEdgePrefix 1 w = binaryEdgeSuffix 1 w := by
  have heq : w ⟨0, by omega⟩ = w ⟨1, by omega⟩ := by
    by_contra hn
    simp [disconnectedTwoLoopCounts, hn] at hw
  funext i
  fin_cases i
  exact heq

/-- A two-position cyclic binary word has two equal adjacent blocks
only if its two bits agree; it cannot simultaneously realize 00
and 11 once each. -/
theorem disconnectedTwoLoopCounts_not_realizable :
    ¬ CyclicCountRealizable 1 disconnectedTwoLoopCounts := by
  decide

/-- Consequently there is no compatible cyclic order of the
individual counted edge instances. This consumes the independently
verified certificate/word equivalence. -/
theorem disconnectedTwoLoopCounts_no_euler_certificate :
    ¬ ∃ hN : 0 < countedBinaryEdgeTotal 1 disconnectedTwoLoopCounts,
        Nonempty (CountedCyclicEulerCertificate 1 disconnectedTwoLoopCounts hN) := by
  exact (cyclicCountRealizable_iff_certificate 1 disconnectedTwoLoopCounts).not.mp
    disconnectedTwoLoopCounts_not_realizable

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
