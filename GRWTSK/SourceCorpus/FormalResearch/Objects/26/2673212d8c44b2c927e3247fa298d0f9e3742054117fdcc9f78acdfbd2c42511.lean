import MathDiscovery.ProofStrategy.Observation

/-! # Interpreted proof-strategy evidence -/

namespace MathDiscovery.ProofStrategy

open MathDiscovery MathDiscovery.Extractor

inductive InterpretationAuthority
  | reviewedClassification
  | compiledMotifInterpretation
  | heuristicInference
  deriving DecidableEq, Inhabited

structure StrategyEvidence where
  id : ProofObservationId
  theoremId : DeclarationId
  strategy : Kind
  motifObservationIds : List ProofObservationId
  proofPaths : List (List Nat)
  authority : InterpretationAuthority
  ambiguities : List String
  digest : Digest
  deriving DecidableEq

namespace StrategyEvidence

def Valid (evidence : StrategyEvidence) : Prop :=
  evidence.id.Valid ∧
  evidence.theoremId.Valid ∧
  evidence.strategy.id.Valid ∧
  evidence.motifObservationIds.Nodup ∧
  evidence.motifObservationIds ≠ [] ∧
  evidence.digest.Valid

end StrategyEvidence

end MathDiscovery.ProofStrategy
