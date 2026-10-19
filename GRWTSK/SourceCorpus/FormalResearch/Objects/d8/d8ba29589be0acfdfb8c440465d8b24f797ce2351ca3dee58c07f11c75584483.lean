import Boolean.Cube.ArithmeticAuthorities

/-!
# Fredholm determinant authority

This module converts the regularized determinant authority into a
Fredholm-style determinant interface.

The intended analytic form is:

  det_F(I + K)

where `K` is a trace-class perturbation. The trace-class property, convergence
of the determinant, trace-log expansion, and compatibility with prismatic and
spectral traces are all external authority.

The finite reducer may consume:

* determinant coefficients;
* trace power sums;
* relative determinant coefficients;
* finite error bounds;
* ZKP/torsion witness flags.

The finite reducer may not compute trace-classness, Fredholm determinant
convergence, prismatic comparison, spectral trace formula validity, or elliptic
arithmetic torsion.
-/

namespace Boolean
namespace Cube
namespace FredholmDeterminantAuthority

abbrev AnalyticPrimeBridgeData :=
  ArithmeticAuthorities.AnalyticPrimeBridgeData

abbrev TorsionlessHomologyShadow :=
  ArithmeticAuthorities.TorsionlessHomologyShadow

abbrev NumberTheoreticContext :=
  ArithmeticAuthorities.NumberTheoreticContext

abbrev AuthorityBundle :=
  ArithmeticAuthorities.AuthorityBundle

abbrev HomologyToNumberTheoryConversion :=
  ArithmeticAuthorities.HomologyToNumberTheoryConversion

abbrev QuasiIsogenyFlow :=
  ArithmeticAuthorities.QuasiIsogenyFlow

abbrev ArithmeticCollision :=
  ArithmeticAuthorities.ArithmeticCollision

abbrev FieldOnlyArithmeticAlgorithm :=
  ArithmeticAuthorities.FieldOnlyArithmeticAlgorithm

abbrev PublicStatement :=
  ArithmeticAuthorities.PublicStatement

abbrev PrivateWitness :=
  ArithmeticAuthorities.PrivateWitness

abbrev ZKPRelation :=
  ArithmeticAuthorities.ZKPRelation

/-! ## 1. Fredholm operator authority -/

/--
Authority that an operator has the form `I + K`, with `K` trace-class.

This is an analytic certificate shell. The reducer does not inspect the
operator or prove trace-classness.
-/
structure FredholmOperatorAuthority where
  label : String
  hilbertSpaceLabel : String
  identityLabel : String
  perturbationLabel : String
  compactPerturbation : Prop
  compactPerturbationProof : compactPerturbation
  traceClassPerturbation : Prop
  traceClassPerturbationProof : traceClassPerturbation
  identityPlusTraceClass : Prop
  identityPlusTraceClassProof : identityPlusTraceClass
  compatibleWithSpectralTriple : Prop
  compatibleWithSpectralTripleProof : compatibleWithSpectralTriple
  compatibleWithPrismaticTrace : Prop
  compatibleWithPrismaticTraceProof : compatibleWithPrismaticTrace

/-- A Fredholm operator authority supplies a trace-class perturbation claim. -/
theorem fredholm_operator_traceClass
    (A : FredholmOperatorAuthority) :
    A.traceClassPerturbation :=
  A.traceClassPerturbationProof

/-- The finite reducer does not own the analytic Fredholm operator. -/
def FiniteReducerOwnsFredholmOperator
    (_A : FredholmOperatorAuthority) : Prop :=
  False

theorem finite_reducer_does_not_own_fredholm_operator
    (A : FredholmOperatorAuthority) :
    ¬ FiniteReducerOwnsFredholmOperator A := by
  intro h
  exact h

/-! ## 2. Fredholm series and trace-log authority -/

/--
Finite series data attached to a Fredholm determinant.

For a genuine trace-class perturbation, one expects a trace-log expansion such
as `log det_F(I + zK) = sum (-1)^(n+1) z^n Tr(K^n) / n`. This structure only
records finite emitted data and external soundness claims.
-/
structure FredholmSeriesAuthority where
  determinantCoeffs : List Int
  tracePowerSums : List Int
  determinantSeriesSound : Prop
  determinantSeriesSoundProof : determinantSeriesSound
  traceLogExpansionSound : Prop
  traceLogExpansionSoundProof : traceLogExpansionSound
  finiteCoefficientSound : Prop
  finiteCoefficientSoundProof : finiteCoefficientSound

