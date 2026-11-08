/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourContainmentGroup00
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourContainmentGroup01
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourContainmentGroup02
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourContainmentGroup03
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourContainmentGroup04
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourContainmentGroup05
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourContainmentGroup06
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourContainmentGroup07
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourContainmentGroup08
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourContainmentGroup09
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourContainmentGroup10
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourContainmentGroup11
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourContainmentGroup12
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourContainmentGroup13
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourContainmentGroup14
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourContainmentGroup15
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourContainmentGroup16

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourPaidAllRows


/-!
# Containment and finite sign of the literal 144-bit paid intervals

All8450 containment comparisons and4225 interval-validity checks are exact
integer inequalities. A packet
numerator on denominator `2^108` is multiplied by `2^36`; division by the
positive `2^144` then gives rational containment in the original packet.
This is a comparison of the actual decoded literal endpoints. It returns
the existing finite packet sign to every real matrix enclosed by these
literal intervals, with that entry-enclosure hypothesis kept explicit.

The numerical extraction, word encoding and integer checks share the same
literal data; they are not independent analytical proofs. Default array
values outside the typed 65-coordinate domain are not observations. A
changed word or scale requires a new comparison. Typed paidBounds source
correspondence remains OPEN, so this does not establish actual hCover.
The new reconstruction's remote source enclosure, independent high floor,
cofinal stages, RH and GRH remain separate. Independent analytical review:
NOT_RUN. Novelty: NOT_ASSESSED. Formal receipts are recorded by Noe.
-/
namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourContainment

set_option maxRecDepth 100000
set_option maxHeartbeats 0
theorem checkedRows : ∀ i : Fin 65, RowCheck i := by
  intro i
  fin_cases i
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
  · exact checkedGroup16 0
open Matrix
open GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCandidateEntries
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

private theorem lowerLift {a b : Int} (h : a * (2^36 : Int) ≤ b) :
    dyadic 108 a ≤ dyadic 144 b := by
  have hq : (a : ℚ) * (2 : ℚ)^36 ≤ (b : ℚ) := by exact_mod_cast h
  unfold dyadic
  norm_num at hq ⊢
  linarith only [hq]

private theorem upperLift {a b : Int} (h : a ≤ b * (2^36 : Int)) :
    dyadic 144 a ≤ dyadic 108 b := by
  have hq : (a : ℚ) ≤ (b : ℚ) * (2 : ℚ)^36 := by exact_mod_cast h
  unfold dyadic
  norm_num at hq ⊢
  linarith only [hq]

/-- Every stored literal interval is ordered, so the entry-enclosure consumer
is not qualified solely by an empty-interval premise. -/
theorem bounds_valid (i j : Head) : (bounds i j).1 ≤ (bounds i j).2 := by
  have h := (checkedRows (gridIndex i) (gridIndex j)).2.2
  have hq : (sourceLower (gridIndex i) (gridIndex j) : ℚ) ≤
      (sourceUpper (gridIndex i) (gridIndex j) : ℚ) := by exact_mod_cast h
  change (sourceLower (gridIndex i) (gridIndex j) : ℚ) / (2 : ℚ)^144 ≤
    (sourceUpper (gridIndex i) (gridIndex j) : ℚ) / (2 : ℚ)^144
  exact div_le_div_of_nonneg_right hq (by positivity)

/-- The actual stored144 rational intervals lie inside the existing finite packet. -/
theorem contained (i j : Head) :
    (GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourPaidPacket.bounds i j).1 ≤
      (bounds i j).1 ∧ (bounds i j).2 ≤
        (GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourPaidPacket.bounds i j).2 := by
  have h := checkedRows (gridIndex i) (gridIndex j)
  constructor
  · simpa only [GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourPaidPacket.bounds,
      bounds, packetLower, gridIndex_val] using lowerLift h.1
  · simpa only [GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourPaidPacket.bounds,
      bounds, packetUpper, gridIndex_val] using upperLift h.2.1

/-- Finite sign for a matrix enclosed by the literal intervals, with source
correspondence deliberately retained as an entry-enclosure premise. -/
theorem intervalSign {A : Matrix Head Head ℝ}
    (hEntry : ∀ i j, Encloses (bounds i j) (A i j)) (v : Head → ℝ) :
    0 ≤ quadratic A v := by
  apply GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourPaidPacket.paidIntervalSign ?_ v
  intro i j
  have hLo : ((GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourPaidPacket.bounds i j).1 : ℝ) ≤
      ((bounds i j).1 : ℝ) := by exact_mod_cast (contained i j).1
  have hHi : ((bounds i j).2 : ℝ) ≤
      ((GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourPaidPacket.bounds i j).2 : ℝ) := by
    exact_mod_cast (contained i j).2
  exact ⟨hLo.trans (hEntry i j).1, (hEntry i j).2.trans hHi⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourContainment
