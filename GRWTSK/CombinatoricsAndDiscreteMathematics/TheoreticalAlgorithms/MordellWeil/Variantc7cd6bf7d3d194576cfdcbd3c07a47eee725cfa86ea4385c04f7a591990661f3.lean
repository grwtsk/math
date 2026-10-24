-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MordellWeilGroup.Variant30bc6adcedef5b462db6c20e1ed02e2fda094d70d0b0ffc519692eb4fd05df58","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"30bc6adcedef5b462db6c20e1ed02e2fda094d70d0b0ffc519692eb4fd05df58","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MordellWeilGroup.Variant30bc6adcedef5b462db6c20e1ed02e2fda094d70d0b0ffc519692eb4fd05df58","mathematical_subject":"Computation.DataStructures","original_sha256":"30bc6adcedef5b462db6c20e1ed02e2fda094d70d0b0ffc519692eb4fd05df58","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Arithmetic/EllipticCurve/MordellWeil.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Arithmetic.EllipticCurve.GroupLaw
import Surface.Arithmetic.GaloisCohomology
import Surface.Arithmetic.GaloisCohomology.Kummer
import Surface.Arithmetic.GaloisCohomology.SelmerExact


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MordellWeilGroup.Variant30bc6adcedef5b462db6c20e1ed02e2fda094d70d0b0ffc519692eb4fd05df58

namespace Surface.Arithmetic
namespace EllipticCurve

universe u

open GaloisCohomology

/-!
# Mordell-Weil group interface

The Mordell-Weil theorem is represented by certificate data.  Rank is not
inferred from sample labels or topological pictures.
-/

/-- A Mordell-Weil group descriptor attached to a certified group law. -/
structure MordellWeilGroup where
  K : FieldLike.{u}
  curve : ShortWeierstrass K
  groupLaw : GroupLawCertificate curve
  baseFieldLabel : String
  boundary : List String

/-- Typed status for a Mordell-Weil decomposition claim. -/
inductive MordellWeilDecompositionStatus where
  | suppliedByCertificate
  | finiteExamplePlaceholder
  | unspecified
deriving Repr, DecidableEq

/-- Typed status for the source of a Mordell-Weil theorem interface. -/
inductive MordellWeilSourceStatus where
  | suppliedByCertificate
  | assumedInterface
  | unspecified
deriving Repr, DecidableEq

/-- Typed generator record for a Mordell-Weil finite-generation interface. -/
structure MordellWeilGenerator where
  index : Nat
  boundary : List String
deriving Repr, DecidableEq

/-- Finitely generated abelian decomposition certificate. -/
structure FinitelyGeneratedAbelianCertificate
    (MW : MordellWeilGroup.{u}) where
  rankValue : Nat
  freeGenerators : List MordellWeilGenerator
  torsionGenerators : List MordellWeilGenerator
  decompositionStatus : MordellWeilDecompositionStatus
  freeGeneratorCount :
    freeGenerators.length = rankValue
  mordellWeilSourceStatus : MordellWeilSourceStatus
  boundary : List String

/-- Mordell-Weil rank extracted from a finite-generation certificate. -/
def rank
    {MW : MordellWeilGroup.{u}}
    (C : FinitelyGeneratedAbelianCertificate MW) :
    Nat :=
  C.rankValue

/-- Torsion generator metadata extracted from a finite-generation certificate. -/
def torsionGenerators
    {MW : MordellWeilGroup.{u}}
    (C : FinitelyGeneratedAbelianCertificate MW) :
    List MordellWeilGenerator :=
  C.torsionGenerators

theorem rank_is_number_of_free_generators
    {MW : MordellWeilGroup.{u}}
    (C : FinitelyGeneratedAbelianCertificate MW) :
    C.freeGenerators.length = rank C :=
  C.freeGeneratorCount

/-- Finite-generation certificate quality required by theorem-facing BSD input. -/
def FinitelyGeneratedAbelianCertificate.certifiedForBSD
    {MW : MordellWeilGroup.{u}}
    (C : FinitelyGeneratedAbelianCertificate MW) :
    Prop :=
  C.decompositionStatus =
    MordellWeilDecompositionStatus.suppliedByCertificate ∧
  C.mordellWeilSourceStatus =
    MordellWeilSourceStatus.suppliedByCertificate

/--
A theorem-facing Mordell-Weil interface over a smooth lawful short-Weierstrass curve.

This does not prove the Mordell-Weil theorem and does not construct rational
points. It ties the existing finite-generation certificate to a smooth group-law
gate, so BSD-facing rank data cannot float independently of the smooth curve.
-/
structure SmoothMordellWeilInterface
    (C : LawfulShortWeierstrass.{u}) where
  smoothGroupLaw : SmoothGroupLawCertificate C
  MW : MordellWeilGroup.{u}
  identifiesPointsWithMW : Prop
  identifiesPointsWithMWCertified : identifiesPointsWithMW
  finiteGeneration : FinitelyGeneratedAbelianCertificate MW
  boundary : List String

/--
Typed rational-point locus data for the smooth Mordell-Weil interface.

The rational locus is now an actual predicate on the constructed
short-Weierstrass point type.  The Prop fields record the mathematical
obligations tying that predicate to coordinates, the point at infinity, the
curve equation, and the supplied group law.
-/
structure RationalPointLocusData
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C) where
  rationalPoint :
    Point C.E → Prop
  affineRationalCoordinatesInBaseField : Prop
  affineRationalCoordinatesInBaseFieldCertified :
    affineRationalCoordinatesInBaseField
  projectiveRationalCoordinatesInBaseField : Prop
  projectiveRationalCoordinatesInBaseFieldCertified :
    projectiveRationalCoordinatesInBaseField
  pointAtInfinityRational :
    rationalPoint Point.infinity
  curveEquationForRationalPoints :
    ∀ P : Point C.E, rationalPoint P → OnCurve C.E P
  rationalPointsSatisfyCurveEquation : Prop
  rationalPointsSatisfyCurveEquationCertified :
    rationalPointsSatisfyCurveEquation
  suppliedAdditionPreservesRationalPoints : Prop
  suppliedAdditionPreservesRationalPointsCertified :
    suppliedAdditionPreservesRationalPoints
  suppliedNegationPreservesRationalPoints : Prop
  suppliedNegationPreservesRationalPointsCertified :
    suppliedNegationPreservesRationalPoints
  rationalPointLocusMatchesMWCarrier : Prop
  rationalPointLocusMatchesMWCarrierCertified :
    rationalPointLocusMatchesMWCarrier
  compatibleWithSmoothGroupLaw : Prop
  compatibleWithSmoothGroupLawCertified :
    compatibleWithSmoothGroupLaw
  boundary : List String

/--
Rational-point locus provenance for the smooth Mordell-Weil interface.

This remains certificate-gated: it does not construct a scheme-valued functor of
points.  It now carries a typed point predicate rather than a bare assertion
that such a predicate was specified.
-/
structure RationalPointLocusCertificate
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C) where
  locusData :
    RationalPointLocusData M
  sourceStatus : MordellWeilSourceStatus
  boundary : List String

/-- Rank extracted from the smooth Mordell-Weil interface. -/
def SmoothMordellWeilInterface.rank
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C) :
    Nat :=
  M.finiteGeneration.rankValue

/--
The raw Mordell-Weil descriptor is attached to the same field, curve, and
group-law certificate as the smooth lawful short-Weierstrass gate.

This is an ownership predicate, not a construction of rational points.
-/
def SmoothMordellWeilInterface.ownsUnderlyingCurve
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C) :
    Prop :=
  M.MW.K = C.K.field ∧
  HEq M.MW.curve C.E ∧
  HEq M.MW.groupLaw M.smoothGroupLaw.groupLaw

/-- BSD-quality rational-point locus provenance. -/
def RationalPointLocusCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (R : RationalPointLocusCertificate M) :
    Prop :=
  R.locusData.affineRationalCoordinatesInBaseField ∧
  R.locusData.projectiveRationalCoordinatesInBaseField ∧
  R.locusData.rationalPoint Point.infinity ∧
  R.locusData.rationalPointsSatisfyCurveEquation ∧
  R.locusData.suppliedAdditionPreservesRationalPoints ∧
  R.locusData.suppliedNegationPreservesRationalPoints ∧
  R.locusData.rationalPointLocusMatchesMWCarrier ∧
  R.locusData.compatibleWithSmoothGroupLaw ∧
  R.sourceStatus = MordellWeilSourceStatus.suppliedByCertificate

theorem RationalPointLocusCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (R : RationalPointLocusCertificate M)
    (hsource :
      R.sourceStatus = MordellWeilSourceStatus.suppliedByCertificate) :
    R.certifiedForBSD := by
  exact
    ⟨R.locusData.affineRationalCoordinatesInBaseFieldCertified,
      R.locusData.projectiveRationalCoordinatesInBaseFieldCertified,
      R.locusData.pointAtInfinityRational,
      R.locusData.rationalPointsSatisfyCurveEquationCertified,
      R.locusData.suppliedAdditionPreservesRationalPointsCertified,
      R.locusData.suppliedNegationPreservesRationalPointsCertified,
      R.locusData.rationalPointLocusMatchesMWCarrierCertified,
      R.locusData.compatibleWithSmoothGroupLawCertified,
      hsource⟩

/-- Existence of BSD-quality rational-point locus provenance. -/
def SmoothMordellWeilInterface.rationalPointLocusCertifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C) :
    Prop :=
  ∃ R : RationalPointLocusCertificate M,
    R.certifiedForBSD

/--
Typed Kummer-descent data attached to a constructed finite Selmer problem.

The quotient domain is the domain of the finite abstract global Kummer map.
This structure ties the elliptic-curve point data to that domain by an explicit
quotient-class map and identifies the Kummer class map with the constructed
finite-cohomology `FiniteH1` map.
-/
structure KummerDescentData
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C)
    (n : Nat)
    (P : GaloisCohomology.FiniteSelmerProblem.{u, u, u})
    (SK : FiniteKummerSelmerData P) where
  multiplicationByLevel :
    Point C.E → Point C.E
  multiplicationByLevelMatchesN : Prop
  multiplicationByLevelMatchesNCertified :
    multiplicationByLevelMatchesN
  quotientClass :
    Point C.E → SK.globalKummer.Domain
  quotientByMultiplicationIdentified : Prop
  quotientByMultiplicationIdentifiedCertified :
    quotientByMultiplicationIdentified
  kummerClass :
    SK.globalKummer.Domain →
      GaloisCohomology.FiniteH1 P.G P.A P.ρG
  kummerClass_eq_globalKummer :
    ∀ x, kummerClass x = SK.globalKummer.toH1 x
  kummerKernelIsMultiplicationImage : Prop
  kummerKernelIsMultiplicationImageCertified :
    kummerKernelIsMultiplicationImage
  locallyTrivialObstruction :
    GaloisCohomology.FiniteH1 P.G P.A P.ρG → Prop
  locallyTrivialObstructionMatchesSelmerKernel : Prop
  locallyTrivialObstructionMatchesSelmerKernelCertified :
    locallyTrivialObstructionMatchesSelmerKernel
  boundary : List String

/--
Constructed injection of the finite Mordell-Weil quotient domain into the
constructed Selmer subgroup.

This replaces the former bare injection gate.  The source is the domain of the
finite abstract global Kummer map, and the target is the already-built Selmer
subgroup attached to the finite `H1` restriction problem.
-/
structure ConstructedSelmerInjectionData
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C)
    (n : Nat)
    (P : GaloisCohomology.FiniteSelmerProblem.{u, u, u})
    (SK : FiniteKummerSelmerData P)
    (_D : KummerDescentData M n P SK) where
  quotientToSelmerClass :
    SK.globalKummer.Domain →
      GaloisCohomology.FiniteH1 P.G P.A P.ρG
  quotientToSelmerClass_eq_globalKummer :
    ∀ x, quotientToSelmerClass x = SK.globalKummer.toH1 x
  quotientToSelmerClass_mem :
    ∀ x, P.selmerSubgroup.carrier (quotientToSelmerClass x)
  injectiveIntoConstructedSelmer :
    ∀ x y,
      quotientToSelmerClass x = quotientToSelmerClass y →
        x = y
  boundary : List String

/--
Elliptic-descent compatibility around the constructed finite Selmer exactness map.

The exactness object itself is the canonical finite
`GaloisCohomology.FiniteSelmerExactSequenceData`.  This wrapper only connects
the abstract finite obstruction kernel to the descent obstruction predicate used
by the Mordell-Weil interface.  It does not claim the arithmetic Sha exact
sequence.
-/
structure ConstructedSelmerExactnessData
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C)
    (n : Nat)
    (P : GaloisCohomology.FiniteSelmerProblem.{u, u, u})
    (SK : FiniteKummerSelmerData P)
    (D : KummerDescentData M n P SK) where
  finiteExactness :
    GaloisCohomology.FiniteSelmerExactSequenceData SK
  matchesDescentObstruction :
    ∀ c hc,
      D.locallyTrivialObstruction c ↔
        finiteExactness.inObstructionKernel
          { h1Class := c, inSelmer := hc }
  boundary : List String

namespace ConstructedSelmerExactnessData

/-- The finite Selmer class associated to a class and membership proof. -/
def selmerClass
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {n : Nat}
    {P : GaloisCohomology.FiniteSelmerProblem.{u, u, u}}
    {SK : FiniteKummerSelmerData P}
    {D : KummerDescentData M n P SK}
    (_E : ConstructedSelmerExactnessData M n P SK D)
    (c : GaloisCohomology.FiniteH1 P.G P.A P.ρG)
    (hc : P.selmerSubgroup.carrier c) :
    GaloisCohomology.FiniteSelmerClass P where
  h1Class := c
  inSelmer := hc

/-- Locally trivial means kernel membership for the canonical finite obstruction map. -/
def locallyTrivial
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {n : Nat}
    {P : GaloisCohomology.FiniteSelmerProblem.{u, u, u}}
    {SK : FiniteKummerSelmerData P}
    {D : KummerDescentData M n P SK}
    (E : ConstructedSelmerExactnessData M n P SK D)
    (c : GaloisCohomology.FiniteH1 P.G P.A P.ρG)
    (hc : P.selmerSubgroup.carrier c) :
    Prop :=
  E.finiteExactness.inObstructionKernel (E.selmerClass c hc)

/-- The finite obstruction kernel is exactly the global Kummer image. -/
theorem kernel_iff_kummerImage
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {n : Nat}
    {P : GaloisCohomology.FiniteSelmerProblem.{u, u, u}}
    {SK : FiniteKummerSelmerData P}
    {D : KummerDescentData M n P SK}
    (E : ConstructedSelmerExactnessData M n P SK D)
    (c : GaloisCohomology.FiniteH1 P.G P.A P.ρG)
    (hc : P.selmerSubgroup.carrier c) :
    E.locallyTrivial c hc ↔
      ∃ x : SK.globalKummer.Domain,
        SK.globalKummer.toH1 x = c := by
  exact E.finiteExactness.obstructionKernel_iff_globalKummerImage
    (E.selmerClass c hc)

/-- The elliptic descent obstruction matches finite obstruction-kernel membership. -/
theorem matchesDescentObstruction_iff
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {n : Nat}
    {P : GaloisCohomology.FiniteSelmerProblem.{u, u, u}}
    {SK : FiniteKummerSelmerData P}
    {D : KummerDescentData M n P SK}
    (E : ConstructedSelmerExactnessData M n P SK D)
    (c : GaloisCohomology.FiniteH1 P.G P.A P.ρG)
    (hc : P.selmerSubgroup.carrier c) :
    D.locallyTrivialObstruction c ↔ E.locallyTrivial c hc :=
  E.matchesDescentObstruction c hc

end ConstructedSelmerExactnessData

/--
Kummer/Selmer exact-sequence provenance for weak Mordell-Weil descent.

This certificate now references the finite abstract Galois-cohomology/Selmer
construction in `Surface.Arithmetic.GaloisCohomology`: the Selmer object, local
`FiniteH1` conditions, Kummer maps, and global-to-local compatibility are concrete
finite cohomological data.

It is still not a number-field descent theorem. It does not construct absolute
Galois groups, local fields, elliptic-curve Kummer maps, Tate-Shafarevich
groups, or BSD.
-/
structure KummerSelmerExactSequenceCertificate
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C)
    (n : Nat) where
  rationalPointLocus :
    RationalPointLocusCertificate M
  rationalPointLocusCertified :
    rationalPointLocus.certifiedForBSD
  descentLevelAtLeastTwo : Prop
  descentLevelAtLeastTwoCertified :
    descentLevelAtLeastTwo
  finiteSelmerProblem :
    GaloisCohomology.FiniteSelmerProblem.{u, u, u}
  finiteKummerSelmer :
    FiniteKummerSelmerData finiteSelmerProblem
  kummerDescent :
    KummerDescentData M n finiteSelmerProblem finiteKummerSelmer
  constructedSelmerInjection :
    ConstructedSelmerInjectionData
      M n finiteSelmerProblem finiteKummerSelmer kummerDescent
  selmerFinite : Prop
  selmerFiniteCertified :
    selmerFinite
  constructedSelmerExactness :
    ConstructedSelmerExactnessData
      M n finiteSelmerProblem finiteKummerSelmer kummerDescent
  compatibleWithBaseNumberField : Prop
  compatibleWithBaseNumberFieldCertified :
    compatibleWithBaseNumberField
  compatibleWithSmoothGroupLaw : Prop
  compatibleWithSmoothGroupLawCertified :
    compatibleWithSmoothGroupLaw
  sourceStatus : MordellWeilSourceStatus
  boundary : List String

/-- Kummer/Selmer finite-control quality required by theorem-facing BSD input. -/
def KummerSelmerExactSequenceCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {n : Nat}
    (K : KummerSelmerExactSequenceCertificate M n) :
  Prop :=
  K.rationalPointLocus.certifiedForBSD ∧
  K.descentLevelAtLeastTwo ∧
  K.kummerDescent.multiplicationByLevelMatchesN ∧
  K.kummerDescent.quotientByMultiplicationIdentified ∧
  (∀ x, K.kummerDescent.kummerClass x =
    K.finiteKummerSelmer.globalKummer.toH1 x) ∧
  K.kummerDescent.kummerKernelIsMultiplicationImage ∧
  K.finiteKummerSelmer.compatibleWithRestriction ∧
  K.finiteKummerSelmer.globalImageLandsInSelmer ∧
  (∀ x,
    K.finiteSelmerProblem.selmerSubgroup.carrier
      (K.constructedSelmerInjection.quotientToSelmerClass x)) ∧
  (∀ x y,
    K.constructedSelmerInjection.quotientToSelmerClass x =
      K.constructedSelmerInjection.quotientToSelmerClass y →
        x = y) ∧
  K.selmerFinite ∧
  K.kummerDescent.locallyTrivialObstructionMatchesSelmerKernel ∧
  (∀ c hc,
    K.constructedSelmerExactness.locallyTrivial c hc ↔
        ∃ x : K.finiteKummerSelmer.globalKummer.Domain,
          K.finiteKummerSelmer.globalKummer.toH1 x = c) ∧
  (∀ c hc,
    K.kummerDescent.locallyTrivialObstruction c ↔
      K.constructedSelmerExactness.locallyTrivial c hc) ∧
  K.compatibleWithBaseNumberField ∧
  K.compatibleWithSmoothGroupLaw ∧
  K.sourceStatus = MordellWeilSourceStatus.suppliedByCertificate

theorem KummerSelmerExactSequenceCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {n : Nat}
    (K : KummerSelmerExactSequenceCertificate M n)
    (hsource :
      K.sourceStatus = MordellWeilSourceStatus.suppliedByCertificate) :
    K.certifiedForBSD := by
  exact
    ⟨K.rationalPointLocusCertified,
      K.descentLevelAtLeastTwoCertified,
      K.kummerDescent.multiplicationByLevelMatchesNCertified,
      K.kummerDescent.quotientByMultiplicationIdentifiedCertified,
      K.kummerDescent.kummerClass_eq_globalKummer,
      K.kummerDescent.kummerKernelIsMultiplicationImageCertified,
      K.finiteKummerSelmer.compatibleWithRestriction_of_field,
      K.finiteKummerSelmer.globalImageLandsInSelmer_of_local_conditions,
      K.constructedSelmerInjection.quotientToSelmerClass_mem,
      K.constructedSelmerInjection.injectiveIntoConstructedSelmer,
      K.selmerFiniteCertified,
      K.kummerDescent.locallyTrivialObstructionMatchesSelmerKernelCertified,
      K.constructedSelmerExactness.kernel_iff_kummerImage,
      K.constructedSelmerExactness.matchesDescentObstruction_iff,
      K.compatibleWithBaseNumberFieldCertified,
      K.compatibleWithSmoothGroupLawCertified,
      hsource⟩

/--
Typed finite-control data used by weak Mordell-Weil descent.

The quotient, its map from curve points, the injection into the finite Kummer
domain, and the local-solubility predicate are explicit data.  The certificate
fields state their mathematical compatibility with the Kummer/Selmer package.
-/
structure WeakDescentControlData
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C)
    {n : Nat}
    (K : KummerSelmerExactSequenceCertificate M n) where
  quotientByMultiplication :
    Type u
  quotientMap :
    Point C.E → quotientByMultiplication
  selmerInjection :
    quotientByMultiplication →
      K.finiteKummerSelmer.globalKummer.Domain
  localSolubility :
    quotientByMultiplication → Prop
  quotientIdentifiesMultiplicationClasses : Prop
  quotientIdentifiesMultiplicationClassesCertified :
    quotientIdentifiesMultiplicationClasses
  selmerInjectionCompatibleWithKummer :
    ∀ q,
      K.finiteSelmerProblem.selmerSubgroup.carrier
        (K.finiteKummerSelmer.globalKummer.toH1
          (selmerInjection q))
  localSolubilityMatchesLocalConditions : Prop
  localSolubilityMatchesLocalConditionsCertified :
    localSolubilityMatchesLocalConditions
  boundary : List String

/--
Weak Mordell-Weil/descent provenance for the smooth Mordell-Weil interface.

This now depends on the constructed finite abstract Galois-cohomology/Selmer
layer through its Kummer/Selmer certificate. It still does not construct
number-field Galois groups, elliptic-curve descent maps, or quotient groups.
-/
structure WeakMordellWeilDescentCertificate
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C) where
  rationalPointLocus :
    RationalPointLocusCertificate M
  rationalPointLocusCertified :
    rationalPointLocus.certifiedForBSD
  descentLevel : Nat
  descentLevelAtLeastTwo : Prop
  descentLevelAtLeastTwoCertified :
    descentLevelAtLeastTwo
  kummerSelmer :
    KummerSelmerExactSequenceCertificate M descentLevel
  kummerSelmerCertified :
    kummerSelmer.certifiedForBSD
  descentControl :
    WeakDescentControlData M kummerSelmer
  quotientFinite : Prop
  quotientFiniteCertified :
    quotientFinite
  selmerSetFinite : Prop
  selmerSetFiniteCertified :
    selmerSetFinite
  compatibleWithBaseNumberField : Prop
  compatibleWithBaseNumberFieldCertified :
    compatibleWithBaseNumberField
  compatibleWithSmoothGroupLaw : Prop
  compatibleWithSmoothGroupLawCertified :
    compatibleWithSmoothGroupLaw
  sourceStatus : MordellWeilSourceStatus
  boundary : List String

/-- Weak Mordell-Weil/descent quality required by theorem-facing BSD input. -/
def WeakMordellWeilDescentCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (D : WeakMordellWeilDescentCertificate M) :
  Prop :=
  D.rationalPointLocus.certifiedForBSD ∧
  D.descentLevelAtLeastTwo ∧
  D.kummerSelmer.certifiedForBSD ∧
  D.descentControl.quotientIdentifiesMultiplicationClasses ∧
  D.quotientFinite ∧
  (∀ q,
    D.kummerSelmer.finiteSelmerProblem.selmerSubgroup.carrier
      (D.kummerSelmer.finiteKummerSelmer.globalKummer.toH1
        (D.descentControl.selmerInjection q))) ∧
  D.selmerSetFinite ∧
  D.descentControl.localSolubilityMatchesLocalConditions ∧
  D.compatibleWithBaseNumberField ∧
  D.compatibleWithSmoothGroupLaw ∧
  D.sourceStatus = MordellWeilSourceStatus.suppliedByCertificate

theorem WeakMordellWeilDescentCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (D : WeakMordellWeilDescentCertificate M)
    (hsource :
      D.sourceStatus = MordellWeilSourceStatus.suppliedByCertificate) :
    D.certifiedForBSD := by
  exact
    ⟨D.rationalPointLocusCertified,
      D.descentLevelAtLeastTwoCertified,
      D.kummerSelmerCertified,
      D.descentControl.quotientIdentifiesMultiplicationClassesCertified,
      D.quotientFiniteCertified,
      D.descentControl.selmerInjectionCompatibleWithKummer,
      D.selmerSetFiniteCertified,
      D.descentControl.localSolubilityMatchesLocalConditionsCertified,
      D.compatibleWithBaseNumberFieldCertified,
      D.compatibleWithSmoothGroupLawCertified,
      hsource⟩

theorem WeakMordellWeilDescentCertificate.kummerSelmer_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {D : WeakMordellWeilDescentCertificate M}
    (h : D.certifiedForBSD) :
    D.kummerSelmer.certifiedForBSD :=
  h.2.2.1

/--
Typed canonical-height data for height descent.

The value type is abstract because this file does not import an ordered real
height hierarchy.  The height maps and quadratic scaling operation are concrete
data; the Prop fields record theorem obligations about those maps.
-/
structure CanonicalHeightData
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C) where
  HeightValue : Type u
  canonicalHeight :
    Point C.E → HeightValue
  naiveProjectiveHeight :
    Point C.E → HeightValue
  scaleBySquare :
    Nat → HeightValue → HeightValue
  canonicalHeightDefinedOnRationalPoints : Prop
  canonicalHeightDefinedOnRationalPointsCertified :
    canonicalHeightDefinedOnRationalPoints
  naiveProjectiveHeightDefinedOnRationalPoints : Prop
  naiveProjectiveHeightDefinedOnRationalPointsCertified :
    naiveProjectiveHeightDefinedOnRationalPoints
  multiplicationQuadraticity :
    Prop
  multiplicationQuadraticityCertified :
    multiplicationQuadraticity
  boundary : List String

/--
Canonical-height function provenance for height descent on the smooth
Mordell-Weil interface.

This is still certificate-gated. It carries typed canonical and naive height
maps, but it does not prove the Neron-Tate limit formula or Northcott
finiteness.
-/
structure CanonicalHeightFunctionCertificate
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C) where
  rationalPointLocus :
    RationalPointLocusCertificate M
  rationalPointLocusCertified :
    rationalPointLocus.certifiedForBSD
  heightData :
    CanonicalHeightData M
  canonicalNaiveHeightComparison : Prop
  canonicalNaiveHeightComparisonCertified :
    canonicalNaiveHeightComparison
  canonicalHeightNonnegative : Prop
  canonicalHeightNonnegativeCertified :
    canonicalHeightNonnegative
  canonicalHeightZeroExactlyTorsion : Prop
  canonicalHeightZeroExactlyTorsionCertified :
    canonicalHeightZeroExactlyTorsion
  compatibleWithSmoothGroupLaw : Prop
  compatibleWithSmoothGroupLawCertified :
    compatibleWithSmoothGroupLaw
  sourceStatus : MordellWeilSourceStatus
  boundary : List String

/-- Canonical-height quality required by theorem-facing Mordell-Weil input. -/
def CanonicalHeightFunctionCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (H : CanonicalHeightFunctionCertificate M) :
  Prop :=
  H.rationalPointLocus.certifiedForBSD ∧
  H.heightData.canonicalHeightDefinedOnRationalPoints ∧
  H.heightData.naiveProjectiveHeightDefinedOnRationalPoints ∧
  H.canonicalNaiveHeightComparison ∧
  H.canonicalHeightNonnegative ∧
  H.canonicalHeightZeroExactlyTorsion ∧
  H.heightData.multiplicationQuadraticity ∧
  H.compatibleWithSmoothGroupLaw ∧
  H.sourceStatus = MordellWeilSourceStatus.suppliedByCertificate

theorem CanonicalHeightFunctionCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (H : CanonicalHeightFunctionCertificate M)
    (hsource :
      H.sourceStatus = MordellWeilSourceStatus.suppliedByCertificate) :
    H.certifiedForBSD := by
  exact
    ⟨H.rationalPointLocusCertified,
      H.heightData.canonicalHeightDefinedOnRationalPointsCertified,
      H.heightData.naiveProjectiveHeightDefinedOnRationalPointsCertified,
      H.canonicalNaiveHeightComparisonCertified,
      H.canonicalHeightNonnegativeCertified,
      H.canonicalHeightZeroExactlyTorsionCertified,
      H.heightData.multiplicationQuadraticityCertified,
      H.compatibleWithSmoothGroupLawCertified,
      hsource⟩

/--
Typed local-height data for a canonical-height decomposition.

The local place carrier and local height map are concrete data.  Finite and
archimedean local-height theorems remain explicit certificate obligations.
-/
structure CanonicalLocalHeightData
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (H : CanonicalHeightFunctionCertificate M) where
  Place : Type u
  kind : Place → NumberFieldPlaceKind
  localHeight :
    Place → Point C.E → H.heightData.HeightValue
  finiteSupportFor :
    Point C.E → List Place
  finitePlaceLocalHeights : Prop
  finitePlaceLocalHeightsCertified :
    finitePlaceLocalHeights
  archimedeanLocalHeights : Prop
  archimedeanLocalHeightsCertified :
    archimedeanLocalHeights
  boundary : List String

/--
Local-height decomposition provenance for the canonical height.

This is still certificate-gated. It carries typed local-height data, but it
does not construct local fields, local Neron functions, product formulas, or
prove the canonical height as a sum of local heights.
-/
structure CanonicalHeightLocalDecompositionCertificate
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (H : CanonicalHeightFunctionCertificate M) where
  canonicalHeightCertified :
    H.certifiedForBSD
  localHeightData :
    CanonicalLocalHeightData H
  allPlacesCovered : Prop
  allPlacesCoveredCertified :
    allPlacesCovered
  finiteSupportAwayFromBadPlaces : Prop
  finiteSupportAwayFromBadPlacesCertified :
    finiteSupportAwayFromBadPlaces
  localHeightsSumToCanonicalHeight : Prop
  localHeightsSumToCanonicalHeightCertified :
    localHeightsSumToCanonicalHeight
  productFormulaCompatibility : Prop
  productFormulaCompatibilityCertified :
    productFormulaCompatibility
  localNaiveHeightComparison : Prop
  localNaiveHeightComparisonCertified :
    localNaiveHeightComparison
  localHeightsCompatibleWithSmoothGroupLaw : Prop
  localHeightsCompatibleWithSmoothGroupLawCertified :
    localHeightsCompatibleWithSmoothGroupLaw
  sourceStatus : MordellWeilSourceStatus
  boundary : List String

/-- Local-height decomposition quality required by theorem-facing BSD input. -/
def CanonicalHeightLocalDecompositionCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {H : CanonicalHeightFunctionCertificate M}
    (L : CanonicalHeightLocalDecompositionCertificate H) :
    Prop :=
  H.certifiedForBSD ∧
  L.localHeightData.finitePlaceLocalHeights ∧
  L.localHeightData.archimedeanLocalHeights ∧
  L.allPlacesCovered ∧
  L.finiteSupportAwayFromBadPlaces ∧
  L.localHeightsSumToCanonicalHeight ∧
  L.productFormulaCompatibility ∧
  L.localNaiveHeightComparison ∧
  L.localHeightsCompatibleWithSmoothGroupLaw ∧
  L.sourceStatus = MordellWeilSourceStatus.suppliedByCertificate

theorem CanonicalHeightLocalDecompositionCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {H : CanonicalHeightFunctionCertificate M}
    (L : CanonicalHeightLocalDecompositionCertificate H)
    (hsource :
      L.sourceStatus = MordellWeilSourceStatus.suppliedByCertificate) :
    L.certifiedForBSD := by
  exact
    ⟨L.canonicalHeightCertified,
      L.localHeightData.finitePlaceLocalHeightsCertified,
      L.localHeightData.archimedeanLocalHeightsCertified,
      L.allPlacesCoveredCertified,
      L.finiteSupportAwayFromBadPlacesCertified,
      L.localHeightsSumToCanonicalHeightCertified,
      L.productFormulaCompatibilityCertified,
      L.localNaiveHeightComparisonCertified,
      L.localHeightsCompatibleWithSmoothGroupLawCertified,
      hsource⟩

/--
Compatibility between a canonical-height local decomposition and the certified
place/product-formula package of the base number field.

This is still an interface certificate. It does not construct local heights,
absolute values, completions, or prove the product formula.
-/
structure CanonicalHeightBasePlaceCompatibilityCertificate
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (N : NumberFieldCertificate C.K)
    {H : CanonicalHeightFunctionCertificate M}
    (L : CanonicalHeightLocalDecompositionCertificate H) where
  basePlaces :
    NumberFieldPlaceProductFormulaCertificate N
  basePlacesCertified :
    basePlaces.certifiedForBSD
  localHeightDecompositionCertified :
    L.certifiedForBSD
  finiteLocalHeightsUseBaseFinitePlaces : Prop
  finiteLocalHeightsUseBaseFinitePlacesCertified :
    finiteLocalHeightsUseBaseFinitePlaces
  archimedeanLocalHeightsUseBaseArchimedeanPlaces : Prop
  archimedeanLocalHeightsUseBaseArchimedeanPlacesCertified :
    archimedeanLocalHeightsUseBaseArchimedeanPlaces
  allPlacesCoverageMatchesBasePlaces : Prop
  allPlacesCoverageMatchesBasePlacesCertified :
    allPlacesCoverageMatchesBasePlaces
  localHeightProductFormulaMatchesBaseProductFormula : Prop
  localHeightProductFormulaMatchesBaseProductFormulaCertified :
    localHeightProductFormulaMatchesBaseProductFormula
  localNaiveComparisonUsesNormalizedAbsoluteValues : Prop
  localNaiveComparisonUsesNormalizedAbsoluteValuesCertified :
    localNaiveComparisonUsesNormalizedAbsoluteValues
  boundary : List String

/--
Base-place compatibility quality required by theorem-facing Mordell-Weil height
descent.
-/
def CanonicalHeightBasePlaceCompatibilityCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {H : CanonicalHeightFunctionCertificate M}
    {L : CanonicalHeightLocalDecompositionCertificate H}
    (B : CanonicalHeightBasePlaceCompatibilityCertificate N L) :
    Prop :=
  B.basePlaces.certifiedForBSD ∧
  L.certifiedForBSD ∧
  B.finiteLocalHeightsUseBaseFinitePlaces ∧
  B.archimedeanLocalHeightsUseBaseArchimedeanPlaces ∧
  B.allPlacesCoverageMatchesBasePlaces ∧
  B.localHeightProductFormulaMatchesBaseProductFormula ∧
  B.localNaiveComparisonUsesNormalizedAbsoluteValues

theorem CanonicalHeightBasePlaceCompatibilityCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {H : CanonicalHeightFunctionCertificate M}
    {L : CanonicalHeightLocalDecompositionCertificate H}
    (B : CanonicalHeightBasePlaceCompatibilityCertificate N L) :
    B.certifiedForBSD := by
  exact
    ⟨B.basePlacesCertified,
      B.localHeightDecompositionCertified,
      B.finiteLocalHeightsUseBaseFinitePlacesCertified,
      B.archimedeanLocalHeightsUseBaseArchimedeanPlacesCertified,
      B.allPlacesCoverageMatchesBasePlacesCertified,
      B.localHeightProductFormulaMatchesBaseProductFormulaCertified,
      B.localNaiveComparisonUsesNormalizedAbsoluteValuesCertified⟩

/--
Typed Weierstrass projective embedding data for the rational-point locus.

The projective target is the projective-space carrier from the base-field
height package.  The coordinate map and homogeneous equation predicate are
explicit data; the remaining fields certify their intended relationship to the
smooth affine curve.
-/
structure WeierstrassProjectiveEmbeddingData
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (H : NumberFieldProjectiveHeightCertificate P) where
  projectivePointOf :
    Point C.E → H.projectiveSpace.Point
  homogeneousCoordinatesOf :
    Point C.E → List C.K.field.Carrier
  homogeneousEquation :
    H.projectiveSpace.Point → Prop
  projectiveClosureCoordinates : Prop
  projectiveClosureCoordinatesCertified :
    projectiveClosureCoordinates
  affineToProjectiveEmbedding : Prop
  affineToProjectiveEmbeddingCertified :
    affineToProjectiveEmbedding
  homogeneousWeierstrassEquation : Prop
  homogeneousWeierstrassEquationCertified :
    homogeneousWeierstrassEquation
  boundary : List String

