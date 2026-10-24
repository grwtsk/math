-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.PrismaticSiteAuthority.Variant8b4cbe96dca838816f3f66344dbe71daff877c39d7a603b4579bfec1cad85898","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8b4cbe96dca838816f3f66344dbe71daff877c39d7a603b4579bfec1cad85898","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.PrismaticSiteAuthority.Variant8b4cbe96dca838816f3f66344dbe71daff877c39d7a603b4579bfec1cad85898","mathematical_subject":"Topology.GeneralTopology","original_sha256":"8b4cbe96dca838816f3f66344dbe71daff877c39d7a603b4579bfec1cad85898","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/ArithmeticAuthorities.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Cube.ZetaAuthorityReducer
import Boolean.Cube.TorsionBlindDataHomology
import Boolean.Cube.TDARecoverabilityZKP

/-!
# Arithmetic authorities

This module defines explicit authority objects for:

* the prismatic site;
* the continuous spectral triple;
* the regularized determinant;
* elliptic arithmetic torsion;
* isogeny and quasi-isogeny flows;
* conversion from torsionless homology shadows into a number-theoretic context.

These structures are certificate interfaces. They do not compute prismatic
cohomology, spectral triples, determinant regularization, or Mordell-Weil torsion.

The intended architecture is:

  torsionless finite homology shadow
      + prismatic authority
      + spectral authority
      + determinant authority
      + elliptic torsion witness
      + isogeny / quasi-isogeny flow authority
        -> number-theoretic context

The conversion is authorized, not inferred.
-/


namespace GRWTSK.Topology.GeneralTopology.PrismaticSiteAuthority.Variant8b4cbe96dca838816f3f66344dbe71daff877c39d7a603b4579bfec1cad85898

namespace Boolean
namespace Cube
namespace ArithmeticAuthorities

abbrev PublicStatement :=
  TorsionBlindDataHomology.RecoverabilityZKP.PublicStatement

abbrev PrivateWitness :=
  TorsionBlindDataHomology.RecoverabilityZKP.PrivateWitness

abbrev ZKPRelation :=
  TorsionBlindDataHomology.RecoverabilityZKP.ZKPRelation

abbrev ArithmeticCollision :=
  TorsionBlindDataHomology.ArithmeticCollision

abbrev FieldOnlyArithmeticAlgorithm :=
  TorsionBlindDataHomology.FieldOnlyArithmeticAlgorithm

abbrev AnalyticPrimeBridgeData :=
  ZetaAuthorityReducer.AnalyticPrimeBridgeData

/-! ## 1. Prismatic site authority -/

/--
A certificate shell for a bounded prism and its prismatic site.

This is authority over the prismatic geometry. It is not computed from finite
Möbius, valuation-box, or TDA data.
-/
structure PrismaticSiteAuthority where
  basePrime : Nat
  basePrimePositive : basePrime > 0
  prismLabel : String
  formalSchemeLabel : String
  prismaticSiteLabel : String
  boundedPrism : Prop
  boundedPrismProof : boundedPrism
  deltaRingStructure : Prop
  deltaRingStructureProof : deltaRingStructure
  cartierDivisorIdeal : Prop
  cartierDivisorIdealProof : cartierDivisorIdeal
  derivedComplete : Prop
  derivedCompleteProof : derivedComplete
  frobeniusLift : Prop
  frobeniusLiftProof : frobeniusLift
  siteConstructed : Prop
  siteConstructedProof : siteConstructed
  comparisonToCrystalline : Prop
  comparisonToCrystallineProof : comparisonToCrystalline
  comparisonToDeRham : Prop
  comparisonToDeRhamProof : comparisonToDeRham
  comparisonToEtale : Prop
  comparisonToEtaleProof : comparisonToEtale
  comparisonToHodgeTate : Prop
  comparisonToHodgeTateProof : comparisonToHodgeTate

/-- The prismatic authority asserts that a prismatic site has been supplied. -/
theorem prismatic_site_authority_constructs_site
    (A : PrismaticSiteAuthority) :
    A.siteConstructed :=
  A.siteConstructedProof

