import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Graph

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

structure ProjectionRule where
  rawRegion : String
  canonicalFiber : CanonicalFiber
  canonicalNode : String
  action : String
deriving DecidableEq, Repr

def canonicalFiberName : CanonicalFiber -> String
  | .pipelineCenter => "Pipeline.Center"
  | .pipelinePhase => "Pipeline.PhaseTable"
  | .poleFamily => "PoleFamily"
  | .residueAlgebra => "ResidueAlgebra"
  | .sourceTreeGeometry => "SourceTreeGeometry"
  | .targetBoundary => "TargetBoundary"
  | .finiteWitness => "TargetWitness"
  | .modularCarrier => "ModularCarrier"
  | .researchCorpus => "ResearchCorpus"
  | .validationShell => "ValidationShell"
  | .braidConformance => "BraidConformance"
  | .buildShell => "BuildShell"

def projectionRules : List ProjectionRule :=
  [ { rawRegion := "Think/Pipeline/Center/*"
      canonicalFiber := .pipelineCenter
      canonicalNode := "Think/Pipeline/Center"
      action := "retain center-weighted control files" }
  , { rawRegion := "Think/Pipeline/Phases/PhaseNN_*.lean"
      canonicalFiber := .pipelinePhase
      canonicalNode := "Think/Pipeline/Phases/PhaseTable.lean"
      action := "fold into indexed phase records" }
  , { rawRegion := "Think/Poles/*Pole/*.lean"
      canonicalFiber := .poleFamily
      canonicalNode := "Think/Poles/<Family>.lean"
      action := "merge pole leaves into one family module" }
  , { rawRegion := "Think/Residues/*.lean"
      canonicalFiber := .residueAlgebra
      canonicalNode := "Think/Residues"
      action := "retain residue algebra modules" }
  , { rawRegion := "Think/SourceTree/*.lean"
      canonicalFiber := .sourceTreeGeometry
      canonicalNode := "Think/SourceTree"
      action := "retain source-tree geometry and Rado projection" }
  , { rawRegion := "Think/Targets/*.lean"
      canonicalFiber := .targetBoundary
      canonicalNode := "Think/Targets"
      action := "retain target boundary layer" }
  , { rawRegion := "Think/FiniteWitnessResidue/Targets/*.lean"
      canonicalFiber := .finiteWitness
      canonicalNode := "Think/FiniteWitnessResidue/Targets/WitnessBridge.lean"
      action := "record as witness-bridge target fiber" }
  , { rawRegion := "Think/ModularWave/*.lean"
      canonicalFiber := .modularCarrier
      canonicalNode := "Think/ModularWave"
      action := "retain arithmetic carrier shell" }
  , { rawRegion := "Think/ResearchSurvey/<topic>.lean"
      canonicalFiber := .researchCorpus
      canonicalNode := "Think/ResearchSurvey/Corpus.lean"
      action := "convert topic files into corpus entries" }
  , { rawRegion := "Think/Validation/*.lean"
      canonicalFiber := .validationShell
      canonicalNode := "Think/Validation"
      action := "retain validation shell" }
  , { rawRegion := "Think/Pipeline/Center/Braid*"
      canonicalFiber := .braidConformance
      canonicalNode := "Think/Pipeline/Center/Braid"
      action := "merge braid law and validation families" }
  , { rawRegion := ".lake"
      canonicalFiber := .buildShell
      canonicalNode := "excluded"
      action := "exclude build artifact shell" }
  ]

theorem projectionRules_count :
    projectionRules.length = 12 := by
  rfl

end Think.RadoProjectedModularHeatflow
