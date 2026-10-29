-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SnapshotComponent.Variantaf5acc0ea8787eddd083380f0ef7e74ab49d12958411b1728f1f1c1a5821af21","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"af5acc0ea8787eddd083380f0ef7e74ab49d12958411b1728f1f1c1a5821af21","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SnapshotComponent.Variantaf5acc0ea8787eddd083380f0ef7e74ab49d12958411b1728f1f1c1a5821af21","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"af5acc0ea8787eddd083380f0ef7e74ab49d12958411b1728f1f1c1a5821af21","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projection/SnapshotComponents.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Finset.Basic
import Mathlib.Tactic.DeriveFintype
import Mathematics.Projection.SnapshotAuthority

/-!
# Master snapshot components

`ProjectionSnapshot` already owns append-only status authority.  This module
adds the immutable component digest family needed to decide whether a
certificate still describes the current mathematics.  It deliberately does
not add a mutable status field.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SnapshotComponent.Variantaf5acc0ea8787eddd083380f0ef7e74ab49d12958411b1728f1f1c1a5821af21

namespace Mathematics.Projection

/-- Independently versioned parts of the bounded stability architecture. -/
inductive SnapshotComponent
  | build
  | inventory
  | semantic
  | relation
  | authority
  | banach
  | kernel
  | hilbert
  | realization
  | operator
  | transport
  | boundary
  | numerical
  | runtime
  deriving DecidableEq, Fintype, Repr

/--
One immutable architecture snapshot.  Effective status is inherited from the
committed replay of `projection`; it is not stored here.
-/
structure MasterSnapshot where
  id : SnapshotId
  projection : ProjectionSnapshot
  inventoryId : SnapshotId
  componentDigest : SnapshotComponent → Digest
  componentDigest_valid :
    ∀ component, (componentDigest component).Valid
  parent : Option SnapshotId
  creationDigest : Digest
  creationDigest_valid : creationDigest.Valid

/--
Sealed evidence that the projection underlying a master snapshot is the
current committed active projection.
-/
structure VerifiedActiveMasterSnapshot
    (snapshot : MasterSnapshot) : Type where
  private mk ::
  private activeProjection :
    VerifiedActiveSnapshot snapshot.projection

namespace VerifiedActiveMasterSnapshot

/-- Inspection exposes the committed authority head, not a minting path. -/
def authorityHead
    {snapshot : MasterSnapshot}
    (verified : VerifiedActiveMasterSnapshot snapshot) :
    ObjectAddress :=
  verified.activeProjection.head

/-- Inspection exposes the committed authority epoch. -/
def authorityEpoch
    {snapshot : MasterSnapshot}
    (verified : VerifiedActiveMasterSnapshot snapshot) :
    Nat :=
  verified.activeProjection.epoch

end VerifiedActiveMasterSnapshot

/-- One exact component digest recorded when a certificate was issued. -/
structure SnapshotDependency where
  component : SnapshotComponent
  digest : Digest
  deriving DecidableEq, Repr

namespace SnapshotDependency

/-- A dependency matches a snapshot only by exact component-digest equality. -/
def Matches
    (dependency : SnapshotDependency)
    (snapshot : MasterSnapshot) : Prop :=
  snapshot.componentDigest dependency.component = dependency.digest

/-- Every dependency copied from a master snapshot is valid at that snapshot. -/
@[simp] theorem matches_of_snapshot
    (snapshot : MasterSnapshot)
    (component : SnapshotComponent) :
    Matches
      { component := component
        digest := snapshot.componentDigest component }
      snapshot :=
  rfl

end SnapshotDependency

/--
A normalized dependency set has valid digests and at most one digest for each
component.  This prevents a certificate from hiding inconsistent epochs for
one component inside one finite set.
-/
def SnapshotDependencySetValid
    (dependencies : Finset SnapshotDependency) : Prop :=
  (∀ dependency ∈ dependencies, dependency.digest.Valid) ∧
  ∀ left ∈ dependencies,
    ∀ right ∈ dependencies,
      left.component = right.component →
        left.digest = right.digest

end Mathematics.Projection
