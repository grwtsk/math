/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourPaidData

/-! Row 44 of the finite stored interval/LDL comparison.
The actual source enclosure and the `1/5` high floor remain OPEN.
See `WeilRadiusTwoRankFourPaidData` and `WeilRadiusTwoRankFourPaidAllRows`. -/

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourPaidPacket

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem checkedPaidRow44 : RowCheck (.inl 44) := by decide +kernel

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourPaidPacket
