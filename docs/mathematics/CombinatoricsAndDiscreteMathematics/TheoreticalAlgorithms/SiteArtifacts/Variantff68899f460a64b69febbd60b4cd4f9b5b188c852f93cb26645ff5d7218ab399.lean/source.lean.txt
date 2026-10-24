-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SiteArtifactFragment.Variantee5890abf9fc88fe859df68d44bf2675153f26260b653ed6d756fd06083e61a2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ee5890abf9fc88fe859df68d44bf2675153f26260b653ed6d756fd06083e61a2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SiteArtifactFragment.Variantee5890abf9fc88fe859df68d44bf2675153f26260b653ed6d756fd06083e61a2","mathematical_subject":"Computation.DataStructures","original_sha256":"ee5890abf9fc88fe859df68d44bf2675153f26260b653ed6d756fd06083e61a2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Incremental/SiteArtifacts.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Incremental.RegenerationPlan


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SiteArtifactFragment.Variantee5890abf9fc88fe859df68d44bf2675153f26260b653ed6d756fd06083e61a2

namespace Surface
namespace Incremental

structure SiteArtifactFragment where
  moduleKey : ModuleKey
  syntacticObjectsHash : ContentHash
  coverBasisHash : ContentHash
  theoremManifestHash : ContentHash
  internalLanguageHash? : Option ContentHash
  claimBoundary : List String
deriving Repr

structure IncrementalSiteUpdate where
  closure : DownstreamClosure
  affectedFragments : List SiteArtifactFragment
  reusedFragments : List SiteArtifactFragment
  mergedSiteHashBefore? : Option ContentHash
  mergedSiteHashAfter : ContentHash
  affectedFragmentsExplained :
    ∀ f, f ∈ affectedFragments →
      ∃ p ∈ closure.inclusionPaths, p.target = f.moduleKey
  reusedFragmentsNotRegenerated :
    ∀ f, f ∈ reusedFragments →
      f.moduleKey ∉
        (affectedFragments.map (fun x => x.moduleKey))
  deterministicMerge : Prop
  deterministicMergeCertified : deterministicMerge
  claimBoundary : List String

theorem incrementalSiteUpdate_onlyAffectedFragmentsChanged
    (U : IncrementalSiteUpdate)
    {f : SiteArtifactFragment}
    (hf : f ∈ U.affectedFragments) :
    ∃ p ∈ U.closure.inclusionPaths, p.target = f.moduleKey :=
  U.affectedFragmentsExplained f hf

theorem siteUpdate_changes_only_affected_fragments
    (U : IncrementalSiteUpdate)
    {f : SiteArtifactFragment}
    (hf : f ∈ U.affectedFragments) :
    ∃ p ∈ U.closure.inclusionPaths, p.target = f.moduleKey :=
  U.affectedFragmentsExplained f hf

theorem incrementalSiteUpdate_reusedFragmentsStable
    (U : IncrementalSiteUpdate)
    {f : SiteArtifactFragment}
    (hf : f ∈ U.reusedFragments) :
    f.moduleKey ∉
      (U.affectedFragments.map (fun x => x.moduleKey)) :=
  U.reusedFragmentsNotRegenerated f hf

theorem siteUpdate_reuses_unaffected_fragments
    (U : IncrementalSiteUpdate)
    {f : SiteArtifactFragment}
    (hf : f ∈ U.reusedFragments) :
    f.moduleKey ∉
      (U.affectedFragments.map (fun x => x.moduleKey)) :=
  U.reusedFragmentsNotRegenerated f hf

theorem incrementalSiteUpdate_deterministicMerge
    (U : IncrementalSiteUpdate) :
    U.deterministicMerge :=
  U.deterministicMergeCertified

theorem siteUpdate_merge_is_deterministic
    (U : IncrementalSiteUpdate) :
    U.deterministicMerge :=
  U.deterministicMergeCertified

end Incremental
end Surface
