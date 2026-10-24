# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.BoundedPrismaticDiffusion.Variante8a880e024977c70f2c9468a90efe3810acf1bd4d7d749aeaf6110484999e209

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ab9f19667fd227990cc20cd89c55030c4933179` · SHA-256 `a72beaa136a2226b06cf449fa463bb79e7cc79af1e6c4d54fe99082df4bfce34`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.GlobalReferenceMetricAnchor.Variant174462969e0769e104d0e7ec14bfb31bdfe172352982b92b8ca3c9a2d164fb1f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"174462969e0769e104d0e7ec14bfb31bdfe172352982b92b8ca3c9a2d164fb1f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.GlobalReferenceMetricAnchor.Variant174462969e0769e104d0e7ec14bfb31bdfe172352982b92b8ca3c9a2d164fb1f","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"174462969e0769e104d0e7ec14bfb31bdfe172352982b92b8ca3c9a2d164fb1f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Integration/BoundedPrismaticDiffusion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Geometry.LegalDiffusion
import DAF.Integration.AvalancheReconciliation
import DAF.Integration.GloballyAnchoredWindowDiffusion

/-!
# Fully gated bounded diffusion

Complete move legality is assembled only here.  Its fields keep absolute
locus, terrain rules, Boolean action, orientation, charge, window, matrix,
raster, torsion, determinant, prismatic, and global-ruleset judgments
separate.  A neighbor enters the legal metric network only through proofs of
all fields.

The numerical evolution remains the finite linear operator supplied by
`LegalDiffusionOperator`; the metric path is independent input and half-up
thresholding is the final declared nonlinear observation.  No stability claim
is inferred beyond the certificates carried by the selected operator.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GlobalReferenceMetricAnchor.Variant174462969e0769e104d0e7ec14bfb31bdfe172352982b92b8ca3c9a2d164fb1f

namespace DAF.Integration

open DAF.Terrain

universe uState uV

/--
An explicit bridge from the known maximal reference state to the metric used
by a bounded discrete flow.  The caller supplies the representation map from
the vertex-indexed restriction of the global state into the flow's metric
state.  This keeps the geometric flow independent of terrain-state semantics
while making the integration-layer anchoring exact and inspectable.
-/
structure GlobalReferenceMetricAnchor
    {State : Type uState}
    (G : KnownMaximalState State)
    {V : Type uV} [Fintype V] [DecidableEq V]
    {terrain : Terrain V}
    (flow : DAF.Geometry.BoundedRicciReferenceFlow terrain)
    (vertexGlobal : V ↪ G.Coord) where
  metricFromVertexState : (V → State) → flow.MetricState
  referenceMetric_eq :
    flow.referenceMetric =
      metricFromVertexState (fun v ↦ G.reference (vertexGlobal v))

/-- Complete conjunctive legality for every admitted directed neighbor pair. -/
structure CompleteLegalityGate
    {V : Type uV} [Fintype V] [DecidableEq V]
    (terrain : Terrain V)
    (boundary : BoundaryState V)
    extends DAF.Geometry.LegalNeighborSystem terrain boundary where
  exactGlobalLocus : V → V → Prop
  adjacencyBoundaryConservation : V → V → Prop
  obstacleCapacityConservation : V → V → Prop
  booleanSupportActionAgreement : V → V → Prop
  orientationAgreement : V → V → Prop
  binaryChargeCompatible : V → V → Prop
  windowOverlapCompatible : V → V → Prop
  matrixProjectionCompatible : V → V → Prop
  rasterMeshCompatible : V → V → Prop
  torsionModelCompatible : V → V → Prop
  determinantApplicable : V → V → Prop
  prismaticRealizationCompatible : V → V → Prop
  globalRulesetCompatible : V → V → Prop
  exactGlobalLocus_proof : ∀ {x y}, admitted x y → exactGlobalLocus x y
  adjacencyBoundaryConservation_proof :
    ∀ {x y}, admitted x y → adjacencyBoundaryConservation x y
  obstacleCapacityConservation_proof :
    ∀ {x y}, admitted x y → obstacleCapacityConservation x y
  booleanSupportActionAgreement_proof :
    ∀ {x y}, admitted x y → booleanSupportActionAgreement x y
  orientationAgreement_proof :
    ∀ {x y}, admitted x y → orientationAgreement x y
  binaryChargeCompatible_proof :
    ∀ {x y}, admitted x y → binaryChargeCompatible x y
  windowOverlapCompatible_proof :
    ∀ {x y}, admitted x y → windowOverlapCompatible x y
  matrixProjectionCompatible_proof :
    ∀ {x y}, admitted x y → matrixProjectionCompatible x y
  rasterMeshCompatible_proof :
    ∀ {x y}, admitted x y → rasterMeshCompatible x y
  torsionModelCompatible_proof :
    ∀ {x y}, admitted x y → torsionModelCompatible x y
  determinantApplicable_proof :
    ∀ {x y}, admitted x y → determinantApplicable x y
  prismaticRealizationCompatible_proof :
    ∀ {x y}, admitted x y → prismaticRealizationCompatible x y
  globalRulesetCompatible_proof :
    ∀ {x y}, admitted x y → globalRulesetCompatible x y

namespace CompleteLegalityGate

variable {V : Type uV} [Fintype V] [DecidableEq V]
variable {terrain : Terrain V} {boundary : BoundaryState V}

/-- Complete legality is an explicit thirteen-way conjunction. -/
theorem admitted_is_completely_legal
    (gate : CompleteLegalityGate terrain boundary)
    {x y : V}
    (h : gate.admitted x y) :
    gate.exactGlobalLocus x y ∧
    gate.adjacencyBoundaryConservation x y ∧
    gate.obstacleCapacityConservation x y ∧
    gate.booleanSupportActionAgreement x y ∧
    gate.orientationAgreement x y ∧
    gate.binaryChargeCompatible x y ∧
    gate.windowOverlapCompatible x y ∧
    gate.matrixProjectionCompatible x y ∧
    gate.rasterMeshCompatible x y ∧
    gate.torsionModelCompatible x y ∧
    gate.determinantApplicable x y ∧
    gate.prismaticRealizationCompatible x y ∧
    gate.globalRulesetCompatible x y :=
  ⟨gate.exactGlobalLocus_proof h,
   gate.adjacencyBoundaryConservation_proof h,
   gate.obstacleCapacityConservation_proof h,
   gate.booleanSupportActionAgreement_proof h,
   gate.orientationAgreement_proof h,
   gate.binaryChargeCompatible_proof h,
   gate.windowOverlapCompatible_proof h,
   gate.matrixProjectionCompatible_proof h,
   gate.rasterMeshCompatible_proof h,
   gate.torsionModelCompatible_proof h,
   gate.determinantApplicable_proof h,
   gate.prismaticRealizationCompatible_proof h,
   gate.globalRulesetCompatible_proof h⟩

end CompleteLegalityGate

/--
A fixed-horizon legal round anchored in one maximal state and window system.
The vertex embedding supplies absolute placement; the diffusion operator can
use only the completely gated neighbor system.
-/
structure LegalBoundedPrismaticDiffusion
    {State : Type uState}
    (G : KnownMaximalState State)
    (V : Type uV) [Fintype V] [DecidableEq V]
    (terrain : Terrain V)
    (boundary : BoundaryState V)
    (flow : DAF.Geometry.BoundedRicciReferenceFlow terrain)
    (windows : GlobalWindowSystem G) where
  vertexGlobal : V ↪ G.Coord
  referenceAnchor : GlobalReferenceMetricAnchor G flow vertexGlobal
  gate : CompleteLegalityGate terrain boundary
  diffusion : DAF.Geometry.LegalDiffusionOperator
    flow boundary gate.toLegalNeighborSystem
  horizon : Nat
  horizon_eq : horizon = flow.horizon
  metricSignalSeparation : Prop
  metricSignalSeparation_proof : metricSignalSeparation
  torsionCompatibility : Prop
  torsionCompatibility_proof : torsionCompatibility

namespace LegalBoundedPrismaticDiffusion

variable
    {State : Type uState}
    {G : KnownMaximalState State}
    {V : Type uV} [Fintype V] [DecidableEq V]
    {terrain : Terrain V}
    {boundary : BoundaryState V}
    {flow : DAF.Geometry.BoundedRicciReferenceFlow terrain}
    {windows : GlobalWindowSystem G}

/--
The selected Ricci reference metric is exactly the representation of the
known maximal state's reference restricted along the round's absolute vertex
embedding.  No metric/state identification is inferred without the explicit
anchor carried by the round.
-/
theorem referenceMetric_eq_globalReference
    (round : LegalBoundedPrismaticDiffusion G V terrain boundary flow windows) :
    flow.referenceMetric =
      round.referenceAnchor.metricFromVertexState
        (fun v ↦ G.reference (round.vertexGlobal v)) :=
  round.referenceAnchor.referenceMetric_eq

/-- Every numerical neighbor has passed the full conjunctive gate. -/
theorem neighbor_has_complete_legality
    (round : LegalBoundedPrismaticDiffusion G V terrain boundary flow windows)
    {x y : V}
    (hy : y ∈ round.gate.legalNeighbors x) :
    round.gate.exactGlobalLocus x y ∧
    round.gate.adjacencyBoundaryConservation x y ∧
    round.gate.obstacleCapacityConservation x y ∧
    round.gate.booleanSupportActionAgreement x y ∧
    round.gate.orientationAgreement x y ∧
    round.gate.binaryChargeCompatible x y ∧
    round.gate.windowOverlapCompatible x y ∧
    round.gate.matrixProjectionCompatible x y ∧
    round.gate.rasterMeshCompatible x y ∧
    round.gate.torsionModelCompatible x y ∧
    round.gate.determinantApplicable x y ∧
    round.gate.prismaticRealizationCompatible x y ∧
    round.gate.globalRulesetCompatible x y := by
  apply round.gate.admitted_is_completely_legal
  exact (round.gate.mem_legalNeighbors_iff x y).mp hy

/-- The complete pre-threshold horizon is a linear deviation map. -/
theorem horizon_add
    (round : LegalBoundedPrismaticDiffusion G V terrain boundary flow windows)
    (u v : V → ℝ) :
    round.diffusion.horizonMap (u + v) =
      round.diffusion.horizonMap u + round.diffusion.horizonMap v :=
  round.diffusion.horizonMap_add u v

/-- Thresholding is definitionally the final observation of the linear result. -/
theorem threshold_is_terminal
    (round : LegalBoundedPrismaticDiffusion G V terrain boundary flow windows)
    (reference initialDeviation : V → ℝ) :
    round.diffusion.thresholdResult reference initialDeviation =
      thresholdState
        (reference + round.diffusion.horizonMap initialDeviation) :=
  rfl

end LegalBoundedPrismaticDiffusion

end DAF.Integration
```
