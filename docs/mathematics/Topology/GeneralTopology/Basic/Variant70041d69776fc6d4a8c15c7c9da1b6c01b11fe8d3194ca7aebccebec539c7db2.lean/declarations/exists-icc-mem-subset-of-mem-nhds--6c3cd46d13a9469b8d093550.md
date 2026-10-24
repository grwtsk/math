# exists_Icc_mem_subset_of_mem_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2a6d413ad1c02252c0c69261cf5761e95af1cec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 444,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/70041d69776fc6d4a8c15c7c9da1b6c01b11fe8d3194ca7aebccebec539c7db2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d16c7eaa-3972-54fb-6d47-5b760fecf812",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1b4ad02-bfcc-8840-32bf-75cbcbd7a166",
  "kind": "theorem",
  "lexical_name": "exists_Icc_mem_subset_of_mem_nhds",
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
  "slug": "exists-icc-mem-subset-of-mem-nhds--6c3cd46d13a9469b8d093550",
  "source": {
    "blob": "a2a6d413ad1c02252c0c69261cf5761e95af1cec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 444,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant70041d69776fc6d4a8c15c7c9da1b6c01b11fe8d3194ca7aebccebec539c7db2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c3cd46d13a9469b8d093550c3b95510d07effcc9032c186784ab2b020e4aaf4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant70041d69776fc6d4a8c15c7c9da1b6c01b11fe8d3194ca7aebccebec539c7db2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1b4ad02-bfcc-8840-32bf-75cbcbd7a166`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 444–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_Icc_mem_subset_of_mem_nhds {a : α} {s : Set α} (hs : s ∈ 𝓝 a) :
    ∃ b c, a ∈ Icc b c ∧ Icc b c ∈ 𝓝 a ∧ Icc b c ⊆ s := by
  rcases exists_Icc_mem_subset_of_mem_nhdsLE (nhdsWithin_le_nhds hs) with
    ⟨b, hba, hb_nhds, hbs⟩
  rcases exists_Icc_mem_subset_of_mem_nhdsGE (nhdsWithin_le_nhds hs) with
    ⟨c, hac, hc_nhds, hcs⟩
  refine ⟨b, c, ⟨hba, hac⟩, ?_⟩
  rw [← Icc_union_Icc_eq_Icc hba hac, ← nhdsLE_sup_nhdsGE]
  exact ⟨union_mem_sup hb_nhds hc_nhds, union_subset hbs hcs⟩

@[to_dual none]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant70041d69776fc6d4a8c15c7c9da1b6c01b11fe8d3194ca7aebccebec539c7db2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant70041d69776fc6d4a8c15c7c9da1b6c01b11fe8d3194ca7aebccebec539c7db2.lean#L444).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2a6d413ad1c02252c0c69261cf5761e95af1cec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
