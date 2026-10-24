# Complete source: GRWTSK.NumberTheory.AlgebraicNumberTheory.Assembly.Variante67658fcb5c89aabc87cb0112ce5897f247842b40375302a72093763687097c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e45718b18b006177c5ae66b8c87f0cf714e237ef` · SHA-256 `80825431681ca2ad782dd82ce2b6b9938be48ef1ac9740bd22f3835c7ecfab0e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AlgebraicNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AlgebraicNumberTheory.BSDFirstPartAssemblyCertificate.Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AlgebraicNumberTheory.SourceCorpus.BSDFirstPartAssemblyCertificate.Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db","mathematical_subject":"NumberTheory.AlgebraicNumberTheory","original_sha256":"7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Arithmetic/EllipticCurve/BSD/Assembly.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Arithmetic.EllipticCurve.BSD.Tamagawa
import Surface.Arithmetic.EllipticCurve.BSD.Regulator
import Surface.Arithmetic.EllipticCurve.BSD.RootNumberParity
import Surface.Arithmetic.EllipticCurve.BSD.Periods
import Surface.Arithmetic.EllipticCurve.BSD.Sha
import Surface.Arithmetic.EllipticCurve.BSD.Torsion


namespace GRWTSK.NumberTheory.AlgebraicNumberTheory.BSDFirstPartAssemblyCertificate.Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db

namespace Surface.Arithmetic
namespace EllipticCurve
namespace BSD

universe u

/-!
# BSD Assembly

What is formalized:
First/second part assembly and analytic-object coherence interfaces.

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
Assembly provenance for the BSD first part.

This certificate says that the algebraic rank side and analytic
order-of-vanishing side of the first BSD part use the same smooth Mordell-Weil
input and the same central analytic germ of the Hasse-Weil L-function.

