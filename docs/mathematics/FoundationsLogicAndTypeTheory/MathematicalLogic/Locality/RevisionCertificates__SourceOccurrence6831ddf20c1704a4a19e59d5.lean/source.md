# Complete source: GRWTSK.Logic.Locality.RevisionCertificates

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd5a2469ce860ffd295f99717c5e64911fd0c16c` · SHA-256 `03655c869b6bb56f5de9c8e2180720e7872b65e75e0623304481727358cdd274`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Logic.Certificates.ProofCoverage

/-!
# CCC snapshot freshness

Research direction and conceptual selection: grwtsk contributors.
Lean implementation: OpenAI Codex.

A certificate retains its original snapshot and proof. Acceptance at a later
snapshot requires equality of the revision tokens of every declared read and
an independently proved semantic locality theorem for its exact target.
These abstract tokens do not authenticate files or establish that all actual
dependencies have been declared. Rejection of a stale certificate does not
assert that its original theorem, or even its current target, is false.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap

universe u v

/-- A revision snapshot assigns a revision identity to each artifact. -/
abbrev SourceSnapshot (Artifact : Type u) (Revision : Type v) := Artifact → Revision

/-- Agreement means exact token equality on the specified finite read set. -/
def SnapshotAgreesOn {Artifact : Type u} {Revision : Type v}
    (reads : Finset Artifact) (recorded current : SourceSnapshot Artifact Revision) : Prop :=
  ∀ artifact ∈ reads, current artifact = recorded artifact

theorem snapshot_agrees_refl {Artifact : Type u} {Revision : Type v}
    (reads : Finset Artifact) (snapshot : SourceSnapshot Artifact Revision) :
    SnapshotAgreesOn reads snapshot snapshot :=
  fun _ _ ↦ rfl

theorem snapshot_agrees_symm {Artifact : Type u} {Revision : Type v}
    {reads : Finset Artifact} {left right : SourceSnapshot Artifact Revision}
    (agreement : SnapshotAgreesOn reads left right) :
    SnapshotAgreesOn reads right left :=
  fun artifact member ↦ (agreement artifact member).symm

theorem snapshot_agrees_trans {Artifact : Type u} {Revision : Type v}
    {reads : Finset Artifact} {first middle last : SourceSnapshot Artifact Revision}
    (firstMiddle : SnapshotAgreesOn reads first middle)
    (middleLast : SnapshotAgreesOn reads middle last) :
    SnapshotAgreesOn reads first last :=
  fun artifact member ↦ (middleLast artifact member).trans (firstMiddle artifact member)

/-- The original evidence and finite dependency declarations remain recorded.
Locality is an actual theorem about `Target`, not an assertion that the target
can be transported merely because some revision names agree. -/
structure RevisionCertificate (Artifact : Type u) (Revision : Type v)
    (Target : SourceSnapshot Artifact Revision → Prop) where
  recorded : SourceSnapshot Artifact Revision
  reads : Finset Artifact
  proved : Target recorded
  locality : ∀ (left right : SourceSnapshot Artifact Revision),
    SnapshotAgreesOn reads left right → Target left → Target right

/-- Freshness compares every declared read, leaving the recorded evidence intact. -/
def RevisionCertificate.Fresh {Artifact : Type u} {Revision : Type v}
    {Target : SourceSnapshot Artifact Revision → Prop}
    (certificate : RevisionCertificate Artifact Revision Target)
    (current : SourceSnapshot Artifact Revision) : Prop :=
  SnapshotAgreesOn certificate.reads certificate.recorded current

/-- The acceptance model demands freshness as well as the exact current target. -/
def RevisionCertificate.Accepted {Artifact : Type u} {Revision : Type v}
    {Target : SourceSnapshot Artifact Revision → Prop}
    (certificate : RevisionCertificate Artifact Revision Target)
    (current : SourceSnapshot Artifact Revision) : Prop :=
  certificate.Fresh current ∧ Target current

theorem RevisionCertificate.current_target {Artifact : Type u} {Revision : Type v}
    {Target : SourceSnapshot Artifact Revision → Prop}
    (certificate : RevisionCertificate Artifact Revision Target)
    {current : SourceSnapshot Artifact Revision} (fresh : certificate.Fresh current) :
    Target current :=
  certificate.locality certificate.recorded current fresh certificate.proved

theorem RevisionCertificate.fresh_accepts {Artifact : Type u} {Revision : Type v}
    {Target : SourceSnapshot Artifact Revision → Prop}
    (certificate : RevisionCertificate Artifact Revision Target)
    {current : SourceSnapshot Artifact Revision} (fresh : certificate.Fresh current) :
    certificate.Accepted current :=
  ⟨fresh, certificate.current_target fresh⟩

theorem RevisionCertificate.accepted_iff_fresh {Artifact : Type u} {Revision : Type v}
    {Target : SourceSnapshot Artifact Revision → Prop}
    (certificate : RevisionCertificate Artifact Revision Target)
    (current : SourceSnapshot Artifact Revision) :
    certificate.Accepted current ↔ certificate.Fresh current :=
  ⟨And.left, certificate.fresh_accepts⟩

theorem RevisionCertificate.recorded_accepted {Artifact : Type u} {Revision : Type v}
    {Target : SourceSnapshot Artifact Revision → Prop}
    (certificate : RevisionCertificate Artifact Revision Target) :
    certificate.Accepted certificate.recorded :=
  certificate.fresh_accepts (snapshot_agrees_refl certificate.reads certificate.recorded)

/-- One changed declared read is sufficient to reject current acceptance.
The original proof remains available as `certificate.proved`. -/
theorem RevisionCertificate.stale_read_rejects {Artifact : Type u} {Revision : Type v}
    {Target : SourceSnapshot Artifact Revision → Prop}
    (certificate : RevisionCertificate Artifact Revision Target)
    {current : SourceSnapshot Artifact Revision} {artifact : Artifact}
    (member : artifact ∈ certificate.reads)
    (changed : current artifact ≠ certificate.recorded artifact) :
    ¬ certificate.Accepted current := by
  intro accepted
  exact changed (accepted.1 artifact member)

/-- The cap is indexed by the whole current snapshot, and its target is exact.
This adapter consumes a freshness proof and the certificate's semantic locality. -/
theorem RevisionCertificate.to_terminal {Artifact : Type u} {Revision : Type v}
    {Target : SourceSnapshot Artifact Revision → Prop}
    (certificate : RevisionCertificate Artifact Revision Target)
    {current : SourceSnapshot Artifact Revision} (fresh : certificate.Fresh current) :
    TerminalCap current (Target current) :=
  ⟨certificate.current_target fresh⟩

namespace FreshnessFixtures

/-- The claim depends on one read; the other artifact can change freely. -/
def oneReadCertificate : RevisionCertificate Bool ℕ (fun snapshot ↦ snapshot false = 7) where
  recorded := fun _ ↦ 7
  reads := {false}
  proved := rfl
  locality := by
    intro left right agreement proved
    exact (agreement false (by simp)).trans proved

/-- Changing only an unread artifact retains the exact current claim. -/
theorem fresh_current_claim :
    oneReadCertificate.Accepted (fun artifact ↦ if artifact then 9 else 7) := by
  apply oneReadCertificate.fresh_accepts
  intro artifact member
  have artifactFalse : artifact = false := by simpa [oneReadCertificate] using member
  subst artifact
  rfl

/-- A changed declared read is rejected, even though its historical proof remains. -/
theorem stale_read_history_retained :
    ¬ oneReadCertificate.Accepted (fun _ ↦ 8) ∧
      (fun _ : Bool ↦ 7) false = 7 := by
  constructor
  · apply oneReadCertificate.stale_read_rejects (artifact := false) (by simp [oneReadCertificate])
    simp [oneReadCertificate]
  · rfl

/-- Staleness is still rejected when the target happens to hold at both revisions. -/
def trueCertificate : RevisionCertificate Unit ℕ (fun _ ↦ True) where
  recorded := fun _ ↦ 0
  reads := {()}
  proved := True.intro
  locality := fun _ _ _ _ ↦ True.intro

theorem stale_true_claim_rejected :
    ¬ trueCertificate.Accepted (fun _ ↦ 1) ∧ True := by
  constructor
  · apply trueCertificate.stale_read_rejects (artifact := ()) (by simp [trueCertificate])
    simp [trueCertificate]
  · trivial

end FreshnessFixtures

end GRWTSK.ProofHorizon.CorkscrewChamberCap
```
