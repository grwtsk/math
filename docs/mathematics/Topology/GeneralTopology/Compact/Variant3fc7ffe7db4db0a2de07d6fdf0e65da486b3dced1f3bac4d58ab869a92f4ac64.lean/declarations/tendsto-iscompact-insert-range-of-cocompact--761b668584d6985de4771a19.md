# Tendsto.isCompact_insert_range_of_cocompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30fc9322f4ce78f847a592b0035bf5edfc65f33c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 618,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fc7ffe7db4db0a2de07d6fdf0e65da486b3dced1f3bac4d58ab869a92f4ac64.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef92f3d1-4302-7339-4f72-69400ea8a496",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0e574f8-8abc-d353-142b-69c9f0d677e8",
  "kind": "theorem",
  "lexical_name": "Tendsto.isCompact_insert_range_of_cocompact",
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
  "slug": "tendsto-iscompact-insert-range-of-cocompact--761b668584d6985de4771a19",
  "source": {
    "blob": "30fc9322f4ce78f847a592b0035bf5edfc65f33c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 633,
    "line": 618,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variant3fc7ffe7db4db0a2de07d6fdf0e65da486b3dced1f3bac4d58ab869a92f4ac64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:761b668584d6985de4771a19fc307c491ed7be80899c275a2ea29f60011e0a83",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variant3fc7ffe7db4db0a2de07d6fdf0e65da486b3dced1f3bac4d58ab869a92f4ac64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0e574f8-8abc-d353-142b-69c9f0d677e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 618–633.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Tendsto.isCompact_insert_range_of_cocompact {f : X → Y} {y}
    (hf : Tendsto f (cocompact X) (𝓝 y)) (hfc : Continuous f) : IsCompact (insert y (range f)) := by
  intro l hne hle
  by_cases hy : ClusterPt y l
  · exact ⟨y, Or.inl rfl, hy⟩
  simp only [clusterPt_iff_nonempty, not_forall, ← not_disjoint_iff_nonempty_inter, not_not] at hy
  rcases hy with ⟨s, hsy, t, htl, hd⟩
  rcases mem_cocompact.1 (hf hsy) with ⟨K, hKc, hKs⟩
  have : f '' K ∈ l := by
    filter_upwards [htl, le_principal_iff.1 hle] with y hyt hyf
    rcases hyf with (rfl | ⟨x, rfl⟩)
    exacts [(hd.le_bot ⟨mem_of_mem_nhds hsy, hyt⟩).elim,
      mem_image_of_mem _ (not_not.1 fun hxK => hd.le_bot ⟨hKs hxK, hyt⟩)]
  rcases hKc.image hfc (le_principal_iff.2 this) with ⟨y, hy, hyl⟩
  exact ⟨y, Or.inr <| image_subset_range _ _ hy, hyl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variant3fc7ffe7db4db0a2de07d6fdf0e65da486b3dced1f3bac4d58ab869a92f4ac64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variant3fc7ffe7db4db0a2de07d6fdf0e65da486b3dced1f3bac4d58ab869a92f4ac64.lean#L618).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30fc9322f4ce78f847a592b0035bf5edfc65f33c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
