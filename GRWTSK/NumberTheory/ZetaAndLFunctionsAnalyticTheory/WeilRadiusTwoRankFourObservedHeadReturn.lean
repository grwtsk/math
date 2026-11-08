/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourObservedHeadGroup00
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourObservedHeadGroup01
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourObservedHeadGroup02
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourObservedHeadGroup03
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourObservedHeadGroup04
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourObservedHeadGroup05
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourObservedHeadGroup06
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourObservedHeadGroup07
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourObservedHeadGroup08
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourObservedHeadGroup09
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourObservedHeadGroup10
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourObservedHeadGroup11
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourObservedHeadGroup12
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourObservedHeadGroup13
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourObservedHeadGroup14
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourObservedHeadGroup15
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourObservedHeadPole
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPaidObservedGridReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourRemoteReturn

/-!
# Complete exact head44 source return

The sixteen groups cover physical rows 0 through 63, with every physical and
pole column in each row; `checkedPole` covers the remaining row. Decoding their
integer equalities and the two-orientation hull returns all 4225 stored pairs
to `RadiusTwoPaidObservedGridReturn.head`. `bounds_sound` then transports the
existing observed-grid enclosure to the stored table, without a new soundness
assumption. The denominator remains exactly `2^44`.

`calculatedBounds_source` substitutes this table into the very same paid
calculation consumed by packet containment in
https://github.com/grwtsk/math/issues/1774. It retains the reconstruction of
https://github.com/grwtsk/math/issues/1770, raw centres/radii, complete remote
intervals, and symmetric hull. Equality of the head tables supplies neither the
packet inequalities nor any new sign estimate. In particular the independent
mode-64 `HighFloor 2 (-1/2) (1/5) 64` remains open; this module does not prove
`StageLower 1`.

The primary argument is exact signed integer arithmetic, including both
outward roundings, followed by positive-denominator decoding. Pole signs and
the unshifted scalar corner `1/2` are retained. The return and the stored table
share the scalar observations; they are not independent analytic proofs.
The group decisions are proof candidates until executed against pinned source.
Compilation: NOT_RUN. Fresh kernel replay: NOT_RUN. Transitive axiom audit:
NOT_RUN. Independent analytical review: NOT_RUN. Novelty: NOT_ASSESSED.
-/
namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourObservedHead
open GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCandidateEntries
open GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
theorem allHeadIntegers (i : Head) : Good i := by
  rcases i with i | ⟨⟩
  · fin_cases i
    · exact checkedGroup00 0
    · exact checkedGroup00 1
    · exact checkedGroup00 2
    · exact checkedGroup00 3
    · exact checkedGroup01 0
    · exact checkedGroup01 1
    · exact checkedGroup01 2
    · exact checkedGroup01 3
    · exact checkedGroup02 0
    · exact checkedGroup02 1
    · exact checkedGroup02 2
    · exact checkedGroup02 3
    · exact checkedGroup03 0
    · exact checkedGroup03 1
    · exact checkedGroup03 2
    · exact checkedGroup03 3
    · exact checkedGroup04 0
    · exact checkedGroup04 1
    · exact checkedGroup04 2
    · exact checkedGroup04 3
    · exact checkedGroup05 0
    · exact checkedGroup05 1
    · exact checkedGroup05 2
    · exact checkedGroup05 3
    · exact checkedGroup06 0
    · exact checkedGroup06 1
    · exact checkedGroup06 2
    · exact checkedGroup06 3
    · exact checkedGroup07 0
    · exact checkedGroup07 1
    · exact checkedGroup07 2
    · exact checkedGroup07 3
    · exact checkedGroup08 0
    · exact checkedGroup08 1
    · exact checkedGroup08 2
    · exact checkedGroup08 3
    · exact checkedGroup09 0
    · exact checkedGroup09 1
    · exact checkedGroup09 2
    · exact checkedGroup09 3
    · exact checkedGroup10 0
    · exact checkedGroup10 1
    · exact checkedGroup10 2
    · exact checkedGroup10 3
    · exact checkedGroup11 0
    · exact checkedGroup11 1
    · exact checkedGroup11 2
    · exact checkedGroup11 3
    · exact checkedGroup12 0
    · exact checkedGroup12 1
    · exact checkedGroup12 2
    · exact checkedGroup12 3
    · exact checkedGroup13 0
    · exact checkedGroup13 1
    · exact checkedGroup13 2
    · exact checkedGroup13 3
    · exact checkedGroup14 0
    · exact checkedGroup14 1
    · exact checkedGroup14 2
    · exact checkedGroup14 3
    · exact checkedGroup15 0
    · exact checkedGroup15 1
    · exact checkedGroup15 2
    · exact checkedGroup15 3
  · exact checkedPole

/-- The actual head interval is exactly the pinned 44-bit endpoint pair. -/
theorem head_source (i j : Head) :
    GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPaidObservedGridReturn.head i j = bounds i j := by
  change GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCandidateHead.headBoundsHull
    RadiusTwoHeadPacket.bits RadiusTwoHeadPacket.tables i j = bounds i j
  rw [← hullInt_source i j, allHeadIntegers i j]
  rfl

theorem lower_source (i j : Head) :
    (GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPaidObservedGridReturn.head i j).1 =
      dyadic 44 (lower i j) := congrArg Prod.fst (head_source i j)

theorem upper_source (i j : Head) :
    (GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPaidObservedGridReturn.head i j).2 =
      dyadic 44 (upper i j) := congrArg Prod.snd (head_source i j)

/-- Function equality permits substitution in consumers that take the whole head. -/
theorem head_source_fun :
    RadiusTwoPaidObservedGridReturn.head = bounds := by
  funext i j
  exact head_source i j

/-- Every stored endpoint pair encloses the original shifted bordered source. -/
theorem bounds_sound (i j : Head) :
    Encloses (bounds i j)
      (GRWTSK.LinearAlgebra.SchurObserver.shiftedBlock
        (OddSchurAccounting.borderedSourceMatrix 2 64)
        GRWTSK.LinearAlgebra.SchurObserver.poleShiftMetric (-1 / 2) i j) := by
  rw [← head_source i j]
  exact RadiusTwoPaidObservedGridReturn.head_sound i j

/-- Replacing only the head by its stored endpoints preserves the exact
rank-four calculated interval used by the packet-containment consumer. -/
theorem calculatedBounds_source (i j : Head) :
    RadiusTwoRankFourRemoteReturn.calculatedBounds i j =
      RadiusTwoPaidLowerBounds.symmetricBounds
        (RadiusTwoPaidObservationBounds.paidBounds bounds
          RadiusTwoPaidObservedGridReturn.centres
          RadiusTwoPaidObservedGridReturn.radii
          RadiusTwoSchurPaidReconstruction.reconstructionQ
          RadiusTwoRankFourRemoteReturn.remote) i j := by
  unfold RadiusTwoRankFourRemoteReturn.calculatedBounds
  rw [head_source_fun]
end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourObservedHead
