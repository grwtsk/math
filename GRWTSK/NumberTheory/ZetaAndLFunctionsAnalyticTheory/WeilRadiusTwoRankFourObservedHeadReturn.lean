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

/-! Complete exact head44 source identity. All physical and scalar-pole
coordinates are covered; raw/remote products and the high floor remain separate. -/
namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourObservedHead
open GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCandidateEntries
open GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL
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
  rw [← hullInt_source, allHeadIntegers i j]
  rfl

theorem lower_source (i j : Head) :
    (GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPaidObservedGridReturn.head i j).1 =
      dyadic 44 (lower i j) := congrArg Prod.fst (head_source i j)

theorem upper_source (i j : Head) :
    (GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPaidObservedGridReturn.head i j).2 =
      dyadic 44 (upper i j) := congrArg Prod.snd (head_source i j)
end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourObservedHead
