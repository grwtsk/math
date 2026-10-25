-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ProofTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.MathlibProofCertificate.Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ProofTheory.SourceCorpus.MathlibProofCertificate.Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0","mathematical_subject":"Logic.ProofTheory","original_sha256":"bef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/AnalyticNumber/Mathlib/Certificate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib
import AnalyticNumber.BoundaryCalculus

/-!
# Mathlib-backed proof bridge

This module is the Mathlib-backed proof bridge for the analytic-number
authority architecture.

A `MathlibProofCertificate` is indexed by the exact analytic claim: its only
semantic field is `proof : q.statement`, a Lean proof of precisely the
claim's statement. The `theoremName` and `moduleName` fields are audit
handles only and are never used as mathematical evidence.

`MathlibProofCertificate.toAnalyticCertificate` converts the bridge
certificate into the existing `AnalyticCertificate` format with
`sound := q.statement` and `soundProof := P.proof`, preserving the existing
boundary architecture unchanged. `toAnalyticAuthorityToken` packages the
converted certificate as an `AnalyticAuthorityToken`, and
`mathlib_proof_through_boundary_calculus` shows that Mathlib-backed claims
are transported through the existing
`BoundaryCalculus.analytic_boundary_calculus`, not around it.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.MathlibProofCertificate.Variantbef43e62a0d425f5940ca02e3fcd8c2ae92f3ffefeb535221a65672c796aacd0

namespace AnalyticNumber
namespace MathlibBridge

/--
A Mathlib-backed proof certificate for an exact analytic claim.

`theoremName` and `moduleName` are audit metadata. `proof` is the only
semantic field: a Lean proof of exactly `q.statement`.
-/
structure MathlibProofCertificate
    (Γ : BoundaryCalculus.AnalyticContext)
    (b : AnalyticBoundaryKind)
    (q : BoundaryCalculus.AnalyticClaim Γ b) where
  theoremName : String
  moduleName : String
  proof : q.statement

/--
Convert a Mathlib-backed proof certificate into the existing analytic
certificate format.

`sound` is exactly `q.statement` and `soundProof` is exactly `P.proof`. The
metadata fields contribute nothing semantic.
-/
def MathlibProofCertificate.toAnalyticCertificate
    {Γ : BoundaryCalculus.AnalyticContext}
    {b : AnalyticBoundaryKind}
    {q : BoundaryCalculus.AnalyticClaim Γ b}
    (P : MathlibProofCertificate Γ b q) :
    AnalyticCertificate where
  kind := b
  label := P.theoremName
  publicHash := 0
  sound := q.statement
  soundProof := P.proof

/-- Package a Mathlib-backed proof certificate as an analytic authority
token. -/
def MathlibProofCertificate.toAnalyticAuthorityToken
    {Γ : BoundaryCalculus.AnalyticContext}
    {b : AnalyticBoundaryKind}
    {q : BoundaryCalculus.AnalyticClaim Γ b}
    (P : MathlibProofCertificate Γ b q) :
    BoundaryCalculus.AnalyticAuthorityToken Γ b q where
  certificate := P.toAnalyticCertificate
  boundaryMatches := rfl
  statementMatches := rfl

/-- A Mathlib-backed proof certificate proves its claim. -/
theorem mathlib_proof_certificate_sound
    {Γ : BoundaryCalculus.AnalyticContext}
    {b : AnalyticBoundaryKind}
    {q : BoundaryCalculus.AnalyticClaim Γ b}
    (P : MathlibProofCertificate Γ b q) :
    q.statement :=
  P.proof

/--
A Mathlib-backed claim passes through the existing analytic boundary
calculus.

The proof deliberately routes through
`BoundaryCalculus.analytic_boundary_calculus` applied to the authority
token; it does not simply return `P.proof`.
-/
theorem mathlib_proof_through_boundary_calculus
    {Γ : BoundaryCalculus.AnalyticContext}
    {b : AnalyticBoundaryKind}
    {q : BoundaryCalculus.AnalyticClaim Γ b}
    (P : MathlibProofCertificate Γ b q) :
    q.statement :=
  BoundaryCalculus.analytic_boundary_calculus
    (Γ := Γ)
    (b := b)
    (q := q)
    ⟨P.toAnalyticAuthorityToken⟩

/--
The canonical route template for a resolved Mathlib-backed analytic theorem.

Every resolved analytic theorem should instantiate this pattern:

`MathlibProofCertificate → AnalyticCertificate → AnalyticAuthorityToken →
analytic_boundary_calculus → q.statement`.

The metadata fields are audit data.  The proof-bearing object is the
`MathlibProofCertificate`, and the exported theorem must still route through
boundary calculus.
-/
structure MathlibBoundaryRoute
    (Γ : BoundaryCalculus.AnalyticContext)
    (b : AnalyticBoundaryKind)
    (q : BoundaryCalculus.AnalyticClaim Γ b) where
  proofCertificate : MathlibProofCertificate Γ b q
  analyticCertificate : AnalyticCertificate
  analyticCertificate_eq :
    analyticCertificate = proofCertificate.toAnalyticCertificate
  authorityToken : BoundaryCalculus.AnalyticAuthorityToken Γ b q
  authorityToken_eq :
    authorityToken = proofCertificate.toAnalyticAuthorityToken

/-- Build the canonical Mathlib-backed route from a proof certificate. -/
def MathlibBoundaryRoute.fromProofCertificate
    {Γ : BoundaryCalculus.AnalyticContext}
    {b : AnalyticBoundaryKind}
    {q : BoundaryCalculus.AnalyticClaim Γ b}
    (P : MathlibProofCertificate Γ b q) :
    MathlibBoundaryRoute Γ b q where
  proofCertificate := P
  analyticCertificate := P.toAnalyticCertificate
  analyticCertificate_eq := rfl
  authorityToken := P.toAnalyticAuthorityToken
  authorityToken_eq := rfl

/--
Any theorem routed by the canonical Mathlib template reaches its exact
statement only through the analytic boundary calculus.
-/
theorem mathlib_route_template_through_boundary_calculus
    {Γ : BoundaryCalculus.AnalyticContext}
    {b : AnalyticBoundaryKind}
    {q : BoundaryCalculus.AnalyticClaim Γ b}
    (R : MathlibBoundaryRoute Γ b q) :
    q.statement :=
  mathlib_proof_through_boundary_calculus R.proofCertificate

/-- A Mathlib-backed certificate is an authority token, not the underlying
analytic object. -/
theorem mathlib_certificate_not_underlying_object
    {Γ : BoundaryCalculus.AnalyticContext}
    {b : AnalyticBoundaryKind}
    {q : BoundaryCalculus.AnalyticClaim Γ b}
    (P : MathlibProofCertificate Γ b q) :
    ¬ Authority.CertificateIsUnderlyingObject P.toAnalyticCertificate :=
  Authority.certificate_not_underlying_object P.toAnalyticCertificate

/--
Finite payloads may not cross an analytic boundary directly.

This is the route-template firewall: a finite payload can be carried as
metadata inside a certificate route, but it cannot own the analytic claim unless
the route supplies the proof-carrying certificate and boundary-calculus token.
-/
theorem finite_payload_authority_attempt_fails
    {Γ : BoundaryCalculus.AnalyticContext}
    {b : AnalyticBoundaryKind}
    {q : BoundaryCalculus.AnalyticClaim Γ b} :
    ¬ BoundaryCalculus.DirectOwns Γ b q :=
  BoundaryCalculus.no_direct_analytic_crossing

end MathlibBridge
end AnalyticNumber
