import GRWTSK.Interfaces.GraphHodgePortCore
open GRWTSK.Interfaces.OptionalAdapterGate
example {Key : Type} [DecidableEq Key] (L : Ledger Key) (key : Key) (h : L key = none) :
    applySelected L none key = none := absent_route_preserves_none L h
