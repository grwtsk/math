-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.ArtifactKind.Variant77c67801e2e5491b23003514108552a37e8acc086daa379352a0bbcf892d68da","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"77c67801e2e5491b23003514108552a37e8acc086daa379352a0bbcf892d68da","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.ArtifactKind.Variant77c67801e2e5491b23003514108552a37e8acc086daa379352a0bbcf892d68da","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"77c67801e2e5491b23003514108552a37e8acc086daa379352a0bbcf892d68da","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/AbelReynolds/Boundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.Id

/-!
# Boundary-indexed artifacts

Byte equality is not authority to consume an artifact at another class, prime,
auxiliary prime, or snapshot.  Crossing a boundary requires an accepted,
directional transport certificate.
-/


namespace GRWTSK.Algebra.ArtifactKind.Variant77c67801e2e5491b23003514108552a37e8acc086daa379352a0bbcf892d68da

namespace Mathematics.AbelReynolds

inductive ArtifactKind
  | template
  | orbit
  | ideal
  | transcript
  | geometry
  | cost
  | proof
  deriving DecidableEq, Repr

inductive TransportExactness
  | exact
  | lossless
  | certifiedPartial
  deriving DecidableEq, Repr

inductive TransportAuthority
  | kernelAccepted
  | certificateAccepted
  deriving DecidableEq, Repr

structure BoundaryKey where
  snapshotId : String
  curveId : String
  seaBound : Nat
  auxiliarySetId : String
  classId : Option String
  primeId : Option String
  auxiliaryPrime : Option Nat
  templateVersion : String
  artifactKind : ArtifactKind
  deriving DecidableEq, Repr

structure BoundaryTransport where
  source : BoundaryKey
  target : BoundaryKey
  partialMapId : String
  exactness : TransportExactness
  naturalityCertificateId : String
  authority : TransportAuthority
  proofSourceSnapshotId : String
  proofTargetSnapshotId : String
  proofObjectId : String
  certificateId : String
  accepted : Bool
  acceptedProof : accepted = true
  sourceSnapshotBound :
    proofSourceSnapshotId = source.snapshotId
  targetSnapshotBound :
    proofTargetSnapshotId = target.snapshotId
  deriving Repr

inductive TransportPath
    (transports : List BoundaryTransport) :
    BoundaryKey → BoundaryKey → Prop
  | refl (key : BoundaryKey) :
      TransportPath transports key key
  | step
      (transport : BoundaryTransport)
      (member : transport ∈ transports)
      (tail :
        TransportPath transports transport.target target) :
      TransportPath transports transport.source target

def MayConsume
    (source target : BoundaryKey)
    (transports : List BoundaryTransport) : Prop :=
  TransportPath transports source target

theorem MayConsume.same
    (key : BoundaryKey)
    (transports : List BoundaryTransport) :
    MayConsume key key transports :=
  TransportPath.refl key

theorem MayConsume.distinctBoundaryStartsWithTransport
    {source target : BoundaryKey}
    {transports : List BoundaryTransport}
    (different : source ≠ target)
    (mayConsume : MayConsume source target transports) :
    ∃ transport ∈ transports,
      transport.source = source := by
  cases mayConsume with
  | refl => exact False.elim (different rfl)
  | step transport member _ =>
      exact ⟨transport, member, rfl⟩

end Mathematics.AbelReynolds
