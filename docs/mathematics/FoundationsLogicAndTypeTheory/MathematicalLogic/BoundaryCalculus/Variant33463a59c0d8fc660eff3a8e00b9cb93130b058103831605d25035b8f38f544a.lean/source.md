# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.BoundaryCalculus.Variant33463a59c0d8fc660eff3a8e00b9cb93130b058103831605d25035b8f38f544a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7d1ff9112a45bac9c29ba6006595552412e3ef1` · SHA-256 `0377c4ec01c90606bcb52db19a5e6b4b3b0f2705d08eb72929ac63dc86f72e93`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.AnalyticContext.Variant3696068612abc64d961550414c17fb96a8e4b9bb913973e11e772714fa88d6fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3696068612abc64d961550414c17fb96a8e4b9bb913973e11e772714fa88d6fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.AnalyticContext.Variant3696068612abc64d961550414c17fb96a8e4b9bb913973e11e772714fa88d6fd","mathematical_subject":"Logic.Foundations","original_sha256":"3696068612abc64d961550414c17fb96a8e4b9bb913973e11e772714fa88d6fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/AnalyticNumber/BoundaryCalculus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Authority.BoundaryCalculus
import AnalyticNumber.Bridge.Number

/-!
# Analytic-number boundary calculus wrapper

This file instantiates the general `Authority.BoundaryCalculus` theorem for the
analytic-number layer.

It does not prove analytic continuation, functional equations, Euler product
identities, Fredholm determinant identities, trace formulas, prismatic
comparison, spectral convergence, completion, or zeta zero-location theorems.
It says that when such a claim is used at the analytic-number boundary, use must
factor through an explicit `AnalyticCertificate`-carrying token.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.AnalyticContext.Variant3696068612abc64d961550414c17fb96a8e4b9bb913973e11e772714fa88d6fd

namespace AnalyticNumber
namespace BoundaryCalculus

/-- Context for an analytic-number boundary claim. -/
structure AnalyticContext where
  label : String
  finiteHash : Nat

/--
Finite evidence associated with an analytic context.

This is intentionally finite metadata only. It is not an analytic object.
-/
structure AnalyticFiniteEvidence
    (_Γ : AnalyticContext) where
  label : String
  publicHash : Nat

/-- A proposition-valued analytic claim indexed by context and boundary kind. -/
structure AnalyticClaim
    (_Γ : AnalyticContext)
    (_b : AnalyticBoundaryKind) where
  label : String
  statement : Prop

/--
A proof-carrying analytic authority token.

The certificate is generic authority data. The token records that the certificate
has the correct boundary kind and that the certified proposition is exactly the
claim's statement.
-/
structure AnalyticAuthorityToken
    (Γ : AnalyticContext)
    (b : AnalyticBoundaryKind)
    (q : AnalyticClaim Γ b) where
  certificate : AnalyticCertificate
  boundaryMatches : certificate.kind = b
  statementMatches : certificate.sound = q.statement

namespace AnalyticAuthorityToken

/-- An analytic authority token proves its analytic claim. -/
def sound
    {Γ : AnalyticContext}
    {b : AnalyticBoundaryKind}
    {q : AnalyticClaim Γ b}
    (T : AnalyticAuthorityToken Γ b q) :
    q.statement :=
  Eq.mp T.statementMatches T.certificate.soundProof

end AnalyticAuthorityToken

/--
Ownership of an analytic claim means existence of an explicit analytic authority
token.
-/
def Owns
    (Γ : AnalyticContext)
    (b : AnalyticBoundaryKind)
    (q : AnalyticClaim Γ b) : Prop :=
  Nonempty (AnalyticAuthorityToken Γ b q)

/--
Direct ownership is definitionally impossible in this wrapper.

All analytic boundary use must pass through `AnalyticAuthorityToken`.
-/
def DirectOwns
    (_Γ : AnalyticContext)
    (_b : AnalyticBoundaryKind)
    (_q : AnalyticClaim _Γ _b) : Prop :=
  False

/-- The general DTT boundary model specialized to analytic-number claims. -/
def analyticDTT : Authority.BoundaryCalculus.DTT where
  Context := AnalyticContext
  Boundary := AnalyticBoundaryKind
  Claim := AnalyticClaim
  Holds := fun {Γ} {b} q => q.statement
  FiniteEvidence := AnalyticFiniteEvidence
  Owns := Owns
  DirectOwns := DirectOwns
  CertificateFor := AnalyticAuthorityToken
  certificateSound := fun {Γ} {b} {q} C =>
    C.sound
  ownsFactors := fun {Γ} {b} {q} h =>
    h
  noDirectCrossing := fun {Γ} {b} {q} h =>
    h