/-- Finite determinant coefficients emitted by the Fredholm series authority. -/
def FredholmSeriesAuthority.finiteCoefficients
    (S : FredholmSeriesAuthority) : List Int :=
  S.determinantCoeffs

@[simp] theorem fredholmSeries_finiteCoefficients_eq
    (S : FredholmSeriesAuthority) :
    S.finiteCoefficients = S.determinantCoeffs := rfl

/-- Finite trace power sums emitted by the Fredholm series authority. -/
def FredholmSeriesAuthority.finiteTracePowerSums
    (S : FredholmSeriesAuthority) : List Int :=
  S.tracePowerSums

@[simp] theorem fredholmSeries_finiteTracePowerSums_eq
    (S : FredholmSeriesAuthority) :
    S.finiteTracePowerSums = S.tracePowerSums := rfl

/-! ## 3. Error bounds -/

/-- Dyadic-style finite error bound for a Fredholm determinant approximation. -/
structure FredholmErrorBound where
  numerator : Nat
  exponent : Nat
  boundSound : Prop
  boundSoundProof : boundSound

/-- The error-bound soundness is external authority. -/
theorem fredholm_error_bound_sound
    (E : FredholmErrorBound) :
    E.boundSound :=
  E.boundSoundProof

/-! ## 4. Fredholm determinant authority -/

/--
Fredholm determinant authority.

This packages the analytic `I + K` operator authority, finite determinant
coefficient data, trace-log expansion authority, and finite error-bound
authority.
-/
structure FredholmAuthority where
  operator : FredholmOperatorAuthority
  series : FredholmSeriesAuthority
  error : FredholmErrorBound
  determinantLabel : String
  determinantDefined : Prop
  determinantDefinedProof : determinantDefined
  fredholmRegularizationSound : Prop
  fredholmRegularizationSoundProof : fredholmRegularizationSound
  finiteApproximationSound : Prop
  finiteApproximationSoundProof : finiteApproximationSound

/-- Finite determinant coefficients exposed to reducers. -/
def FredholmAuthority.finitePayload
    (A : FredholmAuthority) : List Int :=
  A.series.determinantCoeffs

@[simp] theorem fredholmAuthority_finitePayload_eq
    (A : FredholmAuthority) :
    A.finitePayload = A.series.determinantCoeffs := rfl

/-- Fredholm determinant soundness is external analytic authority. -/
theorem fredholmAuthority_has_external_soundness
    (A : FredholmAuthority) :
    A.determinantDefined ∧
      A.fredholmRegularizationSound ∧
      A.finiteApproximationSound ∧
      A.error.boundSound :=
  ⟨A.determinantDefinedProof,
    A.fredholmRegularizationSoundProof,
    A.finiteApproximationSoundProof,
    A.error.boundSoundProof⟩

/--
Convert a Fredholm determinant authority into the prior regularized determinant
authority interface.

This is a forgetful conversion: it exposes finite coefficient lists and retains
the analytic authority fields as proof-carrying certificates.
-/
def FredholmAuthority.toRegularized
    (A : FredholmAuthority) :
    ArithmeticAuthorities.RegularizedDeterminantAuthority where
  label := A.determinantLabel
  operatorLabel := A.operator.label
  determinantCoeffs := A.series.determinantCoeffs
  relativeDeterminantCoeffs := A.series.determinantCoeffs
  determinantDefined := A.determinantDefined
  determinantDefinedProof := A.determinantDefinedProof
  regularizationSound := A.fredholmRegularizationSound
  regularizationSoundProof := A.fredholmRegularizationSoundProof
  finiteApproximationSound := A.finiteApproximationSound
  finiteApproximationSoundProof := A.finiteApproximationSoundProof
  errorBoundSound := A.error.boundSound
  errorBoundSoundProof := A.error.boundSoundProof
  compatibleWithSpectralTriple := A.operator.compatibleWithSpectralTriple
  compatibleWithSpectralTripleProof :=
    A.operator.compatibleWithSpectralTripleProof
  compatibleWithPrismaticTrace := A.operator.compatibleWithPrismaticTrace
  compatibleWithPrismaticTraceProof :=
    A.operator.compatibleWithPrismaticTraceProof

