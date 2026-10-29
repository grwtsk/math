import Mathematics.Ingestion.Environment

/-! # Explicit proof-gap obligations -/

namespace Mathematics.Ingestion

inductive ProofObligationKind
  | pedagogicalExercise
  | unfinishedProof
  | externalTheorem
  | unsafeDependency
  | unknownAuthority
  deriving DecidableEq, Repr

inductive ProofObligationStatus
  | open
  | underProof
  | rejected
  | kernelDischarged
  deriving DecidableEq, Repr

/-- Every extracted `sorry` dependency becomes a named, non-theorem obligation. -/
structure ProofObligation where
  obligationId : StableId
  declarationId : Extractor.DeclarationId
  assumption : Extractor.TrustAssumption
  isSorry :
    assumption.kind = .sorryDerivedDeclaration
  kind : ProofObligationKind
  status : ProofObligationStatus
  sourceArtifactIds : List Ecosystem.ArtifactId
  obligationDigest : Digest
  deriving Repr

end Mathematics.Ingestion
