import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Logic.PTSModelTransport
open GRWTSK.Logic.PortPureTypeSystem
universe u v w
variable {S : Type u} (P : Specification S) (N : Model.{v,w})
example (h : N.SystemWeaklyNormalizing → N.SystemStronglyNormalizing) :
    SourceBoundWeakToStrong N where
  source := GRWTSK.Logic.PTSModelTransport.openAIWeakToStrongSource
  «theorem» := h
