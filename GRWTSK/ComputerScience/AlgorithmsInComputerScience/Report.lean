import Surface.Incremental.Preservation

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