/--
Weierstrass projective-height embedding provenance for the rational-point locus.

This is still certificate-gated. It carries the projective embedding data, but
it does not prove that this data is a smooth projective model or a Weil height.
-/
structure WeierstrassProjectiveHeightEmbeddingCertificate
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (H : NumberFieldProjectiveHeightCertificate P) where
  baseProjectiveHeightCertified :
    H.certifiedForBSD
  rationalPointLocus :
    RationalPointLocusCertificate M
  rationalPointLocusCertified :
    rationalPointLocus.certifiedForBSD
  embeddingData :
    WeierstrassProjectiveEmbeddingData M N P H
  pointAtInfinityMappedToProjectivePoint : Prop
  pointAtInfinityMappedToProjectivePointCertified :
    pointAtInfinityMappedToProjectivePoint
  rationalCoordinatesMatchProjectiveCoordinates : Prop
  rationalCoordinatesMatchProjectiveCoordinatesCertified :
    rationalCoordinatesMatchProjectiveCoordinates
  projectiveHeightRestrictsToNaiveCurveHeight : Prop
  projectiveHeightRestrictsToNaiveCurveHeightCertified :
    projectiveHeightRestrictsToNaiveCurveHeight
  finiteHeightBallsRestrictToRationalPointLocus : Prop
  finiteHeightBallsRestrictToRationalPointLocusCertified :
    finiteHeightBallsRestrictToRationalPointLocus
  boundary : List String

/--
Weierstrass/projective-height compatibility required by theorem-facing
Mordell-Weil height descent.
-/
def WeierstrassProjectiveHeightEmbeddingCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {H : NumberFieldProjectiveHeightCertificate P}
    (W : WeierstrassProjectiveHeightEmbeddingCertificate M N P H) :
  Prop :=
  H.certifiedForBSD ∧
  W.rationalPointLocus.certifiedForBSD ∧
  W.embeddingData.projectiveClosureCoordinates ∧
  W.embeddingData.affineToProjectiveEmbedding ∧
  W.pointAtInfinityMappedToProjectivePoint ∧
  W.embeddingData.homogeneousWeierstrassEquation ∧
  W.rationalCoordinatesMatchProjectiveCoordinates ∧
  W.projectiveHeightRestrictsToNaiveCurveHeight ∧
  W.finiteHeightBallsRestrictToRationalPointLocus

theorem WeierstrassProjectiveHeightEmbeddingCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {H : NumberFieldProjectiveHeightCertificate P}
    (W : WeierstrassProjectiveHeightEmbeddingCertificate M N P H) :
    W.certifiedForBSD := by
  exact
    ⟨W.baseProjectiveHeightCertified,
      W.rationalPointLocusCertified,
      W.embeddingData.projectiveClosureCoordinatesCertified,
      W.embeddingData.affineToProjectiveEmbeddingCertified,
      W.pointAtInfinityMappedToProjectivePointCertified,
      W.embeddingData.homogeneousWeierstrassEquationCertified,
      W.rationalCoordinatesMatchProjectiveCoordinatesCertified,
      W.projectiveHeightRestrictsToNaiveCurveHeightCertified,
      W.finiteHeightBallsRestrictToRationalPointLocusCertified⟩

/--
Compatibility between Mordell-Weil height descent and the base-field Northcott
projective-height package.

This is still an interface certificate. It does not construct projective heights
or prove Northcott finiteness.
-/
structure CanonicalHeightNorthcottCompatibilityCertificate
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (H : NumberFieldProjectiveHeightCertificate P)
    (Q : NumberFieldNorthcottCertificate H)
    {CH : CanonicalHeightFunctionCertificate M}
    {L : CanonicalHeightLocalDecompositionCertificate CH}
    (B : CanonicalHeightBasePlaceCompatibilityCertificate N L) where
  basePlaceCompatibilityCertified :
    B.certifiedForBSD
  northcottCertified :
    Q.certifiedForBSD
  weierstrassProjectiveHeightEmbedding :
    WeierstrassProjectiveHeightEmbeddingCertificate M N P H
  weierstrassProjectiveHeightEmbeddingCertified :
    weierstrassProjectiveHeightEmbedding.certifiedForBSD
  canonicalNaiveComparisonUsesProjectiveHeight : Prop
  canonicalNaiveComparisonUsesProjectiveHeightCertified :
    canonicalNaiveComparisonUsesProjectiveHeight
  finiteHeightBallsDerivedFromNorthcott : Prop
  finiteHeightBallsDerivedFromNorthcottCertified :
    finiteHeightBallsDerivedFromNorthcott
  boundedSearchUsesNorthcottFiniteSet : Prop
  boundedSearchUsesNorthcottFiniteSetCertified :
    boundedSearchUsesNorthcottFiniteSet
  generatedSubgroupCoverageUsesNorthcottSearch : Prop
  generatedSubgroupCoverageUsesNorthcottSearchCertified :
    generatedSubgroupCoverageUsesNorthcottSearch
  boundary : List String

/--
Northcott/projective-height compatibility required by theorem-facing
Mordell-Weil height descent.
-/
def CanonicalHeightNorthcottCompatibilityCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {H : NumberFieldProjectiveHeightCertificate P}
    {Q : NumberFieldNorthcottCertificate H}
    {CH : CanonicalHeightFunctionCertificate M}
    {L : CanonicalHeightLocalDecompositionCertificate CH}
    {B : CanonicalHeightBasePlaceCompatibilityCertificate N L}
    (R : CanonicalHeightNorthcottCompatibilityCertificate N P H Q B) :
    Prop :=
  B.certifiedForBSD ∧
  Q.certifiedForBSD ∧
  R.weierstrassProjectiveHeightEmbedding.certifiedForBSD ∧
  R.canonicalNaiveComparisonUsesProjectiveHeight ∧
  R.finiteHeightBallsDerivedFromNorthcott ∧
  R.boundedSearchUsesNorthcottFiniteSet ∧
  R.generatedSubgroupCoverageUsesNorthcottSearch

theorem CanonicalHeightNorthcottCompatibilityCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {H : NumberFieldProjectiveHeightCertificate P}
    {Q : NumberFieldNorthcottCertificate H}
    {CH : CanonicalHeightFunctionCertificate M}
    {L : CanonicalHeightLocalDecompositionCertificate CH}
    {B : CanonicalHeightBasePlaceCompatibilityCertificate N L}
    (R : CanonicalHeightNorthcottCompatibilityCertificate N P H Q B) :
    R.certifiedForBSD := by
  exact
    ⟨R.basePlaceCompatibilityCertified,
      R.northcottCertified,
      R.weierstrassProjectiveHeightEmbeddingCertified,
      R.canonicalNaiveComparisonUsesProjectiveHeightCertified,
      R.finiteHeightBallsDerivedFromNorthcottCertified,
      R.boundedSearchUsesNorthcottFiniteSetCertified,
      R.generatedSubgroupCoverageUsesNorthcottSearchCertified⟩

theorem CanonicalHeightNorthcottCompatibilityCertificate.weierstrassProjectiveHeightEmbedding_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {H : NumberFieldProjectiveHeightCertificate P}
    {Q : NumberFieldNorthcottCertificate H}
    {CH : CanonicalHeightFunctionCertificate M}
    {L : CanonicalHeightLocalDecompositionCertificate CH}
    {B : CanonicalHeightBasePlaceCompatibilityCertificate N L}
    {R : CanonicalHeightNorthcottCompatibilityCertificate N P H Q B}
    (h : R.certifiedForBSD) :
    R.weierstrassProjectiveHeightEmbedding.certifiedForBSD :=
  h.2.2.1

