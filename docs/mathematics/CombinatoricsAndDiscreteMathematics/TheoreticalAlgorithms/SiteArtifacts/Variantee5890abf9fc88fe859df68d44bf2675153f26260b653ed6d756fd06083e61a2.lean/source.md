# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SiteArtifacts.Variantee5890abf9fc88fe859df68d44bf2675153f26260b653ed6d756fd06083e61a2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42411a4f6a7ed33623c5af7b31b1a24503019d0f` · SHA-256 `ee5890abf9fc88fe859df68d44bf2675153f26260b653ed6d756fd06083e61a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Incremental.RegenerationPlan

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
```
