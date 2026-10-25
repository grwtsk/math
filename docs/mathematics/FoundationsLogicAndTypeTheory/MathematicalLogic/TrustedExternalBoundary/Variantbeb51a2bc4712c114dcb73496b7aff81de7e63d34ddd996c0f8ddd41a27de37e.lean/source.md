# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TrustedExternalBoundary.Variantbeb51a2bc4712c114dcb73496b7aff81de7e63d34ddd996c0f8ddd41a27de37e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c60d49a8ad961fa4b3acabb1a4239bebf80df3b1` · SHA-256 `beb51a2bc4712c114dcb73496b7aff81de7e63d34ddd996c0f8ddd41a27de37e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Authority.BoundaryCalculus
import Authority.ExternalCertificate

/-!
# Relative conservativity for trusted external certificates

This file extends the abstract boundary calculus to boundary models that
allow both internal certificates and trusted external certificates, and
proves the relative conservativity metatheorem:

* if extended ownership factors through either an internal certificate or a
  trusted external certificate, then the claim holds
  (`trusted_external_boundary_calculus`);

* if no trusted external certificate exists for a claim, then extended
  ownership reduces to ordinary internal certificate ownership
  (`extended_ownership_reduces_to_internal_without_trusted_external`), and
  extended soundness reduces to internal certificate soundness
  (`extended_soundness_reduces_to_internal_without_trusted_external`).

The theorem is internal and relative, not a kernel-level claim about Lean:
adding opaque external payloads, hashes, labels, verifier names, or
transcript identifiers is conservative unless a payload is connected to its
claimed proposition by a trusted verifier soundness theorem
(`Authority.TrustedVerifier.sound`). No trusted verifier, no new ownership.
-/

universe u v w x y z

namespace Authority
namespace TrustedExternalBoundary

/--
A boundary model extended with trusted external certificates.

`base` is an ordinary dependent-type-theoretic boundary model.

`TrustedExternalFor Γ b q` is the family of trusted external certificates for
the claim `q`; `trustedExternalSound` is the trusted verifier boundary: it is
the only way an external certificate proves its claim.

`OwnsExt` is extended ownership. `ownsExtFactors` says extended ownership
factors through an internal certificate or a trusted external certificate.
`DirectOwnsExt` is direct extended crossing, and `noDirectExt` says it is
impossible.
-/
structure TrustedExternalDTT where
  base : BoundaryCalculus.DTT.{u, v, w, x, y}

  TrustedExternalFor :
    (Γ : base.Context) →
    (b : base.Boundary) →
    base.Claim Γ b →
    Type z

  trustedExternalSound :
    {Γ : base.Context} →
    {b : base.Boundary} →
    {q : base.Claim Γ b} →
    TrustedExternalFor Γ b q →
    base.Holds q

  OwnsExt :
    (Γ : base.Context) →
    (b : base.Boundary) →
    base.Claim Γ b →
    Prop

  DirectOwnsExt :
    (Γ : base.Context) →
    (b : base.Boundary) →
    base.Claim Γ b →
    Prop

  ownsExtFactors :
    {Γ : base.Context} →
    {b : base.Boundary} →
    {q : base.Claim Γ b} →
    OwnsExt Γ b q →
      Nonempty
        (Sum
          (base.CertificateFor Γ b q)
          (TrustedExternalFor Γ b q))

  noDirectExt :
    {Γ : base.Context} →
    {b : base.Boundary} →
    {q : base.Claim Γ b} →
    ¬ DirectOwnsExt Γ b q

/-- A claim is certified-or-trusted when it has an internal certificate or a
trusted external certificate. -/
def CertifiedOrTrusted
    (T : TrustedExternalDTT)
    {Γ : T.base.Context}
    {b : T.base.Boundary}
    (q : T.base.Claim Γ b) : Prop :=
  Nonempty
    (Sum
      (T.base.CertificateFor Γ b q)
      (T.TrustedExternalFor Γ b q))

