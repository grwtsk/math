# Complete source: GRWTSK.Algebra.Boundary.Variant36aeaade2964ae43a537c9e4292c7f334600d5d8e542914be2ef2c99e7918ca1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8a338fcbecb87d91e6611aa774236b79b996466` · SHA-256 `4da6be4989f22f15f3e0f16634def5e8d1b71fd868372dc28ad108813ef646e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
