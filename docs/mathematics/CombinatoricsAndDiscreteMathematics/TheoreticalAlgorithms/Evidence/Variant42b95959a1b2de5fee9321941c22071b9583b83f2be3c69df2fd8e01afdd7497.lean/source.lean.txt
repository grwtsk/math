import MathDiscovery.Oracle.Naming.Name
import MathDiscovery.Core.Id

/-! # Exact evidence packets for deterministic naming -/

namespace MathDiscovery.Oracle.Naming

open MathDiscovery

structure NamingEvidence where
  atomId : SourceAtomId
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

def NamingEvidence.StableFor (evidence : NamingEvidence) (atomId : SourceAtomId) : Prop :=
  evidence.atomId = atomId

end MathDiscovery.Oracle.Naming