@[simp] theorem toRegularized_coeffs
    (A : FredholmAuthority) :
    A.toRegularized.relativeDeterminantCoeffs =
      A.series.determinantCoeffs := rfl

/-! ## 5. Relative Fredholm bridge -/

/--
A relative Fredholm bridge between two Fredholm determinant authorities.

Analytically this is the certificate shell for a quotient such as
`det_F(I + K_p) / det_F(I + K_q)`. The finite reducer only consumes the emitted
relative coefficients and error data.
-/
structure RelativeFredholmBridge where
  left : FredholmAuthority
  right : FredholmAuthority
  relativeDeterminantCoeffs : List Int
  quotientSound : Prop
  quotientSoundProof : quotientSound
  errorNumerator : Nat
  errorExponent : Nat
  errorBoundSound : Prop
  errorBoundSoundProof : errorBoundSound
  compatibleWithPrismaticComparison : Prop
  compatibleWithPrismaticComparisonProof :
    compatibleWithPrismaticComparison
  compatibleWithIsogenyFlow : Prop
  compatibleWithIsogenyFlowProof : compatibleWithIsogenyFlow

/-- Relative Fredholm bridge soundness is external authority. -/
theorem relative_fredholm_bridge_sound
    (B : RelativeFredholmBridge) :
    B.quotientSound ∧
      B.errorBoundSound ∧
      B.compatibleWithPrismaticComparison ∧
      B.compatibleWithIsogenyFlow :=
  ⟨B.quotientSoundProof,
    B.errorBoundSoundProof,
    B.compatibleWithPrismaticComparisonProof,
    B.compatibleWithIsogenyFlowProof⟩

/-! ## 6. Reducer-facing finite Fredholm payload -/

/--
Finite reducer-facing Fredholm payload.

This is the Fredholm-style analogue of `AnalyticPrimeBridgeData`. It is finite
data emitted under analytic authority.
-/
structure FredholmFinitePayload where
  p : Nat
  q : Nat
  traceDepth : Nat
  frobeniusTraceP : List Int
  frobeniusTraceQ : List Int
  localEulerCoeffsP : List Int
  localEulerCoeffsQ : List Int
  fredholmCoeffsP : List Int
  fredholmCoeffsQ : List Int
  relativeFredholmCoeffs : List Int
  squareFreeMobiusWeight : Int
  valuationSupport : List Nat
  hasPrimePowerDependence : Bool
  spectralBoundaryCrossed : Bool
  prismaticBoundaryCrossed : Bool
  fredholmBoundaryCrossed : Bool
  errorNumerator : Nat
  errorExponent : Nat
  hasPrismaticCertificate : Bool
  hasSpectralCertificate : Bool
  hasFredholmCertificate : Bool
  needsTorsionWitness : Bool
  acceptedZKPWitness : Bool
deriving Repr, DecidableEq

/--
Emit finite Fredholm payload from a relative Fredholm bridge plus finite
arithmetic trace data.
-/
def RelativeFredholmBridge.emitPayload
    (B : RelativeFredholmBridge)
    (p q traceDepth : Nat)
    (frobeniusTraceP frobeniusTraceQ : List Int)
    (localEulerCoeffsP localEulerCoeffsQ : List Int)
    (squareFreeMobiusWeight : Int)
    (valuationSupport : List Nat)
    (hasPrimePowerDependence : Bool)
    (needsTorsionWitness acceptedZKPWitness : Bool) :
    FredholmFinitePayload where
  p := p
  q := q
  traceDepth := traceDepth
  frobeniusTraceP := frobeniusTraceP
  frobeniusTraceQ := frobeniusTraceQ
  localEulerCoeffsP := localEulerCoeffsP
  localEulerCoeffsQ := localEulerCoeffsQ
  fredholmCoeffsP := B.left.series.determinantCoeffs
  fredholmCoeffsQ := B.right.series.determinantCoeffs
  relativeFredholmCoeffs := B.relativeDeterminantCoeffs
  squareFreeMobiusWeight := squareFreeMobiusWeight
  valuationSupport := valuationSupport
  hasPrimePowerDependence := hasPrimePowerDependence
  spectralBoundaryCrossed := true
  prismaticBoundaryCrossed := true
  fredholmBoundaryCrossed := true
  errorNumerator := B.errorNumerator
  errorExponent := B.errorExponent
  hasPrismaticCertificate := true
  hasSpectralCertificate := true
  hasFredholmCertificate := true
  needsTorsionWitness := needsTorsionWitness
  acceptedZKPWitness := acceptedZKPWitness

