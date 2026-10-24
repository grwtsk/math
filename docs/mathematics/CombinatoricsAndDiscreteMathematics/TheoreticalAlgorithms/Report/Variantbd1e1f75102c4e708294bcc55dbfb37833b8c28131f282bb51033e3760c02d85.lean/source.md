# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Report.Variantbd1e1f75102c4e708294bcc55dbfb37833b8c28131f282bb51033e3760c02d85

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8707ac7ad526bed1ea724191b31d0a7121b05eb2` · SHA-256 `0128e86668f6a4bce173a7e3767652cfa94375b8c5fae4e5e79a00225a8fe431`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModuleRegenerationReport.Variant065731a96d544d071bf3e34351d3d99847eb8a6baa11daf32614ebb0b3e18964","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"065731a96d544d071bf3e34351d3d99847eb8a6baa11daf32614ebb0b3e18964","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ModuleRegenerationReport.Variant065731a96d544d071bf3e34351d3d99847eb8a6baa11daf32614ebb0b3e18964","mathematical_subject":"Computation.DataStructures","original_sha256":"065731a96d544d071bf3e34351d3d99847eb8a6baa11daf32614ebb0b3e18964","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Incremental/Report.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Incremental.Preservation


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModuleRegenerationReport.Variant065731a96d544d071bf3e34351d3d99847eb8a6baa11daf32614ebb0b3e18964

namespace Surface
namespace Incremental

structure ModuleRegenerationReport where
  moduleKey : ModuleKey
  oldSourceHash? : Option ContentHash
  newSourceHash : ContentHash
  inclusionReason : InclusionReason
  reverseImportPathFromSeed : List ImportEdge
  directImports : List ModuleKey
  directReverseImporters : List ModuleKey
  artifactKindsRegenerated : List ArtifactKind
  artifactKindsReused : List ArtifactKind
  proofStatusChanges : List String
  claimBoundaryChanges : List String
  declarationsAdded : List String
  declarationsRemoved : List String
  declarationsChanged : List String
  siteFragmentsRegenerated : List String
  siteFragmentsReused : List String
  claimBoundary : List String
deriving Repr

structure IncrementalGenerationResult where
  request : IncrementalGenerationRequest
  plan : IncrementalRegenerationPlan
  siteUpdate : IncrementalSiteUpdate
  preservationFailures : List PreservationFailure
  emittedArtifacts : List ArtifactPlanEntry
  success :
    preservationFailures = []
  exactReasonReportComplete :
    ∀ e, e ∈ emittedArtifacts →
      e.action = ArtifactAction.regenerate →
        ∃ p ∈ plan.closure.inclusionPaths,
          p.target = e.key.moduleKey
  emittedArtifactsPlanned :
    ∀ e, e ∈ emittedArtifacts → e ∈ plan.artifactPlan
  claimBoundary : List String

theorem incrementalResult_success_has_no_preservationFailures
    (R : IncrementalGenerationResult) :
    R.preservationFailures = [] :=
  R.success

theorem incrementalResult_success_has_empty_failure_list
    (R : IncrementalGenerationResult) :
    R.preservationFailures = [] :=
  R.success

theorem incrementalResult_every_regenerated_module_has_reason
    (R : IncrementalGenerationResult)
    {e : ArtifactPlanEntry}
    (he : e ∈ R.emittedArtifacts)
    (ha : e.action = ArtifactAction.regenerate) :
    ∃ p ∈ R.plan.closure.inclusionPaths,
      p.target = e.key.moduleKey :=
  R.exactReasonReportComplete e he ha

theorem incrementalResult_reports_every_regenerated_module
    (R : IncrementalGenerationResult)
    {e : ArtifactPlanEntry}
    (he : e ∈ R.emittedArtifacts)
    (ha : e.action = ArtifactAction.regenerate) :
    ∃ p ∈ R.plan.closure.inclusionPaths,
      p.target = e.key.moduleKey :=
  R.exactReasonReportComplete e he ha

theorem incrementalResult_emits_only_planned_artifacts
    (R : IncrementalGenerationResult)
    {e : ArtifactPlanEntry}
    (he : e ∈ R.emittedArtifacts) :
    e ∈ R.plan.artifactPlan :=
  R.emittedArtifactsPlanned e he

end Incremental
end Surface
```
