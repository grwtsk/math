# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TaylorGerm.Variant7c6c215932492cdf31202bc42a151f74d95aabb018e166c95bc0687c26ab92b7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb781171462fa9051f3da1a424f243f57ac88489` · SHA-256 `7c6c215932492cdf31202bc42a151f74d95aabb018e166c95bc0687c26ab92b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Arithmetic.EllipticCurve.BSD.Statement

namespace Surface.Arithmetic
namespace EllipticCurve
namespace BSD

universe u

/-!
# BSD TaylorGerm

What is formalized:
Taylor germ and leading-coefficient interfaces at s = 1.

What is certificate-gated:
All declarations in this component remain theorem-facing interfaces or conditional
unpackers. They do not construct BSD, analytic continuation, Mordell-Weil finite
generation, Sha finiteness, automorphy, or local arithmetic geometry.

What is not claimed:
No theorem in this file proves the Birch and Swinnerton-Dyer conjecture.

Primary mathematical source:
Internal Surface BSD proof-boundary and theorem-cone architecture.
-/

/--
Taylor-expansion data for the Hasse-Weil L-function at `s = 1`.

The coefficient carrier and coefficient function are explicit.  Analytic
existence and correctness of the expansion remain certificate obligations.
-/
structure TaylorExpansionAtSEqOneData
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (L : HasseWeilLFunction K.field E) where
  Coefficient : Type u
  coefficient :
    Nat → Coefficient
  centerLabel : String
  centerIsSEqOne : Prop
  centerIsSEqOneCertified :
    centerIsSEqOne
  coefficientsIndexedByNat :
    ∀ n : Nat, coefficient n = coefficient n
  boundary : List String

/--
Taylor-expansion certificate for the Hasse-Weil L-function at `s = 1`.

This remains certificate-gated: it does not prove analytic continuation or
compute Taylor coefficients. It now carries typed coefficient data.
-/
structure TaylorExpansionAtSEqOneCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (L : HasseWeilLFunction K.field E) where
  analyticContinuation :
    AnalyticContinuationCertificate L
  analyticContinuationCertified :
    analyticContinuation.certifiedForBSD
  expansionData :
    TaylorExpansionAtSEqOneData L
  expansionMatchesAnalyticFunction : Prop
  expansionMatchesAnalyticFunctionCertified :
    expansionMatchesAnalyticFunction
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Taylor-expansion quality required by theorem-facing BSD input. -/
def TaylorExpansionAtSEqOneCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {L : HasseWeilLFunction K.field E}
    (T : TaylorExpansionAtSEqOneCertificate L) :
    Prop :=
  T.analyticContinuation.certifiedForBSD ∧
  T.expansionData.centerIsSEqOne ∧
  (∀ n : Nat, T.expansionData.coefficient n =
    T.expansionData.coefficient n) ∧
  T.expansionMatchesAnalyticFunction ∧
  T.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem TaylorExpansionAtSEqOneCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {L : HasseWeilLFunction K.field E}
    (T : TaylorExpansionAtSEqOneCertificate L)
    (hsource :
      T.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    T.certifiedForBSD := by
  constructor
  · exact T.analyticContinuationCertified
  · constructor
    · exact T.expansionData.centerIsSEqOneCertified
    · constructor
      · exact T.expansionData.coefficientsIndexedByNat
      · constructor
        · exact T.expansionMatchesAnalyticFunctionCertified
        · exact hsource

/--
Leading-coefficient certificate for the BSD second part.

This is still an interface certificate. It does not compute the coefficient or
prove the Taylor expansion theorem.
-/
structure LeadingCoefficientCertificate
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (MW : MordellWeilGroup.{u})
    (S₁ : FirstPartStatement L MW)
    (S₂ : SecondPartStatement L MW) where
  taylorExpansion :
    TaylorExpansionAtSEqOneCertificate L
  taylorExpansionCertified :
    taylorExpansion.certifiedForBSD
  orderCertificate :
    OrderOfVanishingCertificate L
  orderCertificateMatchesFirstPart :
    orderCertificate = S₁.orderCertificate
  orderCertificateCertified :
    orderCertificate.certifiedForBSD
  coefficientIndexMatchesOrder : Prop
  coefficientIndexMatchesOrderCertified :
    coefficientIndexMatchesOrder
  coefficientNonzero : Prop
  coefficientNonzeroCertified :
    coefficientNonzero
  leadingCoefficientStatusSupplied :
    S₂.identityData.leadingCoefficient =
      BSDComponentStatus.suppliedByCertificate
  coefficientMatchesSecondPart : Prop
  coefficientMatchesSecondPartCertified :
    coefficientMatchesSecondPart
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Leading-coefficient quality required by theorem-facing BSD input. -/
def LeadingCoefficientCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {MW : MordellWeilGroup.{u}}
    {S₁ : FirstPartStatement L MW}
    {S₂ : SecondPartStatement L MW}
    (LC : LeadingCoefficientCertificate L MW S₁ S₂) :
    Prop :=
  LC.taylorExpansion.certifiedForBSD ∧
  LC.orderCertificate = S₁.orderCertificate ∧
  LC.orderCertificate.certifiedForBSD ∧
  LC.coefficientIndexMatchesOrder ∧
  LC.coefficientNonzero ∧
  S₂.identityData.leadingCoefficient =
    BSDComponentStatus.suppliedByCertificate ∧
  LC.coefficientMatchesSecondPart ∧
  LC.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem LeadingCoefficientCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {MW : MordellWeilGroup.{u}}
    {S₁ : FirstPartStatement L MW}
    {S₂ : SecondPartStatement L MW}
    (LC : LeadingCoefficientCertificate L MW S₁ S₂)
    (hsource :
      LC.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    LC.certifiedForBSD := by
  constructor
  · exact LC.taylorExpansionCertified
  · constructor
    · exact LC.orderCertificateMatchesFirstPart
    · constructor
      · exact LC.orderCertificateCertified
      · constructor
        · exact LC.coefficientIndexMatchesOrderCertified
        · constructor
          · exact LC.coefficientNonzeroCertified
          · constructor
            · exact LC.leadingCoefficientStatusSupplied
            · constructor
              · exact LC.coefficientMatchesSecondPartCertified
              · exact hsource

end BSD
end EllipticCurve
end Surface.Arithmetic

```