@[simp] theorem emitPayload_relativeCoeffs
    (B : RelativeFredholmBridge)
    (p q traceDepth : Nat)
    (trP trQ eP eQ : List Int)
    (mu : Int)
    (valuation : List Nat)
    (hasPP needsTors accepted : Bool) :
    (B.emitPayload p q traceDepth trP trQ eP eQ mu valuation hasPP
      needsTors accepted).relativeFredholmCoeffs =
      B.relativeDeterminantCoeffs := rfl

@[simp] theorem emitPayload_hasFredholmCertificate
    (B : RelativeFredholmBridge)
    (p q traceDepth : Nat)
    (trP trQ eP eQ : List Int)
    (mu : Int)
    (valuation : List Nat)
    (hasPP needsTors accepted : Bool) :
    (B.emitPayload p q traceDepth trP trQ eP eQ mu valuation hasPP
      needsTors accepted).hasFredholmCertificate =
      true := rfl

/-! ## 7. Conversion to analytic-prime-bridge data -/

/--
Forget the explicitly Fredholm labels and convert to the existing analytic prime
bridge data consumed by `ZetaAuthorityReducer`.
-/
def FredholmFinitePayload.toAnalyticPrimeBridgeData
    (D : FredholmFinitePayload) : AnalyticPrimeBridgeData where
  relativeDeterminantCoeffs := D.relativeFredholmCoeffs
  squareFreeMobiusWeight := D.squareFreeMobiusWeight
  valuationSupport := D.valuationSupport
  hasPrimePowerDependence := D.hasPrimePowerDependence
  hasPrismaticCertificate := D.hasPrismaticCertificate
  hasSpectralCertificate := D.hasSpectralCertificate
  needsTorsionWitness := D.needsTorsionWitness
  acceptedZKPWitness := D.acceptedZKPWitness

@[simp] theorem toAnalyticPrimeBridgeData_preserves_mobius
    (D : FredholmFinitePayload) :
    D.toAnalyticPrimeBridgeData.squareFreeMobiusWeight =
      D.squareFreeMobiusWeight := rfl

@[simp] theorem toAnalyticPrimeBridgeData_preserves_relative_coeffs
    (D : FredholmFinitePayload) :
    D.toAnalyticPrimeBridgeData.relativeDeterminantCoeffs =
      D.relativeFredholmCoeffs := rfl

@[simp] theorem toAnalyticPrimeBridgeData_preserves_torsion_flags
    (D : FredholmFinitePayload) :
    D.toAnalyticPrimeBridgeData.needsTorsionWitness =
        D.needsTorsionWitness ∧
      D.toAnalyticPrimeBridgeData.acceptedZKPWitness =
        D.acceptedZKPWitness := by
  exact ⟨rfl, rfl⟩

/-! ## 8. Fredholm-number-theoretic context -/

/--
A number-theoretic context equipped with Fredholm determinant authority.

This does not infer arithmetic from homology. It packages the external Fredholm
authority needed to interpret finite determinant payloads.
-/
structure FredholmNumberTheoreticContext where
  baseContext : NumberTheoreticContext
  fredholmPayload : FredholmFinitePayload
  fredholmBridge : RelativeFredholmBridge
  fredholmLinksDeterminantPayload : Prop
  fredholmLinksDeterminantPayloadProof :
    fredholmLinksDeterminantPayload
  fredholmCompatibleWithPrismaticContext : Prop
  fredholmCompatibleWithPrismaticContextProof :
    fredholmCompatibleWithPrismaticContext
  fredholmCompatibleWithIsogenyFlow : Prop
  fredholmCompatibleWithIsogenyFlowProof :
    fredholmCompatibleWithIsogenyFlow

/--
Authorized conversion from torsionless homology into a
Fredholm-number-theoretic context.

