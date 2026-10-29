import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore
open GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.OptionalAdapterGate
open Fixtures
example : addTransport.apply Key.boundary = none := addTransport_result.2
example : addTransport.apply Key.transport ≠ emptyLedger Key.transport := by
  rw [addTransport_result.1]
  simp [emptyLedger]