/-- The prismatic comparison theorem is external authority. -/
theorem prismatic_site_authority_has_comparison
    (A : PrismaticSiteAuthority) :
    A.comparisonToCrystalline ∧
      A.comparisonToDeRham ∧
      A.comparisonToEtale ∧
      A.comparisonToHodgeTate :=
  ⟨A.comparisonToCrystallineProof,
    A.comparisonToDeRhamProof,
    A.comparisonToEtaleProof,
    A.comparisonToHodgeTateProof⟩

/-! ## 2. Continuous spectral triple authority -/

/--
Certificate shell for a continuous Connes-style spectral triple.

The actual algebra, Hilbert space, unbounded Dirac operator, compact-resolvent
property, and bounded-commutator analysis are external analytic authority.
-/
structure ContinuousSpectralTripleAuthority where
  label : String
  algebraLabel : String
  hilbertSpaceLabel : String
  diracOperatorLabel : String
  spectralTripleAxioms : Prop
  spectralTripleAxiomsProof : spectralTripleAxioms
  representationSound : Prop
  representationSoundProof : representationSound
  denseDomainSound : Prop
  denseDomainSoundProof : denseDomainSound
  compactResolventSound : Prop
  compactResolventSoundProof : compactResolventSound
  boundedCommutatorsSound : Prop
  boundedCommutatorsSoundProof : boundedCommutatorsSound
  metricSpectralTripleSound : Prop
  metricSpectralTripleSoundProof : metricSpectralTripleSound
  traceFormulaCompatible : Prop
  traceFormulaCompatibleProof : traceFormulaCompatible

/-- The continuous spectral triple authority includes the spectral-triple axioms. -/
theorem continuous_spectral_triple_has_axioms
    (A : ContinuousSpectralTripleAuthority) :
    A.spectralTripleAxioms :=
  A.spectralTripleAxiomsProof

/-- The finite reducer does not own the continuous spectral triple. -/
def FiniteReducerOwnsContinuousSpectralTriple
    (_A : ContinuousSpectralTripleAuthority) : Prop :=
  False

theorem finite_reducer_does_not_own_continuous_spectral_triple
    (A : ContinuousSpectralTripleAuthority) :
    ¬ FiniteReducerOwnsContinuousSpectralTriple A := by
  intro h
  exact h

/-! ## 3. Regularized determinant authority -/

/--
Authority over a regularized determinant or determinant surrogate.

Finite coefficient lists may be consumed by reducers, but the regularization
itself is not produced by finite Boolean computation.
-/
structure RegularizedDeterminantAuthority where
  label : String
  operatorLabel : String
  determinantCoeffs : List Int
  relativeDeterminantCoeffs : List Int
  determinantDefined : Prop
  determinantDefinedProof : determinantDefined
  regularizationSound : Prop
  regularizationSoundProof : regularizationSound
  finiteApproximationSound : Prop
  finiteApproximationSoundProof : finiteApproximationSound
  errorBoundSound : Prop
  errorBoundSoundProof : errorBoundSound
  compatibleWithSpectralTriple : Prop
  compatibleWithSpectralTripleProof : compatibleWithSpectralTriple
  compatibleWithPrismaticTrace : Prop
  compatibleWithPrismaticTraceProof : compatibleWithPrismaticTrace

/-- The regularized determinant authority exposes finite determinant coefficients. -/
def RegularizedDeterminantAuthority.finitePayload
    (A : RegularizedDeterminantAuthority) : List Int :=
  A.relativeDeterminantCoeffs

@[simp] theorem determinant_finitePayload_eq
    (A : RegularizedDeterminantAuthority) :
    A.finitePayload = A.relativeDeterminantCoeffs := rfl

/-- The determinant regularization itself remains external authority. -/
theorem regularized_determinant_has_external_soundness
    (A : RegularizedDeterminantAuthority) :
    A.regularizationSound ∧ A.errorBoundSound :=
  ⟨A.regularizationSoundProof, A.errorBoundSoundProof⟩

/-! ## 4. Elliptic arithmetic torsion authority -/

/--
A verified ZKP torsion authority.

This is the permitted route by which elliptic torsion enters the number-theoretic
context.
-/
structure ZKPTorsionAuthority where
  statement : PublicStatement
  witness : PrivateWitness
  relation : ZKPRelation statement witness

/-- A verified ZKP torsion authority proves the public torsion claim. -/
theorem zkp_torsion_authority_sound
    (A : ZKPTorsionAuthority) :
    A.witness.model.rationalTorsion = A.statement.claim.claimedTorsion :=
  TorsionBlindDataHomology.RecoverabilityZKP.relation_torsion A.relation

