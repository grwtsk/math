# Complete source: GRWTSK.Algebra.Boundary.Variant77c67801e2e5491b23003514108552a37e8acc086daa379352a0bbcf892d68da

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8547a3222f47412a85fa86009cd723ff414fb222` · SHA-256 `77c67801e2e5491b23003514108552a37e8acc086daa379352a0bbcf892d68da`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.Id

/-!
# Boundary-indexed artifacts

Byte equality is not authority to consume an artifact at another class, prime,
auxiliary prime, or snapshot.  Crossing a boundary requires an accepted,
directional transport certificate.
-/

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