/-- An internal certificate or a trusted external certificate proves its
claim. Internal certificates use the base model's certificate soundness;
external certificates use the trusted verifier soundness field. -/
theorem certified_or_trusted_sound
    (T : TrustedExternalDTT)
    {Γ : T.base.Context}
    {b : T.base.Boundary}
    {q : T.base.Claim Γ b}
    (h : CertifiedOrTrusted T q) :
    T.base.Holds q := by
  cases h with
  | intro s =>
      cases s with
      | inl c => exact T.base.certificateSound c
      | inr e => exact T.trustedExternalSound e

/--
Trusted external boundary calculus.

If extended ownership factors through an internal certificate or a trusted
external certificate, then the claim holds.
-/
theorem trusted_external_boundary_calculus
    (T : TrustedExternalDTT)
    {Γ : T.base.Context}
    {b : T.base.Boundary}
    {q : T.base.Claim Γ b}
    (hOwn : T.OwnsExt Γ b q) :
    T.base.Holds q := by
  apply certified_or_trusted_sound T
  exact T.ownsExtFactors hOwn

/-- Direct extended crossing of an authority boundary is impossible. -/
theorem no_direct_trusted_external_crossing
    (T : TrustedExternalDTT)
    {Γ : T.base.Context}
    {b : T.base.Boundary}
    {q : T.base.Claim Γ b} :
    ¬ T.DirectOwnsExt Γ b q :=
  T.noDirectExt

/--
Relative conservativity, ownership form.

If no trusted external certificate exists for the claim, then extended
ownership gives ordinary internal certificate ownership. Opaque external
payloads, hashes, labels, and transcripts add nothing.
-/
theorem extended_ownership_reduces_to_internal_without_trusted_external
    (T : TrustedExternalDTT)
    {Γ : T.base.Context}
    {b : T.base.Boundary}
    {q : T.base.Claim Γ b}
    (hNoTrusted :
      ∀ C : T.TrustedExternalFor Γ b q, False)
    (hOwn : T.OwnsExt Γ b q) :
    Nonempty (T.base.CertificateFor Γ b q) := by
  cases T.ownsExtFactors hOwn with
  | intro s =>
      cases s with
      | inl c => exact ⟨c⟩
      | inr e => exact False.elim (hNoTrusted e)

/--
Relative conservativity, soundness form.

If no trusted external certificate exists for the claim, then extended
soundness is exactly internal certificate soundness.
-/
theorem extended_soundness_reduces_to_internal_without_trusted_external
    (T : TrustedExternalDTT)
    {Γ : T.base.Context}
    {b : T.base.Boundary}
    {q : T.base.Claim Γ b}
    (hNoTrusted :
      ∀ C : T.TrustedExternalFor Γ b q, False)
    (hOwn : T.OwnsExt Γ b q) :
    T.base.Holds q := by
  cases
    extended_ownership_reduces_to_internal_without_trusted_external
      T hNoTrusted hOwn with
  | intro c => exact T.base.certificateSound c

/-!
## Categorical mirror

These theorems restate the trusted-external boundary calculus as subobject
inclusions, mirroring `owns_le_cert_categorical`, `cert_le_holds_categorical`,
`owns_le_holds_by_categorical_logic`, and
`no_direct_crossing_as_empty_subobject` from the base calculus.
-/

/-- Extended-ownership predicate on the total claim index of the base model. -/
def OwnsExtPred
    (T : TrustedExternalDTT) :
    BoundaryCalculus.DTT.Index T.base → Prop
  | ⟨Γ, ⟨b, q⟩⟩ => T.OwnsExt Γ b q

/-- Certified-or-trusted predicate on the total claim index of the base model. -/
def CertifiedOrTrustedPred
    (T : TrustedExternalDTT) :
    BoundaryCalculus.DTT.Index T.base → Prop
  | ⟨_, ⟨_, q⟩⟩ => CertifiedOrTrusted T q