/--
An external arithmetic certificate for elliptic torsion.

Use this for a non-ZKP proof object, for example a checked isogeny/torsion
calculation imported from another formalized arithmetic layer.
-/
structure ArithmeticTorsionCertificate where
  curveHash : Nat
  torsionHash : Nat
  orderClaim : Nat
  certificateSound : Prop
  certificateSoundProof : certificateSound
  notInferredFromFieldHomology : Prop
  notInferredFromFieldHomologyProof : notInferredFromFieldHomology

/-- Elliptic torsion authority is either absent, arithmetic, or ZKP-backed. -/
inductive EllipticTorsionAuthority where
  | absent : EllipticTorsionAuthority
  | arithmetic : ArithmeticTorsionCertificate → EllipticTorsionAuthority
  | zkp : ZKPTorsionAuthority → EllipticTorsionAuthority

namespace EllipticTorsionAuthority

/-- Does this torsion authority contain accepted evidence? -/
def accepted : EllipticTorsionAuthority → Bool
  | .absent => false
  | .arithmetic _ => true
  | .zkp _ => true

/-- Does this torsion authority use a ZKP witness? -/
def acceptedZKP : EllipticTorsionAuthority → Bool
  | .zkp _ => true
  | _ => false

/-- Does this torsion authority still require evidence? -/
def needsWitness : EllipticTorsionAuthority → Bool
  | .absent => true
  | .arithmetic _ => false
  | .zkp _ => false

end EllipticTorsionAuthority

@[simp] theorem torsion_absent_needsWitness :
    EllipticTorsionAuthority.needsWitness .absent = true := rfl

@[simp] theorem torsion_zkp_accepted
    (A : ZKPTorsionAuthority) :
    EllipticTorsionAuthority.accepted (.zkp A) = true := rfl

/-! ## 5. Torsionless homology shadow -/

/--
A torsionless homology shadow.

This records finite homological data after field-coefficient or torsion-forgetting
linearization. It is useful as a finite observable but cannot itself identify
Mordell-Weil torsion.
-/
structure TorsionlessHomologyShadow where
  fieldCharacteristic : Nat
  bettiNumbers : List Nat
  barcodeHash : Nat
  chainComplexHash : Nat
  torsionForgotten : Prop
  torsionForgottenProof : torsionForgotten
  fieldCoefficientPipeline : Prop
  fieldCoefficientPipelineProof : fieldCoefficientPipeline

/-- Torsionless homology does not itself infer elliptic arithmetic torsion. -/
def TorsionlessHomologyInfersEllipticTorsion
    (_H : TorsionlessHomologyShadow) : Prop :=
  False

theorem torsionless_homology_does_not_infer_elliptic_torsion
    (H : TorsionlessHomologyShadow) :
    ¬ TorsionlessHomologyInfersEllipticTorsion H := by
  intro h
  exact h

/-! ## 6. Isogeny and quasi-isogeny authorities -/

/--
An isogeny certificate between elliptic-curve shells.

The reducer treats this as arithmetic authority, not as a computed map.
-/
structure IsogenyCertificate where
  sourceCurveHash : Nat
  targetCurveHash : Nat
  degree : Nat
  nonzeroDegree : degree > 0
  mapDefined : Prop
  mapDefinedProof : mapDefined
  groupHomSound : Prop
  groupHomSoundProof : groupHomSound
  finiteKernel : Prop
  finiteKernelProof : finiteKernel
  compatibleWithTorsionAuthority : Prop
  compatibleWithTorsionAuthorityProof : compatibleWithTorsionAuthority
  compatibleWithLocalTraces : Prop
  compatibleWithLocalTracesProof : compatibleWithLocalTraces

/-- A quasi-isogeny step: an isogeny after rationalization / denominator data. -/
structure QuasiIsogenyStep where
  sourceCurveHash : Nat
  targetCurveHash : Nat
  numeratorDegree : Nat
  denominator : Nat
  denominatorPositive : denominator > 0
  rationalIsogenySound : Prop
  rationalIsogenySoundProof : rationalIsogenySound
  compatibleWithPrismaticRealization : Prop
  compatibleWithPrismaticRealizationProof : compatibleWithPrismaticRealization
  compatibleWithSpectralRealization : Prop
  compatibleWithSpectralRealizationProof : compatibleWithSpectralRealization

