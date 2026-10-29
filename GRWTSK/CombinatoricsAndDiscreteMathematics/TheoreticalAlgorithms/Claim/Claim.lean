import Surface.ContinuousAssurance.Evidence
import Surface.ContinuousAssurance.AssuranceLevel

/-!
# Status-indexed assurance claims

Claim status controls the certificate shape.  Only verified certificates
contain an unconditional proof.  Conditional certificates expose both their
hypothesis and the derivation from it.  Conjectural, external, and
unsubstantiated constructors deliberately have no elimination rule to the
claimed proposition.
-/

namespace Surface.ContinuousAssurance

/-- Material status recorded by the claim ledger. -/
inductive ClaimStatus
  | verified
  | conditionallyVerified
  | conjectural
  | external
  | unsubstantiated
  | refuted
  deriving DecidableEq, Repr

/-- A certificate whose available authority is determined by its status. -/
inductive ClaimCertificate (proposition : Prop) : ClaimStatus → Type
  | verified :
      proposition →
      ClaimCertificate proposition .verified
  | conditional :
      (hypothesis : Prop) →
      (hypothesis → proposition) →
      ClaimCertificate proposition .conditionallyVerified
  | conjectural :
      ClaimCertificate proposition .conjectural
  | external :
      ExternalEvidence →
      ClaimCertificate proposition .external
  | unsubstantiated :
      ClaimCertificate proposition .unsubstantiated
  | refuted :
      (¬ proposition) →
      ClaimCertificate proposition .refuted

/-- A verified certificate yields its proposition. -/
theorem proof_of_verified
    {proposition : Prop}
    (certificate : ClaimCertificate proposition .verified) :
    proposition := by
  cases certificate with
  | verified proof => exact proof

/-- The explicit hypothesis stored in a conditional certificate. -/
def ClaimCertificate.ConditionalHypothesis
    {proposition : Prop}
    (certificate : ClaimCertificate proposition .conditionallyVerified) :
    Prop :=
  match certificate with
  | .conditional hypothesis _ => hypothesis

/-- A conditional certificate proves its target only after its hypothesis. -/
theorem proof_of_conditionally_verified
    {proposition : Prop}
    (certificate : ClaimCertificate proposition .conditionallyVerified)
    (hypothesis : certificate.ConditionalHypothesis) :
    proposition := by
  cases certificate with
  | conditional _ implication => exact implication hypothesis

namespace ClaimCertificate

/-- Assumptions that a ledger must display for this exact certificate. -/
def RequiredAssumptions
    {proposition : Prop}
    {status : ClaimStatus}
    (certificate : ClaimCertificate proposition status) : List Prop :=
  match certificate with
  | .verified _ => []
  | .conditional hypothesis _ => [hypothesis]
  | .conjectural => []
  | .external _ => []
  | .unsubstantiated => []
  | .refuted _ => []

/--
Ledger metadata is coherent when it displays precisely the certificate's
assumptions and, for an external certificate, the same typed owner, location,
and internally coherent provenance as the cited external evidence.
-/
def MetadataCoherent
    {proposition : Prop}
    {status : ClaimStatus}
    (certificate : ClaimCertificate proposition status)
    (owner : Project)
    (evidenceLocation : Option String)
    (assumptions : List Prop) : Prop :=
  assumptions = certificate.RequiredAssumptions ∧
  match certificate with
  | .external evidence =>
      owner = evidence.owner ∧
      evidenceLocation = some evidence.location ∧
      evidence.ProvenanceCoherent
  | _ => True

end ClaimCertificate

/-- A complete, status-indexed material claim-ledger record. -/
structure Claim where
  claimId : String
  proposition : Prop
  owner : Project
  evidenceLocation : Option String
  status : ClaimStatus
  assumptions : List Prop
  targetConclusion : Prop
  targetMatches : proposition = targetConclusion
  certificate : ClaimCertificate targetConclusion status
  metadataCoherent :
    certificate.MetadataCoherent owner evidenceLocation assumptions

namespace Claim

/-- The displayed assumptions are exactly those required by the certificate. -/
theorem assumptions_match_certificate
    (claim : Claim) :
    claim.assumptions = claim.certificate.RequiredAssumptions :=
  claim.metadataCoherent.1

/-- Owner, evidence location, and assumptions satisfy the indexed certificate. -/
theorem metadata_matches_certificate
    (claim : Claim) :
    claim.certificate.MetadataCoherent
      claim.owner claim.evidenceLocation claim.assumptions :=
  claim.metadataCoherent

/-- A stage annotation around a claim; it does not modify certificate status. -/
structure AtLevel where
  claim : Claim
  level : AssuranceLevel

/-- Move a claim view to a no-weaker stage without changing the claim. -/
def AtLevel.advance
    (view : AtLevel)
    (level : AssuranceLevel)
    (_monotone : view.level.AtMost level) : AtLevel :=
  ⟨view.claim, level⟩

/-- Advancing assurance level never promotes a claim's certificate status. -/
@[simp]
theorem AtLevel.advance_preserves_status
    (view : AtLevel)
    (level : AssuranceLevel)
    (monotone : view.level.AtMost level) :
    (view.advance level monotone).claim.status = view.claim.status :=
  rfl

end Claim

/-- There is no sound uniform eliminator from external certificates to proofs. -/
theorem no_external_certificate_elimination :
    ¬ (∀ (proposition : Prop),
      ClaimCertificate proposition .external → proposition) := by
  intro eliminate
  let emptyBundle : EvidenceBundle := ⟨"empty", []⟩
  let attestation : Attestation :=
    ⟨"external", .defer, emptyBundle, "external-runtime"⟩
  let evidence : ExternalEvidence :=
    ⟨attestation, "external://evidence", .externalRuntime⟩
  exact eliminate False (.external evidence)

/-- There is no sound uniform eliminator from conjectures to proofs. -/
theorem no_conjectural_certificate_elimination :
    ¬ (∀ (proposition : Prop),
      ClaimCertificate proposition .conjectural → proposition) := by
  intro eliminate
  exact eliminate False .conjectural

/-- There is no sound uniform eliminator from unsubstantiated entries. -/
theorem no_unsubstantiated_certificate_elimination :
    ¬ (∀ (proposition : Prop),
      ClaimCertificate proposition .unsubstantiated → proposition) := by
  intro eliminate
  exact eliminate False .unsubstantiated

/-!
## Test-evidence promotion boundary

A passing test remains an evidence item.  Its `testEvidence` tag carries no
proof field and cannot uniformly manufacture a verified theorem certificate.
-/

/-- A concrete externally produced test result used to witness the boundary. -/
def testEvidencePromotionWitness : EvidenceItem where
  identifier := "test-evidence-promotion-boundary"
  location := "external://tests/test-evidence-promotion-boundary"
  digest := ⟨"sha256:test-evidence-promotion-boundary"⟩
  origin :=
    { producer := "external-test-runner"
      authority := .externalCapability
      evidenceClass := .testEvidence }

/--
No uniform promotion can turn test evidence, even with its exact class
equality, into a verified certificate for an arbitrary proposition.
-/
theorem testEvidence_cannot_promote_to_verified :
    ¬ Nonempty (∀ (proposition : Prop) (item : EvidenceItem),
      item.origin.evidenceClass = .testEvidence →
        ClaimCertificate proposition .verified) := by
  rintro ⟨promote⟩
  exact proof_of_verified
    (promote False testEvidencePromotionWitness rfl)

end Surface.ContinuousAssurance
