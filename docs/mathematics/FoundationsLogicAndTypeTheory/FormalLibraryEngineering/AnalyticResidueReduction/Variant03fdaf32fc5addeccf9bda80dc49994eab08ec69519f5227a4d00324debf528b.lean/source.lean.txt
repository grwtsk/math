/-!
# Analytic residue reduction certificates

This module records theorem-grade inputs for request-time residue reduction.
It does not infer analytic descent from a canvas, URL, reducer event, matrix
hash, or DOM node.  The descent theorem consumes an explicit certificate whose
fields name the state space, residue functional, projection facts, and descent
inequality.
-/

namespace AnalyticNumber
namespace AnalyticResidueReduction

/-- Exact finite identifier for a Presentation-indexed Hilbert relaxation. -/
structure AnalyticStateSpace where
  hilbertSpaceId : String
  presentationIndex : Nat
  feasibleFiberHash : Nat
  stateBeforeHash : Nat
  stateAfterHash : Nat
  stateModel : String

/-- Residue functional values and counts before and after one reducer step. -/
structure ResidueFunctionalTrace where
  residueFunctionalId : String
  finiteResidueEnergyBefore : Nat
  finiteResidueEnergyAfter : Nat
  analyticResidueBefore : Nat
  analyticResidueAfter : Nat
  analyticResidueCountBefore : Nat
  analyticResidueCountAfter : Nat
  finiteResidueCountBefore : Nat
  finiteResidueCountAfter : Nat
  alignedCountBefore : Nat
  alignedCountAfter : Nat
  energyMonotone : finiteResidueEnergyAfter ≤ finiteResidueEnergyBefore
  analyticResidueMonotone : analyticResidueAfter ≤ analyticResidueBefore
  analyticCountMonotone : analyticResidueCountAfter ≤ analyticResidueCountBefore

/-- Reducer map interpreted as a projected finite transition. -/
structure ReducerMapTrace where
  operatorId : String
  operatorKind : String
  projectionRule : String
  stepSizeEtaHash : Nat
  directionHash : Nat
  projectionHash : Nat
  inputNode : String
  outputNode : String
  inputFiberHash : Nat
  outputFiberHash : Nat

/-- Descent witness for the residue functional. -/
structure DescentWitness where
  descentWitnessHash : Nat
  residueBefore : Nat
  residueAfter : Nat
  descentMargin : Nat
  gradientNormBeforeHash : Nat
  lipschitzConstantHash : Nat
  alignmentConstantHash : Nat
  stepBoundSatisfied : Prop
  stepBoundProof : stepBoundSatisfied
  descentInequalitySatisfied : Prop
  descentInequalityProof : descentInequalitySatisfied
  residueMonotoneProof : residueAfter ≤ residueBefore

/-- Feasibility and projection facts needed by the finite proof route. -/
structure FeasibilityProjectionFacts where
  feasibleBefore : Prop
  feasibleBeforeProof : feasibleBefore
  feasibleAfter : Prop
  feasibleAfterProof : feasibleAfter
  projectionNonexpansive : Prop
  projectionNonexpansiveProof : projectionNonexpansive
  boundaryBeforeZero : Prop
  boundaryBeforeProof : boundaryBeforeZero
  boundaryAfterZero : Prop
  boundaryAfterProof : boundaryAfterZero
  authorityBoundaryPreserved : Prop
  authorityBoundaryProof : authorityBoundaryPreserved
  theoremResolutionPreserved : Prop
  theoremResolutionProof : theoremResolutionPreserved
  identityPreserved : Prop
  identityProof : identityPreserved
  lossRecorded : Prop
  lossProof : lossRecorded
  noAuthorityCreated : Prop
  noAuthorityProof : noAuthorityCreated

/-- Finite-to-analytic bridge metadata.  The bridge is certificate data, not an
analytic construction by itself. -/
structure FiniteToAnalyticBridge where
  meshLevel : Nat
  refinementLevel : Nat
  meshSizeHash : Nat
  finiteToAnalyticErrorBoundHash : Nat
  gammaLiminfWitness : Nat
  gammaRecoveryWitness : Nat
  reconstructionErrorBoundHash : Nat
  shadowMapHash : Nat
  relaxationMapHash : Nat
  gammaConverges : Prop
  gammaProof : gammaConverges

/-- Authority route for the analytic residue statement. -/
structure ResidueAuthorityRoute where
  leanModule : String
  leanTheorem : String
  residueTheoremModule : String
  residueTheorem : String
  exactStatementHash : Nat
  proofAuthority : String
  theoremRouted : Prop
  theoremRouteProof : theoremRouted

/-- Complete theorem-grade state for one witnessed residue descent step. -/
structure AnalyticResidueDescentStep where
  stateSpace : AnalyticStateSpace
  residue : ResidueFunctionalTrace
  reducerMap : ReducerMapTrace
  descent : DescentWitness
  feasibility : FeasibilityProjectionFacts
  bridge : FiniteToAnalyticBridge
  authorityRoute : ResidueAuthorityRoute

/--
Finite residue energy is monotone when the trace carries the monotonicity
certificate.  The theorem does not inspect the DOM or a rendered matrix.
-/
theorem finite_residue_energy_monotone
    (T : ResidueFunctionalTrace) :
    T.finiteResidueEnergyAfter ≤ T.finiteResidueEnergyBefore :=
  T.energyMonotone

/--
Projected descent reduces analytic residue when feasibility, nonexpansive
projection, theorem routing, and the descent inequality are supplied as
certificate fields.
-/
theorem witnessed_projected_analytic_residue_dissipation
    (T : AnalyticResidueDescentStep) :
    T.descent.residueAfter ≤ T.descent.residueBefore ∧
    T.residue.analyticResidueAfter ≤ T.residue.analyticResidueBefore ∧
    T.feasibility.feasibleBefore ∧
    T.feasibility.feasibleAfter ∧
    T.feasibility.projectionNonexpansive ∧
    T.authorityRoute.theoremRouted :=
  by
    exact
      ⟨T.descent.residueMonotoneProof,
       T.residue.analyticResidueMonotone,
       T.feasibility.feasibleBeforeProof,
       T.feasibility.feasibleAfterProof,
       T.feasibility.projectionNonexpansiveProof,
       T.authorityRoute.theoremRouteProof⟩

end AnalyticResidueReduction
end AnalyticNumber