It is still an interface certificate. It does not prove Mordell-Weil, analytic
continuation, the functional equation, or the equality of rank and analytic
order.
-/
structure BSDFirstPartAssemblyCertificate
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (M : SmoothMordellWeilInterface C)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (S₁ : FirstPartStatement L M.MW) where
  smoothMordellWeilCertified :
    M.certifiedForBSD
  finiteGenerationProvenance :
    ∃ FG : MordellWeilFiniteGenerationProvenanceCertificate M,
      FG.certifiedForBSD
  rankCertificateMatchesSmoothMW :
    S₁.rankCertificate = M.finiteGeneration
  rankCertificateCertified :
    M.finiteGeneration.certifiedForBSD
  orderCertificateCertified :
    S₁.orderCertificate.certifiedForBSD
  orderCertificateAtSEqOne :
    S₁.orderCertificate.point = SymbolicComplexVariable.sEqOne
  analyticContinuation :
    ∃ A : AnalyticContinuationCertificate L,
      A.certifiedForBSD
  eulerProductDirichletSeries :
    ∃ EC : EulerProductDirichletSeriesCompatibilityCertificate N L,
      EC.certifiedForBSD
  completedFunctionalEquation :
    ∃ FE : CompletedFunctionalEquationNormalizationCertificate N P L,
      FE.certifiedForBSD
  algebraicRankUsesSmoothMordellWeilFreePart : Prop
  algebraicRankUsesSmoothMordellWeilFreePartCertified :
    algebraicRankUsesSmoothMordellWeilFreePart
  analyticOrderUsesCentralTaylorGerm : Prop
  analyticOrderUsesCentralTaylorGermCertified :
    analyticOrderUsesCentralTaylorGerm
  orderCertificateUsesCoefficientSystemAnalyticGerm : Prop
  orderCertificateUsesCoefficientSystemAnalyticGermCertified :
    orderCertificateUsesCoefficientSystemAnalyticGerm
  rankOrderEqualityStatementMatchesFirstPart : Prop
  rankOrderEqualityStatementMatchesFirstPartCertified :
    rankOrderEqualityStatementMatchesFirstPart
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/--
BSD first-part assembly quality required by theorem-facing BSD input.
-/
def BSDFirstPartAssemblyCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {S₁ : FirstPartStatement L M.MW}
    (A : BSDFirstPartAssemblyCertificate L M N P S₁) :
    Prop :=
  M.certifiedForBSD ∧
  (∃ FG : MordellWeilFiniteGenerationProvenanceCertificate M,
    FG.certifiedForBSD) ∧
  S₁.rankCertificate = M.finiteGeneration ∧
  M.finiteGeneration.certifiedForBSD ∧
  S₁.orderCertificate.certifiedForBSD ∧
  S₁.orderCertificate.point = SymbolicComplexVariable.sEqOne ∧
  (∃ AC : AnalyticContinuationCertificate L,
    AC.certifiedForBSD) ∧
  (∃ EC : EulerProductDirichletSeriesCompatibilityCertificate N L,
    EC.certifiedForBSD) ∧
  (∃ FE : CompletedFunctionalEquationNormalizationCertificate N P L,
    FE.certifiedForBSD) ∧
  A.algebraicRankUsesSmoothMordellWeilFreePart ∧
  A.analyticOrderUsesCentralTaylorGerm ∧
  A.orderCertificateUsesCoefficientSystemAnalyticGerm ∧
  A.rankOrderEqualityStatementMatchesFirstPart ∧
  A.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem BSDFirstPartAssemblyCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {S₁ : FirstPartStatement L M.MW}
    (A : BSDFirstPartAssemblyCertificate L M N P S₁)
    (hsource :
      A.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    A.certifiedForBSD := by
  exact
    ⟨A.smoothMordellWeilCertified,
      A.finiteGenerationProvenance,
      A.rankCertificateMatchesSmoothMW,
      A.rankCertificateCertified,
      A.orderCertificateCertified,
      A.orderCertificateAtSEqOne,
      A.analyticContinuation,
      A.eulerProductDirichletSeries,
      A.completedFunctionalEquation,
      A.algebraicRankUsesSmoothMordellWeilFreePartCertified,
      A.analyticOrderUsesCentralTaylorGermCertified,
      A.orderCertificateUsesCoefficientSystemAnalyticGermCertified,
      A.rankOrderEqualityStatementMatchesFirstPartCertified,
      hsource⟩

/--
Assembly provenance for the BSD leading-coefficient identity.

This certificate says that the separately certified BSD second-part components
use one common normalization and assemble into the same leading-coefficient
identity recorded by `SecondPartStatement`.

It is still an interface certificate. It does not compute the leading
coefficient, prove the BSD formula, prove Tate-Shafarevich finiteness, construct
Tamagawa numbers, or construct the Neron-Tate regulator.
-/
structure BSDSecondPartAssemblyCertificate
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (M : SmoothMordellWeilInterface C)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (S₁ : FirstPartStatement L M.MW)
    (S₂ : SecondPartStatement L M.MW) where
  leadingCoefficient :
    ∃ LC : LeadingCoefficientCertificate L M.MW S₁ S₂,
      LC.certifiedForBSD ∧
      ∃ A : LeadingCoefficientAnalyticNormalizationCertificate
        L M.MW S₁ S₂ N P LC,
        A.certifiedForBSD
  period :
    ∃ PP : PeriodProductCertificate M N S₂,
      PP.certifiedForBSD
  regulator :
    ∃ R : RegulatorCertificate M S₂,
      R.certifiedForBSD ∧
      ∃ FG : MordellWeilFiniteGenerationProvenanceCertificate M,
        FG.certifiedForBSD ∧
        ∃ Q : RegulatorCanonicalHeightCompatibilityCertificate M S₂ FG R,
          Q.certifiedForBSD
  tateShafarevich :
    ∃ T : TateShafarevichComponentCertificate M S₂,
      T.certifiedForBSD
  tamagawa :
    ∃ TP : TamagawaProductCertificate N L S₂,
      TP.certifiedForBSD
  torsion :
    ∃ TO : TorsionOrderCertificate M S₂,
      TO.certifiedForBSD
  componentsSupplied :
    S₂.componentsSupplied
  numeratorComponentsUseCommonNormalization : Prop
  numeratorComponentsUseCommonNormalizationCertified :
    numeratorComponentsUseCommonNormalization
  denominatorComponentsUseCommonNormalization : Prop
  denominatorComponentsUseCommonNormalizationCertified :
    denominatorComponentsUseCommonNormalization
  torsionAppearsSquaredInDenominator : Prop
  torsionAppearsSquaredInDenominatorCertified :
    torsionAppearsSquaredInDenominator
  tamagawaProductUsesSameFinitePlacesAsLFunction : Prop
  tamagawaProductUsesSameFinitePlacesAsLFunctionCertified :
    tamagawaProductUsesSameFinitePlacesAsLFunction
  periodAndRegulatorUseSameInvariantDifferentialNormalization : Prop
  periodAndRegulatorUseSameInvariantDifferentialNormalizationCertified :
    periodAndRegulatorUseSameInvariantDifferentialNormalization
  assembledIdentityMatchesSecondPartStatement : Prop
  assembledIdentityMatchesSecondPartStatementCertified :
    assembledIdentityMatchesSecondPartStatement
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/--
BSD second-part assembly quality required by theorem-facing BSD input.
-/
def BSDSecondPartAssemblyCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {S₁ : FirstPartStatement L M.MW}
    {S₂ : SecondPartStatement L M.MW}
    (A : BSDSecondPartAssemblyCertificate L M N P S₁ S₂) :
    Prop :=
  (∃ LC : LeadingCoefficientCertificate L M.MW S₁ S₂,
    LC.certifiedForBSD ∧
    ∃ G : LeadingCoefficientAnalyticNormalizationCertificate
      L M.MW S₁ S₂ N P LC,
      G.certifiedForBSD) ∧
  (∃ PP : PeriodProductCertificate M N S₂,
    PP.certifiedForBSD) ∧
  (∃ R : RegulatorCertificate M S₂,
    R.certifiedForBSD ∧
    ∃ FG : MordellWeilFiniteGenerationProvenanceCertificate M,
      FG.certifiedForBSD ∧
      ∃ Q : RegulatorCanonicalHeightCompatibilityCertificate M S₂ FG R,
        Q.certifiedForBSD) ∧
  (∃ T : TateShafarevichComponentCertificate M S₂,
    T.certifiedForBSD) ∧
  (∃ TP : TamagawaProductCertificate N L S₂,
    TP.certifiedForBSD) ∧
  (∃ TO : TorsionOrderCertificate M S₂,
    TO.certifiedForBSD) ∧
  S₂.componentsSupplied ∧
  A.numeratorComponentsUseCommonNormalization ∧
  A.denominatorComponentsUseCommonNormalization ∧
  A.torsionAppearsSquaredInDenominator ∧
  A.tamagawaProductUsesSameFinitePlacesAsLFunction ∧
  A.periodAndRegulatorUseSameInvariantDifferentialNormalization ∧
  A.assembledIdentityMatchesSecondPartStatement ∧
  A.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem BSDSecondPartAssemblyCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {S₁ : FirstPartStatement L M.MW}
    {S₂ : SecondPartStatement L M.MW}
    (A : BSDSecondPartAssemblyCertificate L M N P S₁ S₂)
    (hsource :
      A.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    A.certifiedForBSD := by
  exact
    ⟨A.leadingCoefficient,
      A.period,
      A.regulator,
      A.tateShafarevich,
      A.tamagawa,
      A.torsion,
      A.componentsSupplied,
      A.numeratorComponentsUseCommonNormalizationCertified,
      A.denominatorComponentsUseCommonNormalizationCertified,
      A.torsionAppearsSquaredInDenominatorCertified,
      A.tamagawaProductUsesSameFinitePlacesAsLFunctionCertified,
      A.periodAndRegulatorUseSameInvariantDifferentialNormalizationCertified,
      A.assembledIdentityMatchesSecondPartStatementCertified,
      hsource⟩

theorem secondPart_from_leadingCoefficientIdentity
    {L : HasseWeilLFunction K E}
    {MW : MordellWeilGroup.{u}}
    (S : SecondPartStatement L MW)
    (h : S.leadingCoefficientIdentityWellFormed) :
    secondPart S :=
  h

/-- BSD as conjectural statement data. -/
structure Conjecture
    (L : HasseWeilLFunction K E)
    (MW : MordellWeilGroup.{u}) where
  assumptions : Assumptions L MW
  first : FirstPartStatement L MW
  second : SecondPartStatement L MW
  boundary : List String

/-- A certificate that may upgrade the BSD statements to checked propositions. -/
structure BSDCertificate
    {L : HasseWeilLFunction K E}
    {MW : MordellWeilGroup.{u}}
    (C : Conjecture L MW) where
  firstPartCertified : firstPart C.first
  secondPartCertified : secondPart C.second
  certificateSource : String
  boundary : List String

/--
Prop-valued theorem input for BSD.

This is the only theorem-authority object in this module: it wraps an actual
`BSDCertificate`, rather than a Boolean readiness flag or a string label.
-/
structure BSDTheoremInput
    {L : HasseWeilLFunction K E}
    {MW : MordellWeilGroup.{u}}
    (C : Conjecture L MW) where
  certificate : BSDCertificate C
  boundary : List String

/--
Typed input-sharing data for the global BSD theorem assembly.

This replaces broad "inputs are shared" propositions with explicit objects and
definitional/equality links to the L-function, smooth Mordell-Weil interface,
number-field certificate, product-formula certificate, and BSD statements used
by the assembly.
-/
structure BSDTheoremAssemblyInputData
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (M : SmoothMordellWeilInterface C)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (X : Conjecture L M.MW) where
  lFunction :
    HasseWeilLFunction C.K.field C.E
  lFunction_eq :
    lFunction = L
  smoothMordellWeil :
    SmoothMordellWeilInterface C
  smoothMordellWeil_eq :
    smoothMordellWeil = M
  numberField :
    NumberFieldCertificate C.K
  numberField_eq :
    numberField = N
  productFormula :
    NumberFieldPlaceProductFormulaCertificate N
  productFormula_eq :
    productFormula = P
  firstPartStatement :
    FirstPartStatement L M.MW
  firstPartStatement_eq :
    firstPartStatement = X.first
  secondPartStatement :
    SecondPartStatement L M.MW
  secondPartStatement_eq :
    secondPartStatement = X.second
  boundary : List String

/--
Packed BSD theorem input.

This existential-style package lets downstream flow or trace records carry a
BSD theorem input without making the ambient flow layer choose a particular
field, curve, L-function, or Mordell-Weil group in its type.
-/
structure PackedBSDTheoremInput where
  K : FieldLike.{u}
  E : ShortWeierstrass K
  L : HasseWeilLFunction K E
  MW : MordellWeilGroup.{u}
  conjecture : Conjecture L MW
  input : BSDTheoremInput conjecture
  boundary : List String

/--
Global theorem-input assembly provenance for BSD.

This certificate says that the wrapped `BSDTheoremInput` is supported by the
certified first-part and second-part assembly packages over the same smooth
Mordell-Weil interface, Hasse-Weil L-function, base number field, and product
formula package.

It is still an interface certificate. It does not prove BSD, analytic
continuation, a functional equation, Mordell-Weil finite generation,
Tate-Shafarevich finiteness, or the leading-coefficient formula.
-/
structure BSDTheoremAssemblyCertificate
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (M : SmoothMordellWeilInterface C)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (X : Conjecture L M.MW)
    (I : BSDTheoremInput X) where
  firstPartAssembly :
    BSDFirstPartAssemblyCertificate L M N P X.first
  firstPartAssemblyCertified :
    firstPartAssembly.certifiedForBSD
  secondPartAssembly :
    BSDSecondPartAssemblyCertificate L M N P X.first X.second
  secondPartAssemblyCertified :
    secondPartAssembly.certifiedForBSD
  wrappedFirstPartCertificateUsesAssembly : Prop
  wrappedFirstPartCertificateUsesAssemblyCertified :
    wrappedFirstPartCertificateUsesAssembly
  wrappedSecondPartCertificateUsesAssembly : Prop
  wrappedSecondPartCertificateUsesAssemblyCertified :
    wrappedSecondPartCertificateUsesAssembly
  conjectureAssumptionsMatchAssemblies : Prop
  conjectureAssumptionsMatchAssembliesCertified :
    conjectureAssumptionsMatchAssemblies
  sharedInputData :
    BSDTheoremAssemblyInputData L M N P X
  theoremInputUsesSameConjecture : Prop
  theoremInputUsesSameConjectureCertified :
    theoremInputUsesSameConjecture
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/--
BSD global theorem-input assembly quality required by theorem-facing smooth BSD
input.
-/
def BSDTheoremAssemblyCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {X : Conjecture L M.MW}
    {I : BSDTheoremInput X}
    (A : BSDTheoremAssemblyCertificate L M N P X I) :
    Prop :=
  A.firstPartAssembly.certifiedForBSD ∧
  A.secondPartAssembly.certifiedForBSD ∧
  firstPart X.first ∧
  secondPart X.second ∧
  A.wrappedFirstPartCertificateUsesAssembly ∧
  A.wrappedSecondPartCertificateUsesAssembly ∧
  A.conjectureAssumptionsMatchAssemblies ∧
  A.sharedInputData.lFunction = L ∧
  A.sharedInputData.smoothMordellWeil = M ∧
  A.sharedInputData.numberField = N ∧
  A.sharedInputData.productFormula = P ∧
  A.sharedInputData.firstPartStatement = X.first ∧
  A.sharedInputData.secondPartStatement = X.second ∧
  A.theoremInputUsesSameConjecture ∧
  A.sourceStatus =
    AnalyticCertificateSourceStatus.suppliedByCertificate

theorem BSDTheoremAssemblyCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {X : Conjecture L M.MW}
    {I : BSDTheoremInput X}
    (A : BSDTheoremAssemblyCertificate L M N P X I)
    (hsource :
      A.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    A.certifiedForBSD := by
  exact
    ⟨A.firstPartAssemblyCertified,
      A.secondPartAssemblyCertified,
      I.certificate.firstPartCertified,
      I.certificate.secondPartCertified,
      A.wrappedFirstPartCertificateUsesAssemblyCertified,
      A.wrappedSecondPartCertificateUsesAssemblyCertified,
      A.conjectureAssumptionsMatchAssembliesCertified,
      A.sharedInputData.lFunction_eq,
      A.sharedInputData.smoothMordellWeil_eq,
      A.sharedInputData.numberField_eq,
      A.sharedInputData.productFormula_eq,
      A.sharedInputData.firstPartStatement_eq,
      A.sharedInputData.secondPartStatement_eq,
      A.theoremInputUsesSameConjectureCertified,
      hsource⟩

/--
Coherence between the global BSD theorem assembly and the analytic Hasse-Weil
function interface.

This certificate says that the theorem-facing BSD assembly, its first- and
second-part assembly packages, the wrapped BSD certificate, and the central
analytic data all use the same analytic Hasse-Weil function interface.

It is still an interface certificate. It does not construct the analytic
Hasse-Weil L-function, prove analytic continuation, prove the functional
equation, compute Taylor coefficients, or prove BSD.
-/
structure BSDTheoremAnalyticObjectSharedData
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (M : SmoothMordellWeilInterface C)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (X : Conjecture L M.MW)
    (I : BSDTheoremInput X)
    (T : BSDTheoremAssemblyCertificate L M N P X I)
    (A : HasseWeilAnalyticFunctionInterfaceCertificate N P L) where
  assemblyInputData :
    BSDTheoremAssemblyInputData L M N P X
  assemblyInputData_eq :
    assemblyInputData = T.sharedInputData
  coefficientSystem :
    DirichletCoefficientSystemCertificate N L
  coefficientSystem_eq :
    coefficientSystem = A.coefficientSystem
  eulerProductDirichletSeries :
    EulerProductDirichletSeriesCompatibilityCertificate N L
  eulerProductDirichletSeries_eq :
    eulerProductDirichletSeries = A.eulerProductDirichletSeries
  completedFunctionalEquation :
    CompletedFunctionalEquationNormalizationCertificate N P L
  completedFunctionalEquation_eq :
    completedFunctionalEquation = A.completedFunctionalEquation
  analyticObject :
    HasseWeilAnalyticObjectData N P L
  analyticObject_eq :
    analyticObject = A.analyticObject
  centralGerm :
    CentralGermAtSEqOneData A.analyticObject
  centralGerm_eq :
    centralGerm = A.centralGerm
  boundary : List String

structure BSDTheoremAnalyticObjectCoherenceCertificate
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (M : SmoothMordellWeilInterface C)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (X : Conjecture L M.MW)
    (I : BSDTheoremInput X)
    (T : BSDTheoremAssemblyCertificate L M N P X I)
    (A : HasseWeilAnalyticFunctionInterfaceCertificate N P L) where
  theoremAssemblyCertified :
    T.certifiedForBSD
  analyticFunctionCertified :
    A.certifiedForBSD
  firstPartAssemblyUsesAnalyticFunctionInterface : Prop
  firstPartAssemblyUsesAnalyticFunctionInterfaceCertified :
    firstPartAssemblyUsesAnalyticFunctionInterface
  secondPartAssemblyUsesAnalyticFunctionInterface : Prop
  secondPartAssemblyUsesAnalyticFunctionInterfaceCertified :
    secondPartAssemblyUsesAnalyticFunctionInterface
  wrappedBSDCertificateUsesAnalyticFunctionInterface : Prop
  wrappedBSDCertificateUsesAnalyticFunctionInterfaceCertified :
    wrappedBSDCertificateUsesAnalyticFunctionInterface
  analyticOrderUsesInterfaceCentralGerm : Prop
  analyticOrderUsesInterfaceCentralGermCertified :
    analyticOrderUsesInterfaceCentralGerm
  leadingCoefficientUsesInterfaceCentralGerm : Prop
  leadingCoefficientUsesInterfaceCentralGermCertified :
    leadingCoefficientUsesInterfaceCentralGerm
  sharedAnalyticData :
    BSDTheoremAnalyticObjectSharedData L M N P X I T A
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/--
BSD theorem / analytic-object coherence quality required by theorem-facing smooth
BSD input.
-/
def BSDTheoremAnalyticObjectCoherenceCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {X : Conjecture L M.MW}
    {I : BSDTheoremInput X}
    {T : BSDTheoremAssemblyCertificate L M N P X I}
    {A : HasseWeilAnalyticFunctionInterfaceCertificate N P L}
    (Q : BSDTheoremAnalyticObjectCoherenceCertificate L M N P X I T A) :
    Prop :=
  T.certifiedForBSD ∧
  A.certifiedForBSD ∧
  Q.firstPartAssemblyUsesAnalyticFunctionInterface ∧
  Q.secondPartAssemblyUsesAnalyticFunctionInterface ∧
  Q.wrappedBSDCertificateUsesAnalyticFunctionInterface ∧
  Q.analyticOrderUsesInterfaceCentralGerm ∧
  Q.leadingCoefficientUsesInterfaceCentralGerm ∧
  Q.sharedAnalyticData.assemblyInputData = T.sharedInputData ∧
  Q.sharedAnalyticData.coefficientSystem = A.coefficientSystem ∧
  Q.sharedAnalyticData.eulerProductDirichletSeries =
    A.eulerProductDirichletSeries ∧
  Q.sharedAnalyticData.completedFunctionalEquation =
    A.completedFunctionalEquation ∧
  Q.sharedAnalyticData.analyticObject = A.analyticObject ∧
  Q.sharedAnalyticData.centralGerm = A.centralGerm ∧
  Q.sourceStatus =
    AnalyticCertificateSourceStatus.suppliedByCertificate

theorem BSDTheoremAnalyticObjectCoherenceCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {X : Conjecture L M.MW}
    {I : BSDTheoremInput X}
    {T : BSDTheoremAssemblyCertificate L M N P X I}
    {A : HasseWeilAnalyticFunctionInterfaceCertificate N P L}
    (Q : BSDTheoremAnalyticObjectCoherenceCertificate L M N P X I T A)
    (hsource :
      Q.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    Q.certifiedForBSD := by
  exact
    ⟨Q.theoremAssemblyCertified,
      Q.analyticFunctionCertified,
      Q.firstPartAssemblyUsesAnalyticFunctionInterfaceCertified,
      Q.secondPartAssemblyUsesAnalyticFunctionInterfaceCertified,
      Q.wrappedBSDCertificateUsesAnalyticFunctionInterfaceCertified,
      Q.analyticOrderUsesInterfaceCentralGermCertified,
      Q.leadingCoefficientUsesInterfaceCentralGermCertified,
      Q.sharedAnalyticData.assemblyInputData_eq,
      Q.sharedAnalyticData.coefficientSystem_eq,
      Q.sharedAnalyticData.eulerProductDirichletSeries_eq,
      Q.sharedAnalyticData.completedFunctionalEquation_eq,
      Q.sharedAnalyticData.analyticObject_eq,
      Q.sharedAnalyticData.centralGerm_eq,
      hsource⟩

/--
Coherence between the BSD theorem assembly and analytic-continuation uniqueness.

This certificate says that the global BSD theorem assembly, the theorem/analytic
object coherence package, the analytic order side, the leading-coefficient side,
and the wrapped BSD certificate use the same unique analytic continuation of the
Hasse-Weil analytic interface.

It is still an interface certificate. It does not construct complex analytic
functions, prove analytic continuation, prove the identity theorem, prove the
functional equation, compute Taylor coefficients, or prove BSD.
-/
structure BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (M : SmoothMordellWeilInterface C)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (X : Conjecture L M.MW)
    (I : BSDTheoremInput X)
    (T : BSDTheoremAssemblyCertificate L M N P X I)
    (A : HasseWeilAnalyticFunctionInterfaceCertificate N P L)
    (U : HasseWeilAnalyticContinuationUniquenessCertificate N P L A)
    (Q : BSDTheoremAnalyticObjectCoherenceCertificate L M N P X I T A) where
  theoremAssemblyCertified :
    T.certifiedForBSD
  analyticFunctionCertified :
    A.certifiedForBSD
  analyticContinuationUniquenessCertified :
    U.certifiedForBSD
  theoremAnalyticObjectCoherenceCertified :
    Q.certifiedForBSD
  firstPartOrderUsesUniqueContinuation : Prop
  firstPartOrderUsesUniqueContinuationCertified :
    firstPartOrderUsesUniqueContinuation
  secondPartLeadingCoefficientUsesUniqueContinuation : Prop
  secondPartLeadingCoefficientUsesUniqueContinuationCertified :
    secondPartLeadingCoefficientUsesUniqueContinuation
  theoremAssemblyCentralGermUsesUniqueContinuation : Prop
  theoremAssemblyCentralGermUsesUniqueContinuationCertified :
    theoremAssemblyCentralGermUsesUniqueContinuation
  wrappedBSDCertificateUsesUniqueContinuation : Prop
  wrappedBSDCertificateUsesUniqueContinuationCertified :
    wrappedBSDCertificateUsesUniqueContinuation
  completedFunctionalEquationUsesUniqueContinuationInAssembly : Prop
  completedFunctionalEquationUsesUniqueContinuationInAssemblyCertified :
    completedFunctionalEquationUsesUniqueContinuationInAssembly
  coefficientAndEulerProductGermsUseUniqueContinuationInAssembly : Prop
  coefficientAndEulerProductGermsUseUniqueContinuationInAssemblyCertified :
    coefficientAndEulerProductGermsUseUniqueContinuationInAssembly
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/--
BSD theorem / analytic-continuation uniqueness coherence quality required by
theorem-facing smooth BSD input.
-/
def BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {X : Conjecture L M.MW}
    {I : BSDTheoremInput X}
    {T : BSDTheoremAssemblyCertificate L M N P X I}
    {A : HasseWeilAnalyticFunctionInterfaceCertificate N P L}
    {U : HasseWeilAnalyticContinuationUniquenessCertificate N P L A}
    {Q : BSDTheoremAnalyticObjectCoherenceCertificate L M N P X I T A}
    (R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
      L M N P X I T A U Q) :
    Prop :=
  T.certifiedForBSD ∧
  A.certifiedForBSD ∧
  U.certifiedForBSD ∧
  Q.certifiedForBSD ∧
  R.firstPartOrderUsesUniqueContinuation ∧
  R.secondPartLeadingCoefficientUsesUniqueContinuation ∧
  R.theoremAssemblyCentralGermUsesUniqueContinuation ∧
  R.wrappedBSDCertificateUsesUniqueContinuation ∧
  R.completedFunctionalEquationUsesUniqueContinuationInAssembly ∧
  R.coefficientAndEulerProductGermsUseUniqueContinuationInAssembly ∧
  R.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {X : Conjecture L M.MW}
    {I : BSDTheoremInput X}
    {T : BSDTheoremAssemblyCertificate L M N P X I}
    {A : HasseWeilAnalyticFunctionInterfaceCertificate N P L}
    {U : HasseWeilAnalyticContinuationUniquenessCertificate N P L A}
    {Q : BSDTheoremAnalyticObjectCoherenceCertificate L M N P X I T A}
    (R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
      L M N P X I T A U Q)
    (hsource :
      R.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    R.certifiedForBSD := by
  exact
    ⟨R.theoremAssemblyCertified,
      R.analyticFunctionCertified,
      R.analyticContinuationUniquenessCertified,
      R.theoremAnalyticObjectCoherenceCertified,
      R.firstPartOrderUsesUniqueContinuationCertified,
      R.secondPartLeadingCoefficientUsesUniqueContinuationCertified,
      R.theoremAssemblyCentralGermUsesUniqueContinuationCertified,
      R.wrappedBSDCertificateUsesUniqueContinuationCertified,
      R.completedFunctionalEquationUsesUniqueContinuationInAssemblyCertified,
      R.coefficientAndEulerProductGermsUseUniqueContinuationInAssemblyCertified,
      hsource⟩

end BSD
end EllipticCurve
end Surface.Arithmetic

```
