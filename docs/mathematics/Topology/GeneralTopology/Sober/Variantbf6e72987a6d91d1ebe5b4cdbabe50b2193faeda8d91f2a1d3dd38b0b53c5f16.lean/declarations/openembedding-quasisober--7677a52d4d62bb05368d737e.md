# OpenEmbedding.quasiSober

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7aae3bfd46942645ce342758c524f1ed6161db77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7249472-5e31-33cb-91f5-ce7bfd0610ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9aa03aa3-24d1-817f-fc4a-1e205d410936",
  "kind": "theorem",
  "lexical_name": "OpenEmbedding.quasiSober",
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
  "slug": "openembedding-quasisober--7677a52d4d62bb05368d737e",
  "source": {
    "blob": "7aae3bfd46942645ce342758c524f1ed6161db77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 192,
    "path": "GRWTSK/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7677a52d4d62bb05368d737e74358ac7be12f726e391f04cea0ff9257d85cbcd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9aa03aa3-24d1-817f-fc4a-1e205d410936`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OpenEmbedding.quasiSober {f : α → β} (hf : OpenEmbedding f) [QuasiSober β] :
    QuasiSober α where
  sober hS hS' := by
    have hS'' := hS.image f hf.continuous.continuousOn
    obtain ⟨x, hx⟩ := QuasiSober.sober hS''.closure isClosed_closure
    obtain ⟨T, hT, rfl⟩ := hf.toInducing.isClosed_iff.mp hS'
    rw [image_preimage_eq_inter_range] at hx hS''
    have hxT : x ∈ T := by
      rw [← hT.closure_eq]
      exact closure_mono (inter_subset_left _ _) hx.mem
    obtain ⟨y, rfl⟩ : x ∈ range f := by
      rw [hx.mem_open_set_iff hf.open_range]
      refine' Nonempty.mono _ hS''.1
      simpa using subset_closure
    use y
    change _ = _
    rw [hf.toEmbedding.closure_eq_preimage_closure_image, image_singleton, show _ = _ from hx]
    apply image_injective.mpr hf.inj
    ext z
    simp only [image_preimage_eq_inter_range, mem_inter_iff, and_congr_left_iff]
    exact fun hy => ⟨fun h => hT.closure_eq ▸ closure_mono (inter_subset_left _ _) h,
      fun h => subset_closure ⟨h, hy⟩⟩
#align open_embedding.quasi_sober OpenEmbedding.quasiSober

/-- A space is quasi sober if it can be covered by open quasi sober subsets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7aae3bfd46942645ce342758c524f1ed6161db77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
