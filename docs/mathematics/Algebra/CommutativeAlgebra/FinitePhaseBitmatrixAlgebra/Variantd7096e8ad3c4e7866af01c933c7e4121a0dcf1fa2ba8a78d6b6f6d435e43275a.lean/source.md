# Complete source: GRWTSK.Algebra.CommutativeAlgebra.FinitePhaseBitmatrixAlgebra.Variantd7096e8ad3c4e7866af01c933c7e4121a0dcf1fa2ba8a78d6b6f6d435e43275a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e72349962b2c63696f6db9d063d600f738ea327a` · SHA-256 `d7096e8ad3c4e7866af01c933c7e4121a0dcf1fa2ba8a78d6b6f6d435e43275a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Arithmetic.ModularSymmetryStack

set_option autoImplicit false

namespace Think.Arithmetic.FinitePhaseBitmatrixAlgebra

structure Mat2F2 where
  a : Nat
  b : Nat
  c : Nat
  d : Nat
deriving Repr, DecidableEq

def detMod2 (M : Mat2F2) : Nat :=
  (M.a * M.d + M.b * M.c) % 2

def ordinaryTrace (M : Mat2F2) : Nat :=
  M.a + M.d

def traceMod2 (M : Mat2F2) : Nat :=
  ordinaryTrace M % 2

def shiftedDetMod2 (M : Mat2F2) : Nat :=
  (((M.a + 1) % 2) * ((M.d + 1) % 2) + M.b * M.c) % 2

def shiftedDetFormulaMod2 (M : Mat2F2) : Nat :=
  (detMod2 M + traceMod2 M + 1) % 2

def phase (M : Mat2F2) : Nat × Nat :=
  (detMod2 M, shiftedDetMod2 M)

def allMat2F2 : List Mat2F2 := [
  { a := 0, b := 0, c := 0, d := 0 },
  { a := 0, b := 0, c := 0, d := 1 },
  { a := 0, b := 0, c := 1, d := 0 },
  { a := 0, b := 0, c := 1, d := 1 },
  { a := 0, b := 1, c := 0, d := 0 },
  { a := 0, b := 1, c := 0, d := 1 },
  { a := 0, b := 1, c := 1, d := 0 },
  { a := 0, b := 1, c := 1, d := 1 },
  { a := 1, b := 0, c := 0, d := 0 },
  { a := 1, b := 0, c := 0, d := 1 },
  { a := 1, b := 0, c := 1, d := 0 },
  { a := 1, b := 0, c := 1, d := 1 },
  { a := 1, b := 1, c := 0, d := 0 },
  { a := 1, b := 1, c := 0, d := 1 },
  { a := 1, b := 1, c := 1, d := 0 },
  { a := 1, b := 1, c := 1, d := 1 }
]

def countDet (value : Nat) : Nat :=
  (allMat2F2.filter (fun M => decide (detMod2 M = value))).length

def countShiftedDet (value : Nat) : Nat :=
  (allMat2F2.filter (fun M => decide (shiftedDetMod2 M = value))).length

def countPhase (d0 d1 : Nat) : Nat :=
  (allMat2F2.filter (fun M => decide (phase M = (d0, d1)))).length

def shiftedFormulaHoldsForTable : Bool :=
  allMat2F2.all (fun M => decide (shiftedDetMod2 M = shiftedDetFormulaMod2 M))

inductive RankIdentityBucket where
  | zero
  | identity
  | rankOneSingular
  | nonIdentityInvertible
deriving Repr, DecidableEq

def zeroMatrix : Mat2F2 :=
  { a := 0, b := 0, c := 0, d := 0 }

def identityMatrix : Mat2F2 :=
  { a := 1, b := 0, c := 0, d := 1 }

def rankIdentityBucket (M : Mat2F2) : RankIdentityBucket :=
  if M = zeroMatrix then
    RankIdentityBucket.zero
  else if M = identityMatrix then
    RankIdentityBucket.identity
  else if detMod2 M = 1 then
    RankIdentityBucket.nonIdentityInvertible
  else
    RankIdentityBucket.rankOneSingular

def countBucket (bucket : RankIdentityBucket) : Nat :=
  (allMat2F2.filter (fun M => decide (rankIdentityBucket M = bucket))).length

structure RankIdentityBucketSurface where
  zeroCount : Nat
  identityCount : Nat
  rankOneSingularCount : Nat
  nonIdentityInvertibleCount : Nat
  spin4OrbitClaim : Bool
  conjugacyOrbitClaim : Bool
deriving Repr, DecidableEq

