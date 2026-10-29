import Mathematics.Ecosystem.License

/-! # Immutable source provenance -/

namespace Mathematics.Ecosystem

/-- A content object is addressed by project, revision, path, and bytes. -/
structure SourceObjectAddress where
  project : ProjectId
  revisionId : StableId
  path : String
  contentDigest : Digest
  deriving DecidableEq, Repr

/-- One append-only historical relation between source revisions. -/
structure RevisionProvenance where
  revision : ProjectRevision
  parentRevisionIds : List StableId
  commitMetadataDigest : Digest
  historyReceiptDigest : Digest
  deriving DecidableEq, Repr

/-- A derivation edge never identifies its endpoints by itself. -/
structure ProvenanceEdge where
  source : SourceObjectAddress
  target : SourceObjectAddress
  relation : String
  evidenceDigest : Digest
  deriving DecidableEq, Repr

end Mathematics.Ecosystem
