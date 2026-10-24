# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.TrustedExternal.Variant926147295ccaa8d793999297cc9243fd208e6dc556a59d3ddc3089bb47fd0729

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3dff4d2850d0777d5b029dc0acafc34df2005911` · SHA-256 `926147295ccaa8d793999297cc9243fd208e6dc556a59d3ddc3089bb47fd0729`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import AnalyticNumber.BoundaryCalculus
import Authority.TrustedExternalBoundary

/-!
# Trusted external certificates at the analytic-number boundary

This file instantiates the trusted-external boundary calculus for the
analytic-number wrapper.

An `Authority.ExternalPayload` is metadata plus a claimed proposition, not a
proof: `untrusted_external_payload_not_analytic_authority`. The only way an
external artifact proves an analytic claim is through a
`TrustedExternalAnalyticToken`, whose `trusted` field carries a
`TrustedVerifier` together with its soundness theorem — the exact trusted
computing base for external proof import.

The conservativity theorem is relative: if no trusted external token exists
for a claim (`hNoTrusted`), extended ownership reduces to ordinary internal
`BoundaryCalculus.Owns`, and the claim is then recovered only through the
existing `analytic_boundary_calculus`. No trusted verifier, no new
ownership. Hashes are audit handles only; equality of hashes never proves a
statement.
-/

namespace AnalyticNumber
namespace TrustedExternal

/--
A trusted external token for an analytic claim.

The token records that the external payload has the correct boundary kind,
that its claimed statement is exactly the claim's statement, and that a
trusted verifier accepted it.
-/
structure TrustedExternalAnalyticToken
    (Γ : BoundaryCalculus.AnalyticContext)
    (b : AnalyticBoundaryKind)
    (q : BoundaryCalculus.AnalyticClaim Γ b) where
  payload : Authority.ExternalPayload
  trusted : Authority.TrustedExternalCertificate payload
  boundaryMatches : payload.kind = b
  statementMatches : payload.statement = q.statement

/-- A trusted external analytic token proves its analytic claim, via the
verifier soundness theorem carried by `trusted`. -/
def TrustedExternalAnalyticToken.sound
    {Γ : BoundaryCalculus.AnalyticContext}
    {b : AnalyticBoundaryKind}
    {q : BoundaryCalculus.AnalyticClaim Γ b}
    (T : TrustedExternalAnalyticToken Γ b q) :
    q.statement :=
  Eq.mp T.statementMatches T.trusted.sound

/--
Extended ownership of an analytic claim: either the existing internal
analytic authority token, or a trusted external analytic token.
-/
def OwnsWithTrustedExternal
    (Γ : BoundaryCalculus.AnalyticContext)
    (b : AnalyticBoundaryKind)
    (q : BoundaryCalculus.AnalyticClaim Γ b) : Prop :=
  Nonempty
    (Sum
      (BoundaryCalculus.AnalyticAuthorityToken Γ b q)
      (TrustedExternalAnalyticToken Γ b q))

/-- Direct extended ownership is definitionally impossible. -/
def DirectOwnsWithTrustedExternal
    (_Γ : BoundaryCalculus.AnalyticContext)
    (_b : AnalyticBoundaryKind)
    (_q : BoundaryCalculus.AnalyticClaim _Γ _b) : Prop :=
  False

theorem owns_with_trusted_external_sound
    {Γ : BoundaryCalculus.AnalyticContext}
    {b : AnalyticBoundaryKind}
    {q : BoundaryCalculus.AnalyticClaim Γ b}
    (hOwn : OwnsWithTrustedExternal Γ b q) :
    q.statement := by
  cases hOwn with
  | intro s =>
      cases s with
      | inl internal =>
          exact internal.sound
      | inr external =>
          exact external.sound

theorem no_direct_analytic_crossing_with_trusted_external
    {Γ : BoundaryCalculus.AnalyticContext}
    {b : AnalyticBoundaryKind}
    {q : BoundaryCalculus.AnalyticClaim Γ b} :
    ¬ DirectOwnsWithTrustedExternal Γ b q := by
  intro h
  exact h

/--
Relative conservativity at the analytic boundary, ownership form.

If no trusted external token exists for the claim, extended ownership
reduces to ordinary internal analytic ownership.
-/
theorem analytic_extended_ownership_reduces_to_internal_without_trusted_external
    {Γ : BoundaryCalculus.AnalyticContext}
    {b : AnalyticBoundaryKind}
    {q : BoundaryCalculus.AnalyticClaim Γ b}
    (hNoTrusted :
      ∀ T : TrustedExternalAnalyticToken Γ b q, False)
    (hOwn : OwnsWithTrustedExternal Γ b q) :
    BoundaryCalculus.Owns Γ b q := by
  cases hOwn with
  | intro s =>
      cases s with
      | inl internal => exact ⟨internal⟩
      | inr external => exact False.elim (hNoTrusted external)

/--
Relative conservativity at the analytic boundary, soundness form.

Without a trusted external token, the claim is recovered exclusively through
the existing internal analytic boundary calculus.
-/
theorem analytic_extended_conservativity_without_trusted_external
    {Γ : BoundaryCalculus.AnalyticContext}
    {b : AnalyticBoundaryKind}
    {q : BoundaryCalculus.AnalyticClaim Γ b}
    (hNoTrusted :
      ∀ T : TrustedExternalAnalyticToken Γ b q, False)
    (hOwn : OwnsWithTrustedExternal Γ b q) :
    q.statement := by
  have hInternal : BoundaryCalculus.Owns Γ b q :=
    analytic_extended_ownership_reduces_to_internal_without_trusted_external
      hNoTrusted hOwn
  exact BoundaryCalculus.analytic_boundary_calculus hInternal

/-- The analytic instance of the generic trusted-external boundary model. -/
def trustedExternalDTT :
    Authority.TrustedExternalBoundary.TrustedExternalDTT where
  base := BoundaryCalculus.analyticDTT
  TrustedExternalFor := TrustedExternalAnalyticToken
  trustedExternalSound := fun {Γ} {b} {q} T =>
    T.sound
  OwnsExt := OwnsWithTrustedExternal
  DirectOwnsExt := DirectOwnsWithTrustedExternal
  ownsExtFactors := fun {Γ} {b} {q} h =>
    h
  noDirectExt := fun {Γ} {b} {q} h =>
    h

/-- The generic trusted-external boundary calculus, specialized to the
analytic-number layer. -/
theorem analytic_trusted_external_boundary_calculus_via_generic
    {Γ : BoundaryCalculus.AnalyticContext}
    {b : AnalyticBoundaryKind}
    {q : BoundaryCalculus.AnalyticClaim Γ b}
    (hOwn : OwnsWithTrustedExternal Γ b q) :
    q.statement :=
  Authority.TrustedExternalBoundary.trusted_external_boundary_calculus
    trustedExternalDTT hOwn

/-- Raw external payloads are not analytic authority. -/
theorem untrusted_external_payload_not_analytic_authority
    (E : Authority.ExternalPayload) :
    ¬ E.ProvesStatement :=
  Authority.external_payload_not_proof E

/-!
Analytic theorem index:

  owns_with_trusted_external_sound
  analytic_extended_ownership_reduces_to_internal_without_trusted_external
  analytic_extended_conservativity_without_trusted_external
  analytic_trusted_external_boundary_calculus_via_generic
  no_direct_analytic_crossing_with_trusted_external
-/

end TrustedExternal
end AnalyticNumber
```
