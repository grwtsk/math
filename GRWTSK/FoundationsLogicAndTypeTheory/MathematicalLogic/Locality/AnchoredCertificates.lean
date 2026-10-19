/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Locality.FiniteRuleTransport

/-!
# exact anchored replay evidence

This certificate carries an actual recorded proof and a theorem transporting
that proof to snapshots matching the declared finite reads. It is deliberately
a different type from the existing global-locality RevisionCertificate.
Certified grounded routes construct replay evidence through the proved read
union adapter. No legacy ledger admission, operational authentication, grant,
source rights, or automatic promotion to global locality is provided.

Human mathematical direction: grwtsk contributors.
Formal implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.ReplayEvidence

universe u v w x

/-- A recorded proof with an actual recorded-to-fresh return theorem. -/
structure ReplayCertificate (Artifact : Type u) (Revision : Type v)
    (Target : SourceSnapshot Artifact Revision → Prop) where
  recorded : SourceSnapshot Artifact Revision
  reads : Finset Artifact
  proved : Target recorded
  replay : ∀ future, SnapshotAgreesOn reads recorded future → Target future

section Evidence

variable {Artifact : Type u} {Revision : Type v}
  {Target : SourceSnapshot Artifact Revision → Prop}

def ReplayCertificate.Fresh (certificate : ReplayCertificate Artifact Revision Target)
    (future : SourceSnapshot Artifact Revision) : Prop :=
  SnapshotAgreesOn certificate.reads certificate.recorded future

def ReplayCertificate.Accepted (certificate : ReplayCertificate Artifact Revision Target)
    (future : SourceSnapshot Artifact Revision) : Prop :=
  certificate.Fresh future ∧ Target future

theorem ReplayCertificate.current_target
    (certificate : ReplayCertificate Artifact Revision Target)
    {future : SourceSnapshot Artifact Revision} (fresh : certificate.Fresh future) :
    Target future := certificate.replay future fresh

theorem ReplayCertificate.accepted_iff_fresh
    (certificate : ReplayCertificate Artifact Revision Target)
    (future : SourceSnapshot Artifact Revision) :
    certificate.Accepted future ↔ certificate.Fresh future :=
  ⟨And.left, fun fresh ↦ ⟨fresh, certificate.current_target fresh⟩⟩

theorem ReplayCertificate.recorded_accepted
    (certificate : ReplayCertificate Artifact Revision Target) :
    certificate.Accepted certificate.recorded :=
  (certificate.accepted_iff_fresh _).mpr
    (snapshot_agrees_refl certificate.reads certificate.recorded)

theorem ReplayCertificate.stale_read_rejects
    (certificate : ReplayCertificate Artifact Revision Target)
    {future : SourceSnapshot Artifact Revision} {artifact : Artifact}
    (member : artifact ∈ certificate.reads)
    (changed : future artifact ≠ certificate.recorded artifact) :
    ¬ certificate.Accepted future := by
  intro accepted
  exact changed (accepted.1 artifact member)

/-- An actual source-indexed mathematical cap; independent permits remain required. -/
theorem ReplayCertificate.to_terminal
    (certificate : ReplayCertificate Artifact Revision Target)
    {future : SourceSnapshot Artifact Revision} (fresh : certificate.Fresh future) :
    TerminalCap future (Target future) := ⟨certificate.current_target fresh⟩

/-- Stronger global certificates supply replay evidence without changing source or reads. -/
def ofGlobal (certificate : RevisionCertificate Artifact Revision Target) :
    ReplayCertificate Artifact Revision Target where
  recorded := certificate.recorded
  reads := certificate.reads
  proved := certificate.proved
  replay := fun _ fresh ↦ certificate.current_target fresh

@[simp]
theorem ofGlobal_recorded (certificate : RevisionCertificate Artifact Revision Target) :
    (ofGlobal certificate).recorded = certificate.recorded := rfl

@[simp]
theorem ofGlobal_reads (certificate : RevisionCertificate Artifact Revision Target) :
    (ofGlobal certificate).reads = certificate.reads := rfl

end Evidence

section Grounded

variable {Artifact : Type u} {Revision : Type v} {Claim : Type w} {Provider : Type x}
  [DecidableEq Artifact] [DecidableEq Revision] [DecidableEq Claim] [DecidableEq Provider]
  {Target : SourceSnapshot Artifact Revision → Claim → Prop}

/-- The fresh replay theorem is proved from actual eligible rule certificates.
The footprint conservatively includes every currently eligible provider. -/
def ofGrounded
    (providers : Provider → CertifiedProofRoute Artifact Revision Claim Target)
    (inventory withdrawnProviders : Finset Provider) (withdrawnClaims : Finset Claim)
    (current : SourceSnapshot Artifact Revision) (claim : Claim)
    (supported : GroundedSupport (fun provider ↦ (providers provider).route)
      (eligibleProviders providers inventory withdrawnProviders withdrawnClaims current) claim) :
    ReplayCertificate Artifact Revision (fun snapshot ↦ Target snapshot claim) where
  recorded := current
  reads := AlternativeLocality.eligibleReadUnion providers inventory withdrawnProviders
    withdrawnClaims current
  proved := AlternativeLocality.grounded_replay_target providers inventory withdrawnProviders
    withdrawnClaims (snapshot_agrees_refl _ current) supported
  replay := fun _ agreement ↦ AlternativeLocality.grounded_replay_target providers inventory
    withdrawnProviders withdrawnClaims agreement supported

@[simp]
theorem ofGrounded_recorded
    (providers : Provider → CertifiedProofRoute Artifact Revision Claim Target)
    (inventory withdrawnProviders : Finset Provider) (withdrawnClaims : Finset Claim)
    (current : SourceSnapshot Artifact Revision) (claim : Claim)
    (supported : GroundedSupport (fun provider ↦ (providers provider).route)
      (eligibleProviders providers inventory withdrawnProviders withdrawnClaims current) claim) :
    (ofGrounded providers inventory withdrawnProviders withdrawnClaims
      current claim supported).recorded = current := rfl

@[simp]
theorem ofGrounded_reads
    (providers : Provider → CertifiedProofRoute Artifact Revision Claim Target)
    (inventory withdrawnProviders : Finset Provider) (withdrawnClaims : Finset Claim)
    (current : SourceSnapshot Artifact Revision) (claim : Claim)
    (supported : GroundedSupport (fun provider ↦ (providers provider).route)
      (eligibleProviders providers inventory withdrawnProviders withdrawnClaims current) claim) :
    (ofGrounded providers inventory withdrawnProviders withdrawnClaims
      current claim supported).reads =
      AlternativeLocality.eligibleReadUnion providers inventory withdrawnProviders
        withdrawnClaims current := rfl

end Grounded

namespace HostileFixture

open AlternativeLocality.HostileFixture

/-- The existing honest grounded route supplies actual replay evidence for Q. -/
def replayQ : ReplayCertificate Bool Bool (fun snapshot ↦ target snapshot true) :=
  ofGrounded providers Finset.univ ∅ ∅ recorded true grounded_Q

theorem replayQ_reads : replayQ.reads = {false} := footprint_exact

theorem replayQ_accepted : replayQ.Accepted recorded := replayQ.recorded_accepted

/-- This exact replay footprint still cannot be silently promoted to global locality. -/
theorem replayQ_has_no_global_certificate : ¬ ∃ certificate :
    RevisionCertificate Bool Bool (fun snapshot ↦ target snapshot true),
      certificate.reads = replayQ.reads := by
  simpa only [replayQ, ofGrounded_reads] using no_union_revision_certificate

end HostileFixture

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ReplayEvidence