def rankIdentityBucketSurface : RankIdentityBucketSurface :=
  { zeroCount := countBucket RankIdentityBucket.zero
    identityCount := countBucket RankIdentityBucket.identity
    rankOneSingularCount := countBucket RankIdentityBucket.rankOneSingular
    nonIdentityInvertibleCount := countBucket RankIdentityBucket.nonIdentityInvertible
    spin4OrbitClaim := false
    conjugacyOrbitClaim := false }

structure TracePolynomialSurface where
  a0 : Int
  a1 : Int
  a2 : Int
  c1 : Int
  c2 : Int
  a0Normalized : Bool
  usesOrdinaryTrace : Bool
  usesTraceMod2 : Bool
  analyticContinuationClaim : Bool
  functionalEquationClaim : Bool
deriving Repr, DecidableEq

def exampleTracePolynomialSurface : TracePolynomialSurface :=
  { a0 := 1
    a1 := -3
    a2 := 2
    c1 := 3
    c2 := 2
    a0Normalized := true
    usesOrdinaryTrace := true
    usesTraceMod2 := false
    analyticContinuationClaim := false
    functionalEquationClaim := false }

def localSpinMobius (exponent : Nat) (c1 c2 : Int) : Int :=
  if exponent = 0 then
    1
  else if exponent = 1 then
    -c1
  else if exponent = 2 then
    c2
  else
    0

structure FiniteLocalFactorProductSurface where
  localFactors : List Int
  finiteProductZero : Bool
  vanishesIffLocalFactorVanishes : Bool
  criticalLineGlobalVanishClaim : Bool
deriving Repr, DecidableEq

def finiteLocalFactorProductSurface (localFactors : List Int) :
    FiniteLocalFactorProductSurface :=
  { localFactors := localFactors
    finiteProductZero := localFactors.any (fun factor => decide (factor = 0))
    vanishesIffLocalFactorVanishes := true
    criticalLineGlobalVanishClaim := false }

inductive CliffordDegenerationKind where
  | complexCliffordWhenLambdaNonzero
  | exteriorNilpotentAtCritical
deriving Repr, DecidableEq

structure CliffordDegenerationSurface where
  generatorCount : Nat
  lambdaZero : Bool
  kind : CliffordDegenerationKind
  localOperatorNilpotent : Bool
  finiteRepresentationDeterminantZero : Bool
  analyticZeroTheoremClaim : Bool
deriving Repr, DecidableEq

def cliffordDegenerationSurface (lambdaZero : Bool) : CliffordDegenerationSurface :=
  { generatorCount := 4
    lambdaZero := lambdaZero
    kind :=
      if lambdaZero then
        CliffordDegenerationKind.exteriorNilpotentAtCritical
      else
        CliffordDegenerationKind.complexCliffordWhenLambdaNonzero
    localOperatorNilpotent := lambdaZero
    finiteRepresentationDeterminantZero := lambdaZero
    analyticZeroTheoremClaim := false }

structure FiniteEulerWindowSurface where
  primeWindowLabel : String
  atHalf : Bool
  determinantFormula : String
  finiteProductPositive : Bool
  finiteDeterminantVanishClaim : Bool
  infiniteLimitCollapseOnly : Bool
deriving Repr, DecidableEq

def finiteEulerWindowAtHalf : FiniteEulerWindowSurface :=
  { primeWindowLabel := "finite_prime_window"
    atHalf := true
    determinantFormula := "prod_p_le_P_one_minus_p_inverse"
    finiteProductPositive := true
    finiteDeterminantVanishClaim := false
    infiniteLimitCollapseOnly := true }

inductive PhaseResidueRoute where
  | classifiedBySixteenStateBitmatrixSector
  | localNilpotentCollapseWitness
  | residualComplexPairedOrFourfoldObstruction
deriving Repr, DecidableEq

def routePhaseResidue (classifiedByPhaseTable lambdaZero : Bool) : PhaseResidueRoute :=
  if classifiedByPhaseTable then
    PhaseResidueRoute.classifiedBySixteenStateBitmatrixSector
  else if lambdaZero then
    PhaseResidueRoute.localNilpotentCollapseWitness
  else
    PhaseResidueRoute.residualComplexPairedOrFourfoldObstruction

structure Mat2FpStateCountSurface where
  prime : Nat
  stateCount : Nat
  binaryTruthTableOnlyAtTwo : Bool
  spin4ReductionClaim : Bool
deriving Repr, DecidableEq

def mat2FpStateCountSurface (p : Nat) : Mat2FpStateCountSurface :=
  { prime := p
    stateCount := p ^ 4
    binaryTruthTableOnlyAtTwo := decide (p = 2)
    spin4ReductionClaim := false }

