import Mathematics.Oracle.Naming.Name
import Mathematics.Core.Id

/-! # Exact evidence packets for deterministic naming -/

namespace Mathematics.Oracle.Naming

open Mathematics

structure NamingEvidence where
  elementId : SourceElementId
  language : PointLanguage
  declarationNames : Array String
  declarationKinds : Array String
  typeSummaries : Array String
  conceptCoordinates : Array String
  taxonomyCoordinates : Array String
  publicInputs : Array String
  publicOutputs : Array String
  generatedCompanions : Array String
  providerKinds : Array String
  supportIds : Array String
  evidenceDigest : Digest
  deriving DecidableEq, Repr

def NamingEvidence.Supports (evidence : NamingEvidence) (supportId : String) : Prop :=
  supportId ∈ evidence.supportIds

def NamingEvidence.StableFor (evidence : NamingEvidence) (elementId : SourceElementId) : Prop :=
  evidence.elementId = elementId

end Mathematics.Oracle.Naming
