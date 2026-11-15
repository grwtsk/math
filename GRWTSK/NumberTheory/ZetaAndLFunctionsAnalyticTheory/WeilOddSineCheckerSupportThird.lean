/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerSupportData

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

set_option maxRecDepth 32768 in
set_option maxHeartbeats 50000000 in
/-- Check the literal signs in grid blocks 64 through 95. -/
theorem supportBlocksThird (block : Fin 32) :
    supportBlockCheck ⟨64 + block.val, by omega⟩ := by
  fin_cases block <;> decide +kernel

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
