import Mathematics.Ingestion.Source

/-! # Build and verification workflows -/

namespace Mathematics.Ingestion

structure WorkflowRecord where
  workflowId : StableId
  source : SourceUnit
  triggerDigest : Digest
  commandDigests : List Digest
  environmentVariableNames : List String
  secretValuesRetained : Bool := false
  deriving DecidableEq, Repr

end Mathematics.Ingestion
