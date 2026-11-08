/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourObservedHeadCore

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourObservedHead
set_option maxRecDepth 100000
set_option maxHeartbeats 0
theorem checkedGroup08 : ∀ k : Fin 4, Good (.inl ⟨32 + k.val, by omega⟩) := by decide +kernel
end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourObservedHead
