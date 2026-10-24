# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CommittedCut.Variant95a30010c13d8beaaa78428ed91c7ac939304867ab205fb5c5e9c359828ae57a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a734bf48b3314e66ec2ec5c416ab38201ba510dd` · SHA-256 `95a30010c13d8beaaa78428ed91c7ac939304867ab205fb5c5e9c359828ae57a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.MobiusOntology.UnknownLedger

/-!
# Immutable committed Möbius-ontology cut

All certificate-bearing work is evaluated against one frozen family of
snapshot digests.  Later evidence mints another cut.
-/

namespace Mathematics.MobiusOntology

universe u v w x y z q

structure MobiusSnapshotFamily (Digest : Type u) where
  core : Digest
  metric : Digest
  behavioral : Digest
  arithmetic : Digest
  analytic : Digest
  security : Digest
  authority : Digest

structure SnapshotBoundCertificate
    (Digest : Type u) (Payload : Type v) where
  snapshot : Digest
  payload : Payload
  payloadDigest : Digest
  current : Prop
  currentProof : current

structure MobiusOntologyCommittedCut
    (Digest : Type u)
    (CorePayload : Type v)
    (ArithmeticPayload : Type w)
    (AnalyticPayload : Type x)
    (SecurityPayload : Type y)
    (Certificate : Type z)
    (Event : Type q) where
  snapshots : MobiusSnapshotFamily Digest
  core : CorePayload
  arithmetic : Option ArithmeticPayload
  analytic : Option AnalyticPayload
  security : Option SecurityPayload
  certificates : List (SnapshotBoundCertificate Digest Certificate)
  committedEvents : Finset Event
  finiteWorkBound : Nat
  canonicalDigest : Digest
  certificateBinding :
    ∀ certificate ∈ certificates,
      certificate.snapshot = snapshots.core ∨
      certificate.snapshot = snapshots.metric ∨
      certificate.snapshot = snapshots.behavioral ∨
      certificate.snapshot = snapshots.arithmetic ∨
      certificate.snapshot = snapshots.analytic ∨
      certificate.snapshot = snapshots.security ∨
      certificate.snapshot = snapshots.authority

/-- Re-delivery cannot change an event set that already contains the event. -/
theorem committed_event_exactly_once
    {Event : Type u} [DecidableEq Event]
    (events : Finset Event) {event : Event}
    (committed : event ∈ events) :
    insert event events = events :=
  Finset.insert_eq_self.mpr committed

end Mathematics.MobiusOntology
```