The conversion uses external authority: prismatic, spectral, determinant,
torsion, isogeny/quasi-isogeny, and Fredholm determinant authority.
-/
structure FredholmHomologyToNumberTheoryConversion where
  baseConversion : HomologyToNumberTheoryConversion
  fredholmContext : FredholmNumberTheoreticContext
  homologyMatchesFredholmPayload : Prop
  homologyMatchesFredholmPayloadProof :
    homologyMatchesFredholmPayload
  fredholmAuthorityLinksBridge : Prop
  fredholmAuthorityLinksBridgeProof : fredholmAuthorityLinksBridge
  fredholmAuthorityLinksContext : Prop
  fredholmAuthorityLinksContextProof : fredholmAuthorityLinksContext
  noTorsionInferredFromHomology :
    ¬ ArithmeticAuthorities.TorsionlessHomologyInfersEllipticTorsion
      baseConversion.homology

/-- Execute the Fredholm-authorized conversion. -/
def convertToFredholmNumberTheoreticContext
    (C : FredholmHomologyToNumberTheoryConversion) :
    FredholmNumberTheoreticContext :=
  C.fredholmContext

@[simp] theorem convertToFredholmNumberTheoreticContext_eq
    (C : FredholmHomologyToNumberTheoryConversion) :
    convertToFredholmNumberTheoreticContext C =
      C.fredholmContext := rfl

/-- The Fredholm conversion requires external Fredholm authority. -/
theorem fredholm_conversion_authority_required
    (C : FredholmHomologyToNumberTheoryConversion) :
    C.fredholmAuthorityLinksBridge ∧
      C.fredholmAuthorityLinksContext ∧
      C.fredholmContext.fredholmLinksDeterminantPayload ∧
      C.fredholmContext.fredholmCompatibleWithPrismaticContext ∧
      C.fredholmContext.fredholmCompatibleWithIsogenyFlow :=
  ⟨C.fredholmAuthorityLinksBridgeProof,
    C.fredholmAuthorityLinksContextProof,
    C.fredholmContext.fredholmLinksDeterminantPayloadProof,
    C.fredholmContext.fredholmCompatibleWithPrismaticContextProof,
    C.fredholmContext.fredholmCompatibleWithIsogenyFlowProof⟩

/-- The Fredholm conversion still does not infer elliptic torsion from homology. -/
theorem fredholm_conversion_does_not_infer_torsion_from_homology
    (C : FredholmHomologyToNumberTheoryConversion) :
    ¬ ArithmeticAuthorities.TorsionlessHomologyInfersEllipticTorsion
      C.baseConversion.homology :=
  C.noTorsionInferredFromHomology

/-! ## 9. Existing torsion/ZKP boundary -/

/-- Verified ZKP torsion authority still certifies the public torsion claim. -/
theorem verified_torsion_sound
    (S : PublicStatement)
    (W : PrivateWitness)
    (h : ZKPRelation S W) :
    W.model.rationalTorsion = S.claim.claimedTorsion :=
  TorsionBlindDataHomology.RecoverabilityZKP.relation_torsion h

/-- Field-only recovery remains blocked by arithmetic collisions. -/
theorem fieldOnly_recovery_blocked_by_collision
    (C : ArithmeticCollision)
    (A : FieldOnlyArithmeticAlgorithm) :
    ¬ (TorsionBlindDataHomology.CorrectArithmeticRecovery A C.left ∧
        TorsionBlindDataHomology.CorrectArithmeticRecovery A C.right) :=
  TorsionBlindDataHomology.no_field_only_recovery_from_collision C A

/-! ## 10. Authority summary theorem -/

/--
Summary: Fredholm determinant payloads may enter number-theoretic context only
through Fredholm authority, and torsion is still not inferred from torsionless
homology.
-/
theorem fredholm_authority_summary
    (C : FredholmHomologyToNumberTheoryConversion) :
    C.fredholmContext.baseContext.prismaticContextSound ∧
      C.fredholmContext.baseContext.spectralContextSound ∧
      C.fredholmContext.baseContext.determinantContextSound ∧
      C.fredholmAuthorityLinksBridge ∧
      ¬ ArithmeticAuthorities.TorsionlessHomologyInfersEllipticTorsion
        C.baseConversion.homology :=
  ⟨C.fredholmContext.baseContext.prismaticContextSoundProof,
    C.fredholmContext.baseContext.spectralContextSoundProof,
    C.fredholmContext.baseContext.determinantContextSoundProof,
    C.fredholmAuthorityLinksBridgeProof,
    C.noTorsionInferredFromHomology⟩

/-! ## 11. Small certificate-only example -/

