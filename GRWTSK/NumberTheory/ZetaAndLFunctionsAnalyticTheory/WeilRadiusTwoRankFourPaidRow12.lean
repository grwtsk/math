/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourPaidData

/-! Row 12 of the finite stored interval/LDL comparison.
The actual source enclosure and the `1/5` high floor remain OPEN.
See `WeilRadiusTwoRankFourPaidData` and `WeilRadiusTwoRankFourPaidAllRows`. -/

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourPaidPacket

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem checkedPaidRow12 : RowCheck (.inl 12) := by decide +kernel

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourPaidPacket
