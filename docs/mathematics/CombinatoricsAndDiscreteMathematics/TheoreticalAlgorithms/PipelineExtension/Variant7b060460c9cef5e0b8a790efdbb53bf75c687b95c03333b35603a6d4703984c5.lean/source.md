# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PipelineExtension.Variant7b060460c9cef5e0b8a790efdbb53bf75c687b95c03333b35603a6d4703984c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4387aaed48de0daabd0a2ae92e0545a8314be2d` · SHA-256 `7b060460c9cef5e0b8a790efdbb53bf75c687b95c03333b35603a6d4703984c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.Index.AuthorizationBinding
import Surface.ContinuousAssurance.Pipeline

/-!
# Domain-index outputs for the unchanged assurance pipeline

These records extend stage payloads by stable identifiers only.  They do not
import terrain, geometry, matrix, or prismatic theorem implementations and do
not alter the canonical stage order or authority.
-/

namespace Surface.ContinuousAssurance

structure GlobalDiffusionResolvedInputs where
  maximalState : MathematicalObjectId
  generatorSeedAndParameters : RepresentationId
  literatureTranslations : List String
  coordinateFrame : MathematicalObjectId
  windowCover : MathematicalObjectId
  partitionRule : MathematicalObjectId
  metricTarget : MathematicalObjectId
  thresholdConvention : RepresentationId

structure GlobalDiffusionDependencyGraphs where
  globalLocalProjectionGraph : RepresentationId
  windowOverlapGraph : RepresentationId
  hierarchyGraph : RepresentationId
  surgeryLocusGraph : RepresentationId
  matrixBlockGraph : RepresentationId
  communicationCover : RepresentationId

structure GlobalDiffusionEvaluatorOutput where
  windowQueries : List EvidenceItem
  cacheChecks : List EvidenceItem
  matrixSurgeryChecks : List EvidenceItem
  rasterSamples : List EvidenceItem
  metricSamples : List EvidenceItem
  torsionMeasurements : List EvidenceItem
  thresholdResults : List EvidenceItem
  queryCostObservations : List EvidenceItem

structure GlobalDiffusionCollectedEvidence where
  records : List EvidenceItem
  representationEvents : List RepresentationId

structure GlobalDiffusionClassifiedClaims where
  claims : List IndexedClaim

structure GlobalDiffusionGateOutput where
  ownership : GateDecision
  imports : GateDecision
  globalAnchoring : GateDecision
  linearity : GateDecision
  involutivity : GateDecision
  coverage : GateDecision
  surgery : GateDecision
  torsion : GateDecision
  threshold : GateDecision
  gluing : GateDecision
  review : GateDecision
  authorization : GateDecision

structure GlobalDiffusionAttestationOutput where
  attestation : Attestation
  exactSource : ArtifactIdentity
  literatureSource : EvidenceDigest
  model : ArtifactIdentity
  indexRoot : ArtifactIdentity

structure GlobalDiffusionRefinementOutput where
  obligations : List ObligationId
  failedSquares : List ObligationId
  uncoveredCoordinates : List GlobalLocusRef
  stalePatches : List PatchIdentity

/-- Additional typed output associated with each unchanged canonical stage. -/
def GlobalDiffusionStageOutput : PipelineStage → Type
  | .resolveInputs => GlobalDiffusionResolvedInputs
  | .constructDependencyGraph => GlobalDiffusionDependencyGraphs
  | .executeEvaluators => GlobalDiffusionEvaluatorOutput
  | .collectEvidence => GlobalDiffusionCollectedEvidence
  | .classifyClaims => GlobalDiffusionClassifiedClaims
  | .applyGates => GlobalDiffusionGateOutput
  | .issueAttestation => GlobalDiffusionAttestationOutput
  | .emitRefinementRequests => GlobalDiffusionRefinementOutput

/-- Extension payload with the unchanged base-stage authority exposed. -/
structure GlobalDiffusionStageExtension (stage : PipelineStage) where
  output : GlobalDiffusionStageOutput stage
  stageAuthority : AuthorityClass
  authority_unchanged : stageAuthority = (canonicalStageSpec stage).authority

theorem GlobalDiffusionStageExtension.preserves_stage_authority
    {stage : PipelineStage}
    (extension : GlobalDiffusionStageExtension stage) :
    extension.stageAuthority = (canonicalStageSpec stage).authority :=
  extension.authority_unchanged

end Surface.ContinuousAssurance
```
