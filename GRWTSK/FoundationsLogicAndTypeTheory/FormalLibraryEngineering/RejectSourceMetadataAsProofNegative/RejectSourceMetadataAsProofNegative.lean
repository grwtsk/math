import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge
-- A source identity is data, whereas this field requires a proof of surjectivity.
def metadataCannotProve : SourceBoundRationalHodgeTheorem Examples.lineHodgeData where
  source := openAICMRationalHodgeSource
  variety := "CM metadata only"
  codimension := 0
  realization := "unproved"
  surjective := openAICMRationalHodgeSource
