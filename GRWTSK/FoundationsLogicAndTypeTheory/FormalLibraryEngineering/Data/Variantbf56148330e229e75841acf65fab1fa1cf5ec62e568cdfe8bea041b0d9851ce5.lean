import Mathematics.Ingestion.Source

/-! # Research data artifacts -/

namespace Mathematics.Ingestion

structure DataRecord where
  dataId : StableId
  artifact : Ecosystem.RawArtifact
  schemaDigest : Option Digest
  rowCount : Option Nat
  semanticStatus : String
  immutableBytes : Bool := true
  deriving DecidableEq, Repr

end Mathematics.Ingestion