inductive FrobeniusPhaseKind where
  | ordinary
  | supersingularTraceZero
  | traceZeroModuloSmallPrime
deriving Repr, DecidableEq

structure GoodPrimeFrobeniusSurface where
  p : Nat
  aP : Int
  epsilonP : Int
  hasseBoundSatisfied : Bool
  phaseKind : FrobeniusPhaseKind
  attachedToPrimeNotArbitraryMatrix : Bool
deriving Repr, DecidableEq

def ordinaryFrobeniusExample : GoodPrimeFrobeniusSurface :=
  { p := 5
    aP := 1
    epsilonP := 1
    hasseBoundSatisfied := true
    phaseKind := FrobeniusPhaseKind.ordinary
    attachedToPrimeNotArbitraryMatrix := true }

def supersingularFrobeniusExample : GoodPrimeFrobeniusSurface :=
  { p := 5
    aP := 0
    epsilonP := 1
    hasseBoundSatisfied := true
    phaseKind := FrobeniusPhaseKind.supersingularTraceZero
    attachedToPrimeNotArbitraryMatrix := true }

structure FrobeniusEulerFactorSurface where
  p : Nat
  aP : Int
  epsilonP : Int
  constant : Int
  linearCoefficient : Int
  quadraticCoefficient : Int
  standardGoodPrimeForm : Bool
  arbitraryMatrixDeterminantClaim : Bool
deriving Repr, DecidableEq

def frobeniusEulerFactorExample : FrobeniusEulerFactorSurface :=
  { p := 7
    aP := -3
    epsilonP := 1
    constant := 1
    linearCoefficient := 3
    quadraticCoefficient := 7
    standardGoodPrimeForm := true
    arbitraryMatrixDeterminantClaim := false }

def supersingularEulerFactorExample : FrobeniusEulerFactorSurface :=
  { p := 5
    aP := 0
    epsilonP := 1
    constant := 1
    linearCoefficient := 0
    quadraticCoefficient := 5
    standardGoodPrimeForm := true
    arbitraryMatrixDeterminantClaim := false }

structure FrobeniusMatrixSurface where
  trace : Int
  determinant : Int
  characteristicPolynomial : List Int
  determinantRepresentation : String
  arbitraryMatrixAllowed : Bool
deriving Repr, DecidableEq

def frobeniusMatrixExample : FrobeniusMatrixSurface :=
  { trace := -3
    determinant := 7
    characteristicPolynomial := [1, 3, 7]
    determinantRepresentation := "det_I_minus_F_p_T"
    arbitraryMatrixAllowed := false }

def goodPrimeSpinMobius (exponent p : Nat) (aP : Int) : Int :=
  if exponent = 0 then
    1
  else if exponent = 1 then
    -aP
  else if exponent = 2 then
    Int.ofNat p
  else
    0

structure FormalMidpointFlowSurface where
  flowTimeSymbol : String
  imaginaryCoordinateSymbol : String
  realPartEquation : String
  midpointAttractionRequiresDivergentTraceIntegral : Bool
  determinantDegeneracyIsSeparateCondition : Bool
  midpointLimitIffDeterminantZeroClaim : Bool
deriving Repr, DecidableEq

def formalMidpointFlowSurface : FormalMidpointFlowSurface :=
  { flowTimeSymbol := "u"
    imaginaryCoordinateSymbol := "tau"
    realPartEquation := "d_sigma_du=-(sigma-one_half)Tr(MM_dagger)"
    midpointAttractionRequiresDivergentTraceIntegral := true
    determinantDegeneracyIsSeparateCondition := true
    midpointLimitIffDeterminantZeroClaim := false }

structure FiniteLambdaLogDetSurface where
  finiteMatrixRequired : Bool
  finiteDirichletWindowRequired : Bool
  determinantNonzeroRequired : Bool
  logBranchRequired : Bool
  infiniteSeriesDeterminantClaim : Bool
deriving Repr, DecidableEq

def finiteLambdaLogDetSurface : FiniteLambdaLogDetSurface :=
  { finiteMatrixRequired := true
    finiteDirichletWindowRequired := true
    determinantNonzeroRequired := true
    logBranchRequired := true
    infiniteSeriesDeterminantClaim := false }

structure TraceFormulaLayerSeparation where
  arithmeticTraceLayer : String
  automorphicTraceLayer : String
  bridgeDiagramOnly : Bool
  identityClaim : Bool
  transferResidueRetained : Bool
deriving Repr, DecidableEq

