# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteShadowLimitExamples.Variant97349661a7ab04f10111336d3ddb8c119ff3914d371292f4be1e73384350c018

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2be2841e3179a0f958091700a40e2e61cd653556` · SHA-256 `97349661a7ab04f10111336d3ddb8c119ff3914d371292f4be1e73384350c018`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import AnalyticNumber.FiniteShadowLimit

/-!
# Finite shadow limit examples

Toy hypotheses exercise the finite shadow theorem schema. They do not construct
analytic geometry, Hilbert objects, theorem authority, or arithmetic truth from
finite shadows.
-/

namespace AnalyticNumber
namespace FiniteShadowLimitExamples

open FiniteShadowLimit

def toyTower : DyadicBinaryTower where
  towerHash := 1
  refinementHash := 2
  frequencyHash := 3
  sourceTreeHash := 4
  supportHash := 5
  theoremResolutionHash := 6

def toyTowerOther : DyadicBinaryTower where
  towerHash := 7
  refinementHash := 8
  frequencyHash := 3
  sourceTreeHash := 9
  supportHash := 10
  theoremResolutionHash := 11

def toyInverseLimit : SymbolicInverseLimitSpace where
  spaceHash := 12
  compactSymbolic := True
  compactProof := trivial
  bernoulliMeasureExists := True
  measureProof := trivial
  cylinderFrequenciesMatch := True
  cylinderProof := trivial

def toyCompactification : DyadicCompactificationHypotheses where
  tower := toyTower
  inverseLimit := toyInverseLimit
  uniformlyDyadic := True
  uniformlyDyadicProof := trivial
  refinementCompatible := True
  refinementProof := trivial

def toyNonIdentifiability : NonIdentifiabilityHypotheses where
  leftTower := toyTower
  rightTower := toyTowerOther
  identicalFinitePatternFrequencies := True
  frequencyProof := trivial
  nonIsomorphic := True
  nonIsomorphicProof := trivial
  sourceIdentityDiffers := True
  sourceIdentityProof := trivial

def toyRelaxation : CompatibleRelaxationSystem where
  relaxationHash := 13
  targetSpaceHash := 14
  compatibilityErrorHash := 15
  uniformlyBounded := True
  boundedProof := trivial
  cauchyUnderRefinement := True
  cauchyProof := trivial
  limitRelaxationExists := True
  limitProof := trivial

def toyTorsionFlow : TorsionFlowWellPosedHypotheses where
  operatorHash := 16
  energyHash := 17
  torsionHash := 18
  lowerSemicontinuousEnergy := True
  lscProof := trivial
  compactOrCoerciveSublevels := True
  sublevelProof := trivial
  dissipativeOrQuasiDissipative := True
  dissipativeProof := trivial
  globalSemigroupExists := True
  semigroupProof := trivial

def toyEnergyDissipation : EnergyDissipationHypotheses where
  flowHash := 19
  energyHash := 20
  torsionOrthogonalOrControlled := True
  torsionControlProof := trivial
  energyNonincreasingOrGronwallControlled := True
  energyProof := trivial

def toyOrientation : OrientationEquivarianceHypotheses where
  groupActionHash := 21
  matrixActionHash := 22
  hilbertActionHash := 23
  relaxationEquivariant := True
  relaxationProof := trivial
  energyInvariant := True
  energyProof := trivial
  torsionVectorFieldEquivariant := True
  torsionProof := trivial
  semigroupConjugates := True
  semigroupProof := trivial
  limitEquivariant := True
  limitProof := trivial

def toyBoundary : BoundaryClosureHypotheses where
  finiteComplexHash := 24
  relaxedComplexHash := 25
  finiteBoundariesVanish := True
  finiteBoundaryProof := trivial
  boundaryOperatorClosed := True
  closedProof := trivial
  limitBoundaryVanishes := True
  limitProof := trivial

def toyHomology : HomologicalStabilityHypotheses where
  finiteChainHash := 26
  relaxedChainHash := 27
  refinementRelaxationShadowCommutes := True
  commutesProof := trivial
  homologyMapsStable := True
  stableProof := trivial
  reconstructedIdentityOnStableClass := True
  identityProof := trivial

def toyTorsionControl : TorsionControlStabilityHypotheses where
  controlFamilyHash := 28
  flowHash := 29
  stableHomologyClassPreserved := True
  classProof := trivial
  theoremResolutionIdentityPreserved := True
  theoremProof := trivial
  classChangeRepresentedByKnownBoundary := True
  boundaryProof := trivial

def toyReducer : ReducerOperatorSafetyHypotheses where
  operatorHash := 30
  meshStateHash := 31
  identityPreserved := True
  identityProof := trivial
  authorityPreserved := True
  authorityProof := trivial
  boundaryBehaviorKnown := True
  boundaryProof := trivial
  energyDeltaRecorded := True
  energyProof := trivial
  lossRecorded := True
  lossProof := trivial
  noTheoremAuthorityCreated := True
  noAuthorityProof := trivial
  energyBehaviorAdmissible := True
  admissibleProof := trivial

def toyFace : AnalyticFaceHypotheses where
  faceMapHash := 32
  propositionIdentityHash := 33
  injectiveOnExactPropositionIdentity := True
  injectiveProof := trivial
  theoremResolutionPreservedUnderMotion := True
  theoremProof := trivial
  labelsAreNotProof := True
  labelBoundaryProof := trivial

def toyDom : DomFaithfulnessHypotheses where
  domFunctorHash := 34
  meshHash := 35
  faceIdentityFaithful := True
  faceProof := trivial
  sourceTreeIdentityFaithful := True
  sourceProof := trivial
  theoremResolutionFaithful := True
  theoremProof := trivial
  authorityBoundaryFaithful := True
  authorityProof := trivial
  reducerWitnessFaithful := True
  witnessProof := trivial
  lossRecordFaithful := True
  lossProof := trivial
  domCreatesNoAnalyticAuthority := True
  noAuthorityProof := trivial

def toyArithmetic : ArithmeticExtractionHypotheses where
  analyticIdentityHash := 36
  endpointHash := 37
  decoderHash := 38
  analyticIdentityTheoremProved := True
  identityProof := trivial
  endpointSatisfiesExtractionHypotheses := True
  endpointProof := trivial
  decoderExtractsTargetBinary := True
  decoderProof := trivial
  decoderCreatesNoTheoremAuthority := True
  noAuthorityProof := trivial

def toySchema : MinimalFiniteShadowTheoremSchema where
  compactification := toyCompactification
  relaxation := toyRelaxation
  shadowFaithful := True
  shadowFaithfulProof := trivial
  torsionFlow := toyTorsionFlow
  energyDissipation := toyEnergyDissipation
  gammaRefinementStable := True
  gammaProof := trivial
  orientation := toyOrientation
  boundary := toyBoundary
  homology := toyHomology
  reducer := toyReducer
  dom := toyDom
  stableClassExists := True
  stableClassProof := trivial

theorem example_non_identifiability :
    toyNonIdentifiability.identicalFinitePatternFrequencies ∧
    toyNonIdentifiability.nonIsomorphic :=
  let h := non_identifiability_theorem toyNonIdentifiability
  ⟨h.1, h.2.1⟩

theorem example_torsion_control_stability :
    toyTorsionControl.stableHomologyClassPreserved ∧
    toyTorsionControl.theoremResolutionIdentityPreserved :=
  let h := torsion_control_stability toyTorsionControl
  ⟨h.1, h.2.1⟩

theorem example_reducer_operator_safety :
    toyReducer.identityPreserved ∧
    toyReducer.noTheoremAuthorityCreated ∧
    toyReducer.energyBehaviorAdmissible :=
  ⟨toyReducer.identityProof,
   toyReducer.noAuthorityProof,
   toyReducer.admissibleProof⟩

theorem example_dom_faithfulness :
    toyDom.faceIdentityFaithful ∧
    toyDom.domCreatesNoAnalyticAuthority :=
  ⟨toyDom.faceProof, toyDom.noAuthorityProof⟩

theorem example_arithmetic_extraction :
    toyArithmetic.analyticIdentityTheoremProved ∧
    toyArithmetic.decoderExtractsTargetBinary :=
  let h := arithmetic_extraction toyArithmetic
  ⟨h.1, h.2.2.1⟩

theorem example_minimal_finite_shadow_theorem_schema :
    toySchema.stableClassExists ∧
    toySchema.boundary.limitBoundaryVanishes ∧
    toySchema.dom.domCreatesNoAnalyticAuthority :=
  ⟨toySchema.stableClassProof,
   toySchema.boundary.limitProof,
   toySchema.dom.noAuthorityProof⟩

end FiniteShadowLimitExamples
end AnalyticNumber
```
