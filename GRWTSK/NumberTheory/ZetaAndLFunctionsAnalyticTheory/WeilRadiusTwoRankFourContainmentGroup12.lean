/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourContainmentData

/-! Four-row literal endpoint containment group 12.
Typed paidBounds correspondence, actual remote enclosure and high floor remain OPEN. -/
namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourContainment
set_option maxRecDepth 100000
set_option maxHeartbeats 0
theorem checkedGroup12 : ∀ k : Fin 4, RowCheck (⟨48 + k.val, by omega⟩ : Fin 65) := by decide +kernel
end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourContainment
