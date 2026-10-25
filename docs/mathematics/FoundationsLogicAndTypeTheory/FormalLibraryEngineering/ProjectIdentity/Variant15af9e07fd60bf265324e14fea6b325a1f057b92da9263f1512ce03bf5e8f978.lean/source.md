# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectIdentity.Variant15af9e07fd60bf265324e14fea6b325a1f057b92da9263f1512ce03bf5e8f978

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4470466ed369c3984c823e40ef28e7ccc6ef9479` · SHA-256 `15af9e07fd60bf265324e14fea6b325a1f057b92da9263f1512ce03bf5e8f978`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.Id

/-!
# Source-sovereign project identity

An ecosystem project is identified independently of its current name,
filesystem location, or Lean namespace.  Renames therefore preserve a stable
project identity while locators remain historical provenance.
-/

namespace Mathematics.Ecosystem

/-- Stable source-project identity qualified by its publishing authority. -/
structure ProjectIdentity where
  projectId : ProjectId
  host : String
  owner : String
  repository : String
  canonicalLocator : String
  deriving DecidableEq, Repr

/-- A project identity is usable only when every source coordinate is present. -/
def ProjectIdentity.Valid (identity : ProjectIdentity) : Prop :=
  identity.projectId.Valid ∧
  identity.host ≠ "" ∧
  identity.owner ≠ "" ∧
  identity.repository ≠ "" ∧
  identity.canonicalLocator ≠ ""

/-- Immutable revision identity; branch names are intentionally excluded. -/
structure ProjectRevision where
  project : ProjectIdentity
  revisionId : StableId
  sourceDigest : Digest
  deriving DecidableEq, Repr

/-- Project qualification prevents namespace collisions across repositories. -/
structure ProjectQualifiedName where
  project : ProjectId
  localName : String
  deriving DecidableEq, Repr

end Mathematics.Ecosystem
```
