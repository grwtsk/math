import Mathematics.Ingestion.Opaque

/-! # Source units -/

namespace Mathematics.Ingestion

inductive SourceLanguage
  | lean
  | markdown
  | yaml
  | json
  | toml
  | shell
  | rust
  | other (name : String)
  deriving DecidableEq, Repr

/-- Decoded text remains tied to the immutable raw artifact bytes. -/
structure SourceUnit where
  sourceId : StableId
  artifact : Ecosystem.RawArtifact
  language : SourceLanguage
  encoding : String
  lineCount : Nat
  decodedTextDigest : Digest
  decodingLossless : Bool
  deriving DecidableEq, Repr

end Mathematics.Ingestion
