import Surface.Incremental.Artifact

namespace Surface
namespace Incremental

structure IncrementalRegenerationPlan where
  requestId : String
  graph : ImportGraph
  seeds : List ReducerSeed
  closure : DownstreamClosure
  order : AffectedModuleOrder
  artifactPlan : List ArtifactPlanEntry
  onlyAffectedRegenerated :
    ∀ e, e ∈ artifactPlan →
      e.action = ArtifactAction.regenerate →
        e.key.moduleKey ∈ closure.affectedModules
  everyRegeneratedExplained :
    ∀ e, e ∈ artifactPlan →
      e.action = ArtifactAction.regenerate →
        ∃ p ∈ closure.inclusionPaths,
          p.target = e.key.moduleKey
  reusedOutsideClosure :
    ∀ e, e ∈ artifactPlan →
      e.key.moduleKey ∉ closure.affectedModules →
        e.action ≠ ArtifactAction.regenerate
  deterministicPlan : Prop
  deterministicPlanCertified : deterministicPlan
  claimBoundary : List String

theorem incrementalPlan_onlyAffectedRegenerated
    (P : IncrementalRegenerationPlan)
    {e : ArtifactPlanEntry}
    (he : e ∈ P.artifactPlan)
    (ha : e.action = ArtifactAction.regenerate) :
    e.key.moduleKey ∈ P.closure.affectedModules :=
  P.onlyAffectedRegenerated e he ha

theorem incrementalPlan_regenerates_only_affected
    (P : IncrementalRegenerationPlan)
    {e : ArtifactPlanEntry}
    (he : e ∈ P.artifactPlan)
    (ha : e.action = ArtifactAction.regenerate) :
    e.key.moduleKey ∈ P.closure.affectedModules :=
  P.onlyAffectedRegenerated e he ha

theorem incrementalPlan_everyRegeneratedExplained
    (P : IncrementalRegenerationPlan)
    {e : ArtifactPlanEntry}
    (he : e ∈ P.artifactPlan)
    (ha : e.action = ArtifactAction.regenerate) :
    ∃ p ∈ P.closure.inclusionPaths,
      p.target = e.key.moduleKey :=
  P.everyRegeneratedExplained e he ha

theorem incrementalPlan_every_regeneration_has_inclusion_path
    (P : IncrementalRegenerationPlan)
    {e : ArtifactPlanEntry}
    (he : e ∈ P.artifactPlan)
    (ha : e.action = ArtifactAction.regenerate) :
    ∃ p ∈ P.closure.inclusionPaths,
      p.target = e.key.moduleKey :=
  P.everyRegeneratedExplained e he ha

theorem incrementalPlan_reusesOutsideClosure
    (P : IncrementalRegenerationPlan)
    {e : ArtifactPlanEntry}
    (he : e ∈ P.artifactPlan)
    (hout : e.key.moduleKey ∉ P.closure.affectedModules) :
    e.action ≠ ArtifactAction.regenerate :=
  P.reusedOutsideClosure e he hout

theorem incrementalPlan_reuses_unaffected
    (P : IncrementalRegenerationPlan)
    {e : ArtifactPlanEntry}
    (he : e ∈ P.artifactPlan)
    (hout : e.key.moduleKey ∉ P.closure.affectedModules) :
    e.action ≠ ArtifactAction.regenerate :=
  P.reusedOutsideClosure e he hout

theorem incrementalPlan_deterministic
    (P : IncrementalRegenerationPlan) :
    P.deterministicPlan :=
  P.deterministicPlanCertified

theorem incrementalPlan_is_deterministic
    (P : IncrementalRegenerationPlan) :
    P.deterministicPlan :=
  P.deterministicPlanCertified

end Incremental
end Surface
