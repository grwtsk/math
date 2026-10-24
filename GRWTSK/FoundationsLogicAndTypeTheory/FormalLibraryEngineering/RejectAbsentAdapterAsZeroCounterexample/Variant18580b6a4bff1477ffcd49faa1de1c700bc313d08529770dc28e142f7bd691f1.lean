import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore
open GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.OptionalAdapterGate
open Fixtures
example : applySelected emptyLedger none Key.boundary ≠ some 0 := by
  simp [applySelected, emptyLedger]
