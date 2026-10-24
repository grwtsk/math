import Mathematics.Ecosystem.Artifact

/-! # Project-native interpretation profiles -/

namespace Mathematics.Projects

inductive CanonicalChoiceProfile
  | mathlibCompatibility
  | pedagogicalFaithfulness
  | computationalEfficiency
  | minimalDependency
  | historicalSource
  | projectNative
  deriving DecidableEq, Repr

/-- Declared ingestion behavior for one sovereign upstream project. -/
structure ProjectProfile where
  profileId : StableId
  identity : Ecosystem.ProjectIdentity
  canonicalChoice : CanonicalChoiceProfile
  requiredArtifactKinds : List Ecosystem.ArtifactKind
  preserveLocalDefinitions : Bool
  preserveFailures : Bool
  preserveHistory : Bool
  profileDigest : Digest
  deriving Repr

end Mathematics.Projects
