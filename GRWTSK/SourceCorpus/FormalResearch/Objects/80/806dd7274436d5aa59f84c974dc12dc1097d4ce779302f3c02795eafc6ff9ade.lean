import Think.Pipeline.Basic

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

inductive CanonicalFiber where
  | pipelineCenter
  | pipelinePhase
  | poleFamily
  | residueAlgebra
  | sourceTreeGeometry
  | targetBoundary
  | finiteWitness
  | modularCarrier
  | researchCorpus
  | validationShell
  | braidConformance
  | buildShell
deriving DecidableEq, Repr

inductive SourceEdgeKind where
  | parentChild
  | aggregator
  | phasePoleCorrespondence
  | targetWitnessMirror
  | modularWaveBridge
  | validationCoverage
  | researchTopicReference
deriving DecidableEq, Repr

structure SourceVertex where
  path : String
  fiber : CanonicalFiber
  heat : Nat
  weight : Nat
  residueClass : String
deriving DecidableEq, Repr

structure SourceEdge where
  source : String
  target : String
  kind : SourceEdgeKind
deriving DecidableEq, Repr

def buildShellExcluded (path : String) : Bool :=
  path = "formal/.lake"

theorem lake_is_excluded :
    buildShellExcluded "formal/.lake" = true := by
  rfl

end Think.RadoProjectedModularHeatflow
