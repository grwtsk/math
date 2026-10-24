# Complete source: GRWTSK.Analysis.ComplexAnalysis.LFunction.Variant7501d45e9ee199c5720c86ea42b9f5d43ce928015dd17d71de32aadf6499a694

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8019f6161736cbaa58e37f9667fe91c6ac2e91b3` · SHA-256 `7501d45e9ee199c5720c86ea42b9f5d43ce928015dd17d71de32aadf6499a694`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Arithmetic.EllipticCurve.PointCounting

namespace Surface.Arithmetic
namespace EllipticCurve

universe u

/-!
# Hasse-Weil L-function interface

This module states local factors and global L-function metadata through typed
descriptors.
Analytic continuation, functional equations, and orders of vanishing are usable
only through explicit certificates.
-/

/-- Typed symbolic point for L-function certificates. -/
inductive SymbolicComplexPoint where
  | sEqOne
  | suppliedByCertificate
  | unspecified
deriving Repr, DecidableEq

/-- Symbolic complex variable used when no analytic complex hierarchy is imported. -/
structure SymbolicComplexVariable
    where
  point : SymbolicComplexPoint
  boundary : List String
deriving Repr, DecidableEq

def SymbolicComplexVariable.sEqOne : SymbolicComplexVariable
    where
  point := .sEqOne
  boundary := [
    "Typed symbolic point s = 1.",
    "No analytic complex-number hierarchy is imported here."
  ]

theorem SymbolicComplexVariable.sEqOne_point :
    SymbolicComplexVariable.sEqOne.point = .sEqOne := by
  rfl

/-- Typed shape of the local Euler factor currently represented by metadata. -/
inductive LocalEulerFactorShape where
  | goodQuadratic
  | badReductionPlaceholder
deriving Repr, DecidableEq

/-- Source status for local Euler factor metadata. -/
inductive LocalEulerFactorSourceStatus where
  | suppliedByCertificate
  | finiteExamplePlaceholder
  | unspecified
deriving Repr, DecidableEq

/-- A local Euler factor descriptor with typed shape data. -/
structure LocalEulerFactor where
  prime : Nat
  ap : Int
  shape : LocalEulerFactorShape
  goodReduction : Bool
  sourceStatus : LocalEulerFactorSourceStatus
  boundary : List String
deriving Repr, DecidableEq

/-- Bad-reduction metadata. -/
structure BadReductionCertificate where
  prime : Nat
  reductionType : String
  boundary : List String
deriving Repr, DecidableEq

/-- Good-reduction local factor certificate. -/
structure GoodReductionLocalFactorCertificate where
  prime : Nat
  ap : Int
  boundary : List String
deriving Repr, DecidableEq

/-- Good local factor `1 - a_p p^{-s} + p^{1-2s}`, recorded by typed shape. -/
def goodFactor (p : Nat) (ap : Int) : LocalEulerFactor where
  prime := p
  ap := ap
  shape := .goodQuadratic
  goodReduction := true
  sourceStatus := .finiteExamplePlaceholder
  boundary := [
    "This is the typed good-reduction quadratic local factor shape.",
    "No analytic continuation theorem is asserted by this descriptor."
  ]

/-- Certified good local factor for theorem-facing BSD input. -/
def goodFactorFromCertificate
    (C : GoodReductionLocalFactorCertificate) :
    LocalEulerFactor where
  prime := C.prime
  ap := C.ap
  shape := .goodQuadratic
  goodReduction := true
  sourceStatus := .suppliedByCertificate
  boundary := C.boundary

/-- Bad local factor placeholder, gated by a bad-reduction certificate. -/
def badFactor (C : BadReductionCertificate) : LocalEulerFactor where
  prime := C.prime
  ap := 0
  shape := .badReductionPlaceholder
  goodReduction := false
  sourceStatus := .suppliedByCertificate
  boundary := C.boundary

theorem goodFactor_shape
    (p : Nat) (ap : Int) :
    (goodFactor p ap).shape = .goodQuadratic := by
  rfl

theorem goodFactor_goodReduction
    (p : Nat) (ap : Int) :
    (goodFactor p ap).goodReduction = true := by
  rfl

/-- Local Euler factor quality required by theorem-facing BSD input. -/
def LocalEulerFactor.certifiedForBSD
    (F : LocalEulerFactor) :
    Prop :=
  F.sourceStatus = LocalEulerFactorSourceStatus.suppliedByCertificate ∧
  ((F.shape = LocalEulerFactorShape.goodQuadratic ∧ F.goodReduction = true) ∨
   (F.shape = LocalEulerFactorShape.badReductionPlaceholder ∧ F.goodReduction = false))

theorem goodFactorFromCertificate_certifiedForBSD
    (C : GoodReductionLocalFactorCertificate) :
    (goodFactorFromCertificate C).certifiedForBSD := by
  constructor
  · rfl
  · left
    constructor <;> rfl

theorem badFactor_certifiedForBSD
    (C : BadReductionCertificate) :
    (badFactor C).certifiedForBSD := by
  constructor
  · rfl
  · right
    constructor <;> rfl

/--
A finite-place descriptor for the certified number-field base.

This is still an interface certificate. It does not construct valuations,
completions, residue fields, or local Galois representations.
-/
structure FinitePlaceDescriptor
    {K : LawfulFieldLike.{u}}
    (N : NumberFieldCertificate K) where
  residueCharacteristic : Nat
  residueCharacteristicPrime : Prop
  residueCharacteristicPrimeCertified :
    residueCharacteristicPrime
  finitePlace : Prop
  finitePlaceCertified :
    finitePlace
  liesOverRationalPrime : Prop
  liesOverRationalPrimeCertified :
    liesOverRationalPrime
  boundary : List String

/--
Compatibility between a local Euler-factor descriptor and a finite place of the
certified number-field base.
-/
structure LocalEulerFactorFinitePlaceCertificate
    {K : LawfulFieldLike.{u}}
    (N : NumberFieldCertificate K)
    (F : LocalEulerFactor) where
  place : FinitePlaceDescriptor N
  primeMatchesResidueCharacteristic :
    F.prime = place.residueCharacteristic
  factorCertified :
    F.certifiedForBSD
  boundary : List String

/-- Local-factor finite-place quality required by theorem-facing BSD input. -/
def LocalEulerFactorFinitePlaceCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    {F : LocalEulerFactor}
    (C : LocalEulerFactorFinitePlaceCertificate N F) :
  Prop :=
  C.place.finitePlace ∧
  C.place.liesOverRationalPrime ∧
  C.place.residueCharacteristicPrime ∧
  F.prime = C.place.residueCharacteristic ∧
  F.certifiedForBSD

theorem LocalEulerFactorFinitePlaceCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    {F : LocalEulerFactor}
    (C : LocalEulerFactorFinitePlaceCertificate N F) :
    C.certifiedForBSD := by
  constructor
  · exact C.place.finitePlaceCertified
  · constructor
    · exact C.place.liesOverRationalPrimeCertified
    · constructor
      · exact C.place.residueCharacteristicPrimeCertified
      · constructor
        · exact C.primeMatchesResidueCharacteristic
        · exact C.factorCertified

theorem LocalEulerFactorFinitePlaceCertificate.residueCharacteristicPrime_of_certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    {F : LocalEulerFactor}
    {C : LocalEulerFactorFinitePlaceCertificate N F}
    (h : C.certifiedForBSD) :
    C.place.residueCharacteristicPrime :=
  h.2.2.1

theorem LocalEulerFactorFinitePlaceCertificate.primeMatchesResidueCharacteristic_of_certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    {F : LocalEulerFactor}
    {C : LocalEulerFactorFinitePlaceCertificate N F}
    (h : C.certifiedForBSD) :
    F.prime = C.place.residueCharacteristic :=
  h.2.2.2.1

theorem LocalEulerFactorFinitePlaceCertificate.factorCertified_of_certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    {F : LocalEulerFactor}
    {C : LocalEulerFactorFinitePlaceCertificate N F}
    (h : C.certifiedForBSD) :
    F.certifiedForBSD :=
  h.2.2.2.2

/--
Typed residue-field norm data for a finite place.

This is still an interface object. It does not construct the residue field or
prove finite-field cardinality theorems; it packages the cardinality and the
proof-facing norm properties instead of treating cardinality existence as a
bare descriptor gate.
-/
structure ResidueFieldNormData
    {K : LawfulFieldLike.{u}}
    (N : NumberFieldCertificate K)
    (F : LocalEulerFactor) where
  finitePlace :
    LocalEulerFactorFinitePlaceCertificate N F
  cardinality : Nat
  cardinalityPositive :
    0 < cardinality
  cardinalityPowerOfResidueCharacteristic : Prop
  cardinalityPowerOfResidueCharacteristicCertified :
    cardinalityPowerOfResidueCharacteristic
  localNorm :
    Nat
  localNorm_eq_cardinality :
    localNorm = cardinality
  boundary : List String

/-- Typed source status for analytic certificates. -/
inductive AnalyticCertificateSourceStatus where
  | suppliedByCertificate
  | exampleDataOnly
  | assumedInterface
  | unspecified
deriving Repr, DecidableEq

/--
Residue-field norm provenance for a local Euler factor.

This is still an interface certificate. It does not construct residue fields,
local fields, completions, Frobenius maps, or local Galois representations.
-/
structure LocalEulerFactorResidueNormCertificate
    {K : LawfulFieldLike.{u}}
    (N : NumberFieldCertificate K)
    (F : LocalEulerFactor) where
  finitePlace :
    LocalEulerFactorFinitePlaceCertificate N F
  finitePlaceCertified :
    finitePlace.certifiedForBSD
  residueNorm :
    ResidueFieldNormData N F
  residueNormMatchesFinitePlace :
    residueNorm.finitePlace = finitePlace
  localFactorScaleUsesResidueNorm : Prop
  localFactorScaleUsesResidueNormCertified :
    localFactorScaleUsesResidueNorm
  pointCountDataUsesResidueNorm : Prop
  pointCountDataUsesResidueNormCertified :
    pointCountDataUsesResidueNorm
  badReductionDataUsesResidueNorm : Prop
  badReductionDataUsesResidueNormCertified :
    badReductionDataUsesResidueNorm
  eulerProductTermUsesResidueNorm : Prop
  eulerProductTermUsesResidueNormCertified :
    eulerProductTermUsesResidueNorm
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Residue-norm quality required by theorem-facing BSD local-factor input. -/
def LocalEulerFactorResidueNormCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    {F : LocalEulerFactor}
    (C : LocalEulerFactorResidueNormCertificate N F) :
    Prop :=
  C.finitePlace.certifiedForBSD ∧
  C.residueNorm.finitePlace.certifiedForBSD ∧
  C.residueNorm.finitePlace = C.finitePlace ∧
  0 < C.residueNorm.cardinality ∧
  C.residueNorm.cardinalityPowerOfResidueCharacteristic ∧
  C.residueNorm.localNorm = C.residueNorm.cardinality ∧
  C.localFactorScaleUsesResidueNorm ∧
  C.pointCountDataUsesResidueNorm ∧
  C.badReductionDataUsesResidueNorm ∧
  C.eulerProductTermUsesResidueNorm ∧
  C.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem LocalEulerFactorResidueNormCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    {F : LocalEulerFactor}
    (C : LocalEulerFactorResidueNormCertificate N F)
    (hsource :
      C.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    C.certifiedForBSD := by
  exact
    ⟨C.finitePlaceCertified,
      C.residueNorm.finitePlace.certifiedForBSD_of_fields,
      C.residueNormMatchesFinitePlace,
      C.residueNorm.cardinalityPositive,
      C.residueNorm.cardinalityPowerOfResidueCharacteristicCertified,
      C.residueNorm.localNorm_eq_cardinality,
      C.localFactorScaleUsesResidueNormCertified,
      C.pointCountDataUsesResidueNormCertified,
      C.badReductionDataUsesResidueNormCertified,
      C.eulerProductTermUsesResidueNormCertified,
      hsource⟩

theorem LocalEulerFactorResidueNormCertificate.localNorm_eq_cardinality
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    {F : LocalEulerFactor}
    (C : LocalEulerFactorResidueNormCertificate N F) :
    C.residueNorm.localNorm = C.residueNorm.cardinality :=
  C.residueNorm.localNorm_eq_cardinality

theorem LocalEulerFactorResidueNormCertificate.residueNorm_cardinalityPositive
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    {F : LocalEulerFactor}
    (C : LocalEulerFactorResidueNormCertificate N F) :
    0 < C.residueNorm.cardinality :=
  C.residueNorm.cardinalityPositive

/-- Typed conductor metadata status for global L-function packages. -/
inductive ConductorMetadataStatus where
  | finiteExamplePlaceholder
  | suppliedByCertificate
  | unspecified
deriving Repr, DecidableEq

/-- Typed gamma-factor metadata status for global L-function packages. -/
inductive GammaFactorMetadataStatus where
  | finiteExamplePlaceholder
  | suppliedByCertificate
  | unspecified
deriving Repr, DecidableEq

/-- Typed shape of completed Hasse-Weil L-function metadata. -/
inductive CompletedLFunctionShape where
  | hasseWeilCompletedSymbol
  | suppliedCompletedShape
  | unspecifiedDescriptor
deriving Repr, DecidableEq

/-- Completed L-function shape acceptable for theorem-facing BSD input. -/
def CompletedLFunctionShape.certifiedForBSD
    (s : CompletedLFunctionShape) :
    Prop :=
  s = .hasseWeilCompletedSymbol ∨
  s = .suppliedCompletedShape

/-- Global Hasse-Weil L-function metadata. -/
structure HasseWeilLFunction
    (K : FieldLike.{u})
    (E : ShortWeierstrass K) where
  curveLabel : String
  localFactors : List LocalEulerFactor
  conductorStatus : ConductorMetadataStatus
  gammaFactorStatus : GammaFactorMetadataStatus
  completedShape : CompletedLFunctionShape
  boundary : List String

theorem completedShape_visible
    (L : HasseWeilLFunction K E) :
    L.completedShape = L.completedShape := by
  rfl

/-- All local Euler factors are BSD-quality certificate-backed descriptors. -/
def HasseWeilLFunction.localFactorsCertifiedForBSD
    {K : FieldLike.{u}}
    {E : ShortWeierstrass K}
    (L : HasseWeilLFunction K E) :
    Prop :=
  ∀ F ∈ L.localFactors, F.certifiedForBSD

/--
Global Hasse-Weil L-function metadata quality required by theorem-facing BSD input.

This is still a certificate predicate, not a construction of an analytic
Hasse-Weil L-function.
-/
def HasseWeilLFunction.certifiedForBSD
    {K : FieldLike.{u}}
    {E : ShortWeierstrass K}
    (L : HasseWeilLFunction K E) :
    Prop :=
  L.localFactorsCertifiedForBSD ∧
  L.conductorStatus = ConductorMetadataStatus.suppliedByCertificate ∧
  L.gammaFactorStatus = GammaFactorMetadataStatus.suppliedByCertificate ∧
  L.completedShape.certifiedForBSD

/--
Residue-field norm compatibility for all listed local factors of a Hasse-Weil
metadata package.
-/
structure HasseWeilResidueNormCompatibilityCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (L : HasseWeilLFunction K.field E) where
  localFactorsResidueNormCompatible :
    ∀ F ∈ L.localFactors,
      ∃ C : LocalEulerFactorResidueNormCertificate N F,
        C.certifiedForBSD
  allResidueNormsAccountedFor : Prop
  allResidueNormsAccountedForCertified :
    allResidueNormsAccountedFor
  residueNormsCompatibleWithPointCounts : Prop
  residueNormsCompatibleWithPointCountsCertified :
    residueNormsCompatibleWithPointCounts
  residueNormsCompatibleWithBadReductionShapes : Prop
  residueNormsCompatibleWithBadReductionShapesCertified :
    residueNormsCompatibleWithBadReductionShapes
  residueNormsCompatibleWithEulerProductCoverage : Prop
  residueNormsCompatibleWithEulerProductCoverageCertified :
    residueNormsCompatibleWithEulerProductCoverage
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Residue-norm compatibility required by theorem-facing BSD L-function input. -/
def HasseWeilResidueNormCompatibilityCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {L : HasseWeilLFunction K.field E}
    (C : HasseWeilResidueNormCompatibilityCertificate N L) :
    Prop :=
  (∀ F ∈ L.localFactors,
    ∃ C : LocalEulerFactorResidueNormCertificate N F,
      C.certifiedForBSD) ∧
  C.allResidueNormsAccountedFor ∧
  C.residueNormsCompatibleWithPointCounts ∧
  C.residueNormsCompatibleWithBadReductionShapes ∧
  C.residueNormsCompatibleWithEulerProductCoverage ∧
  C.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem HasseWeilResidueNormCompatibilityCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {L : HasseWeilLFunction K.field E}
    (C : HasseWeilResidueNormCompatibilityCertificate N L)
    (hsource :
      C.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    C.certifiedForBSD := by
  exact
    ⟨C.localFactorsResidueNormCompatible,
      C.allResidueNormsAccountedForCertified,
      C.residueNormsCompatibleWithPointCountsCertified,
      C.residueNormsCompatibleWithBadReductionShapesCertified,
      C.residueNormsCompatibleWithEulerProductCoverageCertified,
      hsource⟩

/--
Archimedean gamma-factor provenance for the completed Hasse-Weil L-function.

This is still an interface certificate. It does not construct analytic Gamma
functions, prove analytic continuation, prove the functional equation, or
construct automorphic representations.
-/
structure ArchimedeanGammaFactorData
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (_N : NumberFieldCertificate K)
    (_P : NumberFieldPlaceProductFormulaCertificate N)
    (L : HasseWeilLFunction K.field E) where
  RealPlace : Type u
  ComplexPlace : Type u
  GammaFactor : Type u
  realPlaces :
    List RealPlace
  complexPlaces :
    List ComplexPlace
  realGammaFactor :
    RealPlace → GammaFactor
  complexGammaFactor :
    ComplexPlace → GammaFactor
  realPlaceAccountedFor :
    ∀ v : RealPlace, v ∈ realPlaces
  complexPlaceAccountedFor :
    ∀ v : ComplexPlace, v ∈ complexPlaces
  gammaFactorCompatibleWithCompletedShape :
    GammaFactor → CompletedLFunctionShape → Prop
  realGammaFactorCompatible :
    ∀ v : RealPlace,
      gammaFactorCompatibleWithCompletedShape
        (realGammaFactor v)
        L.completedShape
  complexGammaFactorCompatible :
    ∀ v : ComplexPlace,
      gammaFactorCompatibleWithCompletedShape
        (complexGammaFactor v)
        L.completedShape
  boundary : List String

structure HasseWeilArchimedeanGammaFactorCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (L : HasseWeilLFunction K.field E) where
  basePlacesCertified :
    P.certifiedForBSD
  gammaFactorStatusSupplied :
    L.gammaFactorStatus =
      GammaFactorMetadataStatus.suppliedByCertificate
  completedShapeCertified :
    L.completedShape.certifiedForBSD
  archimedeanPlacesAccountedFor : Prop
  archimedeanPlacesAccountedForCertified :
    archimedeanPlacesAccountedFor
  gammaFactorData :
    ArchimedeanGammaFactorData N P L
  gammaFactorsUseBaseArchimedeanEmbeddings : Prop
  gammaFactorsUseBaseArchimedeanEmbeddingsCertified :
    gammaFactorsUseBaseArchimedeanEmbeddings
  gammaFactorsCompatibleWithWeightTwoCurve : Prop
  gammaFactorsCompatibleWithWeightTwoCurveCertified :
    gammaFactorsCompatibleWithWeightTwoCurve
  gammaFactorsCompatibleWithCompletedShape : Prop
  gammaFactorsCompatibleWithCompletedShapeCertified :
    gammaFactorsCompatibleWithCompletedShape
  completedNormalizationUsesGammaFactors : Prop
  completedNormalizationUsesGammaFactorsCertified :
    completedNormalizationUsesGammaFactors
  functionalEquationNormalizationUsesGammaFactors : Prop
  functionalEquationNormalizationUsesGammaFactorsCertified :
    functionalEquationNormalizationUsesGammaFactors
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Archimedean gamma-factor quality required by theorem-facing BSD input. -/
def HasseWeilArchimedeanGammaFactorCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    (G : HasseWeilArchimedeanGammaFactorCertificate N P L) :
    Prop :=
  P.certifiedForBSD ∧
  L.gammaFactorStatus =
    GammaFactorMetadataStatus.suppliedByCertificate ∧
  L.completedShape.certifiedForBSD ∧
  G.archimedeanPlacesAccountedFor ∧
  (∀ v : G.gammaFactorData.RealPlace,
    v ∈ G.gammaFactorData.realPlaces) ∧
  (∀ v : G.gammaFactorData.ComplexPlace,
    v ∈ G.gammaFactorData.complexPlaces) ∧
  (∀ v : G.gammaFactorData.RealPlace,
    G.gammaFactorData.gammaFactorCompatibleWithCompletedShape
      (G.gammaFactorData.realGammaFactor v)
      L.completedShape) ∧
  (∀ v : G.gammaFactorData.ComplexPlace,
    G.gammaFactorData.gammaFactorCompatibleWithCompletedShape
      (G.gammaFactorData.complexGammaFactor v)
      L.completedShape) ∧
  G.gammaFactorsUseBaseArchimedeanEmbeddings ∧
  G.gammaFactorsCompatibleWithWeightTwoCurve ∧
  G.gammaFactorsCompatibleWithCompletedShape ∧
  G.completedNormalizationUsesGammaFactors ∧
  G.functionalEquationNormalizationUsesGammaFactors ∧
  G.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem HasseWeilArchimedeanGammaFactorCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    (G : HasseWeilArchimedeanGammaFactorCertificate N P L)
    (hsource :
      G.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    G.certifiedForBSD := by
  exact
    ⟨G.basePlacesCertified,
      G.gammaFactorStatusSupplied,
      G.completedShapeCertified,
      G.archimedeanPlacesAccountedForCertified,
      G.gammaFactorData.realPlaceAccountedFor,
      G.gammaFactorData.complexPlaceAccountedFor,
      G.gammaFactorData.realGammaFactorCompatible,
      G.gammaFactorData.complexGammaFactorCompatible,
      G.gammaFactorsUseBaseArchimedeanEmbeddingsCertified,
      G.gammaFactorsCompatibleWithWeightTwoCurveCertified,
      G.gammaFactorsCompatibleWithCompletedShapeCertified,
      G.completedNormalizationUsesGammaFactorsCertified,
      G.functionalEquationNormalizationUsesGammaFactorsCertified,
      hsource⟩

theorem HasseWeilArchimedeanGammaFactorCertificate.realGammaFactorCompatible
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    (G : HasseWeilArchimedeanGammaFactorCertificate N P L)
    (v : G.gammaFactorData.RealPlace) :
    G.gammaFactorData.gammaFactorCompatibleWithCompletedShape
      (G.gammaFactorData.realGammaFactor v)
      L.completedShape :=
  G.gammaFactorData.realGammaFactorCompatible v

theorem HasseWeilArchimedeanGammaFactorCertificate.complexGammaFactorCompatible
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    (G : HasseWeilArchimedeanGammaFactorCertificate N P L)
    (v : G.gammaFactorData.ComplexPlace) :
    G.gammaFactorData.gammaFactorCompatibleWithCompletedShape
      (G.gammaFactorData.complexGammaFactor v)
      L.completedShape :=
  G.gammaFactorData.complexGammaFactorCompatible v

/-- Typed domain metadata for analytic continuation certificates. -/
inductive AnalyticContinuationDomain where
  | wholeComplexPlane
  | suppliedByCertificate
  | unspecified
deriving Repr, DecidableEq

/-- Typed continuation kind metadata. -/
inductive AnalyticContinuationKind where
  | holomorphic
  | meromorphic
  | suppliedByCertificate
  | unspecified
deriving Repr, DecidableEq

/--
Point-count/Frobenius-trace provenance for a good-reduction local Euler factor.

This is still an interface certificate. It does not construct residue fields,
Frobenius endomorphisms, etale cohomology, or prove the Weil conjectures.
-/
structure GoodReductionPointCountData
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (_N : NumberFieldCertificate K)
    (F : LocalEulerFactor) where
  ReducedCurve : Type u
  ResidueField : Type u
  reductionMap :
    Point E → ReducedCurve
  residueFieldCardinality :
    Nat
  residueFieldCardinalityPositive :
    0 < residueFieldCardinality
  rationalPointCount :
    Nat
  frobeniusTrace :
    Int
  frobeniusTrace_eq_localFactorAp :
    frobeniusTrace = F.ap
  pointCountFormula :
    (residueFieldCardinality : Int) + 1 -
      (rationalPointCount : Int) = frobeniusTrace
  localFactorPolynomialMatchesPointCount : Prop
  localFactorPolynomialMatchesPointCountCertified :
    localFactorPolynomialMatchesPointCount
  boundary : List String

structure GoodReductionPointCountCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (F : LocalEulerFactor) where
  finitePlace :
    LocalEulerFactorFinitePlaceCertificate N F
  finitePlaceCertified :
    finitePlace.certifiedForBSD
  goodReductionLocalFactor :
    F.shape = LocalEulerFactorShape.goodQuadratic ∧
    F.goodReduction = true
  pointCountData :
    GoodReductionPointCountData (E := E) N F
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Good-reduction point-count quality required by theorem-facing BSD input. -/
def GoodReductionPointCountCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {F : LocalEulerFactor}
    (C : GoodReductionPointCountCertificate (E := E) N F) :
    Prop :=
  C.finitePlace.certifiedForBSD ∧
  F.shape = LocalEulerFactorShape.goodQuadratic ∧
  F.goodReduction = true ∧
  0 < C.pointCountData.residueFieldCardinality ∧
  C.pointCountData.frobeniusTrace = F.ap ∧
  (C.pointCountData.residueFieldCardinality : Int) + 1 -
      (C.pointCountData.rationalPointCount : Int) =
        C.pointCountData.frobeniusTrace ∧
  C.pointCountData.localFactorPolynomialMatchesPointCount ∧
  C.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem GoodReductionPointCountCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {F : LocalEulerFactor}
    (C : GoodReductionPointCountCertificate (E := E) N F)
    (hsource :
      C.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    C.certifiedForBSD := by
  exact
    ⟨C.finitePlaceCertified,
      C.goodReductionLocalFactor.1,
      C.goodReductionLocalFactor.2,
      C.pointCountData.residueFieldCardinalityPositive,
      C.pointCountData.frobeniusTrace_eq_localFactorAp,
      C.pointCountData.pointCountFormula,
      C.pointCountData.localFactorPolynomialMatchesPointCountCertified,
      hsource⟩

theorem GoodReductionPointCountCertificate.frobeniusTrace_eq_localFactorAp
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {F : LocalEulerFactor}
    (C : GoodReductionPointCountCertificate (E := E) N F) :
    C.pointCountData.frobeniusTrace = F.ap :=
  C.pointCountData.frobeniusTrace_eq_localFactorAp

theorem GoodReductionPointCountCertificate.pointCountFormula
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {F : LocalEulerFactor}
    (C : GoodReductionPointCountCertificate (E := E) N F) :
    (C.pointCountData.residueFieldCardinality : Int) + 1 -
      (C.pointCountData.rationalPointCount : Int) =
        C.pointCountData.frobeniusTrace :=
  C.pointCountData.pointCountFormula

/--
Point-count compatibility for the listed good-reduction local factors of a
Hasse-Weil metadata package.
-/
structure HasseWeilPointCountCompatibilityCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (L : HasseWeilLFunction K.field E) where
  goodLocalFactorsPointCounted :
    ∀ F ∈ L.localFactors,
      F.shape = LocalEulerFactorShape.goodQuadratic →
      F.goodReduction = true →
      ∃ C : GoodReductionPointCountCertificate (E := E) N F,
        C.certifiedForBSD
  allGoodFactorsAccountedFor : Prop
  allGoodFactorsAccountedForCertified :
    allGoodFactorsAccountedFor
  pointCountsCompatibleWithEulerProductCoverage : Prop
  pointCountsCompatibleWithEulerProductCoverageCertified :
    pointCountsCompatibleWithEulerProductCoverage
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Point-count compatibility required by theorem-facing BSD L-function input. -/
def HasseWeilPointCountCompatibilityCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {L : HasseWeilLFunction K.field E}
    (C : HasseWeilPointCountCompatibilityCertificate N L) :
    Prop :=
  (∀ F ∈ L.localFactors,
    F.shape = LocalEulerFactorShape.goodQuadratic →
    F.goodReduction = true →
    ∃ C : GoodReductionPointCountCertificate (E := E) N F,
      C.certifiedForBSD) ∧
  C.allGoodFactorsAccountedFor ∧
  C.pointCountsCompatibleWithEulerProductCoverage ∧
  C.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem HasseWeilPointCountCompatibilityCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {L : HasseWeilLFunction K.field E}
    (C : HasseWeilPointCountCompatibilityCertificate N L)
    (hsource :
      C.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    C.certifiedForBSD := by
  exact
    ⟨C.goodLocalFactorsPointCounted,
      C.allGoodFactorsAccountedForCertified,
      C.pointCountsCompatibleWithEulerProductCoverageCertified,
      hsource⟩

/-- Typed reduction class used only for conductor-exponent certificate metadata. -/
inductive LocalReductionType where
  | good
  | multiplicative
  | additive
  | suppliedByCertificate
deriving Repr, DecidableEq

/--
Certificate for the local conductor exponent attached to a local Euler factor.

This is still an interface certificate. It does not construct a minimal model,
Neron model, conductor ideal, or local Galois representation.
-/
structure LocalConductorExponentCertificate
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    (F : LocalEulerFactor) where
  finitePlace :
    LocalEulerFactorFinitePlaceCertificate N F
  exponent : Nat
  reductionType : LocalReductionType
  exponentCompatibleWithReduction : Prop
  exponentCompatibleWithReductionCertified :
    exponentCompatibleWithReduction
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Local conductor-exponent quality required by theorem-facing BSD input. -/
def LocalConductorExponentCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    {F : LocalEulerFactor}
    (C : LocalConductorExponentCertificate (N := N) F) :
    Prop :=
  C.finitePlace.certifiedForBSD ∧
  C.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate ∧
  C.exponentCompatibleWithReduction

theorem LocalConductorExponentCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    {F : LocalEulerFactor}
    (C : LocalConductorExponentCertificate (N := N) F)
    (hsource :
      C.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    C.certifiedForBSD := by
  constructor
  · exact C.finitePlace.certifiedForBSD_of_fields
  · constructor
    · exact hsource
    · exact C.exponentCompatibleWithReductionCertified

/--
The finite-place local factor remains certified when a local conductor-exponent
certificate is BSD-quality.
-/
theorem LocalConductorExponentCertificate.finitePlace_certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    {F : LocalEulerFactor}
    {C : LocalConductorExponentCertificate (N := N) F}
    (h : C.certifiedForBSD) :
    C.finitePlace.certifiedForBSD :=
  h.1

/--
Compatibility certificate between conductor metadata and local Euler-factor data.

This is still an interface certificate. It does not construct the conductor
ideal, a minimal model, local conductor exponents, a Neron model, or local
Galois representations.
-/
structure ConductorLocalCompatibilityCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (L : HasseWeilLFunction K.field E) where
  conductorSupplied :
    L.conductorStatus = ConductorMetadataStatus.suppliedByCertificate
  localFactorsCompatible :
    ∀ F ∈ L.localFactors,
      ∃ LC : LocalEulerFactorFinitePlaceCertificate N F,
        LC.certifiedForBSD
  localConductorExponentsCompatible :
    ∀ F ∈ L.localFactors,
      ∃ CE : LocalConductorExponentCertificate (N := N) F,
        CE.certifiedForBSD
  badReductionSupportedOnConductor : Prop
  badReductionSupportedOnConductorCertified :
    badReductionSupportedOnConductor
  goodReductionAwayFromConductor : Prop
  goodReductionAwayFromConductorCertified :
    goodReductionAwayFromConductor
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Conductor/local-factor quality required by theorem-facing BSD input. -/
def ConductorLocalCompatibilityCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {L : HasseWeilLFunction K.field E}
    (C : ConductorLocalCompatibilityCertificate N L) :
    Prop :=
  L.conductorStatus = ConductorMetadataStatus.suppliedByCertificate ∧
  C.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate ∧
  C.badReductionSupportedOnConductor ∧
  C.goodReductionAwayFromConductor ∧
  (∀ F ∈ L.localFactors,
    ∃ LC : LocalEulerFactorFinitePlaceCertificate N F,
      LC.certifiedForBSD) ∧
  (∀ F ∈ L.localFactors,
    ∃ CE : LocalConductorExponentCertificate (N := N) F,
      CE.certifiedForBSD)

theorem ConductorLocalCompatibilityCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {L : HasseWeilLFunction K.field E}
    (C : ConductorLocalCompatibilityCertificate N L)
    (hsource :
      C.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    C.certifiedForBSD := by
  constructor
  · exact C.conductorSupplied
  · constructor
    · exact hsource
    · constructor
      · exact C.badReductionSupportedOnConductorCertified
      · constructor
        · exact C.goodReductionAwayFromConductorCertified
        · constructor
          · exact C.localFactorsCompatible
          · exact C.localConductorExponentsCompatible

theorem ConductorLocalCompatibilityCertificate.conductorSupplied_of_certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {L : HasseWeilLFunction K.field E}
    {C : ConductorLocalCompatibilityCertificate N L}
    (h : C.certifiedForBSD) :
    L.conductorStatus = ConductorMetadataStatus.suppliedByCertificate :=
  h.1

theorem ConductorLocalCompatibilityCertificate.localFactorsCompatible_of_certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {L : HasseWeilLFunction K.field E}
    {C : ConductorLocalCompatibilityCertificate N L}
    (h : C.certifiedForBSD) :
    ∀ F ∈ L.localFactors,
      ∃ LC : LocalEulerFactorFinitePlaceCertificate N F,
        LC.certifiedForBSD :=
  h.2.2.2.2.1

theorem ConductorLocalCompatibilityCertificate.localConductorExponentsCompatible_of_certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {L : HasseWeilLFunction K.field E}
    {C : ConductorLocalCompatibilityCertificate N L}
    (h : C.certifiedForBSD) :
    ∀ F ∈ L.localFactors,
      ∃ CE : LocalConductorExponentCertificate (N := N) F,
        CE.certifiedForBSD :=
  h.2.2.2.2.2

/--
Typed global conductor descriptor for theorem-facing BSD input.

This is still an interface descriptor. It does not construct a conductor ideal,
Artin conductor, Neron model, minimal discriminant, or local conductor
exponents.
-/
structure GlobalConductorData
    {K : LawfulFieldLike.{u}}
    (_N : NumberFieldCertificate K) where
  Conductor : Type u
  conductor : Conductor
  support : List Nat
  localExponentAtPrime :
    Nat → Nat
  finiteSupport :
    Prop
  finiteSupportCertified :
    finiteSupport
  supportedOnList :
    ∀ p : Nat,
      localExponentAtPrime p ≠ 0 →
        p ∈ support
  boundary : List String

structure GlobalConductorDescriptor
    {K : LawfulFieldLike.{u}}
    (N : NumberFieldCertificate K) where
  conductorData :
    GlobalConductorData N
  boundary : List String

/--
Minimal-model/Neron provenance for conductor data.

This is still an interface certificate. It does not construct a minimal model,
Neron model, special fibers, component groups, or conductor formula.
-/
structure MinimalModelNeronData
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (_N : NumberFieldCertificate K) where
  MinimalWeierstrassModel : Type u
  NeronModel : Type u
  minimalModel :
    MinimalWeierstrassModel
  neronModel :
    NeronModel
  curveMapsToMinimalModel :
    Point E → MinimalWeierstrassModel
  minimalModelMapsToNeron :
    MinimalWeierstrassModel → NeronModel
  localMinimalityAtFinitePlaces : Prop
  localMinimalityAtFinitePlacesCertified :
    localMinimalityAtFinitePlaces
  boundary : List String

structure MinimalModelConductorProvenanceCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K) where
  modelData :
    MinimalModelNeronData (E := E) N
  conductorFormulaCompatibleWithMinimalModel : Prop
  conductorFormulaCompatibleWithMinimalModelCertified :
    conductorFormulaCompatibleWithMinimalModel
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Minimal-model provenance quality required by theorem-facing BSD conductor data. -/
def MinimalModelConductorProvenanceCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    (C : MinimalModelConductorProvenanceCertificate (E := E) N) :
    Prop :=
  C.modelData.localMinimalityAtFinitePlaces ∧
  C.conductorFormulaCompatibleWithMinimalModel ∧
  C.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem MinimalModelConductorProvenanceCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    (C : MinimalModelConductorProvenanceCertificate (E := E) N)
    (hsource :
      C.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    C.certifiedForBSD := by
  constructor
  · exact C.modelData.localMinimalityAtFinitePlacesCertified
  · constructor
    · exact C.conductorFormulaCompatibleWithMinimalModelCertified
    · exact hsource

theorem MinimalModelConductorProvenanceCertificate.localMinimalityAtFinitePlaces
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    (C : MinimalModelConductorProvenanceCertificate (E := E) N) :
    C.modelData.localMinimalityAtFinitePlaces :=
  C.modelData.localMinimalityAtFinitePlacesCertified

theorem GlobalConductorDescriptor.finiteSupport
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    (C : GlobalConductorDescriptor N) :
    C.conductorData.finiteSupport :=
  C.conductorData.finiteSupportCertified

/--
Typed local data used to build a bad-reduction Euler factor.

This is not a Neron-model theorem. It replaces bare "specified" gates with
actual carriers, values, and polynomial coefficients that later arithmetic
geometry must identify with the genuine local model and inertia-invariant
cohomology.
-/
structure BadReductionLocalFactorData
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    (F : LocalEulerFactor)
    (C : LocalConductorExponentCertificate (N := N) F) where
  reductionType :
    LocalReductionType
  reductionType_eq_conductor :
    reductionType = C.reductionType
  LocalNeronModel :
    Type u
  localNeronModel :
    LocalNeronModel
  InertiaInvariantCohomology :
    Type u
  inertiaInvariantCohomology :
    InertiaInvariantCohomology
  localFactorPolynomialCoefficients :
    List Int
  localFactorPolynomialNonempty :
    localFactorPolynomialCoefficients ≠ []
  localFactorPrime :
    Nat
  localFactorPrime_eq :
    localFactorPrime = F.prime
  boundary : List String

/--
Arithmetic provenance for a bad-reduction local Euler factor.

This is still an interface certificate. It does not construct Neron models,
Weil-Deligne representations, local Galois representations, or local epsilon
factors.
-/
structure BadReductionLocalFactorArithmeticCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (F : LocalEulerFactor) where
  finitePlace :
    LocalEulerFactorFinitePlaceCertificate N F
  finitePlaceCertified :
    finitePlace.certifiedForBSD
  conductorExponent :
    LocalConductorExponentCertificate (N := N) F
  conductorExponentCertified :
    conductorExponent.certifiedForBSD
  minimalModelProvenance :
    MinimalModelConductorProvenanceCertificate (E := E) N
  minimalModelProvenanceCertified :
    minimalModelProvenance.certifiedForBSD
  badReductionLocalFactor :
    F.shape = LocalEulerFactorShape.badReductionPlaceholder ∧
    F.goodReduction = false
  localFactorData :
    BadReductionLocalFactorData F conductorExponent
  reductionTypeMatchesConductorExponent : Prop
  reductionTypeMatchesConductorExponentCertified :
    reductionTypeMatchesConductorExponent
  localFactorPolynomialMatchesReductionData : Prop
  localFactorPolynomialMatchesReductionDataCertified :
    localFactorPolynomialMatchesReductionData
  badLocalFactorMatchesEulerProductTerm : Prop
  badLocalFactorMatchesEulerProductTermCertified :
    badLocalFactorMatchesEulerProductTerm
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Bad-reduction local-factor quality required by theorem-facing BSD input. -/
def BadReductionLocalFactorArithmeticCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {F : LocalEulerFactor}
    (C : BadReductionLocalFactorArithmeticCertificate (E := E) N F) :
    Prop :=
  C.finitePlace.certifiedForBSD ∧
  C.conductorExponent.certifiedForBSD ∧
  C.minimalModelProvenance.certifiedForBSD ∧
  F.shape = LocalEulerFactorShape.badReductionPlaceholder ∧
  F.goodReduction = false ∧
  C.localFactorData.reductionType = C.conductorExponent.reductionType ∧
  C.reductionTypeMatchesConductorExponent ∧
  C.localFactorData.localFactorPolynomialCoefficients ≠ [] ∧
  C.localFactorData.localFactorPrime = F.prime ∧
  C.localFactorPolynomialMatchesReductionData ∧
  C.badLocalFactorMatchesEulerProductTerm ∧
  C.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem BadReductionLocalFactorArithmeticCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {F : LocalEulerFactor}
    (C : BadReductionLocalFactorArithmeticCertificate (E := E) N F)
    (hsource :
      C.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    C.certifiedForBSD := by
  exact
    ⟨C.finitePlaceCertified,
      C.conductorExponentCertified,
      C.minimalModelProvenanceCertified,
      C.badReductionLocalFactor.1,
      C.badReductionLocalFactor.2,
      C.localFactorData.reductionType_eq_conductor,
      C.reductionTypeMatchesConductorExponentCertified,
      C.localFactorData.localFactorPolynomialNonempty,
      C.localFactorData.localFactorPrime_eq,
      C.localFactorPolynomialMatchesReductionDataCertified,
      C.badLocalFactorMatchesEulerProductTermCertified,
      hsource⟩

/--
Bad-reduction compatibility for the listed bad local factors of a Hasse-Weil
metadata package.
-/
structure HasseWeilBadReductionCompatibilityCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (L : HasseWeilLFunction K.field E) where
  badLocalFactorsCertified :
    ∀ F ∈ L.localFactors,
      F.shape = LocalEulerFactorShape.badReductionPlaceholder →
      F.goodReduction = false →
      ∃ C : BadReductionLocalFactorArithmeticCertificate (E := E) N F,
        C.certifiedForBSD
  allBadFactorsAccountedFor : Prop
  allBadFactorsAccountedForCertified :
    allBadFactorsAccountedFor
  badFactorsCompatibleWithConductorAssembly : Prop
  badFactorsCompatibleWithConductorAssemblyCertified :
    badFactorsCompatibleWithConductorAssembly
  badFactorsCompatibleWithEulerProductCoverage : Prop
  badFactorsCompatibleWithEulerProductCoverageCertified :
    badFactorsCompatibleWithEulerProductCoverage
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Bad-reduction compatibility required by theorem-facing BSD L-function input. -/
def HasseWeilBadReductionCompatibilityCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {L : HasseWeilLFunction K.field E}
    (C : HasseWeilBadReductionCompatibilityCertificate N L) :
    Prop :=
  (∀ F ∈ L.localFactors,
    F.shape = LocalEulerFactorShape.badReductionPlaceholder →
    F.goodReduction = false →
    ∃ C : BadReductionLocalFactorArithmeticCertificate (E := E) N F,
      C.certifiedForBSD) ∧
  C.allBadFactorsAccountedFor ∧
  C.badFactorsCompatibleWithConductorAssembly ∧
  C.badFactorsCompatibleWithEulerProductCoverage ∧
  C.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem HasseWeilBadReductionCompatibilityCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {L : HasseWeilLFunction K.field E}
    (C : HasseWeilBadReductionCompatibilityCertificate N L)
    (hsource :
      C.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    C.certifiedForBSD := by
  exact
    ⟨C.badLocalFactorsCertified,
      C.allBadFactorsAccountedForCertified,
      C.badFactorsCompatibleWithConductorAssemblyCertified,
      C.badFactorsCompatibleWithEulerProductCoverageCertified,
      hsource⟩

/-- Typed reduction class for theorem-facing bad local Euler-factor data. -/
inductive BadReductionKind where
  | splitMultiplicative
  | nonSplitMultiplicative
  | additive
  | potentiallyMultiplicative
  | potentiallyGoodAdditive
deriving Repr, DecidableEq

/-- Typed bad local Euler-factor shape. -/
inductive BadReductionEulerFactorShape where
  | multiplicativeLinear
  | additiveTrivial
  | additiveInertiaInvariant
  | suppliedByCertificate
deriving Repr, DecidableEq

/--
Typed bad-reduction local-factor shape provenance.

This is still an interface certificate. It does not construct Neron models,
Weil-Deligne representations, local Galois representations, or local epsilon
factors.
-/
structure TypedBadReductionLocalFactorShapeCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (F : LocalEulerFactor) where
  badArithmetic :
    BadReductionLocalFactorArithmeticCertificate (E := E) N F
  badArithmeticCertified :
    badArithmetic.certifiedForBSD
  reductionKind :
    BadReductionKind
  badEulerFactorShape :
    BadReductionEulerFactorShape
  placeholderShapeBoundary :
    F.shape = LocalEulerFactorShape.badReductionPlaceholder ∧
    F.goodReduction = false
  typedShapeMatchesReductionKind : Prop
  typedShapeMatchesReductionKindCertified :
    typedShapeMatchesReductionKind
  typedShapeMatchesConductorExponent : Prop
  typedShapeMatchesConductorExponentCertified :
    typedShapeMatchesConductorExponent
  typedShapeMatchesLocalFactorPolynomial : Prop
  typedShapeMatchesLocalFactorPolynomialCertified :
    typedShapeMatchesLocalFactorPolynomial
  typedShapeMatchesEulerProductTerm : Prop
  typedShapeMatchesEulerProductTermCertified :
    typedShapeMatchesEulerProductTerm
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Typed bad-reduction shape quality required by theorem-facing BSD input. -/
def TypedBadReductionLocalFactorShapeCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {F : LocalEulerFactor}
    (C : TypedBadReductionLocalFactorShapeCertificate (E := E) N F) :
    Prop :=
  C.badArithmetic.certifiedForBSD ∧
  F.shape = LocalEulerFactorShape.badReductionPlaceholder ∧
  F.goodReduction = false ∧
  C.typedShapeMatchesReductionKind ∧
  C.typedShapeMatchesConductorExponent ∧
  C.typedShapeMatchesLocalFactorPolynomial ∧
  C.typedShapeMatchesEulerProductTerm ∧
  C.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem TypedBadReductionLocalFactorShapeCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {F : LocalEulerFactor}
    (C : TypedBadReductionLocalFactorShapeCertificate (E := E) N F)
    (hsource :
      C.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    C.certifiedForBSD := by
  exact
    ⟨C.badArithmeticCertified,
      C.placeholderShapeBoundary.1,
      C.placeholderShapeBoundary.2,
      C.typedShapeMatchesReductionKindCertified,
      C.typedShapeMatchesConductorExponentCertified,
      C.typedShapeMatchesLocalFactorPolynomialCertified,
      C.typedShapeMatchesEulerProductTermCertified,
      hsource⟩

/--
Typed-shape compatibility for all listed bad local factors of a Hasse-Weil
metadata package.
-/
structure HasseWeilTypedBadReductionShapeCompatibilityCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (L : HasseWeilLFunction K.field E) where
  badLocalFactorsTyped :
    ∀ F ∈ L.localFactors,
      F.shape = LocalEulerFactorShape.badReductionPlaceholder →
      F.goodReduction = false →
      ∃ C : TypedBadReductionLocalFactorShapeCertificate (E := E) N F,
        C.certifiedForBSD
  allBadTypedShapesAccountedFor : Prop
  allBadTypedShapesAccountedForCertified :
    allBadTypedShapesAccountedFor
  typedShapesCompatibleWithBadArithmetic : Prop
  typedShapesCompatibleWithBadArithmeticCertified :
    typedShapesCompatibleWithBadArithmetic
  typedShapesCompatibleWithConductorAssembly : Prop
  typedShapesCompatibleWithConductorAssemblyCertified :
    typedShapesCompatibleWithConductorAssembly
  typedShapesCompatibleWithEulerProductCoverage : Prop
  typedShapesCompatibleWithEulerProductCoverageCertified :
    typedShapesCompatibleWithEulerProductCoverage
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Typed bad-reduction shape compatibility required by theorem-facing BSD input. -/
def HasseWeilTypedBadReductionShapeCompatibilityCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {L : HasseWeilLFunction K.field E}
    (C : HasseWeilTypedBadReductionShapeCompatibilityCertificate N L) :
    Prop :=
  (∀ F ∈ L.localFactors,
    F.shape = LocalEulerFactorShape.badReductionPlaceholder →
    F.goodReduction = false →
    ∃ C : TypedBadReductionLocalFactorShapeCertificate (E := E) N F,
      C.certifiedForBSD) ∧
  C.allBadTypedShapesAccountedFor ∧
  C.typedShapesCompatibleWithBadArithmetic ∧
  C.typedShapesCompatibleWithConductorAssembly ∧
  C.typedShapesCompatibleWithEulerProductCoverage ∧
  C.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem HasseWeilTypedBadReductionShapeCompatibilityCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {L : HasseWeilLFunction K.field E}
    (C : HasseWeilTypedBadReductionShapeCompatibilityCertificate N L)
    (hsource :
      C.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    C.certifiedForBSD := by
  exact
    ⟨C.badLocalFactorsTyped,
      C.allBadTypedShapesAccountedForCertified,
      C.typedShapesCompatibleWithBadArithmeticCertified,
      C.typedShapesCompatibleWithConductorAssemblyCertified,
      C.typedShapesCompatibleWithEulerProductCoverageCertified,
      hsource⟩

/--
Certificate that local conductor exponents assemble the supplied global
conductor.

This is still a certificate interface. It does not construct the conductor ideal
or prove the conductor formula from a minimal model.
-/
structure GlobalConductorAssemblyCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (L : HasseWeilLFunction K.field E) where
  conductor :
    GlobalConductorDescriptor N
  conductorLocal :
    ConductorLocalCompatibilityCertificate N L
  conductorLocalCertified :
    conductorLocal.certifiedForBSD
  minimalModelProvenance :
    MinimalModelConductorProvenanceCertificate (E := E) N
  minimalModelProvenanceCertified :
    minimalModelProvenance.certifiedForBSD
  localExponentsAssembleConductor : Prop
  localExponentsAssembleConductorCertified :
    localExponentsAssembleConductor
  badPlacesExactlyPositiveExponent : Prop
  badPlacesExactlyPositiveExponentCertified :
    badPlacesExactlyPositiveExponent
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Global conductor-assembly quality required by theorem-facing BSD input. -/
def GlobalConductorAssemblyCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {L : HasseWeilLFunction K.field E}
    (C : GlobalConductorAssemblyCertificate N L) :
    Prop :=
  C.conductor.conductorData.finiteSupport ∧
  C.conductorLocal.certifiedForBSD ∧
  C.localExponentsAssembleConductor ∧
  C.badPlacesExactlyPositiveExponent ∧
  C.minimalModelProvenance.certifiedForBSD ∧
  C.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem GlobalConductorAssemblyCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {L : HasseWeilLFunction K.field E}
    (C : GlobalConductorAssemblyCertificate N L)
    (hsource :
      C.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    C.certifiedForBSD := by
  constructor
  · exact C.conductor.conductorData.finiteSupportCertified
  · constructor
    · exact C.conductorLocalCertified
    · constructor
      · exact C.localExponentsAssembleConductorCertified
      · constructor
        · exact C.badPlacesExactlyPositiveExponentCertified
        · constructor
          · exact C.minimalModelProvenanceCertified
          · exact hsource

theorem GlobalConductorAssemblyCertificate.conductorLocal_certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {L : HasseWeilLFunction K.field E}
    {C : GlobalConductorAssemblyCertificate N L}
    (h : C.certifiedForBSD) :
    C.conductorLocal.certifiedForBSD :=
  h.2.1

theorem GlobalConductorAssemblyCertificate.localExponentsAssembleConductor_of_certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {L : HasseWeilLFunction K.field E}
    {C : GlobalConductorAssemblyCertificate N L}
    (h : C.certifiedForBSD) :
    C.localExponentsAssembleConductor :=
  h.2.2.1

theorem GlobalConductorAssemblyCertificate.minimalModelProvenance_certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {L : HasseWeilLFunction K.field E}
    {C : GlobalConductorAssemblyCertificate N L}
    (h : C.certifiedForBSD) :
    C.minimalModelProvenance.certifiedForBSD :=
  h.2.2.2.2.1

/--
Coverage certificate for the Euler-product data of a Hasse-Weil L-function.

This is still a certificate interface. It does not construct the analytic
Euler product or prove convergence.
-/
structure EulerProductCoverageCertificate
    {K : FieldLike.{u}}
    {E : ShortWeierstrass K}
    (L : HasseWeilLFunction K E) where
  localFactorsCertified :
    L.localFactorsCertifiedForBSD
  coversAllFinitePrimes : Prop
  coversAllFinitePrimesCertified :
    coversAllFinitePrimes
  localFactorCompatibility : Prop
  localFactorCompatibilityCertified :
    localFactorCompatibility
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Euler-product coverage quality required by theorem-facing BSD input. -/
def EulerProductCoverageCertificate.certifiedForBSD
    {K : FieldLike.{u}}
    {E : ShortWeierstrass K}
    {L : HasseWeilLFunction K E}
    (C : EulerProductCoverageCertificate L) :
    Prop :=
  C.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate ∧
  C.coversAllFinitePrimes ∧
  C.localFactorCompatibility

theorem EulerProductCoverageCertificate.certifiedForBSD_of_source
    {K : FieldLike.{u}}
    {E : ShortWeierstrass K}
    {L : HasseWeilLFunction K E}
    (C : EulerProductCoverageCertificate L)
    (h :
      C.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    C.certifiedForBSD := by
  constructor
  · exact h
  · constructor
    · exact C.coversAllFinitePrimesCertified
    · exact C.localFactorCompatibilityCertified

/-- Normalization tag for a theorem-facing Hasse-Weil coefficient system. -/
inductive CoefficientNormalization where
  | hasseWeil
  | suppliedByCertificate
deriving Repr, DecidableEq

/--
Typed Dirichlet/ideal coefficient-system data.

The index type is deliberately abstract: for `K = Q` it can later be specialized
to positive integers, and over a number field to nonzero integral ideals.  This
record is data, not convergence or analytic continuation.
-/
structure DirichletCoefficientData
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (_N : NumberFieldCertificate K)
    (L : HasseWeilLFunction K.field E) where
  CoefficientIndex :
    Type u
  oneIndex :
    CoefficientIndex
  multiplyIndex :
    CoefficientIndex → CoefficientIndex → CoefficientIndex
  coefficient :
    CoefficientIndex → Int
  indexNorm :
    CoefficientIndex → Nat
  coefficient_one :
    coefficient oneIndex = 1
  indexNorm_one :
    indexNorm oneIndex = 1
  localFactorCoefficientIndices :
    LocalEulerFactor → List CoefficientIndex
  localFactorIndicesNonempty :
    ∀ F ∈ L.localFactors,
      localFactorCoefficientIndices F ≠ []
  normalization :
    CoefficientNormalization
  normalizationCertified :
    normalization = CoefficientNormalization.suppliedByCertificate
  multiplicativeOnIndexedFactors :
    Prop
  multiplicativeOnIndexedFactorsCertified :
    multiplicativeOnIndexedFactors
  boundary : List String

/--
Dirichlet/ideal coefficient-system provenance for the Hasse-Weil L-function.

This is still an interface certificate. It does not construct Dirichlet series,
prove convergence, prove analytic continuation, or construct automorphic
representations.
-/
structure DirichletCoefficientSystemCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (L : HasseWeilLFunction K.field E) where
  baseNumberFieldCertified :
    N.certifiedForBSD
  lFunctionCertified :
    L.certifiedForBSD
  coefficientData :
    DirichletCoefficientData N L
  coefficientIndexingCompatibleWithBaseFieldIdeals : Prop
  coefficientIndexingCompatibleWithBaseFieldIdealsCertified :
    coefficientIndexingCompatibleWithBaseFieldIdeals
  goodLocalFactorExpansionMatchesCoefficients : Prop
  goodLocalFactorExpansionMatchesCoefficientsCertified :
    goodLocalFactorExpansionMatchesCoefficients
  badLocalFactorExpansionMatchesCoefficients : Prop
  badLocalFactorExpansionMatchesCoefficientsCertified :
    badLocalFactorExpansionMatchesCoefficients
  residueNormsUsedInCoefficientExpansion : Prop
  residueNormsUsedInCoefficientExpansionCertified :
    residueNormsUsedInCoefficientExpansion
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Coefficient-system quality required by theorem-facing BSD L-function input. -/
def DirichletCoefficientSystemCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {L : HasseWeilLFunction K.field E}
    (C : DirichletCoefficientSystemCertificate N L) :
  Prop :=
  N.certifiedForBSD ∧
  L.certifiedForBSD ∧
  C.coefficientData.normalization =
    CoefficientNormalization.suppliedByCertificate ∧
  (∀ F ∈ L.localFactors,
    C.coefficientData.localFactorCoefficientIndices F ≠ []) ∧
  C.coefficientIndexingCompatibleWithBaseFieldIdeals ∧
  C.coefficientData.multiplicativeOnIndexedFactors ∧
  C.goodLocalFactorExpansionMatchesCoefficients ∧
  C.badLocalFactorExpansionMatchesCoefficients ∧
  C.residueNormsUsedInCoefficientExpansion ∧
  C.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem DirichletCoefficientSystemCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {L : HasseWeilLFunction K.field E}
    (C : DirichletCoefficientSystemCertificate N L)
    (hsource :
      C.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    C.certifiedForBSD := by
  exact
    ⟨C.baseNumberFieldCertified,
      C.lFunctionCertified,
      C.coefficientData.normalizationCertified,
      C.coefficientData.localFactorIndicesNonempty,
      C.coefficientIndexingCompatibleWithBaseFieldIdealsCertified,
      C.coefficientData.multiplicativeOnIndexedFactorsCertified,
      C.goodLocalFactorExpansionMatchesCoefficientsCertified,
      C.badLocalFactorExpansionMatchesCoefficientsCertified,
      C.residueNormsUsedInCoefficientExpansionCertified,
      hsource⟩

/-- Typed convergence region for the Euler product/Dirichlet series comparison. -/
inductive EulerProductConvergenceRegion where
  | rightHalfPlane
  | suppliedByCertificate
deriving Repr, DecidableEq

/--
The theorem-facing convergence data for comparing the Euler product with the
coefficient series.

This does not prove analytic continuation. It records the actual convergence
region object and the two convergence obligations that later analysis must
discharge.
-/
structure EulerProductDirichletConvergenceData
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (L : HasseWeilLFunction K.field E)
    (coefficients : DirichletCoefficientSystemCertificate N L)
    (coverage : EulerProductCoverageCertificate L) where
  convergenceRegion :
    EulerProductConvergenceRegion
  convergenceRegionIsRightHalfPlane :
    convergenceRegion = EulerProductConvergenceRegion.rightHalfPlane
  samplePoint :
    SymbolicComplexVariable
  coefficientSystemCertified :
    coefficients.certifiedForBSD
  eulerProductCoverageCertified :
    coverage.certifiedForBSD
  eulerProductConvergesOnRegion :
    Prop
  eulerProductConvergesOnRegionCertified :
    eulerProductConvergesOnRegion
  coefficientSeriesConvergesOnRegion :
    Prop
  coefficientSeriesConvergesOnRegionCertified :
    coefficientSeriesConvergesOnRegion
  convergenceRegionCompatibleWithNorms :
    Prop
  convergenceRegionCompatibleWithNormsCertified :
    convergenceRegionCompatibleWithNorms
  boundary : List String

/--
Compatibility between the Euler product and the global Dirichlet/ideal
coefficient system.

This is still an interface certificate. It does not prove Euler-product
convergence or analytic continuation.
-/
structure EulerProductDirichletSeriesCompatibilityCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (L : HasseWeilLFunction K.field E) where
  coefficients :
    DirichletCoefficientSystemCertificate N L
  coefficientsCertified :
    coefficients.certifiedForBSD
  eulerProductCoverage :
    EulerProductCoverageCertificate L
  eulerProductCoverageCertified :
    eulerProductCoverage.certifiedForBSD
  residueNormCompatibility :
    ∃ RC : HasseWeilResidueNormCompatibilityCertificate N L,
      RC.certifiedForBSD
  pointCountCompatibility :
    ∃ PC : HasseWeilPointCountCompatibilityCertificate N L,
      PC.certifiedForBSD
  badReductionCompatibility :
    ∃ BC : HasseWeilBadReductionCompatibilityCertificate N L,
      BC.certifiedForBSD
  localFactorExpansionProducesCoefficientSystem : Prop
  localFactorExpansionProducesCoefficientSystemCertified :
    localFactorExpansionProducesCoefficientSystem
  convergenceData :
    EulerProductDirichletConvergenceData
      N L coefficients eulerProductCoverage
  eulerProductMatchesDirichletSeriesInConvergenceRegion : Prop
  eulerProductMatchesDirichletSeriesInConvergenceRegionCertified :
    eulerProductMatchesDirichletSeriesInConvergenceRegion
  analyticContinuationExtendsCoefficientSeries : Prop
  analyticContinuationExtendsCoefficientSeriesCertified :
    analyticContinuationExtendsCoefficientSeries
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/--
Euler-product/Dirichlet-series compatibility required by theorem-facing BSD input.
-/
def EulerProductDirichletSeriesCompatibilityCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {L : HasseWeilLFunction K.field E}
    (C : EulerProductDirichletSeriesCompatibilityCertificate N L) :
    Prop :=
  C.coefficients.certifiedForBSD ∧
  C.eulerProductCoverage.certifiedForBSD ∧
  (∃ RC : HasseWeilResidueNormCompatibilityCertificate N L,
    RC.certifiedForBSD) ∧
  (∃ PC : HasseWeilPointCountCompatibilityCertificate N L,
    PC.certifiedForBSD) ∧
  (∃ BC : HasseWeilBadReductionCompatibilityCertificate N L,
    BC.certifiedForBSD) ∧
  C.localFactorExpansionProducesCoefficientSystem ∧
  C.convergenceData.convergenceRegion =
    EulerProductConvergenceRegion.rightHalfPlane ∧
  C.convergenceData.eulerProductConvergesOnRegion ∧
  C.convergenceData.coefficientSeriesConvergesOnRegion ∧
  C.convergenceData.convergenceRegionCompatibleWithNorms ∧
  C.eulerProductMatchesDirichletSeriesInConvergenceRegion ∧
  C.analyticContinuationExtendsCoefficientSeries ∧
  C.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem EulerProductDirichletSeriesCompatibilityCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {L : HasseWeilLFunction K.field E}
    (C : EulerProductDirichletSeriesCompatibilityCertificate N L)
    (hsource :
      C.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    C.certifiedForBSD := by
  exact
    ⟨C.coefficientsCertified,
      C.eulerProductCoverageCertified,
      C.residueNormCompatibility,
      C.pointCountCompatibility,
      C.badReductionCompatibility,
      C.localFactorExpansionProducesCoefficientSystemCertified,
      C.convergenceData.convergenceRegionIsRightHalfPlane,
      C.convergenceData.eulerProductConvergesOnRegionCertified,
      C.convergenceData.coefficientSeriesConvergesOnRegionCertified,
      C.convergenceData.convergenceRegionCompatibleWithNormsCertified,
      C.eulerProductMatchesDirichletSeriesInConvergenceRegionCertified,
      C.analyticContinuationExtendsCoefficientSeriesCertified,
      hsource⟩

/-- Typed center metadata for a functional equation. -/
inductive FunctionalEquationCenter where
  | sEqOne
  | suppliedByCertificate
  | unspecified
deriving Repr, DecidableEq

/-- Typed sign metadata for a functional equation. -/
inductive FunctionalEquationSign where
  | plusOne
  | minusOne
  | suppliedByCertificate
  | unspecified
deriving Repr, DecidableEq

/-- A functional-equation sign is either explicit or supplied by certificate. -/
def FunctionalEquationSign.certifiedOrExplicit
    (s : FunctionalEquationSign) :
    Prop :=
  s = .plusOne ∨ s = .minusOne ∨ s = .suppliedByCertificate

/-- Typed completed-equation shape metadata. -/
inductive CompletedEquationShape where
  | lambdaSEqSignLambdaTwoMinusS
  | suppliedByCertificate
  | unspecified
deriving Repr, DecidableEq

/-- Analytic-continuation certificate. -/
structure AnalyticContinuationCertificate
    (L : HasseWeilLFunction K E) where
  continuationDomain : AnalyticContinuationDomain
  continuationKind : AnalyticContinuationKind
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Functional-equation certificate. -/
structure FunctionalEquationCertificate
    (L : HasseWeilLFunction K E) where
  center : FunctionalEquationCenter
  sign : FunctionalEquationSign
  completedEquationShape : CompletedEquationShape
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/--
Analytic-continuation certificate quality required by theorem-facing BSD input.

This is still a certificate predicate, not a proof of analytic continuation.
-/
def AnalyticContinuationCertificate.certifiedForBSD
    {L : HasseWeilLFunction K E}
    (A : AnalyticContinuationCertificate L) :
    Prop :=
  A.continuationDomain = .wholeComplexPlane ∧
  A.sourceStatus = .suppliedByCertificate

/--
Functional-equation certificate quality required by theorem-facing BSD input.

This is still a certificate predicate, not a proof of the functional equation.
-/
def FunctionalEquationCertificate.certifiedForBSD
    {L : HasseWeilLFunction K E}
    (F : FunctionalEquationCertificate L) :
    Prop :=
  F.center = .sEqOne ∧
  F.sign.certifiedOrExplicit ∧
  F.completedEquationShape = .lambdaSEqSignLambdaTwoMinusS ∧
  F.sourceStatus = .suppliedByCertificate

/--
Typed root-number data attached to a completed functional equation.

The root number is represented by its sign metadata in this symbolic analytic
layer.  Unit norm remains a theorem obligation, but it is now attached to the
root-number datum rather than recorded as a free-standing "specified" gate.
-/
structure RootNumberData
    {K : FieldLike.{u}}
    {E : ShortWeierstrass K}
    (L : HasseWeilLFunction K E)
    (F : FunctionalEquationCertificate L) where
  sign :
    FunctionalEquationSign
  sign_eq_functionalEquation :
    sign = F.sign
  signCertifiedOrExplicit :
    sign.certifiedOrExplicit
  unitNorm :
    Prop
  unitNormCertified :
    unitNorm
  boundary : List String

/--
Completed functional-equation normalization for the Hasse-Weil L-function.

This is still an interface certificate. It does not prove analytic continuation,
prove the functional equation, construct automorphic representations, or compute
the global root number.
-/
structure CompletedFunctionalEquationNormalizationCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (L : HasseWeilLFunction K.field E) where
  analyticContinuation :
    AnalyticContinuationCertificate L
  analyticContinuationCertified :
    analyticContinuation.certifiedForBSD
  functionalEquation :
    FunctionalEquationCertificate L
  functionalEquationCertified :
    functionalEquation.certifiedForBSD
  archimedeanGammaFactors :
    HasseWeilArchimedeanGammaFactorCertificate N P L
  archimedeanGammaFactorsCertified :
    archimedeanGammaFactors.certifiedForBSD
  conductorAssembly :
    ∃ GC : GlobalConductorAssemblyCertificate N L,
      GC.certifiedForBSD
  completedShapeCertified :
    L.completedShape.certifiedForBSD
  centralPointIsSEqOne : Prop
  centralPointIsSEqOneCertified :
    centralPointIsSEqOne
  involutionIsTwoMinusS : Prop
  involutionIsTwoMinusSCertified :
    involutionIsTwoMinusS
  rootNumber :
    RootNumberData L functionalEquation
  conductorNormalizationMatchesCompletedShape : Prop
  conductorNormalizationMatchesCompletedShapeCertified :
    conductorNormalizationMatchesCompletedShape
  gammaNormalizationMatchesFunctionalEquation : Prop
  gammaNormalizationMatchesFunctionalEquationCertified :
    gammaNormalizationMatchesFunctionalEquation
  completedLFunctionUsesSameEulerProduct : Prop
  completedLFunctionUsesSameEulerProductCertified :
    completedLFunctionUsesSameEulerProduct
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/--
Completed functional-equation normalization required by theorem-facing BSD input.
-/
def CompletedFunctionalEquationNormalizationCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    (C : CompletedFunctionalEquationNormalizationCertificate N P L) :
    Prop :=
  C.analyticContinuation.certifiedForBSD ∧
  C.functionalEquation.certifiedForBSD ∧
  C.archimedeanGammaFactors.certifiedForBSD ∧
  (∃ GC : GlobalConductorAssemblyCertificate N L,
    GC.certifiedForBSD) ∧
  L.completedShape.certifiedForBSD ∧
  C.centralPointIsSEqOne ∧
  C.involutionIsTwoMinusS ∧
  C.rootNumber.sign = C.functionalEquation.sign ∧
  C.rootNumber.sign.certifiedOrExplicit ∧
  C.rootNumber.unitNorm ∧
  C.conductorNormalizationMatchesCompletedShape ∧
  C.gammaNormalizationMatchesFunctionalEquation ∧
  C.completedLFunctionUsesSameEulerProduct ∧
  C.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem CompletedFunctionalEquationNormalizationCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    (C : CompletedFunctionalEquationNormalizationCertificate N P L)
    (hsource :
      C.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    C.certifiedForBSD := by
  exact
    ⟨C.analyticContinuationCertified,
      C.functionalEquationCertified,
      C.archimedeanGammaFactorsCertified,
      C.conductorAssembly,
      C.completedShapeCertified,
      C.centralPointIsSEqOneCertified,
      C.involutionIsTwoMinusSCertified,
      C.rootNumber.sign_eq_functionalEquation,
      C.rootNumber.signCertifiedOrExplicit,
      C.rootNumber.unitNormCertified,
      C.conductorNormalizationMatchesCompletedShapeCertified,
      C.gammaNormalizationMatchesFunctionalEquationCertified,
      C.completedLFunctionUsesSameEulerProductCertified,
      hsource⟩

/-- Typed role for the analytic object carried by a Hasse-Weil interface. -/
inductive HasseWeilAnalyticObjectKind where
  | uncompletedAndCompletedPair
  | suppliedByCertificate
deriving Repr, DecidableEq

/--
Typed analytic-object data for a Hasse-Weil L-function interface.

This is deliberately not a complex-analysis construction. It provides a carrier
for the uncompleted function, completed function, Euler-product germ, coefficient
series germ, and analytic continuation so later theorem inputs can assert that
they are the same analytic object.
-/
structure HasseWeilAnalyticObjectData
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (_N : NumberFieldCertificate K)
    (_P : NumberFieldPlaceProductFormulaCertificate _N)
    (_L : HasseWeilLFunction K.field E) where
  AnalyticFunction :
    Type u
  uncompletedFunction :
    AnalyticFunction
  completedFunction :
    AnalyticFunction
  coefficientSeriesGerm :
    AnalyticFunction
  eulerProductGerm :
    AnalyticFunction
  continuationFunction :
    AnalyticFunction
  objectKind :
    HasseWeilAnalyticObjectKind
  objectKindCertified :
    objectKind = HasseWeilAnalyticObjectKind.suppliedByCertificate
  boundary : List String

/--
Typed central germ at `s = 1` for the selected analytic object.

The central germ is actual data, while theorems identifying it with a Taylor
expansion or leading coefficient remain separate BSD-facing certificates.
-/
structure CentralGermAtSEqOneData
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    (O : HasseWeilAnalyticObjectData N P L) where
  Germ :
    Type u
  germ :
    Germ
  center :
    SymbolicComplexVariable
  center_eq_sEqOne :
    center = SymbolicComplexVariable.sEqOne
  analyticFunctionForGerm :
    O.AnalyticFunction
  analyticFunctionForGerm_eq_continuation :
    analyticFunctionForGerm = O.continuationFunction
  boundary : List String

/--
Analytic-function interface provenance for the Hasse-Weil L-function.

This certificate says that the uncompleted L-function, Dirichlet/ideal
coefficient system, Euler product, analytic continuation, completed
normalization, gamma factors, functional equation, and central germ are
interfaces for one common theorem-facing analytic object.

It is still an interface certificate. It does not construct the analytic
Hasse-Weil L-function, prove convergence, prove analytic continuation, prove
the functional equation, construct automorphic representations, or compute
Taylor coefficients.
-/
structure HasseWeilAnalyticFunctionInterfaceCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (L : HasseWeilLFunction K.field E) where
  lFunctionMetadataCertified :
    L.certifiedForBSD
  coefficientSystem :
    DirichletCoefficientSystemCertificate N L
  coefficientSystemCertified :
    coefficientSystem.certifiedForBSD
  eulerProductDirichletSeries :
    EulerProductDirichletSeriesCompatibilityCertificate N L
  eulerProductDirichletSeriesCertified :
    eulerProductDirichletSeries.certifiedForBSD
  analyticContinuation :
    AnalyticContinuationCertificate L
  analyticContinuationCertified :
    analyticContinuation.certifiedForBSD
  completedFunctionalEquation :
    CompletedFunctionalEquationNormalizationCertificate N P L
  completedFunctionalEquationCertified :
    completedFunctionalEquation.certifiedForBSD
  analyticObject :
    HasseWeilAnalyticObjectData N P L
  uncompletedFunctionMatchesCoefficientSeries : Prop
  uncompletedFunctionMatchesCoefficientSeriesCertified :
    uncompletedFunctionMatchesCoefficientSeries
  uncompletedFunctionMatchesEulerProductInConvergenceRegion : Prop
  uncompletedFunctionMatchesEulerProductInConvergenceRegionCertified :
    uncompletedFunctionMatchesEulerProductInConvergenceRegion
  analyticContinuationExtendsUncompletedFunction : Prop
  analyticContinuationExtendsUncompletedFunctionCertified :
    analyticContinuationExtendsUncompletedFunction
  completedFunctionBuiltFromUncompletedGammaAndConductor : Prop
  completedFunctionBuiltFromUncompletedGammaAndConductorCertified :
    completedFunctionBuiltFromUncompletedGammaAndConductor
  centralGerm :
    CentralGermAtSEqOneData analyticObject
  centralGermUsesSameAnalyticContinuation : Prop
  centralGermUsesSameAnalyticContinuationCertified :
    centralGermUsesSameAnalyticContinuation
  completedAndUncompletedNormalizationsCompatibleAtSEqOne : Prop
  completedAndUncompletedNormalizationsCompatibleAtSEqOneCertified :
    completedAndUncompletedNormalizationsCompatibleAtSEqOne
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/--
Analytic Hasse-Weil function-interface quality required by theorem-facing BSD
input.
-/
def HasseWeilAnalyticFunctionInterfaceCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    (A : HasseWeilAnalyticFunctionInterfaceCertificate N P L) :
    Prop :=
  L.certifiedForBSD ∧
  A.coefficientSystem.certifiedForBSD ∧
  A.eulerProductDirichletSeries.certifiedForBSD ∧
  A.analyticContinuation.certifiedForBSD ∧
  A.completedFunctionalEquation.certifiedForBSD ∧
  A.analyticObject.objectKind =
    HasseWeilAnalyticObjectKind.suppliedByCertificate ∧
  A.uncompletedFunctionMatchesCoefficientSeries ∧
  A.uncompletedFunctionMatchesEulerProductInConvergenceRegion ∧
  A.analyticContinuationExtendsUncompletedFunction ∧
  A.completedFunctionBuiltFromUncompletedGammaAndConductor ∧
  A.centralGerm.center = SymbolicComplexVariable.sEqOne ∧
  A.centralGerm.analyticFunctionForGerm =
    A.analyticObject.continuationFunction ∧
  A.centralGermUsesSameAnalyticContinuation ∧
  A.completedAndUncompletedNormalizationsCompatibleAtSEqOne ∧
  A.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem HasseWeilAnalyticFunctionInterfaceCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    (A : HasseWeilAnalyticFunctionInterfaceCertificate N P L)
    (hsource :
      A.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    A.certifiedForBSD := by
  exact
    ⟨A.lFunctionMetadataCertified,
      A.coefficientSystemCertified,
      A.eulerProductDirichletSeriesCertified,
      A.analyticContinuationCertified,
      A.completedFunctionalEquationCertified,
      A.analyticObject.objectKindCertified,
      A.uncompletedFunctionMatchesCoefficientSeriesCertified,
      A.uncompletedFunctionMatchesEulerProductInConvergenceRegionCertified,
      A.analyticContinuationExtendsUncompletedFunctionCertified,
      A.completedFunctionBuiltFromUncompletedGammaAndConductorCertified,
      A.centralGerm.center_eq_sEqOne,
      A.centralGerm.analyticFunctionForGerm_eq_continuation,
      A.centralGermUsesSameAnalyticContinuationCertified,
      A.completedAndUncompletedNormalizationsCompatibleAtSEqOneCertified,
      hsource⟩

/--
Analytic-continuation uniqueness provenance for the Hasse-Weil analytic
interface.

This certificate says that the coefficient/Euler-product germ, the supplied
analytic continuation, the completed-functional-equation continuation, and the
central germ are related through one unique continuation on the relevant
connected analytic domain.

It is still an interface certificate. It does not prove the identity theorem,
construct complex analytic functions, prove analytic continuation, prove the
functional equation, or compute Taylor coefficients.
-/
structure HasseWeilAnalyticContinuationUniquenessCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (L : HasseWeilLFunction K.field E)
    (A : HasseWeilAnalyticFunctionInterfaceCertificate N P L) where
  analyticFunctionInterfaceCertified :
    A.certifiedForBSD
  coefficientSystemGerm :
    A.analyticObject.AnalyticFunction
  coefficientSystemGerm_eq :
    coefficientSystemGerm = A.analyticObject.coefficientSeriesGerm
  eulerProductGerm :
    A.analyticObject.AnalyticFunction
  eulerProductGerm_eq :
    eulerProductGerm = A.analyticObject.eulerProductGerm
  convergenceDomainConnected :
    Prop
  convergenceDomainConnectedCertified :
    convergenceDomainConnected
  analyticContinuationDomainConnected :
    Prop
  analyticContinuationDomainConnectedCertified :
    analyticContinuationDomainConnected
  coefficientAndEulerProductGermsAgreeOnNonemptyDomain :
    Prop
  coefficientAndEulerProductGermsAgreeOnNonemptyDomainCertified :
    coefficientAndEulerProductGermsAgreeOnNonemptyDomain
  analyticContinuationUniqueFromCoefficientGerm :
    Prop
  analyticContinuationUniqueFromCoefficientGermCertified :
    analyticContinuationUniqueFromCoefficientGerm
  completedFunctionalEquationUsesSameContinuation :
    Prop
  completedFunctionalEquationUsesSameContinuationCertified :
    completedFunctionalEquationUsesSameContinuation
  centralGermObtainedFromUniqueContinuation :
    Prop
  centralGermObtainedFromUniqueContinuationCertified :
    centralGermObtainedFromUniqueContinuation
  IdentityTheoremBoundaryData :
    Type u
  identityTheoremBoundaryData :
    IdentityTheoremBoundaryData
  identityTheoremBoundaryAppliesToContinuationDomain :
    Prop
  identityTheoremBoundaryAppliesToContinuationDomainCertified :
    identityTheoremBoundaryAppliesToContinuationDomain
  sourceStatus :
    AnalyticCertificateSourceStatus
  boundary :
    List String

/--
Analytic-continuation uniqueness quality required by theorem-facing BSD input.
-/
def HasseWeilAnalyticContinuationUniquenessCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    {A : HasseWeilAnalyticFunctionInterfaceCertificate N P L}
    (U : HasseWeilAnalyticContinuationUniquenessCertificate N P L A) :
    Prop :=
  A.certifiedForBSD ∧
  U.coefficientSystemGerm = A.analyticObject.coefficientSeriesGerm ∧
  U.eulerProductGerm = A.analyticObject.eulerProductGerm ∧
  U.convergenceDomainConnected ∧
  U.analyticContinuationDomainConnected ∧
  U.coefficientAndEulerProductGermsAgreeOnNonemptyDomain ∧
  U.analyticContinuationUniqueFromCoefficientGerm ∧
  U.completedFunctionalEquationUsesSameContinuation ∧
  U.centralGermObtainedFromUniqueContinuation ∧
  U.identityTheoremBoundaryAppliesToContinuationDomain ∧
  U.sourceStatus =
    AnalyticCertificateSourceStatus.suppliedByCertificate

theorem HasseWeilAnalyticContinuationUniquenessCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    {A : HasseWeilAnalyticFunctionInterfaceCertificate N P L}
    (U : HasseWeilAnalyticContinuationUniquenessCertificate N P L A)
    (hsource :
      U.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    U.certifiedForBSD := by
  exact
    ⟨U.analyticFunctionInterfaceCertified,
      U.coefficientSystemGerm_eq,
      U.eulerProductGerm_eq,
      U.convergenceDomainConnectedCertified,
      U.analyticContinuationDomainConnectedCertified,
      U.coefficientAndEulerProductGermsAgreeOnNonemptyDomainCertified,
      U.analyticContinuationUniqueFromCoefficientGermCertified,
      U.completedFunctionalEquationUsesSameContinuationCertified,
      U.centralGermObtainedFromUniqueContinuationCertified,
      U.identityTheoremBoundaryAppliesToContinuationDomainCertified,
      hsource⟩

/--
Scope tag for theorem-facing automorphic provenance of a Hasse-Weil L-function.

This is metadata for a supplied certificate. It is not a proof of modularity,
automorphy, analytic continuation, or the functional equation.
-/
inductive AutomorphicProvenanceScope where
  | classicalModularOverQ
  | hilbertModularTotallyReal
  | automorphicGLTwoOverNumberField
  | suppliedByExternalTheorem
  | unspecified
deriving Repr, DecidableEq

/--
Typed theorem statement and hypotheses for an automorphic provenance scope.

This records the actual objects used as the theorem statement and hypotheses.
It does not prove the theorem, modularity, automorphy, local Langlands
compatibility, analytic continuation, or the functional equation.
-/
structure AutomorphicScopeTheoremData
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (_N : NumberFieldCertificate K)
    (_L : HasseWeilLFunction K.field E)
    (scope : AutomorphicProvenanceScope) where
  Statement :
    Type u
  statement :
    Statement
  Hypotheses :
    Type u
  hypotheses :
    Hypotheses
  theoremScope :
    AutomorphicProvenanceScope
  theoremScope_eq :
    theoremScope = scope
  sourceName :
    String
  boundary : List String

/--
Scope support for theorem-facing automorphic provenance.

This is still an interface certificate. It does not prove modularity,
automorphy, local Langlands, analytic continuation, or the functional equation.
-/
structure AutomorphicScopeSupportCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (L : HasseWeilLFunction K.field E)
    (scope : AutomorphicProvenanceScope) where
  baseNumberFieldCertified :
    N.certifiedForBSD
  lFunctionCertified :
    L.certifiedForBSD
  scopeNotUnspecified :
    scope ≠ AutomorphicProvenanceScope.unspecified
  scopeMatchesBaseField : Prop
  scopeMatchesBaseFieldCertified :
    scopeMatchesBaseField
  scopeMatchesCurveClass : Prop
  scopeMatchesCurveClassCertified :
    scopeMatchesCurveClass
  scopeTheoremData :
    AutomorphicScopeTheoremData N L scope
  curveSatisfiesScopeHypotheses : Prop
  curveSatisfiesScopeHypothesesCertified :
    curveSatisfiesScopeHypotheses
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- BSD-facing quality predicate for automorphic scope support. -/
def AutomorphicScopeSupportCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {L : HasseWeilLFunction K.field E}
    {scope : AutomorphicProvenanceScope}
    (S : AutomorphicScopeSupportCertificate N L scope) :
    Prop :=
  N.certifiedForBSD ∧
  L.certifiedForBSD ∧
  scope ≠ AutomorphicProvenanceScope.unspecified ∧
  S.scopeMatchesBaseField ∧
  S.scopeMatchesCurveClass ∧
  S.scopeTheoremData.theoremScope = scope ∧
  S.curveSatisfiesScopeHypotheses ∧
  S.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem AutomorphicScopeSupportCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {L : HasseWeilLFunction K.field E}
    {scope : AutomorphicProvenanceScope}
    (S : AutomorphicScopeSupportCertificate N L scope)
    (hsource :
      S.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    S.certifiedForBSD := by
  exact
    ⟨S.baseNumberFieldCertified,
      S.lFunctionCertified,
      S.scopeNotUnspecified,
      S.scopeMatchesBaseFieldCertified,
      S.scopeMatchesCurveClassCertified,
      S.scopeTheoremData.theoremScope_eq,
      S.curveSatisfiesScopeHypothesesCertified,
      hsource⟩

/--
Typed automorphic object data for theorem-facing Hasse-Weil provenance.

This replaces the former bare assertions that an automorphic object,
representation/newform, and automorphic L-function were merely "specified".
The data are still certificate-gated: this structure does not prove modularity,
automorphy, local Langlands compatibility, analytic continuation, or the
functional equation.
-/
structure AutomorphicProvenanceObjectData
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (_P : NumberFieldPlaceProductFormulaCertificate N)
    (L : HasseWeilLFunction K.field E) where
  AutomorphicObject :
    Type u
  automorphicObject :
    AutomorphicObject
  RepresentationOrModularForm :
    Type u
  representationOrModularForm :
    RepresentationOrModularForm
  AutomorphicLFunction :
    Type u
  automorphicLFunction :
    AutomorphicLFunction
  scope :
    AutomorphicProvenanceScope
  theoremData :
    AutomorphicScopeTheoremData N L scope
  theoremDataScopeVisible :
    theoremData.theoremScope = scope
  objectMatchesScope : Prop
  objectMatchesScopeCertified :
    objectMatchesScope
  representationRealizesObject : Prop
  representationRealizesObjectCertified :
    representationRealizesObject
  lFunctionRealizesRepresentation : Prop
  lFunctionRealizesRepresentationCertified :
    lFunctionRealizesRepresentation
  boundary : List String

/--
Automorphic/modularity provenance for the analytic Hasse-Weil L-function.

This certificate says that the analytic continuation and functional equation
used by the BSD-facing Hasse-Weil package come from a specified automorphic or
modular L-function, and that the local, archimedean, conductor, root-number,
coefficient-system, and central-germ normalizations agree with the Hasse-Weil
package.

It is still an interface certificate. It does not prove modularity, automorphy,
analytic continuation, the functional equation, local Langlands compatibility,
or BSD.
-/
structure HasseWeilAutomorphicProvenanceCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (L : HasseWeilLFunction K.field E) where
  analyticFunctionInterface :
    HasseWeilAnalyticFunctionInterfaceCertificate N P L
  analyticFunctionInterfaceCertified :
    analyticFunctionInterface.certifiedForBSD
  analyticContinuationUniqueness :
    HasseWeilAnalyticContinuationUniquenessCertificate
      N P L analyticFunctionInterface
  analyticContinuationUniquenessCertified :
    analyticContinuationUniqueness.certifiedForBSD
  scope : AutomorphicProvenanceScope
  automorphicData :
    AutomorphicProvenanceObjectData N P L
  automorphicDataScopeMatchesDeclaredScope :
    automorphicData.scope = scope
  automorphicCoefficientSystemMatchesHasseWeil : Prop
  automorphicCoefficientSystemMatchesHasseWeilCertified :
    automorphicCoefficientSystemMatchesHasseWeil
  finiteLocalFactorsMatchAutomorphicLocalFactors : Prop
  finiteLocalFactorsMatchAutomorphicLocalFactorsCertified :
    finiteLocalFactorsMatchAutomorphicLocalFactors
  archimedeanLocalFactorsMatchAutomorphicGammaFactors : Prop
  archimedeanLocalFactorsMatchAutomorphicGammaFactorsCertified :
    archimedeanLocalFactorsMatchAutomorphicGammaFactors
  conductorMatchesAutomorphicConductor : Prop
  conductorMatchesAutomorphicConductorCertified :
    conductorMatchesAutomorphicConductor
  rootNumberMatchesAutomorphicRootNumber : Prop
  rootNumberMatchesAutomorphicRootNumberCertified :
    rootNumberMatchesAutomorphicRootNumber
  analyticContinuationSuppliedByAutomorphicTheory : Prop
  analyticContinuationSuppliedByAutomorphicTheoryCertified :
    analyticContinuationSuppliedByAutomorphicTheory
  functionalEquationSuppliedByAutomorphicTheory : Prop
  functionalEquationSuppliedByAutomorphicTheoryCertified :
    functionalEquationSuppliedByAutomorphicTheory
  centralGermMatchesAutomorphicLFunctionAtSEqOne : Prop
  centralGermMatchesAutomorphicLFunctionAtSEqOneCertified :
    centralGermMatchesAutomorphicLFunctionAtSEqOne
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/--
BSD-facing quality predicate for automorphic provenance of the analytic
Hasse-Weil L-function.
-/
def HasseWeilAutomorphicProvenanceCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    (A : HasseWeilAutomorphicProvenanceCertificate N P L) :
  Prop :=
  A.analyticFunctionInterface.certifiedForBSD ∧
  A.analyticContinuationUniqueness.certifiedForBSD ∧
  A.automorphicData.objectMatchesScope ∧
  A.automorphicData.representationRealizesObject ∧
  A.automorphicData.lFunctionRealizesRepresentation ∧
  A.automorphicData.scope = A.scope ∧
  A.automorphicData.theoremData.theoremScope = A.scope ∧
  A.automorphicCoefficientSystemMatchesHasseWeil ∧
  A.finiteLocalFactorsMatchAutomorphicLocalFactors ∧
  A.archimedeanLocalFactorsMatchAutomorphicGammaFactors ∧
  A.conductorMatchesAutomorphicConductor ∧
  A.rootNumberMatchesAutomorphicRootNumber ∧
  A.analyticContinuationSuppliedByAutomorphicTheory ∧
  A.functionalEquationSuppliedByAutomorphicTheory ∧
  A.centralGermMatchesAutomorphicLFunctionAtSEqOne ∧
  A.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem HasseWeilAutomorphicProvenanceCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    (A : HasseWeilAutomorphicProvenanceCertificate N P L)
    (hsource :
      A.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    A.certifiedForBSD := by
  exact
    ⟨A.analyticFunctionInterfaceCertified,
      A.analyticContinuationUniquenessCertified,
      A.automorphicData.objectMatchesScopeCertified,
      A.automorphicData.representationRealizesObjectCertified,
      A.automorphicData.lFunctionRealizesRepresentationCertified,
      A.automorphicDataScopeMatchesDeclaredScope,
      by
        rw [A.automorphicData.theoremDataScopeVisible,
          A.automorphicDataScopeMatchesDeclaredScope],
      A.automorphicCoefficientSystemMatchesHasseWeilCertified,
      A.finiteLocalFactorsMatchAutomorphicLocalFactorsCertified,
      A.archimedeanLocalFactorsMatchAutomorphicGammaFactorsCertified,
      A.conductorMatchesAutomorphicConductorCertified,
      A.rootNumberMatchesAutomorphicRootNumberCertified,
      A.analyticContinuationSuppliedByAutomorphicTheoryCertified,
      A.functionalEquationSuppliedByAutomorphicTheoryCertified,
      A.centralGermMatchesAutomorphicLFunctionAtSEqOneCertified,
      hsource⟩

/--
Compatibility between the automorphic provenance certificate and its declared
scope.

This is still an interface certificate. It does not prove modularity or
automorphy.
-/
structure HasseWeilAutomorphicScopeCompatibilityCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (L : HasseWeilLFunction K.field E)
    (A : HasseWeilAutomorphicProvenanceCertificate N P L) where
  automorphicProvenanceCertified :
    A.certifiedForBSD
  scopeSupport :
    AutomorphicScopeSupportCertificate N L A.scope
  scopeSupportCertified :
    scopeSupport.certifiedForBSD
  scopeSourceMatchesAutomorphicObject : Prop
  scopeSourceMatchesAutomorphicObjectCertified :
    scopeSourceMatchesAutomorphicObject
  scopeSourceSuppliesAnalyticContinuation : Prop
  scopeSourceSuppliesAnalyticContinuationCertified :
    scopeSourceSuppliesAnalyticContinuation
  scopeSourceSuppliesFunctionalEquation : Prop
  scopeSourceSuppliesFunctionalEquationCertified :
    scopeSourceSuppliesFunctionalEquation
  boundary : List String

/-- BSD-facing quality predicate for automorphic scope compatibility. -/
def HasseWeilAutomorphicScopeCompatibilityCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    {A : HasseWeilAutomorphicProvenanceCertificate N P L}
    (S : HasseWeilAutomorphicScopeCompatibilityCertificate N P L A) :
    Prop :=
  A.certifiedForBSD ∧
  S.scopeSupport.certifiedForBSD ∧
  S.scopeSourceMatchesAutomorphicObject ∧
  S.scopeSourceSuppliesAnalyticContinuation ∧
  S.scopeSourceSuppliesFunctionalEquation

theorem HasseWeilAutomorphicScopeCompatibilityCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    {A : HasseWeilAutomorphicProvenanceCertificate N P L}
    (S : HasseWeilAutomorphicScopeCompatibilityCertificate N P L A) :
    S.certifiedForBSD := by
  exact
    ⟨S.automorphicProvenanceCertified,
      S.scopeSupportCertified,
      S.scopeSourceMatchesAutomorphicObjectCertified,
      S.scopeSourceSuppliesAnalyticContinuationCertified,
      S.scopeSourceSuppliesFunctionalEquationCertified⟩

/--
Kind of automorphic/modular source used to supply the theorem-facing
Hasse-Weil analytic continuation and functional equation.

This is a descriptor tag, not a construction of modular forms, Hilbert modular
forms, automorphic representations, local Langlands, analytic continuation, or
functional equations.
-/
inductive AutomorphicObjectKind where
  | classicalWeightTwoNewform
  | hilbertParallelWeightTwoNewform
  | cuspidalCohomologicalGLTwoRepresentation
  | externallySuppliedAutomorphicLFunction
deriving Repr, DecidableEq

/--
Typed descriptor for the automorphic/modular L-function object used by the
Hasse-Weil automorphic provenance package.

This is still an interface descriptor. It does not construct the automorphic
object, prove modularity or automorphy, prove local Langlands compatibility,
prove analytic continuation, prove the functional equation, or prove BSD.
-/
structure AutomorphicLFunctionObjectDescriptor
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (L : HasseWeilLFunction K.field E)
    (scope : AutomorphicProvenanceScope) where
  scopeSupport :
    AutomorphicScopeSupportCertificate N L scope
  scopeSupportCertified :
    scopeSupport.certifiedForBSD
  objectKind :
    AutomorphicObjectKind
  AutomorphicCarrier :
    Type u
  automorphicCarrier :
    AutomorphicCarrier
  CuspidalOrNewformStatus :
    Type u
  cuspidalOrNewformStatus :
    CuspidalOrNewformStatus
  CohomologicalWeightData :
    Type u
  cohomologicalWeightData :
    CohomologicalWeightData
  CoefficientFieldData :
    Type u
  coefficientFieldData :
    CoefficientFieldData
  CentralCharacterData :
    Type u
  centralCharacterData :
    CentralCharacterData
  LevelOrConductorData :
    Type u
  levelOrConductorData :
    LevelOrConductorData
  FiniteLocalComponent :
    Type u
  finiteLocalComponents :
    List FiniteLocalComponent
  ArchimedeanLocalComponent :
    Type u
  archimedeanLocalComponents :
    List ArchimedeanLocalComponent
  AutomorphicNormalizationData :
    Type u
  automorphicLFunctionNormalization :
    AutomorphicNormalizationData
  automorphicCarrierMatchesObjectKind : Prop
  automorphicCarrierMatchesObjectKindCertified :
    automorphicCarrierMatchesObjectKind
  cuspidalOrNewformStatusMatchesObjectKind : Prop
  cuspidalOrNewformStatusMatchesObjectKindCertified :
    cuspidalOrNewformStatusMatchesObjectKind
  cohomologicalWeightOrParallelWeightTwoMatchesObjectKind : Prop
  cohomologicalWeightOrParallelWeightTwoMatchesObjectKindCertified :
    cohomologicalWeightOrParallelWeightTwoMatchesObjectKind
  coefficientFieldActsOnCarrier : Prop
  coefficientFieldActsOnCarrierCertified :
    coefficientFieldActsOnCarrier
  centralCharacterMatchesCoefficientField : Prop
  centralCharacterMatchesCoefficientFieldCertified :
    centralCharacterMatchesCoefficientField
  levelOrConductorMatchesGlobalConductor : Prop
  levelOrConductorMatchesGlobalConductorCertified :
    levelOrConductorMatchesGlobalConductor
  finiteLocalComponentsMatchLocalFactors : Prop
  finiteLocalComponentsMatchLocalFactorsCertified :
    finiteLocalComponentsMatchLocalFactors
  archimedeanLocalComponentsMatchGammaFactors : Prop
  archimedeanLocalComponentsMatchGammaFactorsCertified :
    archimedeanLocalComponentsMatchGammaFactors
  automorphicLFunctionNormalizationMatchesCompletedLFunction : Prop
  automorphicLFunctionNormalizationMatchesCompletedLFunctionCertified :
    automorphicLFunctionNormalizationMatchesCompletedLFunction
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- BSD-facing quality predicate for typed automorphic L-function descriptors. -/
def AutomorphicLFunctionObjectDescriptor.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    {scope : AutomorphicProvenanceScope}
    (D : AutomorphicLFunctionObjectDescriptor N P L scope) :
    Prop :=
  D.scopeSupport.certifiedForBSD ∧
  D.automorphicCarrierMatchesObjectKind ∧
  D.cuspidalOrNewformStatusMatchesObjectKind ∧
  D.cohomologicalWeightOrParallelWeightTwoMatchesObjectKind ∧
  D.coefficientFieldActsOnCarrier ∧
  D.centralCharacterMatchesCoefficientField ∧
  D.levelOrConductorMatchesGlobalConductor ∧
  D.finiteLocalComponentsMatchLocalFactors ∧
  D.archimedeanLocalComponentsMatchGammaFactors ∧
  D.automorphicLFunctionNormalizationMatchesCompletedLFunction ∧
  D.sourceStatus =
    AnalyticCertificateSourceStatus.suppliedByCertificate

theorem AutomorphicLFunctionObjectDescriptor.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    {scope : AutomorphicProvenanceScope}
    (D : AutomorphicLFunctionObjectDescriptor N P L scope)
    (hsource :
      D.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    D.certifiedForBSD := by
  exact
    ⟨D.scopeSupportCertified,
      D.automorphicCarrierMatchesObjectKindCertified,
      D.cuspidalOrNewformStatusMatchesObjectKindCertified,
      D.cohomologicalWeightOrParallelWeightTwoMatchesObjectKindCertified,
      D.coefficientFieldActsOnCarrierCertified,
      D.centralCharacterMatchesCoefficientFieldCertified,
      D.levelOrConductorMatchesGlobalConductorCertified,
      D.finiteLocalComponentsMatchLocalFactorsCertified,
      D.archimedeanLocalComponentsMatchGammaFactorsCertified,
      D.automorphicLFunctionNormalizationMatchesCompletedLFunctionCertified,
      hsource⟩

/--
Compatibility between the Hasse-Weil automorphic provenance certificate and a
typed automorphic L-function object descriptor.

This is still an interface certificate. It does not prove modularity,
automorphy, local Langlands compatibility, analytic continuation, the functional
equation, or BSD.
-/
structure HasseWeilAutomorphicObjectCompatibilityCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (L : HasseWeilLFunction K.field E)
    (A : HasseWeilAutomorphicProvenanceCertificate N P L) where
  automorphicProvenanceCertified :
    A.certifiedForBSD
  scopeCompatibility :
    HasseWeilAutomorphicScopeCompatibilityCertificate N P L A
  scopeCompatibilityCertified :
    scopeCompatibility.certifiedForBSD
  objectDescriptor :
    AutomorphicLFunctionObjectDescriptor N P L A.scope
  objectDescriptorCertified :
    objectDescriptor.certifiedForBSD
  descriptorScopeMatchesProvenance : Prop
  descriptorScopeMatchesProvenanceCertified :
    descriptorScopeMatchesProvenance
  descriptorObjectMatchesAutomorphicObject : Prop
  descriptorObjectMatchesAutomorphicObjectCertified :
    descriptorObjectMatchesAutomorphicObject
  descriptorLFunctionMatchesAutomorphicLFunction : Prop
  descriptorLFunctionMatchesAutomorphicLFunctionCertified :
    descriptorLFunctionMatchesAutomorphicLFunction
  descriptorLocalComponentsMatchHasseWeilLocalFactors : Prop
  descriptorLocalComponentsMatchHasseWeilLocalFactorsCertified :
    descriptorLocalComponentsMatchHasseWeilLocalFactors
  descriptorArchimedeanComponentsMatchGammaFactors : Prop
  descriptorArchimedeanComponentsMatchGammaFactorsCertified :
    descriptorArchimedeanComponentsMatchGammaFactors
  descriptorConductorAndRootNumberMatchProvenance : Prop
  descriptorConductorAndRootNumberMatchProvenanceCertified :
    descriptorConductorAndRootNumberMatchProvenance
  descriptorCentralGermMatchesProvenance : Prop
  descriptorCentralGermMatchesProvenanceCertified :
    descriptorCentralGermMatchesProvenance
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- BSD-facing quality predicate for typed automorphic-object compatibility. -/
def HasseWeilAutomorphicObjectCompatibilityCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    {A : HasseWeilAutomorphicProvenanceCertificate N P L}
    (O : HasseWeilAutomorphicObjectCompatibilityCertificate N P L A) :
    Prop :=
  A.certifiedForBSD ∧
  O.scopeCompatibility.certifiedForBSD ∧
  O.objectDescriptor.certifiedForBSD ∧
  O.descriptorScopeMatchesProvenance ∧
  O.descriptorObjectMatchesAutomorphicObject ∧
  O.descriptorLFunctionMatchesAutomorphicLFunction ∧
  O.descriptorLocalComponentsMatchHasseWeilLocalFactors ∧
  O.descriptorArchimedeanComponentsMatchGammaFactors ∧
  O.descriptorConductorAndRootNumberMatchProvenance ∧
  O.descriptorCentralGermMatchesProvenance ∧
  O.sourceStatus =
    AnalyticCertificateSourceStatus.suppliedByCertificate

theorem HasseWeilAutomorphicObjectCompatibilityCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    {A : HasseWeilAutomorphicProvenanceCertificate N P L}
    (O : HasseWeilAutomorphicObjectCompatibilityCertificate N P L A)
    (hsource :
      O.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    O.certifiedForBSD := by
  exact
    ⟨O.automorphicProvenanceCertified,
      O.scopeCompatibilityCertified,
      O.objectDescriptorCertified,
      O.descriptorScopeMatchesProvenanceCertified,
      O.descriptorObjectMatchesAutomorphicObjectCertified,
      O.descriptorLFunctionMatchesAutomorphicLFunctionCertified,
      O.descriptorLocalComponentsMatchHasseWeilLocalFactorsCertified,
      O.descriptorArchimedeanComponentsMatchGammaFactorsCertified,
      O.descriptorConductorAndRootNumberMatchProvenanceCertified,
      O.descriptorCentralGermMatchesProvenanceCertified,
      hsource⟩

/--
Kind support for a typed automorphic L-function object descriptor.

This certificate says that the descriptor's `objectKind` is compatible with the
declared automorphic provenance scope, base field, curve class, weight data,
local components, archimedean components, conductor/root-number normalization,
and source theorem.

It is still an interface certificate. It does not construct modular forms,
Hilbert modular forms, automorphic representations, automorphic L-functions,
local Langlands compatibility, analytic continuation, the functional equation,
or BSD.
-/
structure AutomorphicObjectKindSupportCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (L : HasseWeilLFunction K.field E)
    {scope : AutomorphicProvenanceScope}
    (D : AutomorphicLFunctionObjectDescriptor N P L scope) where
  objectDescriptorCertified :
    D.certifiedForBSD
  objectKindMatchesScope : Prop
  objectKindMatchesScopeCertified :
    objectKindMatchesScope
  objectKindMatchesBaseField : Prop
  objectKindMatchesBaseFieldCertified :
    objectKindMatchesBaseField
  objectKindMatchesCurveClass : Prop
  objectKindMatchesCurveClassCertified :
    objectKindMatchesCurveClass
  weightDataMatchesObjectKind : Prop
  weightDataMatchesObjectKindCertified :
    weightDataMatchesObjectKind
  localComponentsMatchObjectKind : Prop
  localComponentsMatchObjectKindCertified :
    localComponentsMatchObjectKind
  archimedeanComponentsMatchObjectKind : Prop
  archimedeanComponentsMatchObjectKindCertified :
    archimedeanComponentsMatchObjectKind
  conductorRootNumberNormalizationMatchesObjectKind : Prop
  conductorRootNumberNormalizationMatchesObjectKindCertified :
    conductorRootNumberNormalizationMatchesObjectKind
  sourceTheoremMatchesObjectKind : Prop
  sourceTheoremMatchesObjectKindCertified :
    sourceTheoremMatchesObjectKind
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- BSD-facing quality predicate for automorphic object-kind support. -/
def AutomorphicObjectKindSupportCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    {scope : AutomorphicProvenanceScope}
    {D : AutomorphicLFunctionObjectDescriptor N P L scope}
    (S : AutomorphicObjectKindSupportCertificate N P L D) :
    Prop :=
  D.certifiedForBSD ∧
  S.objectKindMatchesScope ∧
  S.objectKindMatchesBaseField ∧
  S.objectKindMatchesCurveClass ∧
  S.weightDataMatchesObjectKind ∧
  S.localComponentsMatchObjectKind ∧
  S.archimedeanComponentsMatchObjectKind ∧
  S.conductorRootNumberNormalizationMatchesObjectKind ∧
  S.sourceTheoremMatchesObjectKind ∧
  S.sourceStatus =
    AnalyticCertificateSourceStatus.suppliedByCertificate

theorem AutomorphicObjectKindSupportCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    {scope : AutomorphicProvenanceScope}
    {D : AutomorphicLFunctionObjectDescriptor N P L scope}
    (S : AutomorphicObjectKindSupportCertificate N P L D)
    (hsource :
      S.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    S.certifiedForBSD := by
  exact
    ⟨S.objectDescriptorCertified,
      S.objectKindMatchesScopeCertified,
      S.objectKindMatchesBaseFieldCertified,
      S.objectKindMatchesCurveClassCertified,
      S.weightDataMatchesObjectKindCertified,
      S.localComponentsMatchObjectKindCertified,
      S.archimedeanComponentsMatchObjectKindCertified,
      S.conductorRootNumberNormalizationMatchesObjectKindCertified,
      S.sourceTheoremMatchesObjectKindCertified,
      hsource⟩

/--
Compatibility between the Hasse-Weil automorphic-object package and object-kind
support for its typed descriptor.

This is still an interface certificate. It does not prove modularity, automorphy,
local Langlands compatibility, analytic continuation, the functional equation,
or BSD.
-/
structure HasseWeilAutomorphicObjectKindCompatibilityCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (L : HasseWeilLFunction K.field E)
    (A : HasseWeilAutomorphicProvenanceCertificate N P L) where
  objectCompatibility :
    HasseWeilAutomorphicObjectCompatibilityCertificate N P L A
  objectCompatibilityCertified :
    objectCompatibility.certifiedForBSD
  objectKindSupport :
    AutomorphicObjectKindSupportCertificate
      N P L objectCompatibility.objectDescriptor
  objectKindSupportCertified :
    objectKindSupport.certifiedForBSD
  objectKindSupportUsesSameDescriptor : Prop
  objectKindSupportUsesSameDescriptorCertified :
    objectKindSupportUsesSameDescriptor
  objectKindSupportMatchesAutomorphicProvenance : Prop
  objectKindSupportMatchesAutomorphicProvenanceCertified :
    objectKindSupportMatchesAutomorphicProvenance
  objectKindSupportMatchesHasseWeilData : Prop
  objectKindSupportMatchesHasseWeilDataCertified :
    objectKindSupportMatchesHasseWeilData
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- BSD-facing quality predicate for automorphic object-kind compatibility. -/
def HasseWeilAutomorphicObjectKindCompatibilityCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    {A : HasseWeilAutomorphicProvenanceCertificate N P L}
    (Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate N P L A) :
    Prop :=
  Knd.objectCompatibility.certifiedForBSD ∧
  Knd.objectKindSupport.certifiedForBSD ∧
  Knd.objectKindSupportUsesSameDescriptor ∧
  Knd.objectKindSupportMatchesAutomorphicProvenance ∧
  Knd.objectKindSupportMatchesHasseWeilData ∧
  Knd.sourceStatus =
    AnalyticCertificateSourceStatus.suppliedByCertificate

theorem HasseWeilAutomorphicObjectKindCompatibilityCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    {A : HasseWeilAutomorphicProvenanceCertificate N P L}
    (Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate N P L A)
    (hsource :
      Knd.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    Knd.certifiedForBSD := by
  exact
    ⟨Knd.objectCompatibilityCertified,
      Knd.objectKindSupportCertified,
      Knd.objectKindSupportUsesSameDescriptorCertified,
      Knd.objectKindSupportMatchesAutomorphicProvenanceCertified,
      Knd.objectKindSupportMatchesHasseWeilDataCertified,
      hsource⟩

/--
Kind of theorem or external source supplying automorphic provenance for the
Hasse-Weil analytic package.

This is a descriptor tag, not a proof of modularity, automorphy, analytic
continuation, the functional equation, local Langlands compatibility, or BSD.
-/
inductive AutomorphicAnalyticSourceKind where
  | classicalModularityOverQSource
  | hilbertModularityTotallyRealSource
  | glTwoAutomorphyOverNumberFieldSource
  | baseChangeOrDescentSource
  | externallySuppliedAnalyticSource
deriving Repr, DecidableEq

/--
Typed descriptor for the theorem or external source supplying automorphic
provenance.

This is still an interface descriptor. It does not prove modularity, automorphy,
analytic continuation, the functional equation, local Langlands compatibility,
or BSD.
-/
structure AutomorphicAnalyticSourceDescriptor
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (L : HasseWeilLFunction K.field E)
    (A : HasseWeilAutomorphicProvenanceCertificate N P L)
    (Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate N P L A) where
  automorphicProvenanceCertified :
    A.certifiedForBSD
  objectKindCompatibilityCertified :
    Knd.certifiedForBSD
  sourceKind :
    AutomorphicAnalyticSourceKind
  SourceStatement :
    Type u
  sourceStatement :
    SourceStatement
  SourceHypotheses :
    Type u
  sourceHypotheses :
    SourceHypotheses
  sourceStatementMatchesSourceKind : Prop
  sourceStatementMatchesSourceKindCertified :
    sourceStatementMatchesSourceKind
  sourceHypothesesTypeMatchesStatement : Prop
  sourceHypothesesTypeMatchesStatementCertified :
    sourceHypothesesTypeMatchesStatement
  sourceHypothesesMatchScope : Prop
  sourceHypothesesMatchScopeCertified :
    sourceHypothesesMatchScope
  sourceHypothesesMatchObjectKind : Prop
  sourceHypothesesMatchObjectKindCertified :
    sourceHypothesesMatchObjectKind
  curveSatisfiesSourceHypotheses : Prop
  curveSatisfiesSourceHypothesesCertified :
    curveSatisfiesSourceHypotheses
  sourceConclusionSuppliesAutomorphicObject : Prop
  sourceConclusionSuppliesAutomorphicObjectCertified :
    sourceConclusionSuppliesAutomorphicObject
  sourceConclusionSuppliesAnalyticContinuation : Prop
  sourceConclusionSuppliesAnalyticContinuationCertified :
    sourceConclusionSuppliesAnalyticContinuation
  sourceConclusionSuppliesFunctionalEquation : Prop
  sourceConclusionSuppliesFunctionalEquationCertified :
    sourceConclusionSuppliesFunctionalEquation
  sourceConclusionSuppliesLocalGlobalCompatibility : Prop
  sourceConclusionSuppliesLocalGlobalCompatibilityCertified :
    sourceConclusionSuppliesLocalGlobalCompatibility
  sourceNormalizationMatchesObjectDescriptor : Prop
  sourceNormalizationMatchesObjectDescriptorCertified :
    sourceNormalizationMatchesObjectDescriptor
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- BSD-facing quality predicate for the typed automorphic analytic source. -/
def AutomorphicAnalyticSourceDescriptor.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    {A : HasseWeilAutomorphicProvenanceCertificate N P L}
    {Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate N P L A}
    (D : AutomorphicAnalyticSourceDescriptor N P L A Knd) :
    Prop :=
  A.certifiedForBSD ∧
  Knd.certifiedForBSD ∧
  D.sourceStatementMatchesSourceKind ∧
  D.sourceHypothesesTypeMatchesStatement ∧
  D.sourceHypothesesMatchScope ∧
  D.sourceHypothesesMatchObjectKind ∧
  D.curveSatisfiesSourceHypotheses ∧
  D.sourceConclusionSuppliesAutomorphicObject ∧
  D.sourceConclusionSuppliesAnalyticContinuation ∧
  D.sourceConclusionSuppliesFunctionalEquation ∧
  D.sourceConclusionSuppliesLocalGlobalCompatibility ∧
  D.sourceNormalizationMatchesObjectDescriptor ∧
  D.sourceStatus =
    AnalyticCertificateSourceStatus.suppliedByCertificate

theorem AutomorphicAnalyticSourceDescriptor.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    {A : HasseWeilAutomorphicProvenanceCertificate N P L}
    {Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate N P L A}
    (D : AutomorphicAnalyticSourceDescriptor N P L A Knd)
    (hsource :
      D.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    D.certifiedForBSD := by
  exact
    ⟨D.automorphicProvenanceCertified,
      D.objectKindCompatibilityCertified,
      D.sourceStatementMatchesSourceKindCertified,
      D.sourceHypothesesTypeMatchesStatementCertified,
      D.sourceHypothesesMatchScopeCertified,
      D.sourceHypothesesMatchObjectKindCertified,
      D.curveSatisfiesSourceHypothesesCertified,
      D.sourceConclusionSuppliesAutomorphicObjectCertified,
      D.sourceConclusionSuppliesAnalyticContinuationCertified,
      D.sourceConclusionSuppliesFunctionalEquationCertified,
      D.sourceConclusionSuppliesLocalGlobalCompatibilityCertified,
      D.sourceNormalizationMatchesObjectDescriptorCertified,
      hsource⟩

/--
Compatibility between the Hasse-Weil automorphic package and the typed source
descriptor.

This is still an interface certificate. It does not prove modularity, automorphy,
analytic continuation, the functional equation, local Langlands compatibility,
or BSD.
-/
structure HasseWeilAutomorphicAnalyticSourceCompatibilityCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (L : HasseWeilLFunction K.field E)
    (A : HasseWeilAutomorphicProvenanceCertificate N P L)
    (Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate N P L A) where
  sourceDescriptor :
    AutomorphicAnalyticSourceDescriptor N P L A Knd
  sourceDescriptorCertified :
    sourceDescriptor.certifiedForBSD
  sourceMatchesAutomorphicProvenance : Prop
  sourceMatchesAutomorphicProvenanceCertified :
    sourceMatchesAutomorphicProvenance
  sourceMatchesObjectKindSupport : Prop
  sourceMatchesObjectKindSupportCertified :
    sourceMatchesObjectKindSupport
  sourceSuppliesSameAnalyticContinuation : Prop
  sourceSuppliesSameAnalyticContinuationCertified :
    sourceSuppliesSameAnalyticContinuation
  sourceSuppliesSameFunctionalEquation : Prop
  sourceSuppliesSameFunctionalEquationCertified :
    sourceSuppliesSameFunctionalEquation
  sourceSuppliesSameLocalGlobalData : Prop
  sourceSuppliesSameLocalGlobalDataCertified :
    sourceSuppliesSameLocalGlobalData
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- BSD-facing quality predicate for automorphic analytic-source compatibility. -/
def HasseWeilAutomorphicAnalyticSourceCompatibilityCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    {A : HasseWeilAutomorphicProvenanceCertificate N P L}
    {Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate N P L A}
    (S : HasseWeilAutomorphicAnalyticSourceCompatibilityCertificate
      N P L A Knd) :
    Prop :=
  S.sourceDescriptor.certifiedForBSD ∧
  S.sourceMatchesAutomorphicProvenance ∧
  S.sourceMatchesObjectKindSupport ∧
  S.sourceSuppliesSameAnalyticContinuation ∧
  S.sourceSuppliesSameFunctionalEquation ∧
  S.sourceSuppliesSameLocalGlobalData ∧
  S.sourceStatus =
    AnalyticCertificateSourceStatus.suppliedByCertificate

theorem HasseWeilAutomorphicAnalyticSourceCompatibilityCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    {A : HasseWeilAutomorphicProvenanceCertificate N P L}
    {Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate N P L A}
    (S : HasseWeilAutomorphicAnalyticSourceCompatibilityCertificate N P L A Knd)
    (hsource :
      S.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    S.certifiedForBSD := by
  exact
    ⟨S.sourceDescriptorCertified,
      S.sourceMatchesAutomorphicProvenanceCertified,
      S.sourceMatchesObjectKindSupportCertified,
      S.sourceSuppliesSameAnalyticContinuationCertified,
      S.sourceSuppliesSameFunctionalEquationCertified,
      S.sourceSuppliesSameLocalGlobalDataCertified,
      hsource⟩

/--
Source-kind support for a typed automorphic analytic-source descriptor.

This certificate says that the descriptor's `sourceKind` is compatible with the
declared automorphic scope, typed automorphic object kind, source statement,
source hypotheses, curve class, analytic continuation, functional equation, and
local/global normalization.

It is still an interface certificate. It does not prove modularity, automorphy,
analytic continuation, the functional equation, local Langlands compatibility,
or BSD.
-/
structure AutomorphicAnalyticSourceKindSupportCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (L : HasseWeilLFunction K.field E)
    {A : HasseWeilAutomorphicProvenanceCertificate N P L}
    {Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate N P L A}
    (D : AutomorphicAnalyticSourceDescriptor N P L A Knd) where
  sourceDescriptorCertified :
    D.certifiedForBSD
  sourceKindMatchesScope : Prop
  sourceKindMatchesScopeCertified :
    sourceKindMatchesScope
  sourceKindMatchesObjectKind : Prop
  sourceKindMatchesObjectKindCertified :
    sourceKindMatchesObjectKind
  sourceKindMatchesBaseField : Prop
  sourceKindMatchesBaseFieldCertified :
    sourceKindMatchesBaseField
  sourceKindMatchesCurveClass : Prop
  sourceKindMatchesCurveClassCertified :
    sourceKindMatchesCurveClass
  sourceKindMatchesSourceStatement : Prop
  sourceKindMatchesSourceStatementCertified :
    sourceKindMatchesSourceStatement
  sourceKindMatchesSourceHypotheses : Prop
  sourceKindMatchesSourceHypothesesCertified :
    sourceKindMatchesSourceHypotheses
  sourceKindSuppliesExpectedAnalyticOutputs : Prop
  sourceKindSuppliesExpectedAnalyticOutputsCertified :
    sourceKindSuppliesExpectedAnalyticOutputs
  sourceKindMatchesLocalGlobalNormalization : Prop
  sourceKindMatchesLocalGlobalNormalizationCertified :
    sourceKindMatchesLocalGlobalNormalization
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- BSD-facing quality predicate for automorphic analytic-source-kind support. -/
def AutomorphicAnalyticSourceKindSupportCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    {A : HasseWeilAutomorphicProvenanceCertificate N P L}
    {Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate N P L A}
    {D : AutomorphicAnalyticSourceDescriptor N P L A Knd}
    (S : AutomorphicAnalyticSourceKindSupportCertificate N P L D) :
    Prop :=
  D.certifiedForBSD ∧
  S.sourceKindMatchesScope ∧
  S.sourceKindMatchesObjectKind ∧
  S.sourceKindMatchesBaseField ∧
  S.sourceKindMatchesCurveClass ∧
  S.sourceKindMatchesSourceStatement ∧
  S.sourceKindMatchesSourceHypotheses ∧
  S.sourceKindSuppliesExpectedAnalyticOutputs ∧
  S.sourceKindMatchesLocalGlobalNormalization ∧
  S.sourceStatus =
    AnalyticCertificateSourceStatus.suppliedByCertificate

theorem AutomorphicAnalyticSourceKindSupportCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    {A : HasseWeilAutomorphicProvenanceCertificate N P L}
    {Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate N P L A}
    {D : AutomorphicAnalyticSourceDescriptor N P L A Knd}
    (S : AutomorphicAnalyticSourceKindSupportCertificate N P L D)
    (hsource :
      S.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    S.certifiedForBSD := by
  exact
    ⟨S.sourceDescriptorCertified,
      S.sourceKindMatchesScopeCertified,
      S.sourceKindMatchesObjectKindCertified,
      S.sourceKindMatchesBaseFieldCertified,
      S.sourceKindMatchesCurveClassCertified,
      S.sourceKindMatchesSourceStatementCertified,
      S.sourceKindMatchesSourceHypothesesCertified,
      S.sourceKindSuppliesExpectedAnalyticOutputsCertified,
      S.sourceKindMatchesLocalGlobalNormalizationCertified,
      hsource⟩

/--
Compatibility between the Hasse-Weil automorphic analytic-source package and
source-kind support for its typed descriptor.

This is still an interface certificate. It does not prove modularity, automorphy,
analytic continuation, the functional equation, local Langlands compatibility,
or BSD.
-/
structure HasseWeilAutomorphicAnalyticSourceKindCompatibilityCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (L : HasseWeilLFunction K.field E)
    (A : HasseWeilAutomorphicProvenanceCertificate N P L)
    (Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate N P L A) where
  analyticSource :
    HasseWeilAutomorphicAnalyticSourceCompatibilityCertificate N P L A Knd
  analyticSourceCertified :
    analyticSource.certifiedForBSD
  sourceKindSupport :
    AutomorphicAnalyticSourceKindSupportCertificate
      N P L analyticSource.sourceDescriptor
  sourceKindSupportCertified :
    sourceKindSupport.certifiedForBSD
  sourceKindSupportUsesSameDescriptor : Prop
  sourceKindSupportUsesSameDescriptorCertified :
    sourceKindSupportUsesSameDescriptor
  sourceKindSupportMatchesAutomorphicProvenance : Prop
  sourceKindSupportMatchesAutomorphicProvenanceCertified :
    sourceKindSupportMatchesAutomorphicProvenance
  sourceKindSupportMatchesHasseWeilData : Prop
  sourceKindSupportMatchesHasseWeilDataCertified :
    sourceKindSupportMatchesHasseWeilData
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- BSD-facing quality predicate for analytic-source-kind compatibility. -/
def HasseWeilAutomorphicAnalyticSourceKindCompatibilityCertificate.certifiedForBSD
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    {A : HasseWeilAutomorphicProvenanceCertificate N P L}
    {Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate N P L A}
    (S : HasseWeilAutomorphicAnalyticSourceKindCompatibilityCertificate
      N P L A Knd) :
    Prop :=
  S.analyticSource.certifiedForBSD ∧
  S.sourceKindSupport.certifiedForBSD ∧
  S.sourceKindSupportUsesSameDescriptor ∧
  S.sourceKindSupportMatchesAutomorphicProvenance ∧
  S.sourceKindSupportMatchesHasseWeilData ∧
  S.sourceStatus =
    AnalyticCertificateSourceStatus.suppliedByCertificate

theorem HasseWeilAutomorphicAnalyticSourceKindCompatibilityCertificate.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {N : NumberFieldCertificate K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {L : HasseWeilLFunction K.field E}
    {A : HasseWeilAutomorphicProvenanceCertificate N P L}
    {Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate N P L A}
    (S : HasseWeilAutomorphicAnalyticSourceKindCompatibilityCertificate
      N P L A Knd)
    (hsource :
      S.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    S.certifiedForBSD := by
  exact
    ⟨S.analyticSourceCertified,
      S.sourceKindSupportCertified,
      S.sourceKindSupportUsesSameDescriptorCertified,
      S.sourceKindSupportMatchesAutomorphicProvenanceCertified,
      S.sourceKindSupportMatchesHasseWeilDataCertified,
      hsource⟩

/-- Order-of-vanishing certificate at a symbolic point, usually `s = 1`. -/
structure OrderOfVanishingCertificate
    (L : HasseWeilLFunction K E) where
  point : SymbolicComplexVariable
  order : Nat
  certifiedByStatus : AnalyticCertificateSourceStatus
  boundary : List String

/--
Order-of-vanishing certificate quality required by theorem-facing BSD input.

This is still a certificate predicate, not a proof of analytic continuation or
of an analytic L-function theory.
-/
def OrderOfVanishingCertificate.certifiedForBSD
    {L : HasseWeilLFunction K E}
    (O : OrderOfVanishingCertificate L) :
    Prop :=
  O.point = SymbolicComplexVariable.sEqOne ∧
  O.certifiedByStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem sEqOne_point_visible :
    SymbolicComplexVariable.sEqOne.point = .sEqOne := by
  rfl

/-- Extract a certified order of vanishing. -/
def orderOfVanishing
    {L : HasseWeilLFunction K E}
    (C : OrderOfVanishingCertificate L) :
    Nat :=
  C.order

/-- Completed L-function shape from global metadata. -/
def completedLFunctionShape
    (L : HasseWeilLFunction K E) :
    CompletedLFunctionShape :=
  L.completedShape

end EllipticCurve
end Surface.Arithmetic
```