/--
Analytic-number boundary calculus.

If an analytic-number claim is owned, that ownership factors through an explicit
certificate token, and the claim follows from the token.
-/
theorem analytic_boundary_calculus
    {Γ : AnalyticContext}
    {b : AnalyticBoundaryKind}
    {q : AnalyticClaim Γ b}
    (hOwns : Owns Γ b q) :
    q.statement :=
  Authority.BoundaryCalculus.DTT.boundary_calculus analyticDTT hOwns

/-- Direct lower-layer crossing of an analytic-number boundary is impossible. -/
theorem no_direct_analytic_crossing
    {Γ : AnalyticContext}
    {b : AnalyticBoundaryKind}
    {q : AnalyticClaim Γ b} :
    ¬ DirectOwns Γ b q :=
  Authority.BoundaryCalculus.DTT.no_direct_crossing analyticDTT
    (Γ := Γ) (b := b) (q := q)

/--
Categorical-logic formulation of the analytic-number boundary theorem.

This is the subobject-inclusion version of `analytic_boundary_calculus`.
-/
theorem analytic_boundary_calculus_equiv_categorical_logic :
    (∀ i : Authority.BoundaryCalculus.DTT.Index analyticDTT,
      Authority.BoundaryCalculus.DTT.OwnsPred analyticDTT i →
        Authority.BoundaryCalculus.DTT.HoldsPred analyticDTT i) ↔
      Nonempty
        (Authority.BoundaryCalculus.CategoricalLogic.SubobjectLE
          (Authority.BoundaryCalculus.CategoricalLogic.predicateSubobject
            (Authority.BoundaryCalculus.DTT.OwnsPred analyticDTT))
          (Authority.BoundaryCalculus.CategoricalLogic.predicateSubobject
            (Authority.BoundaryCalculus.DTT.HoldsPred analyticDTT))) :=
  Authority.BoundaryCalculus.DTT.boundary_calculus_equiv_categorical_logic analyticDTT

/--
Categorical ownership-to-holds inclusion for the analytic-number model.
-/
theorem analytic_owns_le_holds_by_categorical_logic :
    Nonempty
      (Authority.BoundaryCalculus.CategoricalLogic.SubobjectLE
        (Authority.BoundaryCalculus.CategoricalLogic.predicateSubobject
          (Authority.BoundaryCalculus.DTT.OwnsPred analyticDTT))
        (Authority.BoundaryCalculus.CategoricalLogic.predicateSubobject
          (Authority.BoundaryCalculus.DTT.HoldsPred analyticDTT))) :=
  Authority.BoundaryCalculus.DTT.owns_le_holds_by_categorical_logic analyticDTT

/-! ## Zeta zero-location adapter example -/

/-- Analytic context attached to a supplied zeta zero-location authority. -/
def zetaZeroLocationContext
    (_A : ZetaZeroLocationAuthority) :
    AnalyticContext where
  label := "zeta zero-location context"
  finiteHash := 0

/-- The analytic claim extracted from a zeta zero-location authority. -/
def zetaZeroLocationClaim
    (A : ZetaZeroLocationAuthority) :
    AnalyticClaim
      (zetaZeroLocationContext A)
      Authority.BoundaryKind.zetaZeroLocation where
  label := "RH proposition certified by zeta zero-location authority"
  statement := A.riemannHypothesis

/-- Convert a zeta zero-location authority into an analytic certificate. -/
def zetaZeroLocationCertificate
    (A : ZetaZeroLocationAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.zetaZeroLocation
  label := "zeta zero-location certificate"
  publicHash := 0
  sound := A.riemannHypothesis
  soundProof := zeta_zero_location_authorized A

/-- The zeta zero-location authority becomes a boundary token. -/
def zetaZeroLocationToken
    (A : ZetaZeroLocationAuthority) :
    AnalyticAuthorityToken
      (zetaZeroLocationContext A)
      Authority.BoundaryKind.zetaZeroLocation
      (zetaZeroLocationClaim A) where
  certificate := zetaZeroLocationCertificate A
  boundaryMatches := rfl
  statementMatches := rfl

/--
The zero-location implication passes through the analytic boundary calculus.

This restates the existing zeta-authority implication through the general
boundary theorem.
-/
theorem zeta_zero_location_through_boundary_calculus
    (A : ZetaZeroLocationAuthority) :
    A.riemannHypothesis :=
  analytic_boundary_calculus
    (Γ := zetaZeroLocationContext A)
    (b := Authority.BoundaryKind.zetaZeroLocation)
    (q := zetaZeroLocationClaim A)
    ⟨zetaZeroLocationToken A⟩

end BoundaryCalculus
end AnalyticNumber
```