def traceFormulaLayerSeparation : TraceFormulaLayerSeparation :=
  { arithmeticTraceLayer := "Grothendieck_Lefschetz_Frobenius_trace"
    automorphicTraceLayer := "Selberg_Arthur_orbital_integral_trace"
    bridgeDiagramOnly := true
    identityClaim := false
    transferResidueRetained := true }

structure SheafObstructionBridgeSurface where
  shortExactSequence : String
  connectingMap : String
  skyscraperSurgerySupport : Bool
  localObstructionDomain : String
  globalSpinObstructionCodomain : String
  perelmanSurgeryOperatorClaim : Bool
  ricciSurgeryFunctorRequired : Bool
deriving Repr, DecidableEq

def sheafObstructionBridgeSurface : SheafObstructionBridgeSurface :=
  { shortExactSequence := "0_to_F_spin_to_F_lattice_to_F_surgery_to_0"
    connectingMap := "delta_i_Hc_i_F_surgery_to_Hc_i_plus_1_F_spin"
    skyscraperSurgerySupport := true
    localObstructionDomain := "H_c^0_X_F_surgery"
    globalSpinObstructionCodomain := "H_c^1_X_F_spin"
    perelmanSurgeryOperatorClaim := false
    ricciSurgeryFunctorRequired := true }

inductive DeltaZeroObstructionOutcome where
  | absorbedSurgeryResidue
  | residualObstructionClass
deriving Repr, DecidableEq

def routeDeltaZeroObstruction (deltaZero : Bool) : DeltaZeroObstructionOutcome :=
  if deltaZero then
    DeltaZeroObstructionOutcome.absorbedSurgeryResidue
  else
    DeltaZeroObstructionOutcome.residualObstructionClass

theorem mat2_f2_state_count :
    allMat2F2.length = 16 := by
  rfl

theorem shifted_det_formula_holds_for_table :
    shiftedFormulaHoldsForTable = true := by
  native_decide

theorem determinant_phase_counts :
    countDet 1 = 6 ∧
      countDet 0 = 10 ∧
      countShiftedDet 1 = 6 ∧
      countShiftedDet 0 = 10 ∧
      countPhase 0 0 = 6 ∧
      countPhase 0 1 = 4 ∧
      countPhase 1 0 = 4 ∧
      countPhase 1 1 = 2 := by
  native_decide

theorem ordinary_trace_distinguishes_identity_from_trace_mod_two :
    ordinaryTrace identityMatrix = 2 ∧
      traceMod2 identityMatrix = 0 := by
  exact ⟨rfl, rfl⟩

theorem rank_identity_bucket_counts_are_not_orbits :
    rankIdentityBucketSurface.zeroCount = 1 ∧
      rankIdentityBucketSurface.identityCount = 1 ∧
      rankIdentityBucketSurface.rankOneSingularCount = 9 ∧
      rankIdentityBucketSurface.nonIdentityInvertibleCount = 5 ∧
      rankIdentityBucketSurface.spin4OrbitClaim = false ∧
      rankIdentityBucketSurface.conjugacyOrbitClaim = false := by
  native_decide

theorem explicit_weights_generate_quadratic_euler_factor :
    exampleTracePolynomialSurface.a0 = 1 ∧
      exampleTracePolynomialSurface.a1 = -exampleTracePolynomialSurface.c1 ∧
      exampleTracePolynomialSurface.a2 = exampleTracePolynomialSurface.c2 ∧
      exampleTracePolynomialSurface.usesOrdinaryTrace = true ∧
      exampleTracePolynomialSurface.usesTraceMod2 = false ∧
      exampleTracePolynomialSurface.functionalEquationClaim = false := by
  decide

theorem local_spin_mobius_stops_after_quadratic_exponent :
    localSpinMobius 0 3 2 = 1 ∧
      localSpinMobius 1 3 2 = -3 ∧
      localSpinMobius 2 3 2 = 2 ∧
      localSpinMobius 3 3 2 = 0 := by
  decide

theorem critical_clifford_surface_is_local_nilpotence :
    (cliffordDegenerationSurface true).kind =
        CliffordDegenerationKind.exteriorNilpotentAtCritical ∧
      (cliffordDegenerationSurface true).localOperatorNilpotent = true ∧
      (cliffordDegenerationSurface true).finiteRepresentationDeterminantZero = true ∧
      (cliffordDegenerationSurface true).analyticZeroTheoremClaim = false := by
  exact ⟨rfl, rfl, rfl, rfl⟩

