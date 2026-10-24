import GRWTSK.Interfaces.GraphHodgePortCore
open GRWTSK.Interfaces.OptionalAdapterGate
open Fixtures
example : applySelected emptyLedger none Key.boundary = some 0 :=
  absent_route_preserves_none emptyLedger (key := Key.boundary) rfl
