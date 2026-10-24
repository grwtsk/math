# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Periods.Variantcc886458fe2d8b1a184f488f47ae5b107064378df2a065910b25dd342776c666

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a31099ca571e7a69a817f831ca5db6fd75beaa51` · SHA-256 `cc886458fe2d8b1a184f488f47ae5b107064378df2a065910b25dd342776c666`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Arithmetic.EllipticCurve.BSD.TaylorGerm

namespace Surface.Arithmetic
namespace EllipticCurve
namespace BSD

universe u

/-!
# BSD Periods

What is formalized:
Archimedean period and leading-coefficient normalization interfaces.

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
Analytic-normalization provenance for the BSD leading coefficient.

This certificate says that the Taylor germ at `s = 1`, the order certificate,
the leading coefficient used in the BSD second part, the Euler-product/Dirichlet
coefficient system, and the completed/uncompleted normalization all refer to the
same theorem-facing analytic object.

It is still an interface certificate. It does not construct the analytic
L-function, prove analytic continuation, prove convergence, compute the leading
coefficient, or prove BSD.
-/
structure LeadingTermConventionData
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {MW : MordellWeilGroup.{u}}
    {S₁ : FirstPartStatement L MW}
    {S₂ : SecondPartStatement L MW}
    (LC : LeadingCoefficientCertificate L MW S₁ S₂) where
  conventionLabel : String
  leadingIndex : Nat
  leadingIndex_eq_order :
    leadingIndex = LC.orderCertificate.order
  leadingCoefficient :
    LC.taylorExpansion.expansionData.Coefficient
  boundary : List String

structure LeadingCoefficientAnalyticNormalizationCertificate
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (MW : MordellWeilGroup.{u})
    (S₁ : FirstPartStatement L MW)
    (S₂ : SecondPartStatement L MW)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (LC : LeadingCoefficientCertificate L MW S₁ S₂) where
  leadingCoefficientCertified :
    LC.certifiedForBSD
  eulerProductDirichletSeries :
    EulerProductDirichletSeriesCompatibilityCertificate N L
  eulerProductDirichletSeriesCertified :
    eulerProductDirichletSeries.certifiedForBSD
  completedFunctionalEquation :
    CompletedFunctionalEquationNormalizationCertificate N P L
  completedFunctionalEquationCertified :
    completedFunctionalEquation.certifiedForBSD
  taylorGermUsesAnalyticContinuationFromCoefficientSeries : Prop
  taylorGermUsesAnalyticContinuationFromCoefficientSeriesCertified :
    taylorGermUsesAnalyticContinuationFromCoefficientSeries
  orderCertificateUsesSameAnalyticGerm : Prop
  orderCertificateUsesSameAnalyticGermCertified :
    orderCertificateUsesSameAnalyticGerm
  leadingTermConvention :
    LeadingTermConventionData LC
  leadingCoefficientMatchesLimitQuotientAtSEqOne : Prop
  leadingCoefficientMatchesLimitQuotientAtSEqOneCertified :
    leadingCoefficientMatchesLimitQuotientAtSEqOne
  completedToUncompletedNormalizationNonzeroAtSEqOne : Prop
  completedToUncompletedNormalizationNonzeroAtSEqOneCertified :
    completedToUncompletedNormalizationNonzeroAtSEqOne
  coefficientSystemAnalyticGermCompatibleWithSecondPart : Prop
  coefficientSystemAnalyticGermCompatibleWithSecondPartCertified :
    coefficientSystemAnalyticGermCompatibleWithSecondPart
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/--
Leading-coefficient analytic normalization required by theorem-facing BSD input.
-/
def LeadingCoefficientAnalyticNormalizationCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {MW : MordellWeilGroup.{u}}
    {S₁ : FirstPartStatement L MW}
    {S₂ : SecondPartStatement L MW}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {LC : LeadingCoefficientCertificate L MW S₁ S₂}
    (A : LeadingCoefficientAnalyticNormalizationCertificate
      L MW S₁ S₂ N P LC) :
    Prop :=
  LC.certifiedForBSD ∧
  A.eulerProductDirichletSeries.certifiedForBSD ∧
  A.completedFunctionalEquation.certifiedForBSD ∧
  A.taylorGermUsesAnalyticContinuationFromCoefficientSeries ∧
  A.orderCertificateUsesSameAnalyticGerm ∧
  A.leadingTermConvention.leadingIndex = LC.orderCertificate.order ∧
  A.leadingCoefficientMatchesLimitQuotientAtSEqOne ∧
  A.completedToUncompletedNormalizationNonzeroAtSEqOne ∧
  A.coefficientSystemAnalyticGermCompatibleWithSecondPart ∧
  A.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem LeadingCoefficientAnalyticNormalizationCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {MW : MordellWeilGroup.{u}}
    {S₁ : FirstPartStatement L MW}
    {S₂ : SecondPartStatement L MW}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {LC : LeadingCoefficientCertificate L MW S₁ S₂}
    (A : LeadingCoefficientAnalyticNormalizationCertificate
      L MW S₁ S₂ N P LC)
    (hsource :
      A.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    A.certifiedForBSD := by
  exact
    ⟨A.leadingCoefficientCertified,
      A.eulerProductDirichletSeriesCertified,
      A.completedFunctionalEquationCertified,
      A.taylorGermUsesAnalyticContinuationFromCoefficientSeriesCertified,
      A.orderCertificateUsesSameAnalyticGermCertified,
      A.leadingTermConvention.leadingIndex_eq_order,
      A.leadingCoefficientMatchesLimitQuotientAtSEqOneCertified,
      A.completedToUncompletedNormalizationNonzeroAtSEqOneCertified,
      A.coefficientSystemAnalyticGermCompatibleWithSecondPartCertified,
      hsource⟩

/-- Typed archimedean place kind used by period certificate metadata. -/
inductive ArchimedeanPlaceKind where
  | real
  | complex
  | suppliedByCertificate
deriving Repr, DecidableEq

/--
Archimedean-place descriptor for theorem-facing BSD period data.

This is still an interface descriptor. It does not construct embeddings,
completions, Haar measures, or analytic manifolds.
-/
structure ArchimedeanPlaceDescriptor
    {K : LawfulFieldLike.{u}}
    (N : NumberFieldCertificate K) where
  kind : ArchimedeanPlaceKind
  EmbeddingTarget : Type u
  embeddingLabel : String
  embeddingMap :
    K.field.Carrier → EmbeddingTarget
  embeddingDefinedOnBaseField :
    ∀ x : K.field.Carrier, embeddingMap x = embeddingMap x
  archimedeanPlace : Prop
  archimedeanPlaceCertified :
    archimedeanPlace
  compatibleWithNumberFieldCertificate : Prop
  compatibleWithNumberFieldCertificateCertified :
    compatibleWithNumberFieldCertificate
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Archimedean-place quality required by theorem-facing BSD period data. -/
def ArchimedeanPlaceDescriptor.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    (V : ArchimedeanPlaceDescriptor N) :
    Prop :=
  (∀ x : K.field.Carrier, V.embeddingMap x = V.embeddingMap x) ∧
  V.archimedeanPlace ∧
  V.compatibleWithNumberFieldCertificate ∧
  V.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem ArchimedeanPlaceDescriptor.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    (V : ArchimedeanPlaceDescriptor N)
    (hsource :
      V.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    V.certifiedForBSD := by
  constructor
  · exact V.embeddingDefinedOnBaseField
  · constructor
    · exact V.archimedeanPlaceCertified
    · constructor
      · exact V.compatibleWithNumberFieldCertificateCertified
      · exact hsource

/--
Invariant/Neron differential certificate for period data.

This is still an interface certificate. It does not construct the sheaf of
differentials or prove minimality of the Neron differential.
-/
structure InvariantDifferentialCertificate
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C) where
  Differential : Type u
  differential :
    Differential
  invariantDifferential : Prop
  invariantDifferentialCertified :
    invariantDifferential
  neronDifferentialCompatibleWithMinimalModel : Prop
  neronDifferentialCompatibleWithMinimalModelCertified :
    neronDifferentialCompatibleWithMinimalModel
  compatibleWithSmoothGroupLaw : Prop
  compatibleWithSmoothGroupLawCertified :
    compatibleWithSmoothGroupLaw
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Invariant-differential quality required by theorem-facing BSD period data. -/
def InvariantDifferentialCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (D : InvariantDifferentialCertificate M) :
    Prop :=
  D.differential = D.differential ∧
  D.invariantDifferential ∧
  D.neronDifferentialCompatibleWithMinimalModel ∧
  D.compatibleWithSmoothGroupLaw ∧
  D.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem InvariantDifferentialCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (D : InvariantDifferentialCertificate M)
    (hsource :
      D.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    D.certifiedForBSD := by
  constructor
  · rfl
  · constructor
    · exact D.invariantDifferentialCertified
    · constructor
      · exact D.neronDifferentialCompatibleWithMinimalModelCertified
      · constructor
        · exact D.compatibleWithSmoothGroupLawCertified
        · exact hsource

/--
Local archimedean period certificate.

This is still an interface certificate. It does not construct period integrals,
real/complex analytic groups, or Haar measures.
-/
structure LocalPeriodCertificate
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (N : NumberFieldCertificate C.K)
    (V : ArchimedeanPlaceDescriptor N) where
  placeCertified :
    V.certifiedForBSD
  differential :
    InvariantDifferentialCertificate M
  differentialCertified :
    differential.certifiedForBSD
  PeriodValue : Type u
  periodIntegral :
    PeriodValue
  periodPositive : Prop
  periodPositiveCertified :
    periodPositive
  periodCompatibleWithPlaceAndDifferential : Prop
  periodCompatibleWithPlaceAndDifferentialCertified :
    periodCompatibleWithPlaceAndDifferential
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Local period quality required by theorem-facing BSD input. -/
def LocalPeriodCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {V : ArchimedeanPlaceDescriptor N}
    (P : LocalPeriodCertificate (M := M) N V) :
  Prop :=
  V.certifiedForBSD ∧
  P.differential.certifiedForBSD ∧
  P.periodIntegral = P.periodIntegral ∧
  P.periodPositive ∧
  P.periodCompatibleWithPlaceAndDifferential ∧
  P.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem LocalPeriodCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {V : ArchimedeanPlaceDescriptor N}
    (P : LocalPeriodCertificate (M := M) N V)
    (hsource :
      P.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    P.certifiedForBSD := by
  constructor
  · exact P.placeCertified
  · constructor
    · exact P.differentialCertified
    · constructor
      · rfl
      · constructor
        · exact P.periodPositiveCertified
        · constructor
          · exact P.periodCompatibleWithPlaceAndDifferentialCertified
          · exact hsource

/--
Global period-product certificate for the BSD second part.

This is still an interface certificate. It does not construct archimedean
period integrals or prove the BSD period formula.
-/
structure PeriodProductCertificate
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C)
    (N : NumberFieldCertificate C.K)
    {L : HasseWeilLFunction C.K.field C.E}
    (S : SecondPartStatement L M.MW) where
  differential :
    InvariantDifferentialCertificate M
  differentialCertified :
    differential.certifiedForBSD
  archimedeanPlaces :
    List (Sigma (fun _ : ArchimedeanPlaceDescriptor N => Unit))
  localPeriods :
    List (Sigma (fun V : ArchimedeanPlaceDescriptor N =>
      LocalPeriodCertificate (M := M) N V))
  localPeriodsCompatibleWithDifferential : Prop
  localPeriodsCompatibleWithDifferentialCertified :
    localPeriodsCompatibleWithDifferential
  PeriodProductValue : Type u
  periodProduct :
    PeriodProductValue
  periodProductUsesLocalPeriods : Prop
  periodProductUsesLocalPeriodsCertified :
    periodProductUsesLocalPeriods
  periodStatusSupplied :
    S.identityData.period =
      BSDComponentStatus.suppliedByCertificate
  periodProductMatchesSecondPart : Prop
  periodProductMatchesSecondPartCertified :
    periodProductMatchesSecondPart
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Period-product quality required by theorem-facing BSD input. -/
def PeriodProductCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {L : HasseWeilLFunction C.K.field C.E}
    {S : SecondPartStatement L M.MW}
    (P : PeriodProductCertificate M N S) :
    Prop :=
  P.differential.certifiedForBSD ∧
  P.archimedeanPlaces = P.archimedeanPlaces ∧
  P.localPeriods = P.localPeriods ∧
  P.localPeriodsCompatibleWithDifferential ∧
  P.periodProductUsesLocalPeriods ∧
  S.identityData.period =
    BSDComponentStatus.suppliedByCertificate ∧
  P.periodProductMatchesSecondPart ∧
  P.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem PeriodProductCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {L : HasseWeilLFunction C.K.field C.E}
    {S : SecondPartStatement L M.MW}
    (P : PeriodProductCertificate M N S)
    (hsource :
      P.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    P.certifiedForBSD := by
  constructor
  · exact P.differentialCertified
  · constructor
    · rfl
    · constructor
      · rfl
      · constructor
        · exact P.localPeriodsCompatibleWithDifferentialCertified
        · constructor
          · exact P.periodProductUsesLocalPeriodsCertified
          · constructor
            · exact P.periodStatusSupplied
            · constructor
              · exact P.periodProductMatchesSecondPartCertified
              · exact hsource

end BSD
end EllipticCurve
end Surface.Arithmetic

```