/-- A finite quasi-isogeny flow. -/
structure QuasiIsogenyFlow where
  sourceCurveHash : Nat
  targetCurveHash : Nat
  steps : List QuasiIsogenyStep
  composable : Prop
  composableProof : composable
  flowSound : Prop
  flowSoundProof : flowSound
  preservesNumberTheoreticContext : Prop
  preservesNumberTheoreticContextProof : preservesNumberTheoreticContext

/-- Quasi-isogeny flows are external arithmetic authority. -/
theorem quasi_isogeny_flow_sound
    (F : QuasiIsogenyFlow) :
    F.flowSound :=
  F.flowSoundProof

/-! ## 7. Number-theoretic context -/

/--
A number-theoretic context built from finite emitted data plus authorities.

This is the target of the authorized conversion from torsionless homology.
-/
structure NumberTheoreticContext where
  arithmeticModelLabel : String
  curveHash : Nat
  bridgeData : AnalyticPrimeBridgeData
  localTraceData : List Int
  determinantPayload : List Int
  isogenyFlow : QuasiIsogenyFlow
  prismaticContextSound : Prop
  prismaticContextSoundProof : prismaticContextSound
  spectralContextSound : Prop
  spectralContextSoundProof : spectralContextSound
  determinantContextSound : Prop
  determinantContextSoundProof : determinantContextSound
  isogenyContextSound : Prop
  isogenyContextSoundProof : isogenyContextSound

/-- Bundle of the four analytic/arithmetic authorities. -/
structure AuthorityBundle where
  prismatic : PrismaticSiteAuthority
  spectral : ContinuousSpectralTripleAuthority
  determinant : RegularizedDeterminantAuthority
  torsion : EllipticTorsionAuthority

/--
An authorized conversion from a torsionless homology shadow to a
number-theoretic context.

The homology shadow supplies finite observable data. The authority bundle and
isogeny/quasi-isogeny flow supply the arithmetic meaning.
-/
structure HomologyToNumberTheoryConversion where
  homology : TorsionlessHomologyShadow
  authorities : AuthorityBundle
  context : NumberTheoreticContext
  homologyMatchesFiniteData : Prop
  homologyMatchesFiniteDataProof : homologyMatchesFiniteData
  prismaticAuthorityLinksHomology : Prop
  prismaticAuthorityLinksHomologyProof : prismaticAuthorityLinksHomology
  spectralAuthorityLinksBridge : Prop
  spectralAuthorityLinksBridgeProof : spectralAuthorityLinksBridge
  determinantAuthorityLinksBridge : Prop
  determinantAuthorityLinksBridgeProof : determinantAuthorityLinksBridge
  torsionAuthorityLinksArithmetic : Prop
  torsionAuthorityLinksArithmeticProof : torsionAuthorityLinksArithmetic
  isogenyFlowLinksContext : Prop
  isogenyFlowLinksContextProof : isogenyFlowLinksContext
  noTorsionInferredFromHomology :
    ¬ TorsionlessHomologyInfersEllipticTorsion homology

/-- Execute the authorized conversion by returning the number-theoretic context. -/
def convertToNumberTheoreticContext
    (C : HomologyToNumberTheoryConversion) : NumberTheoreticContext :=
  C.context

@[simp] theorem convertToNumberTheoreticContext_eq
    (C : HomologyToNumberTheoryConversion) :
    convertToNumberTheoreticContext C = C.context := rfl

/-- The conversion uses prismatic, spectral, determinant, torsion, and isogeny authority. -/
theorem conversion_authorities_required
    (C : HomologyToNumberTheoryConversion) :
    C.prismaticAuthorityLinksHomology ∧
      C.spectralAuthorityLinksBridge ∧
      C.determinantAuthorityLinksBridge ∧
      C.torsionAuthorityLinksArithmetic ∧
      C.isogenyFlowLinksContext :=
  ⟨C.prismaticAuthorityLinksHomologyProof,
    C.spectralAuthorityLinksBridgeProof,
    C.determinantAuthorityLinksBridgeProof,
    C.torsionAuthorityLinksArithmeticProof,
    C.isogenyFlowLinksContextProof⟩

