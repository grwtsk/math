/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCandidateEntries
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoGammaPoleObservations

/-!
# Concrete scalar tables for the radius-two reconstructed candidate

Use the exact prime inventory, the signed gamma image tails and the
literal alternating pole column. These rational functions provide every
entry enclosure for the retained head and the 1984 by 513 residual
rectangle. The existing source identity then prices reconstruction error.
The remote allowance remains a separate full-tail quadratic, and a lower
sign certificate still needs a checked high floor at this cutoff.
Independent analytical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCandidateBounds

open RadiusTwoCandidateEntries RadiusTwoGammaPoleObservations

/-- Outward rational endpoints for the complete radius-two entry recipe. -/
def tables (bits K : ℕ) : ScalarTables :=
  scalarTablesFrom bits (archOffDiagonalBoundsFrom bits K (fun n => boundaryPartialBounds bits n K))
    (gammaDiagonalBounds bits K) (poleBounds bits)

theorem tables_sound (bits : ℕ) {K : ℕ} (hK : 1024 ≤ K) : (tables bits K).Sound :=
  scalarTablesFrom_sound bits
    (fun m n hm hn _ _ hmn => archOffDiagonalBoundsFrom_sound bits (by omega) hm hn hmn
      (boundaryPartialBounds_sound bits m K) (boundaryPartialBounds_sound bits n K))
    (fun _ hn hn' => gammaDiagonalBounds_sound bits hK hn hn')
    (fun _ hn _ => poleBounds_sound bits hn)

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCandidateBounds
