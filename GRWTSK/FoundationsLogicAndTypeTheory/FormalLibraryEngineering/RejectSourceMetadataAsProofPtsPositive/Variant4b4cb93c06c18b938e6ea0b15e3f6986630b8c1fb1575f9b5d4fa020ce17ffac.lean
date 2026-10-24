import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PTSModelTransport
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PortPureTypeSystem
universe u v w
variable {S : Type u} (P : Specification S) (N : Model.{v,w})
example (h : N.SystemWeaklyNormalizing → N.SystemStronglyNormalizing) :
    SourceBoundWeakToStrong N where
  source := GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PTSModelTransport.openAIWeakToStrongSource
  «theorem» := h