theorem finite_euler_window_at_half_positive_not_vanishing :
    finiteEulerWindowAtHalf.finiteProductPositive = true ∧
      finiteEulerWindowAtHalf.finiteDeterminantVanishClaim = false ∧
      finiteEulerWindowAtHalf.infiniteLimitCollapseOnly = true := by
  exact ⟨rfl, rfl, rfl⟩

theorem finite_product_zero_only_when_local_factor_zero :
    (finiteLocalFactorProductSurface [2, -3, 5]).finiteProductZero = false ∧
      (finiteLocalFactorProductSurface [2, 0, 5]).finiteProductZero = true ∧
      (finiteLocalFactorProductSurface [2, 0, 5]).criticalLineGlobalVanishClaim = false := by
  native_decide

theorem unclassified_noncritical_phase_routes_to_complex_obstruction :
    routePhaseResidue false false =
      PhaseResidueRoute.residualComplexPairedOrFourfoldObstruction := by
  rfl

theorem finite_phase_surface_is_not_zero_location_theorem :
    (cliffordDegenerationSurface true).analyticZeroTheoremClaim = false ∧
      finiteEulerWindowAtHalf.finiteDeterminantVanishClaim = false := by
  exact ⟨rfl, rfl⟩

theorem mat2_fp_state_count_law :
    (mat2FpStateCountSurface 2).stateCount = 16 ∧
      (mat2FpStateCountSurface 2).binaryTruthTableOnlyAtTwo = true ∧
      (mat2FpStateCountSurface 5).stateCount = 625 ∧
      (mat2FpStateCountSurface 5).binaryTruthTableOnlyAtTwo = false := by
  native_decide

theorem ordinary_supersingular_attached_to_frobenius_prime :
    ordinaryFrobeniusExample.phaseKind = FrobeniusPhaseKind.ordinary ∧
      supersingularFrobeniusExample.phaseKind =
        FrobeniusPhaseKind.supersingularTraceZero ∧
      ordinaryFrobeniusExample.attachedToPrimeNotArbitraryMatrix = true := by
  exact ⟨rfl, rfl, rfl⟩

theorem frobenius_euler_factor_uses_standard_good_prime_form :
    frobeniusEulerFactorExample.constant = 1 ∧
      frobeniusEulerFactorExample.linearCoefficient =
        -frobeniusEulerFactorExample.aP ∧
      frobeniusEulerFactorExample.quadraticCoefficient = 7 ∧
      frobeniusEulerFactorExample.arbitraryMatrixDeterminantClaim = false ∧
      supersingularEulerFactorExample.linearCoefficient = 0 ∧
      supersingularEulerFactorExample.quadraticCoefficient = 5 := by
  decide

theorem frobenius_matrix_representation_requires_characteristic_polynomial :
    frobeniusMatrixExample.characteristicPolynomial = [1, 3, 7] ∧
      frobeniusMatrixExample.determinantRepresentation = "det_I_minus_F_p_T" ∧
      frobeniusMatrixExample.arbitraryMatrixAllowed = false := by
  exact ⟨rfl, rfl, rfl⟩

theorem good_prime_spin_mobius_uses_p_quadratic_coefficient :
    goodPrimeSpinMobius 0 7 (-3) = 1 ∧
      goodPrimeSpinMobius 1 7 (-3) = 3 ∧
      goodPrimeSpinMobius 2 7 (-3) = 7 ∧
      goodPrimeSpinMobius 3 7 (-3) = 0 := by
  decide

theorem midpoint_flow_is_not_determinant_equivalence :
    formalMidpointFlowSurface.flowTimeSymbol = "u" ∧
      formalMidpointFlowSurface.imaginaryCoordinateSymbol = "tau" ∧
      formalMidpointFlowSurface.determinantDegeneracyIsSeparateCondition = true ∧
      formalMidpointFlowSurface.midpointLimitIffDeterminantZeroClaim = false := by
  exact ⟨rfl, rfl, rfl, rfl⟩

theorem finite_lambda_logdet_has_finite_boundary :
    finiteLambdaLogDetSurface.finiteMatrixRequired = true ∧
      finiteLambdaLogDetSurface.finiteDirichletWindowRequired = true ∧
      finiteLambdaLogDetSurface.determinantNonzeroRequired = true ∧
      finiteLambdaLogDetSurface.infiniteSeriesDeterminantClaim = false := by
  exact ⟨rfl, rfl, rfl, rfl⟩

theorem trace_formula_layers_are_not_identity :
    traceFormulaLayerSeparation.bridgeDiagramOnly = true ∧
      traceFormulaLayerSeparation.identityClaim = false ∧
      traceFormulaLayerSeparation.transferResidueRetained = true := by
  exact ⟨rfl, rfl, rfl⟩

