# mapClusterPt_leftLim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "18013ceb938cc14055502ca1fced29a52cbeef98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cfc71eb77ee76d07e3c2e7e78d31ac79ed71f1abae17732ff48c713b82030a3e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d9e30e4-003c-61bf-fd18-fad7de607892",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:25e427d1-e713-01b1-d9d1-a9a0507ca664",
  "kind": "theorem",
  "lexical_name": "mapClusterPt_leftLim",
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
  "slug": "mapclusterpt-leftlim--c86628e4f1ec8f121a68ced2",
  "source": {
    "blob": "18013ceb938cc14055502ca1fced29a52cbeef98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 135,
    "path": "GRWTSK/Topology/GeneralTopology/LeftRightLim/Variantcfc71eb77ee76d07e3c2e7e78d31ac79ed71f1abae17732ff48c713b82030a3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c86628e4f1ec8f121a68ced2048ecb6f19931e593c1500079bdf4b4aa92de517",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LeftRightLim/Variantcfc71eb77ee76d07e3c2e7e78d31ac79ed71f1abae17732ff48c713b82030a3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25e427d1-e713-01b1-d9d1-a9a0507ca664`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapClusterPt_leftLim [TopologicalSpace α] [OrderTopology α]
    (f : α → β) (a : α) : MapClusterPt (f.leftLim a) (𝓝[≤] a) f := by
  have A : (𝓝 (f a) ⊓ map f (𝓝[≤] a)).NeBot := by
    refine inf_neBot_iff.mpr (fun s hs s' hs' ↦ ?_)
    refine ⟨f a, mem_of_mem_nhds hs, ?_⟩
    simp only [mem_map] at hs'
    apply mem_of_mem_nhdsWithin self_mem_Iic hs'
  rcases eq_or_neBot (𝓝[<] a) with h' | h'
  · simp only [MapClusterPt, ClusterPt, h', leftLim_eq_of_eq_bot, A]
  by_cases! H : ¬ ∃ y, Tendsto f (𝓝[<] a) (𝓝 y)
  · simp [MapClusterPt, ClusterPt, H, leftLim_eq_of_not_tendsto, A]
  have : MapClusterPt (f.leftLim a) (𝓝[<] a) f := (tendsto_leftLim_of_tendsto H).mapClusterPt
  exact MapClusterPt.mono this (nhdsWithin_mono _ Iio_subset_Iic_self)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LeftRightLim/Variantcfc71eb77ee76d07e3c2e7e78d31ac79ed71f1abae17732ff48c713b82030a3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LeftRightLim/Variantcfc71eb77ee76d07e3c2e7e78d31ac79ed71f1abae17732ff48c713b82030a3e.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18013ceb938cc14055502ca1fced29a52cbeef98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