/-- The conversion does not infer elliptic torsion from the torsionless homology shadow. -/
theorem conversion_does_not_infer_torsion_from_homology
    (C : HomologyToNumberTheoryConversion) :
    ¬ TorsionlessHomologyInfersEllipticTorsion C.homology :=
  C.noTorsionInferredFromHomology

/-! ## 8. Existing field-only collision boundary -/

/--
Field-only TDA recovery cannot cross an arithmetic collision.

This restates the existing torsion-blindness boundary.
-/
theorem fieldOnly_recovery_blocked_by_collision
    (C : ArithmeticCollision)
    (A : FieldOnlyArithmeticAlgorithm) :
    ¬ (TorsionBlindDataHomology.CorrectArithmeticRecovery A C.left ∧
        TorsionBlindDataHomology.CorrectArithmeticRecovery A C.right) :=
  TorsionBlindDataHomology.no_field_only_recovery_from_collision C A

/-! ## 9. Authority summary theorem -/

/--
Full authority summary.

A torsionless homology shadow may be converted into a number-theoretic context
only through external authorities. In particular, elliptic torsion is not inferred
from the homology shadow.
-/
theorem authority_conversion_summary
    (C : HomologyToNumberTheoryConversion) :
    C.context.prismaticContextSound ∧
      C.context.spectralContextSound ∧
      C.context.determinantContextSound ∧
      C.context.isogenyContextSound ∧
      ¬ TorsionlessHomologyInfersEllipticTorsion C.homology :=
  ⟨C.context.prismaticContextSoundProof,
    C.context.spectralContextSoundProof,
    C.context.determinantContextSoundProof,
    C.context.isogenyContextSoundProof,
    C.noTorsionInferredFromHomology⟩

/-! ## 10. Small certificate-only example -/

def examplePrime2 : Nat :=
  2

theorem examplePrime2_positive : examplePrime2 > 0 := by
  decide

def examplePrismaticAuthority : PrismaticSiteAuthority where
  basePrime := 2
  basePrimePositive := by decide
  prismLabel := "example bounded prism"
  formalSchemeLabel := "example formal scheme"
  prismaticSiteLabel := "example prismatic site"
  boundedPrism := True
  boundedPrismProof := trivial
  deltaRingStructure := True
  deltaRingStructureProof := trivial
  cartierDivisorIdeal := True
  cartierDivisorIdealProof := trivial
  derivedComplete := True
  derivedCompleteProof := trivial
  frobeniusLift := True
  frobeniusLiftProof := trivial
  siteConstructed := True
  siteConstructedProof := trivial
  comparisonToCrystalline := True
  comparisonToCrystallineProof := trivial
  comparisonToDeRham := True
  comparisonToDeRhamProof := trivial
  comparisonToEtale := True
  comparisonToEtaleProof := trivial
  comparisonToHodgeTate := True
  comparisonToHodgeTateProof := trivial

def exampleSpectralAuthority : ContinuousSpectralTripleAuthority where
  label := "example spectral triple"
  algebraLabel := "A"
  hilbertSpaceLabel := "H"
  diracOperatorLabel := "D"
  spectralTripleAxioms := True
  spectralTripleAxiomsProof := trivial
  representationSound := True
  representationSoundProof := trivial
  denseDomainSound := True
  denseDomainSoundProof := trivial
  compactResolventSound := True
  compactResolventSoundProof := trivial
  boundedCommutatorsSound := True
  boundedCommutatorsSoundProof := trivial
  metricSpectralTripleSound := True
  metricSpectralTripleSoundProof := trivial
  traceFormulaCompatible := True
  traceFormulaCompatibleProof := trivial

def exampleDeterminantAuthority : RegularizedDeterminantAuthority where
  label := "example regularized determinant"
  operatorLabel := "D + lambda"
  determinantCoeffs := [1]
  relativeDeterminantCoeffs := [1]
  determinantDefined := True
  determinantDefinedProof := trivial
  regularizationSound := True
  regularizationSoundProof := trivial
  finiteApproximationSound := True
  finiteApproximationSoundProof := trivial
  errorBoundSound := True
  errorBoundSoundProof := trivial
  compatibleWithSpectralTriple := True
  compatibleWithSpectralTripleProof := trivial
  compatibleWithPrismaticTrace := True
  compatibleWithPrismaticTraceProof := trivial