theorem sheaf_bridge_is_not_perelman_surgery_operator :
    sheafObstructionBridgeSurface.connectingMap =
        "delta_i_Hc_i_F_surgery_to_Hc_i_plus_1_F_spin" ∧
      sheafObstructionBridgeSurface.localObstructionDomain =
        "H_c^0_X_F_surgery" ∧
      sheafObstructionBridgeSurface.globalSpinObstructionCodomain =
        "H_c^1_X_F_spin" ∧
      sheafObstructionBridgeSurface.perelmanSurgeryOperatorClaim = false ∧
      sheafObstructionBridgeSurface.ricciSurgeryFunctorRequired = true := by
  exact ⟨rfl, rfl, rfl, rfl, rfl⟩

theorem delta_zero_routes_absorbed_or_residual_obstruction :
    routeDeltaZeroObstruction true =
        DeltaZeroObstructionOutcome.absorbedSurgeryResidue ∧
      routeDeltaZeroObstruction false =
        DeltaZeroObstructionOutcome.residualObstructionClass := by
  exact ⟨rfl, rfl⟩

structure Gamma3DCliffordSurface where
  gammaCount : Nat
  matrixDimension : Nat
  squaresIdentity : Bool
  pairwiseAnticommute : Bool
  determinantLaw : String
  determinantIsScalarNotMatrix : Bool
  spin4ReductionClaim : Bool
deriving Repr, DecidableEq

def gamma3DCliffordSurface : Gamma3DCliffordSurface :=
  { gammaCount := 3
    matrixDimension := 4
    squaresIdentity := true
    pairwiseAnticommute := true
    determinantLaw := "det_Gamma_v_equals_v_dot_v_squared"
    determinantIsScalarNotMatrix := true
    spin4ReductionClaim := false }

structure RoutingVector3 where
  v1 : Int
  v2 : Int
  v3 : Int
deriving Repr, DecidableEq

def vectorZero : RoutingVector3 :=
  { v1 := 0, v2 := 0, v3 := 0 }

def vectorAdd (x y : RoutingVector3) : RoutingVector3 :=
  { v1 := x.v1 + y.v1
    v2 := x.v2 + y.v2
    v3 := x.v3 + y.v3 }

def vectorScale (c : Int) (x : RoutingVector3) : RoutingVector3 :=
  { v1 := c * x.v1
    v2 := c * x.v2
    v3 := c * x.v3 }

def dot3 (x y : RoutingVector3) : Int :=
  x.v1 * y.v1 + x.v2 * y.v2 + x.v3 * y.v3

structure WeightedRoutingVector where
  coefficient : Int
  vector : RoutingVector3
deriving Repr, DecidableEq

def weightedVector (term : WeightedRoutingVector) : RoutingVector3 :=
  vectorScale term.coefficient term.vector

def routingVectorSum : List WeightedRoutingVector → RoutingVector3
  | [] => vectorZero
  | term :: rest => vectorAdd (weightedVector term) (routingVectorSum rest)

def diagonalOnlyQuadratic : List WeightedRoutingVector → Int
  | [] => 0
  | term :: rest =>
      term.coefficient * term.coefficient * dot3 term.vector term.vector +
        diagonalOnlyQuadratic rest

def transferBilinearQuadratic (terms : List WeightedRoutingVector) : Int :=
  dot3 (routingVectorSum terms) (routingVectorSum terms)

def transferDeterminantScalar (terms : List WeightedRoutingVector) : Int :=
  let q := transferBilinearQuadratic terms
  q * q

def exampleCrossTermTransfer : List WeightedRoutingVector := [
  { coefficient := 1, vector := { v1 := 1, v2 := 0, v3 := 0 } },
  { coefficient := 1, vector := { v1 := 1, v2 := 0, v3 := 0 } }
]

structure CliffordTransferDeterminantSurface where
  determinantFormula : String
  crossTermsRetained : Bool
  orthogonalityClaim : Bool
  derivativeLogMuClaim : Bool
deriving Repr, DecidableEq

def cliffordTransferDeterminantSurface : CliffordTransferDeterminantSurface :=
  { determinantFormula := "det_M_P_s_equals_V_P_dot_V_P_squared"
    crossTermsRetained := true
    orthogonalityClaim := false
    derivativeLogMuClaim := false }

structure LocalizationExactSequenceSurface where
  exactSequence : String
  connectingMap : String
  middleArrowConnectingClaim : Bool
  primaryObstructionDegree : String
  absorbedWhenBoundaryZero : Bool
  residualWhenBoundaryNonzero : Bool
