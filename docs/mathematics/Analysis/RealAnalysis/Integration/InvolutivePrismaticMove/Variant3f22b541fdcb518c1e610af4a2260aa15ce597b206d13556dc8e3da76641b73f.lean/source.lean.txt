import BinaryMatrix.IntegralPermutationLift
import DAF.Comparison.Coefficients
import DAF.Prismatic.SourceRealizationFunctoriality
import DAF.Terrain.Legality

/-!
# Involutive finite moves with explicit arithmetic realization

This integration record keeps four claims separate: the finite involution,
its Boolean/`GF(2)` action matrix, terrain-local legality, and a selected
arithmetic source morphism.  None implies the others.  Integral determinant
parity is packaged as an applicability record over the explicitly named
integral coefficient context; it is not complete move legality.
-/

namespace DAF.Integration

open FinitePermutationDynamics

universe uState uV

/-- The permitted interpretation of an integral determinant certificate. -/
inductive IntegralDeterminantInterpretation
  | permutationParity
  | nondegeneracy
  | determinantLineInput
  deriving DecidableEq, Repr

/-- Determinant applicability for one exact integral permutation lift. -/
structure IntegralDeterminantApplicability
    {X : Type uV} [Fintype X] [DecidableEq X]
    (matrix : BinaryInvolutionProjection X) where
  coefficientContext : DAF.Comparison.CoefficientContext
  coefficient_is_integral :
    coefficientContext = DAF.Comparison.CoefficientContext.integral
  expectedDeterminant : ℤ
  determinant_eq : matrix.integralMatrix.det = expectedDeterminant
  determinant_unit : expectedDeterminant = 1 ∨ expectedDeterminant = -1
  interpretation : IntegralDeterminantInterpretation
  appliesTo : String

/--
One globally located terrain move backed by a certified finite involution and
an explicit arithmetic source change.
-/
structure InvolutivePrismaticMove
    {State : Type uState}
    (G : DAF.Terrain.KnownMaximalState State)
    (V : Type uV) [Fintype V] [DecidableEq V]
    (F : DAF.Fabric.Fabric)
    (P : DAF.Prismatic.Theory)
    (before after : DAF.Prismatic.SourceRealization F P) where
  terrainMove : DAF.Terrain.TerrainMove G V
  terrainLegality : DAF.Terrain.TerrainMoveLegality terrainMove
  involution : CertifiedInvolution V
  supportInsideLocus :
    letI := G.coordDecEq
    ∀ v, v ∈ involution.support →
      terrainMove.vertexGlobal v ∈ terrainMove.locus.coordinates
  matrix : BinaryInvolutionProjection V
  matrix_source : matrix.source = involution
  orientationAgreement : Prop
  orientationAgreement_proof : orientationAgreement
  sourceChange : DAF.Prismatic.SourceRealization.Hom before after
  realizationSquare : Prop
  realizationSquare_proof : realizationSquare
  determinant : IntegralDeterminantApplicability matrix

namespace InvolutivePrismaticMove

variable
    {State : Type uState}
    {G : DAF.Terrain.KnownMaximalState State}
    {V : Type uV} [Fintype V] [DecidableEq V]
    {F : DAF.Fabric.Fabric}
    {P : DAF.Prismatic.Theory}
    {before after : DAF.Prismatic.SourceRealization F P}

/-- Every moved finite vertex belongs to the exact terrain locus. -/
theorem moved_vertex_in_locus
    (move : InvolutivePrismaticMove G V F P before after)
    {v : V} (hv : v ∈ move.involution.support) :
    move.terrainMove.vertexGlobal v ∈
      move.terrainMove.locus.coordinates := by
  letI : DecidableEq G.Coord := G.coordDecEq
  exact move.supportInsideLocus v hv

/-- The Boolean matrix is exactly the realization of the stored involution. -/
theorem matrix_action_agrees
    (move : InvolutivePrismaticMove G V F P before after) :
    move.matrix.source = move.involution :=
  move.matrix_source

/-- The integral lift is nondegenerate with determinant `+1` or `-1`. -/
theorem determinant_eq_one_or_neg_one
    (move : InvolutivePrismaticMove G V F P before after) :
    move.matrix.integralMatrix.det = 1 ∨
      move.matrix.integralMatrix.det = -1 :=
  move.matrix.det_integralMatrix_eq_one_or_neg_one

/-- The terrain-owned obligations remain available as one explicit conjunction. -/
theorem terrain_conditions
    (move : InvolutivePrismaticMove G V F P before after) :
    move.terrainLegality.exactGlobalLocus ∧
    move.terrainLegality.adjacencyCompliant ∧
    move.terrainLegality.boundaryCompliant ∧
    move.terrainLegality.obstacleCompliant ∧
    move.terrainLegality.capacityCompliant ∧
    move.terrainLegality.conservative ∧
    move.terrainLegality.globalRulesetCompatible :=
  move.terrainLegality.conjunction

end InvolutivePrismaticMove

end DAF.Integration