/--
Typed height-descent data for finite generation.

The finite search carrier is explicit: a height function, bounded-height balls,
candidate generators, and a descent step.  The proof obligations state that
this data has the height-descent properties required downstream.
-/
structure MordellWeilHeightDescentData
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C) where
  HeightValue : Type u
  height :
    Point C.E → HeightValue
  boundedHeightBall :
    HeightValue → List (Point C.E)
  candidateGenerators :
    List MordellWeilGenerator
  descentStep :
    Point C.E → Option (Point C.E)
  heightFunctionDefined : Prop
  heightFunctionDefinedCertified :
    heightFunctionDefined
  descentInequality : Prop
  descentInequalityCertified :
    descentInequality
  boundedSearchForGenerators : Prop
  boundedSearchForGeneratorsCertified :
    boundedSearchForGenerators
  boundary : List String

/--
Height descent provenance for finite generation of the smooth Mordell-Weil group.

This is still certificate-gated. It carries typed height-descent search data,
but it does not prove Northcott finiteness or carry out a complete descent
algorithm.
-/
structure MordellWeilHeightDescentCertificate
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C) where
  descentData :
    MordellWeilHeightDescentData M
  heightNonnegative : Prop
  heightNonnegativeCertified :
    heightNonnegative
  finiteHeightBalls : Prop
  finiteHeightBallsCertified :
    finiteHeightBalls
  freeGeneratorsProducedByHeightDescent : Prop
  freeGeneratorsProducedByHeightDescentCertified :
    freeGeneratorsProducedByHeightDescent
  torsionGeneratorsSeparated : Prop
  torsionGeneratorsSeparatedCertified :
    torsionGeneratorsSeparated
  compatibleWithFiniteGenerationCertificate : Prop
  compatibleWithFiniteGenerationCertificateCertified :
    compatibleWithFiniteGenerationCertificate
  sourceStatus : MordellWeilSourceStatus
  boundary : List String

/-- Height descent quality required by theorem-facing BSD input. -/
def MordellWeilHeightDescentCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (H : MordellWeilHeightDescentCertificate M) :
    Prop :=
  H.descentData.heightFunctionDefined ∧
  H.heightNonnegative ∧
  H.finiteHeightBalls ∧
  H.descentData.descentInequality ∧
  H.descentData.boundedSearchForGenerators ∧
  H.freeGeneratorsProducedByHeightDescent ∧
  H.torsionGeneratorsSeparated ∧
  H.compatibleWithFiniteGenerationCertificate ∧
  H.sourceStatus = MordellWeilSourceStatus.suppliedByCertificate

theorem MordellWeilHeightDescentCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (H : MordellWeilHeightDescentCertificate M)
    (hsource :
      H.sourceStatus = MordellWeilSourceStatus.suppliedByCertificate) :
    H.certifiedForBSD := by
  exact
    ⟨H.descentData.heightFunctionDefinedCertified,
      H.heightNonnegativeCertified,
      H.finiteHeightBallsCertified,
      H.descentData.descentInequalityCertified,
      H.descentData.boundedSearchForGeneratorsCertified,
      H.freeGeneratorsProducedByHeightDescentCertified,
      H.torsionGeneratorsSeparatedCertified,
      H.compatibleWithFiniteGenerationCertificateCertified,
      hsource⟩

/--
Northcott and descent-inequality provenance for height descent.

This is still an interface certificate. It does not prove Northcott's theorem or
carry out a height-descent algorithm.
-/
structure MordellWeilHeightDescentProvenanceCertificate
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C)
    (D : WeakMordellWeilDescentCertificate M) where
  canonicalHeight :
    CanonicalHeightFunctionCertificate M
  canonicalHeightCertified :
    canonicalHeight.certifiedForBSD
  localHeightDecomposition :
    CanonicalHeightLocalDecompositionCertificate canonicalHeight
  localHeightDecompositionCertified :
    localHeightDecomposition.certifiedForBSD
  weakDescentCertified :
    D.certifiedForBSD
  northcottFiniteHeightBalls : Prop
  northcottFiniteHeightBallsCertified :
    northcottFiniteHeightBalls
  descentInequalityCompatibleWithKummerLevel : Prop
  descentInequalityCompatibleWithKummerLevelCertified :
    descentInequalityCompatibleWithKummerLevel
  descentReducesHeightOutsideGeneratorSet : Prop
  descentReducesHeightOutsideGeneratorSetCertified :
    descentReducesHeightOutsideGeneratorSet
  boundedSearchTerminates : Prop
  boundedSearchTerminatesCertified :
    boundedSearchTerminates
  generatedSubgroupContainsAllRationalPoints : Prop
  generatedSubgroupContainsAllRationalPointsCertified :
    generatedSubgroupContainsAllRationalPoints
  compatibleWithFiniteGenerationCertificate : Prop
  compatibleWithFiniteGenerationCertificateCertified :
    compatibleWithFiniteGenerationCertificate
  sourceStatus : MordellWeilSourceStatus
  boundary : List String

/-- Height-descent provenance quality required by theorem-facing BSD input. -/
def MordellWeilHeightDescentProvenanceCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {D : WeakMordellWeilDescentCertificate M}
    (H : MordellWeilHeightDescentProvenanceCertificate M D) :
  Prop :=
  H.canonicalHeight.certifiedForBSD ∧
  H.localHeightDecomposition.certifiedForBSD ∧
  D.certifiedForBSD ∧
  H.northcottFiniteHeightBalls ∧
  H.descentInequalityCompatibleWithKummerLevel ∧
  H.descentReducesHeightOutsideGeneratorSet ∧
  H.boundedSearchTerminates ∧
  H.generatedSubgroupContainsAllRationalPoints ∧
  H.compatibleWithFiniteGenerationCertificate ∧
  H.sourceStatus = MordellWeilSourceStatus.suppliedByCertificate

theorem MordellWeilHeightDescentProvenanceCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {D : WeakMordellWeilDescentCertificate M}
    (H : MordellWeilHeightDescentProvenanceCertificate M D)
    (hsource :
      H.sourceStatus = MordellWeilSourceStatus.suppliedByCertificate) :
    H.certifiedForBSD := by
  exact
    ⟨H.canonicalHeightCertified,
      H.localHeightDecompositionCertified,
      H.weakDescentCertified,
      H.northcottFiniteHeightBallsCertified,
      H.descentInequalityCompatibleWithKummerLevelCertified,
      H.descentReducesHeightOutsideGeneratorSetCertified,
      H.boundedSearchTerminatesCertified,
      H.generatedSubgroupContainsAllRationalPointsCertified,
      H.compatibleWithFiniteGenerationCertificateCertified,
      hsource⟩

theorem MordellWeilHeightDescentProvenanceCertificate.localHeightDecomposition_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {D : WeakMordellWeilDescentCertificate M}
    {H : MordellWeilHeightDescentProvenanceCertificate M D}
    (h : H.certifiedForBSD) :
    H.localHeightDecomposition.certifiedForBSD :=
  h.2.1

/--
Finite-generation provenance for the smooth Mordell-Weil interface.

