# IsQuasiSeparated.image_of_isEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e20d455f2ab89168a0eab7a80337338455addd59",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6de635c8d26e72a096aeac224b48670cf51e4f72dd45652c9540100a02bb9528.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7dcc73b1-abed-cc33-ad04-5673a123d7a3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:560d6212-3c46-b837-c997-ff8162b91f0c",
  "kind": "theorem",
  "lexical_name": "IsQuasiSeparated.image_of_isEmbedding",
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
  "slug": "isquasiseparated-image-of-isembedding--74f575cc9be616f26911a9a0",
  "source": {
    "blob": "e20d455f2ab89168a0eab7a80337338455addd59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 57,
    "path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant6de635c8d26e72a096aeac224b48670cf51e4f72dd45652c9540100a02bb9528.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74f575cc9be616f26911a9a031f138eebb54de67e829f72e3c6dca2f813ab94a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuasiSeparated/Variant6de635c8d26e72a096aeac224b48670cf51e4f72dd45652c9540100a02bb9528.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:560d6212-3c46-b837-c997-ff8162b91f0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsQuasiSeparated.image_of_isEmbedding {s : Set α} (H : IsQuasiSeparated s)
    (h : IsEmbedding f) : IsQuasiSeparated (f '' s) := by
  intro U V hU hU' hU'' hV hV' hV''
  convert
    (H (f ⁻¹' U) (f ⁻¹' V)
      ?_ (h.continuous.1 _ hU') ?_ ?_ (h.continuous.1 _ hV') ?_).image h.continuous
  · symm
    rw [← Set.preimage_inter, Set.image_preimage_eq_inter_range, Set.inter_eq_left]
    exact Set.inter_subset_left.trans (hU.trans (Set.image_subset_range _ _))
  · intro x hx
    rw [← h.injective.injOn.mem_image_iff (Set.subset_univ _) trivial]
    exact hU hx
  · rw [h.isCompact_iff]
    convert hU''
    rw [Set.image_preimage_eq_inter_range, Set.inter_eq_left]
    exact hU.trans (Set.image_subset_range _ _)
  · intro x hx
    rw [← h.injective.injOn.mem_image_iff (Set.subset_univ _) trivial]
    exact hV hx
  · rw [h.isCompact_iff]
    convert hV''
    rw [Set.image_preimage_eq_inter_range, Set.inter_eq_left]
    exact hV.trans (Set.image_subset_range _ _)

@[deprecated (since := "2024-10-26")]
alias IsQuasiSeparated.image_of_embedding := IsQuasiSeparated.image_of_isEmbedding

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuasiSeparated/Variant6de635c8d26e72a096aeac224b48670cf51e4f72dd45652c9540100a02bb9528.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant6de635c8d26e72a096aeac224b48670cf51e4f72dd45652c9540100a02bb9528.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e20d455f2ab89168a0eab7a80337338455addd59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
