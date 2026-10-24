import Mathematics.Ingestion.Source

/-! # Issue and discussion records -/

namespace Mathematics.Ingestion

structure IssueRecord where
  issueId : StableId
  project : ProjectId
  externalNumber : String
  state : String
  titleDigest : Digest
  bodyDigest : Digest
  eventHistoryDigest : Digest
  sourceArtifactIds : List Ecosystem.ArtifactId
  deriving DecidableEq, Repr

end Mathematics.Ingestion