This is still an interface certificate. It does not prove the Mordell-Weil theorem;
it records the descent and height-descent gates that a theorem-facing BSD input
must carry.
-/
structure MordellWeilFiniteGenerationProvenanceCertificate
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C) where
  weakDescent :
    WeakMordellWeilDescentCertificate M
  weakDescentCertified :
    weakDescent.certifiedForBSD
  heightDescent :
    MordellWeilHeightDescentCertificate M
  heightDescentCertified :
    heightDescent.certifiedForBSD
  heightDescentProvenance :
    MordellWeilHeightDescentProvenanceCertificate M weakDescent
  heightDescentProvenanceCertified :
    heightDescentProvenance.certifiedForBSD
  finiteGenerationCertified :
    M.finiteGeneration.certifiedForBSD
  descentAndHeightProduceFiniteGeneration : Prop
  descentAndHeightProduceFiniteGenerationCertified :
    descentAndHeightProduceFiniteGeneration
  rankCertificateMatchesGeneratedFreePart : Prop
  rankCertificateMatchesGeneratedFreePartCertified :
    rankCertificateMatchesGeneratedFreePart
  torsionCertificateMatchesGeneratedTorsionPart : Prop
  torsionCertificateMatchesGeneratedTorsionPartCertified :
    torsionCertificateMatchesGeneratedTorsionPart
  sourceStatus : MordellWeilSourceStatus
  boundary : List String

/-- Finite-generation provenance quality required by theorem-facing BSD input. -/
def MordellWeilFiniteGenerationProvenanceCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (P : MordellWeilFiniteGenerationProvenanceCertificate M) :
    Prop :=
  P.weakDescent.certifiedForBSD ∧
  P.heightDescent.certifiedForBSD ∧
  P.heightDescentProvenance.certifiedForBSD ∧
  M.finiteGeneration.certifiedForBSD ∧
  P.descentAndHeightProduceFiniteGeneration ∧
  P.rankCertificateMatchesGeneratedFreePart ∧
  P.torsionCertificateMatchesGeneratedTorsionPart ∧
  P.sourceStatus = MordellWeilSourceStatus.suppliedByCertificate

theorem MordellWeilFiniteGenerationProvenanceCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (P : MordellWeilFiniteGenerationProvenanceCertificate M)
    (hsource :
      P.sourceStatus = MordellWeilSourceStatus.suppliedByCertificate) :
    P.certifiedForBSD := by
  exact
    ⟨P.weakDescentCertified,
      P.heightDescentCertified,
      P.heightDescentProvenanceCertified,
      P.finiteGenerationCertified,
      P.descentAndHeightProduceFiniteGenerationCertified,
      P.rankCertificateMatchesGeneratedFreePartCertified,
      P.torsionCertificateMatchesGeneratedTorsionPartCertified,
      hsource⟩

theorem MordellWeilFiniteGenerationProvenanceCertificate.kummerSelmer_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {P : MordellWeilFiniteGenerationProvenanceCertificate M}
    (h : P.certifiedForBSD) :
    P.weakDescent.kummerSelmer.certifiedForBSD :=
  P.weakDescent.kummerSelmer_certifiedForBSD h.1

theorem MordellWeilFiniteGenerationProvenanceCertificate.heightDescentProvenance_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {P : MordellWeilFiniteGenerationProvenanceCertificate M}
    (h : P.certifiedForBSD) :
    P.heightDescentProvenance.certifiedForBSD :=
  h.2.2.1

theorem MordellWeilFiniteGenerationProvenanceCertificate.localHeightDecomposition_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {P : MordellWeilFiniteGenerationProvenanceCertificate M}
    (h : P.certifiedForBSD) :
  P.heightDescentProvenance.localHeightDecomposition.certifiedForBSD :=
  MordellWeilHeightDescentProvenanceCertificate.localHeightDecomposition_certifiedForBSD
    (MordellWeilFiniteGenerationProvenanceCertificate.heightDescentProvenance_certifiedForBSD
      h)

/-- Existence of BSD-quality finite-generation provenance. -/
def SmoothMordellWeilInterface.finiteGenerationProvenanceCertifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C) :
    Prop :=
  ∃ P : MordellWeilFiniteGenerationProvenanceCertificate M,
    P.certifiedForBSD

/-- Smooth Mordell-Weil interface quality required by theorem-facing BSD input. -/
def SmoothMordellWeilInterface.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C) :
    Prop :=
  M.identifiesPointsWithMW ∧
  M.finiteGeneration.certifiedForBSD ∧
  M.ownsUnderlyingCurve ∧
  M.rationalPointLocusCertifiedForBSD ∧
  M.finiteGenerationProvenanceCertifiedForBSD

theorem SmoothMordellWeilInterface.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C)
    (hfg : M.finiteGeneration.certifiedForBSD)
    (hown : M.ownsUnderlyingCurve)
    (hrat : M.rationalPointLocusCertifiedForBSD)
    (hprov : M.finiteGenerationProvenanceCertifiedForBSD) :
    M.certifiedForBSD := by
  exact
    ⟨M.identifiesPointsWithMWCertified,
      hfg,
      hown,
      hrat,
      hprov⟩

theorem SmoothMordellWeilInterface.ownsUnderlyingCurve_of_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (h : M.certifiedForBSD) :
    M.ownsUnderlyingCurve :=
  h.2.2.1

theorem SmoothMordellWeilInterface.finiteGeneration_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (h : M.certifiedForBSD) :
    M.finiteGeneration.certifiedForBSD :=
  h.2.1

theorem SmoothMordellWeilInterface.rationalPointLocus_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (h : M.certifiedForBSD) :
    M.rationalPointLocusCertifiedForBSD :=
  h.2.2.2.1

theorem SmoothMordellWeilInterface.finiteGenerationProvenance_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (h : M.certifiedForBSD) :
    M.finiteGenerationProvenanceCertifiedForBSD :=
  h.2.2.2.2

theorem SmoothMordellWeilInterface.heightDescentProvenance_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (h : M.certifiedForBSD) :
    ∃ P : MordellWeilFiniteGenerationProvenanceCertificate M,
      P.certifiedForBSD ∧
      P.heightDescentProvenance.certifiedForBSD := by
  rcases h.2.2.2.2 with ⟨P, hP⟩
  exact
    ⟨P, hP,
      MordellWeilFiniteGenerationProvenanceCertificate.heightDescentProvenance_certifiedForBSD
        hP⟩

/-- The smooth Mordell-Weil interface carries the smoothness gate. -/
theorem SmoothMordellWeilInterface.no_affine_singular_point
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C) :
    ¬ Nonempty (AffineSingularPoint C) :=
  M.smoothGroupLaw.no_affine_singular_point

/-- The smooth Mordell-Weil interface carries nonzero discriminant. -/
theorem SmoothMordellWeilInterface.discriminant_ne_zero
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C) :
    C.E.discriminant ≠ C.K.field.zero :=
  M.smoothGroupLaw.discriminant_ne_zero

/-- The rank equals the number of free generators in the supplied certificate. -/
theorem SmoothMordellWeilInterface.rank_is_number_of_free_generators
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C) :
    M.finiteGeneration.freeGenerators.length = M.rank :=
  M.finiteGeneration.freeGeneratorCount

/-- Typed decomposition status for `E(K) ≅ torsion ⊕ Z^r`. -/
def torsion_free_decomposition_status
    {MW : MordellWeilGroup.{u}}
    (C : FinitelyGeneratedAbelianCertificate MW) :
    MordellWeilDecompositionStatus :=
  C.decompositionStatus

end EllipticCurve
end Surface.Arithmetic
