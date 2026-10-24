import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore
open GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.OptionalAdapterGate
example {Key : Type} [DecidableEq Key] (L : Ledger Key) (key : Key) (h : L key = none) :
    applySelected L none key = none := absent_route_preserves_none L h
