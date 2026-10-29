import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore
open GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.OptionalAdapterGate
example {Key : Type} [DecidableEq Key] {L M : Ledger Key}
    (P : AcceptedPlan L M) (key : Key) : M key = L key :=
  P.apply_eq_of_not_touches
