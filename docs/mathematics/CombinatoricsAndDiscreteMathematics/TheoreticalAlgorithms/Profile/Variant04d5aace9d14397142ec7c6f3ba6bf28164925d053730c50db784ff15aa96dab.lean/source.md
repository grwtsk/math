# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Profile.Variant04d5aace9d14397142ec7c6f3ba6bf28164925d053730c50db784ff15aa96dab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5e2bffbc8f7f078a2bea6099205306227c44ea1` · SHA-256 `04d5aace9d14397142ec7c6f3ba6bf28164925d053730c50db784ff15aa96dab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