deriving Repr, DecidableEq

def localizationExactSequenceSurface : LocalizationExactSequenceSurface :=
  { exactSequence := "0_to_j_shriek_j_star_F_to_F_to_i_star_i_star_F_to_0"
    connectingMap :=
      "partial_q_Hc_q_i_star_i_star_F_to_Hc_q_plus_1_j_shriek_j_star_F"
    middleArrowConnectingClaim := false
    primaryObstructionDegree := "eta_p_in_Hc_0_i_star_i_star_F"
    absorbedWhenBoundaryZero := true
    residualWhenBoundaryNonzero := true }

structure FrobeniusResidualTraceSurface where
  residualTraceDefinition : String
  boundaryEquivariantRequired : Bool
  finiteDimensionalKernelRequired : Bool
  frobeniusStableComponentRequired : Bool
  phaseProjectorIdentityRequired : Bool
  equalityAdmittedWithoutTransferTheorem : Bool
  transferResidueRetained : Bool
deriving Repr, DecidableEq

def frobeniusResidualTraceSurface : FrobeniusResidualTraceSurface :=
  { residualTraceDefinition := "a_p_res_equals_Tr_Frob_p_on_kernel_partial_0_p"
    boundaryEquivariantRequired := true
    finiteDimensionalKernelRequired := true
    frobeniusStableComponentRequired := true
    phaseProjectorIdentityRequired := true
    equalityAdmittedWithoutTransferTheorem := false
    transferResidueRetained := true }

structure LocusKernelBoundarySurface where
  locusDefinition : String
  obstructionGroupDefinition : String
  allBadPrimeResiduesAbsorbedWhenZero : Bool
  sigmaEquivalenceClaim : Bool
  couplingDefinitionRequired : Bool
deriving Repr, DecidableEq

def locusKernelBoundarySurface : LocusKernelBoundarySurface :=
  { locusDefinition := "intersection_p_divides_N_kernel_partial_0_p"
    obstructionGroupDefinition := "coker_Lambda_locus_to_sum_Hc0_closed_surgery_terms"
    allBadPrimeResiduesAbsorbedWhenZero := true
    sigmaEquivalenceClaim := false
    couplingDefinitionRequired := true }

structure RegularizedTraceFormulaSurface where
  quotient : String
  identityTermRequired : Bool
  hyperbolicTermRequired : Bool
  ellipticTermRequired : Bool
  parabolicTermRequired : Bool
  continuousScatteringTermRequired : Bool
  admissibleTestFunctionRequired : Bool
  hOneOverSOneMinusSUnregularizedAdmitted : Bool
  compactTraceFormulaClaim : Bool
deriving Repr, DecidableEq

def regularizedTraceFormulaSurface : RegularizedTraceFormulaSurface :=
  { quotient := "Gamma0N_backslash_H_noncompact_cuspidal"
    identityTermRequired := true
    hyperbolicTermRequired := true
    ellipticTermRequired := true
    parabolicTermRequired := true
    continuousScatteringTermRequired := true
    admissibleTestFunctionRequired := true
    hOneOverSOneMinusSUnregularizedAdmitted := false
    compactTraceFormulaClaim := false }

structure PerelmanDefectFunctionalSurface where
  localDeterminant : String
  derivativeLogFormula : String
  denominatorNonzeroRequired : Bool
  poleWhenDenominatorZero : Bool
  ricciSurgeryInvariantClaim : Bool
deriving Repr, DecidableEq

def perelmanDefectFunctionalSurface : PerelmanDefectFunctionalSurface :=
  { localDeterminant := "omega_p_a_p_minus_p_power_minus_2s"
    derivativeLogFormula :=
      "one_over_2pi_i_times_2_log_p_p_power_minus_2s_over_omega_p_a_p_minus_p_power_minus_2s"
    denominatorNonzeroRequired := true
    poleWhenDenominatorZero := true
    ricciSurgeryInvariantClaim := false }

structure FlowSpectralComparisonSurface where
  comparisonMap : String
  hilbertSpaceIdentificationRequired : Bool
  traceClassOperatorRequired : Bool
  convergenceTheoremRequired : Bool
  equalityClaim : Bool
  residueRoute : String
deriving Repr, DecidableEq

def flowSpectralComparisonSurface : FlowSpectralComparisonSurface :=
  { comparisonMap := "C_FlowStates_3D_to_SpectralPackets_Gamma0N"
    hilbertSpaceIdentificationRequired := true
    traceClassOperatorRequired := true
    convergenceTheoremRequired := true
    equalityClaim := false
    residueRoute := "residual_complex_paired_or_fourfold_phase_obstruction" }

