import Mathematics.Ecosystem.Provenance

/-! # Losslessly retained project artifacts -/

namespace Mathematics.Ecosystem

abbrev ArtifactId := StableId

/-- Artifact classification is descriptive and never a retention filter. -/
inductive ArtifactKind
  | leanSource
  | lakeConfiguration
  | buildConfiguration
  | workflow
  | blueprint
  | issue
  | documentation
  | data
  | license
  | binary
  | opaque
  deriving DecidableEq, Repr

/-- Immutable bytes and source metadata for every captured project artifact. -/
structure RawArtifact where
  artifactId : ArtifactId
  address : SourceObjectAddress
  storageObjectId : StableId
  kind : ArtifactKind
  byteCount : Nat
  executable : Bool
  mediaType : String
  license : LicenseRecord
  sourceBytes : Array UInt8
  storedBytes : Array UInt8
  stored_bytes_round_trip : storedBytes = sourceBytes
  byte_count_exact : byteCount = sourceBytes.size
  storedBytesDigest : Digest
  stored_bytes_exact : storedBytesDigest = address.contentDigest
  captureDigest : Digest
  deriving DecidableEq, Repr

/-- Semantic opacity is represented explicitly rather than as omission. -/
def RawArtifact.IsOpaque (artifact : RawArtifact) : Prop :=
  artifact.kind = .opaque

/-- Reading the content-addressed object reproduces the source byte digest. -/
theorem RawArtifact.byte_round_trip
    (artifact : RawArtifact) :
    artifact.storedBytes = artifact.sourceBytes :=
  artifact.stored_bytes_round_trip

end Mathematics.Ecosystem