def exampleFredholmOperator : FredholmOperatorAuthority where
  label := "I + K"
  hilbertSpaceLabel := "H"
  identityLabel := "I"
  perturbationLabel := "K"
  compactPerturbation := True
  compactPerturbationProof := trivial
  traceClassPerturbation := True
  traceClassPerturbationProof := trivial
  identityPlusTraceClass := True
  identityPlusTraceClassProof := trivial
  compatibleWithSpectralTriple := True
  compatibleWithSpectralTripleProof := trivial
  compatibleWithPrismaticTrace := True
  compatibleWithPrismaticTraceProof := trivial

def exampleFredholmSeries : FredholmSeriesAuthority where
  determinantCoeffs := [1]
  tracePowerSums := [0]
  determinantSeriesSound := True
  determinantSeriesSoundProof := trivial
  traceLogExpansionSound := True
  traceLogExpansionSoundProof := trivial
  finiteCoefficientSound := True
  finiteCoefficientSoundProof := trivial

def exampleFredholmError : FredholmErrorBound where
  numerator := 0
  exponent := 1
  boundSound := True
  boundSoundProof := trivial

def exampleFredholmAuthority : FredholmAuthority where
  operator := exampleFredholmOperator
  series := exampleFredholmSeries
  error := exampleFredholmError
  determinantLabel := "det_F(I + K)"
  determinantDefined := True
  determinantDefinedProof := trivial
  fredholmRegularizationSound := True
  fredholmRegularizationSoundProof := trivial
  finiteApproximationSound := True
  finiteApproximationSoundProof := trivial

def exampleRelativeFredholmBridge : RelativeFredholmBridge where
  left := exampleFredholmAuthority
  right := exampleFredholmAuthority
  relativeDeterminantCoeffs := [1]
  quotientSound := True
  quotientSoundProof := trivial
  errorNumerator := 0
  errorExponent := 1
  errorBoundSound := True
  errorBoundSoundProof := trivial
  compatibleWithPrismaticComparison := True
  compatibleWithPrismaticComparisonProof := trivial
  compatibleWithIsogenyFlow := True
  compatibleWithIsogenyFlowProof := trivial

def exampleFredholmPayload : FredholmFinitePayload :=
  exampleRelativeFredholmBridge.emitPayload
    2
    3
    1
    [0]
    [0]
    [1]
    [1]
    1
    [1, 0, 2]
    true
    false
    false

def exampleFredholmNumberTheoreticContext :
    FredholmNumberTheoreticContext where
  baseContext := ArithmeticAuthorities.exampleNumberTheoreticContext
  fredholmPayload := exampleFredholmPayload
  fredholmBridge := exampleRelativeFredholmBridge
  fredholmLinksDeterminantPayload := True
  fredholmLinksDeterminantPayloadProof := trivial
  fredholmCompatibleWithPrismaticContext := True
  fredholmCompatibleWithPrismaticContextProof := trivial
  fredholmCompatibleWithIsogenyFlow := True
  fredholmCompatibleWithIsogenyFlowProof := trivial

def exampleFredholmConversion :
    FredholmHomologyToNumberTheoryConversion where
  baseConversion := ArithmeticAuthorities.exampleConversion
  fredholmContext := exampleFredholmNumberTheoreticContext
  homologyMatchesFredholmPayload := True
  homologyMatchesFredholmPayloadProof := trivial
  fredholmAuthorityLinksBridge := True
  fredholmAuthorityLinksBridgeProof := trivial
  fredholmAuthorityLinksContext := True
  fredholmAuthorityLinksContextProof := trivial
  noTorsionInferredFromHomology :=
    ArithmeticAuthorities.conversion_does_not_infer_torsion_from_homology
      ArithmeticAuthorities.exampleConversion

theorem example_fredholm_summary :
    exampleFredholmNumberTheoreticContext.baseContext.prismaticContextSound ∧
      exampleFredholmNumberTheoreticContext.baseContext.spectralContextSound ∧
      exampleFredholmNumberTheoreticContext.baseContext.determinantContextSound ∧
      True ∧
      ¬ ArithmeticAuthorities.TorsionlessHomologyInfersEllipticTorsion
        ArithmeticAuthorities.exampleHomologyShadow := by
  simpa [exampleFredholmConversion, ArithmeticAuthorities.exampleConversion]
    using fredholm_authority_summary exampleFredholmConversion

end FredholmDeterminantAuthority
end Cube
end Boolean