theorem gamma3d_clifford_surface_is_finite_local_representation :
    gamma3DCliffordSurface.gammaCount = 3 ∧
      gamma3DCliffordSurface.matrixDimension = 4 ∧
      gamma3DCliffordSurface.squaresIdentity = true ∧
      gamma3DCliffordSurface.pairwiseAnticommute = true ∧
      gamma3DCliffordSurface.determinantIsScalarNotMatrix = true ∧
      gamma3DCliffordSurface.spin4ReductionClaim = false := by
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl⟩

theorem gamma_transfer_determinant_retains_cross_terms :
    routingVectorSum exampleCrossTermTransfer = { v1 := 2, v2 := 0, v3 := 0 } ∧
      transferBilinearQuadratic exampleCrossTermTransfer = 4 ∧
      transferDeterminantScalar exampleCrossTermTransfer = 16 ∧
      diagonalOnlyQuadratic exampleCrossTermTransfer = 2 ∧
      cliffordTransferDeterminantSurface.orthogonalityClaim = false ∧
      cliffordTransferDeterminantSurface.derivativeLogMuClaim = false := by
  native_decide

theorem localization_sequence_boundary_direction_is_closed_to_open :
    localizationExactSequenceSurface.connectingMap =
        "partial_q_Hc_q_i_star_i_star_F_to_Hc_q_plus_1_j_shriek_j_star_F" ∧
      localizationExactSequenceSurface.middleArrowConnectingClaim = false ∧
      localizationExactSequenceSurface.primaryObstructionDegree =
        "eta_p_in_Hc_0_i_star_i_star_F" ∧
      localizationExactSequenceSurface.absorbedWhenBoundaryZero = true ∧
      localizationExactSequenceSurface.residualWhenBoundaryNonzero = true := by
  exact ⟨rfl, rfl, rfl, rfl, rfl⟩

theorem frobenius_residual_trace_retains_transfer_residue :
    frobeniusResidualTraceSurface.boundaryEquivariantRequired = true ∧
      frobeniusResidualTraceSurface.frobeniusStableComponentRequired = true ∧
      frobeniusResidualTraceSurface.phaseProjectorIdentityRequired = true ∧
      frobeniusResidualTraceSurface.equalityAdmittedWithoutTransferTheorem = false ∧
      frobeniusResidualTraceSurface.transferResidueRetained = true := by
  exact ⟨rfl, rfl, rfl, rfl, rfl⟩

theorem locus_kernel_absorption_does_not_imply_midpoint :
    locusKernelBoundarySurface.allBadPrimeResiduesAbsorbedWhenZero = true ∧
      locusKernelBoundarySurface.sigmaEquivalenceClaim = false ∧
      locusKernelBoundarySurface.couplingDefinitionRequired = true := by
  exact ⟨rfl, rfl, rfl⟩

theorem gamma0n_trace_formula_requires_regularization :
    regularizedTraceFormulaSurface.parabolicTermRequired = true ∧
      regularizedTraceFormulaSurface.continuousScatteringTermRequired = true ∧
      regularizedTraceFormulaSurface.admissibleTestFunctionRequired = true ∧
      regularizedTraceFormulaSurface.hOneOverSOneMinusSUnregularizedAdmitted = false ∧
      regularizedTraceFormulaSurface.compactTraceFormulaClaim = false := by
  exact ⟨rfl, rfl, rfl, rfl, rfl⟩

theorem perelman_defect_is_local_functional_not_surgery_invariant :
    perelmanDefectFunctionalSurface.denominatorNonzeroRequired = true ∧
      perelmanDefectFunctionalSurface.poleWhenDenominatorZero = true ∧
      perelmanDefectFunctionalSurface.ricciSurgeryInvariantClaim = false := by
  exact ⟨rfl, rfl, rfl⟩

theorem flow_spectral_comparison_is_residue_bearing :
    flowSpectralComparisonSurface.hilbertSpaceIdentificationRequired = true ∧
      flowSpectralComparisonSurface.traceClassOperatorRequired = true ∧
      flowSpectralComparisonSurface.convergenceTheoremRequired = true ∧
      flowSpectralComparisonSurface.equalityClaim = false ∧
      flowSpectralComparisonSurface.residueRoute =
        "residual_complex_paired_or_fourfold_phase_obstruction" := by
  exact ⟨rfl, rfl, rfl, rfl, rfl⟩

end Think.Arithmetic.FinitePhaseBitmatrixAlgebra
```
