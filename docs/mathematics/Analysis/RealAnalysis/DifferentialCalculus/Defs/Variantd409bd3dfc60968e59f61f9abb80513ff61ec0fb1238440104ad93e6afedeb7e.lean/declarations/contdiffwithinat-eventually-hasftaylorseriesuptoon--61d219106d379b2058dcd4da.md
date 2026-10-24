# ContDiffWithinAt.eventually_hasFTaylorSeriesUpToOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0727b456665e9979d92cea6b8c838d7d8403f214",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 684,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d409bd3dfc60968e59f61f9abb80513ff61ec0fb1238440104ad93e6afedeb7e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aaa3a316-c11c-892e-b574-c40b8d83b3c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff4f39ac-ab11-923d-9752-006327193c13",
  "kind": "theorem",
  "lexical_name": "ContDiffWithinAt.eventually_hasFTaylorSeriesUpToOn",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "contdiffwithinat-eventually-hasftaylorseriesuptoon--61d219106d379b2058dcd4da",
  "source": {
    "blob": "0727b456665e9979d92cea6b8c838d7d8403f214",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 698,
    "line": 684,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantd409bd3dfc60968e59f61f9abb80513ff61ec0fb1238440104ad93e6afedeb7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61d219106d379b2058dcd4da6ef389def221c5658606c1b8f4b2816a4bd43db1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantd409bd3dfc60968e59f61f9abb80513ff61ec0fb1238440104ad93e6afedeb7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff4f39ac-ab11-923d-9752-006327193c13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 684–698.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContDiffWithinAt.eventually_hasFTaylorSeriesUpToOn {f : E → F} {s : Set E} {a : E}
    (h : ContDiffWithinAt 𝕜 n f s a) (hs : UniqueDiffOn 𝕜 s) (ha : a ∈ s) {m : ℕ} (hm : m ≤ n) :
    ∀ᶠ t in (𝓝[s] a).smallSets, HasFTaylorSeriesUpToOn m f (ftaylorSeriesWithin 𝕜 f s) t := by
  rcases h.contDiffOn' hm (by simp) with ⟨U, hUo, haU, hfU⟩
  have : ∀ᶠ t in (𝓝[s] a).smallSets, t ⊆ s ∩ U := by
    rw [eventually_smallSets_subset]
    exact inter_mem_nhdsWithin _ <| hUo.mem_nhds haU
  refine this.mono fun t ht ↦ .mono ?_ ht
  rw [insert_eq_of_mem ha] at hfU
  refine (hfU.ftaylorSeriesWithin (hs.inter hUo)).congr_series fun k hk x hx ↦ ?_
  exact iteratedFDerivWithin_inter_open hUo hx.2

/-- On a set with unique differentiability, an analytic function is automatically `C^ω`, as its
successive derivatives are also analytic. This does not require completeness of the space. See
also `AnalyticOn.contDiffOn_of_completeSpace`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantd409bd3dfc60968e59f61f9abb80513ff61ec0fb1238440104ad93e6afedeb7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantd409bd3dfc60968e59f61f9abb80513ff61ec0fb1238440104ad93e6afedeb7e.lean#L684).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0727b456665e9979d92cea6b8c838d7d8403f214` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