/-- Direct-extended-ownership predicate on the total claim index. -/
def DirectExtPred
    (T : TrustedExternalDTT) :
    BoundaryCalculus.DTT.Index T.base → Prop
  | ⟨Γ, ⟨b, q⟩⟩ => T.DirectOwnsExt Γ b q

/-- Categorical version of `OwnsExt → CertifiedOrTrusted`. -/
theorem ownsExt_le_certifiedOrTrusted_categorical
    (T : TrustedExternalDTT) :
    Nonempty
      (BoundaryCalculus.CategoricalLogic.SubobjectLE
        (BoundaryCalculus.CategoricalLogic.predicateSubobject (OwnsExtPred T))
        (BoundaryCalculus.CategoricalLogic.predicateSubobject (CertifiedOrTrustedPred T))) := by
  apply BoundaryCalculus.CategoricalLogic.predicate_subobject_inclusion_equiv.mp
  intro i h
  cases i with
  | mk Γ rest =>
      cases rest with
      | mk b q =>
          exact T.ownsExtFactors h

/-- Categorical version of `CertifiedOrTrusted → Holds`. -/
theorem certifiedOrTrusted_le_holds_categorical
    (T : TrustedExternalDTT) :
    Nonempty
      (BoundaryCalculus.CategoricalLogic.SubobjectLE
        (BoundaryCalculus.CategoricalLogic.predicateSubobject (CertifiedOrTrustedPred T))
        (BoundaryCalculus.CategoricalLogic.predicateSubobject (BoundaryCalculus.DTT.HoldsPred T.base))) := by
  apply BoundaryCalculus.CategoricalLogic.predicate_subobject_inclusion_equiv.mp
  intro i h
  cases i with
  | mk Γ rest =>
      cases rest with
      | mk b q =>
          exact certified_or_trusted_sound T h

/--
The categorical trusted-external boundary calculus.

The extended-ownership subobject factors through the certified-or-trusted
subobject, and the certified-or-trusted subobject factors through the claim
subobject.
-/
theorem trusted_external_owns_le_holds_by_categorical_logic
    (T : TrustedExternalDTT) :
    Nonempty
      (BoundaryCalculus.CategoricalLogic.SubobjectLE
        (BoundaryCalculus.CategoricalLogic.predicateSubobject (OwnsExtPred T))
        (BoundaryCalculus.CategoricalLogic.predicateSubobject (BoundaryCalculus.DTT.HoldsPred T.base))) := by
  cases ownsExt_le_certifiedOrTrusted_categorical T with
  | intro hOwnCert =>
      cases certifiedOrTrusted_le_holds_categorical T with
      | intro hCertHolds =>
          exact ⟨BoundaryCalculus.CategoricalLogic.subobjectLE_trans hOwnCert hCertHolds⟩

/-- Categorical no-direct-crossing form for the extended model. -/
theorem no_direct_trusted_external_crossing_as_empty_subobject
    (T : TrustedExternalDTT) :
    Nonempty
      (BoundaryCalculus.CategoricalLogic.SubobjectLE
        (BoundaryCalculus.CategoricalLogic.predicateSubobject (DirectExtPred T))
        (BoundaryCalculus.CategoricalLogic.predicateSubobject
          (fun _ : BoundaryCalculus.DTT.Index T.base => False))) := by
  apply BoundaryCalculus.CategoricalLogic.predicate_subobject_inclusion_equiv.mp
  intro i h
  cases i with
  | mk Γ rest =>
      cases rest with
      | mk b q =>
          exact T.noDirectExt h

/-!
Main theorem index:

  trusted_external_boundary_calculus
  extended_ownership_reduces_to_internal_without_trusted_external
  extended_soundness_reduces_to_internal_without_trusted_external
  no_direct_trusted_external_crossing
-/

end TrustedExternalBoundary
end Authority
```
