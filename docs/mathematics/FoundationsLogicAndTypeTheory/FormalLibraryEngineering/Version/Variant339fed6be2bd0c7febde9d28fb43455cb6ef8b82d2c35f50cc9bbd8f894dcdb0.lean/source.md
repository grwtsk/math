# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Version.Variant339fed6be2bd0c7febde9d28fb43455cb6ef8b82d2c35f50cc9bbd8f894dcdb0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cba06cc0aff78445d54f023c8ea5d53f90daa174` · SHA-256 `339fed6be2bd0c7febde9d28fb43455cb6ef8b82d2c35f50cc9bbd8f894dcdb0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.WorldModel.Identity

/-!
# Independent version coordinates

Semantic, representation, implementation, checker, and registry versions are
recorded separately. Equality of opaque source digests is not promoted to a
semantic-equivalence theorem.
-/

namespace Surface.ContinuousAssurance.WorldModel

/-- The pinned identity of one semantic world-model version. -/
structure WorldModelVersionId where
  modelId : WorldModelId
  version : DAF.Version
  sourceDigest : ArtifactIdentity
  deriving DecidableEq, Repr

/-- Independent coordinates needed to reject accidental version conflation. -/
structure VersionCoordinates where
  semantic : DAF.Version
  representation : DAF.Version
  implementation : DAF.Version
  checker : DAF.Version
  registry : DAF.Version
  deriving DecidableEq, Repr

/-- Changing the semantic version changes the full version coordinate. -/
theorem VersionCoordinates.ne_of_semantic_ne
    {left right : VersionCoordinates}
    (h : left.semantic ≠ right.semantic) :
    left ≠ right := by
  intro equal
  exact h (congrArg VersionCoordinates.semantic equal)

/-- A source-digest change changes the pinned world-model version identity. -/
theorem WorldModelVersionId.ne_of_sourceDigest_ne
    {left right : WorldModelVersionId}
    (h : left.sourceDigest ≠ right.sourceDigest) :
    left ≠ right := by
  intro equal
  exact h (congrArg WorldModelVersionId.sourceDigest equal)

/-- A semantic-version change changes the pinned world-model version identity. -/
theorem WorldModelVersionId.ne_of_version_ne
    {left right : WorldModelVersionId}
    (h : left.version ≠ right.version) :
    left ≠ right := by
  intro equal
  exact h (congrArg WorldModelVersionId.version equal)

end Surface.ContinuousAssurance.WorldModel

```
