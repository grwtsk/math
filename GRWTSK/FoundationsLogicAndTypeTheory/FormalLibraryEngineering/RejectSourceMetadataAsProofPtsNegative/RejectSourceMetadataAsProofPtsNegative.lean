import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PTSModelTransport
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PortPureTypeSystem
universe u v w
variable {S : Type u} (P : Specification S) (N : Model.{v,w})
-- Hostile mutation: the exact source record is not a theorem proof.
example : SourceBoundWeakToStrong N where
  source := GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PTSModelTransport.openAIWeakToStrongSource
  «theorem» := GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PTSModelTransport.openAIWeakToStrongSource
