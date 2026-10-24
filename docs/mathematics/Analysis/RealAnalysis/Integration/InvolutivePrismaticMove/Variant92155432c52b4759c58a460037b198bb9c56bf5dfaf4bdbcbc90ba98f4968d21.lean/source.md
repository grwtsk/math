# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.InvolutivePrismaticMove.Variant92155432c52b4759c58a460037b198bb9c56bf5dfaf4bdbcbc90ba98f4968d21

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef72713a96accfe794efea55ce2b3b490d929ff0` · SHA-256 `5f5e369c1300bcb74febcfd9ac695532cac73a28f78860bd54348958939c042a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.IntegralDeterminantInterpretation.Variant3f22b541fdcb518c1e610af4a2260aa15ce597b206d13556dc8e3da76641b73f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3f22b541fdcb518c1e610af4a2260aa15ce597b206d13556dc8e3da76641b73f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.IntegralDeterminantInterpretation.Variant3f22b541fdcb518c1e610af4a2260aa15ce597b206d13556dc8e3da76641b73f","mathematical_subject":"Analysis.Integration","original_sha256":"3f22b541fdcb518c1e610af4a2260aa15ce597b206d13556dc8e3da76641b73f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/DAF/Integration/InvolutivePrismaticMove.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.Analysis.RealAnalysis.Integration.IntegralDeterminantInterpretation.Variant3f22b541fdcb518c1e610af4a2260aa15ce597b206d13556dc8e3da76641b73f

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
```