def exampleTorsionCertificate : ArithmeticTorsionCertificate where
  curveHash := 7
  torsionHash := 11
  orderClaim := 1
  certificateSound := True
  certificateSoundProof := trivial
  notInferredFromFieldHomology := True
  notInferredFromFieldHomologyProof := trivial

def exampleTorsionAuthority : EllipticTorsionAuthority :=
  .arithmetic exampleTorsionCertificate

def exampleHomologyShadow : TorsionlessHomologyShadow where
  fieldCharacteristic := 2
  bettiNumbers := [1, 1]
  barcodeHash := 101
  chainComplexHash := 202
  torsionForgotten := True
  torsionForgottenProof := trivial
  fieldCoefficientPipeline := True
  fieldCoefficientPipelineProof := trivial

def exampleQuasiStep : QuasiIsogenyStep where
  sourceCurveHash := 7
  targetCurveHash := 13
  numeratorDegree := 2
  denominator := 1
  denominatorPositive := by decide
  rationalIsogenySound := True
  rationalIsogenySoundProof := trivial
  compatibleWithPrismaticRealization := True
  compatibleWithPrismaticRealizationProof := trivial
  compatibleWithSpectralRealization := True
  compatibleWithSpectralRealizationProof := trivial

def exampleQuasiFlow : QuasiIsogenyFlow where
  sourceCurveHash := 7
  targetCurveHash := 13
  steps := [exampleQuasiStep]
  composable := True
  composableProof := trivial
  flowSound := True
  flowSoundProof := trivial
  preservesNumberTheoreticContext := True
  preservesNumberTheoreticContextProof := trivial

def exampleBridgeData : AnalyticPrimeBridgeData where
  relativeDeterminantCoeffs := [1]
  squareFreeMobiusWeight := 1
  valuationSupport := [1, 0, 2]
  hasPrimePowerDependence := true
  hasPrismaticCertificate := true
  hasSpectralCertificate := true
  needsTorsionWitness := false
  acceptedZKPWitness := false

def exampleNumberTheoreticContext : NumberTheoreticContext where
  arithmeticModelLabel := "example arithmetic context"
  curveHash := 13
  bridgeData := exampleBridgeData
  localTraceData := [0]
  determinantPayload := [1]
  isogenyFlow := exampleQuasiFlow
  prismaticContextSound := True
  prismaticContextSoundProof := trivial
  spectralContextSound := True
  spectralContextSoundProof := trivial
  determinantContextSound := True
  determinantContextSoundProof := trivial
  isogenyContextSound := True
  isogenyContextSoundProof := trivial

def exampleAuthorityBundle : AuthorityBundle where
  prismatic := examplePrismaticAuthority
  spectral := exampleSpectralAuthority
  determinant := exampleDeterminantAuthority
  torsion := exampleTorsionAuthority

def exampleConversion : HomologyToNumberTheoryConversion where
  homology := exampleHomologyShadow
  authorities := exampleAuthorityBundle
  context := exampleNumberTheoreticContext
  homologyMatchesFiniteData := True
  homologyMatchesFiniteDataProof := trivial
  prismaticAuthorityLinksHomology := True
  prismaticAuthorityLinksHomologyProof := trivial
  spectralAuthorityLinksBridge := True
  spectralAuthorityLinksBridgeProof := trivial
  determinantAuthorityLinksBridge := True
  determinantAuthorityLinksBridgeProof := trivial
  torsionAuthorityLinksArithmetic := True
  torsionAuthorityLinksArithmeticProof := trivial
  isogenyFlowLinksContext := True
  isogenyFlowLinksContextProof := trivial
  noTorsionInferredFromHomology :=
    torsionless_homology_does_not_infer_elliptic_torsion exampleHomologyShadow

theorem example_conversion_summary :
    exampleNumberTheoreticContext.prismaticContextSound ∧
      exampleNumberTheoreticContext.spectralContextSound ∧
      exampleNumberTheoreticContext.determinantContextSound ∧
      exampleNumberTheoreticContext.isogenyContextSound ∧
      ¬ TorsionlessHomologyInfersEllipticTorsion exampleHomologyShadow :=
  authority_conversion_summary exampleConversion

end ArithmeticAuthorities
end Cube
end Boolean
