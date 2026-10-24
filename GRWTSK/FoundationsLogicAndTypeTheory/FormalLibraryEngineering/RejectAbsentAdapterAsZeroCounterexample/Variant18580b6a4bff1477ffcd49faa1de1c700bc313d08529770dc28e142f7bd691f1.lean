import GRWTSK.Interfaces.GraphHodgePortCore
open GRWTSK.Interfaces.OptionalAdapterGate
open Fixtures
example : applySelected emptyLedger none Key.boundary ≠ some 0 := by
  simp [applySelected, emptyLedger]
