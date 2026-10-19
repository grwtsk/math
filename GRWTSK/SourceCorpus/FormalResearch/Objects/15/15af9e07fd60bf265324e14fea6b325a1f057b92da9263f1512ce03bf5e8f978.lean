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
