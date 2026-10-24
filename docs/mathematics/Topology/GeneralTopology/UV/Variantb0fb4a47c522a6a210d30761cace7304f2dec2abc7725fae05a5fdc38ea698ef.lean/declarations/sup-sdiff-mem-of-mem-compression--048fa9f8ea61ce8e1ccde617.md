# sup_sdiff_mem_of_mem_compression

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31dd45492bf4de729963846f3c841eb04e98155a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0fb4a47c522a6a210d30761cace7304f2dec2abc7725fae05a5fdc38ea698ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d14c9b6e-137d-45e0-b025-6e9e88765d6a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:117fc8d6-9c36-8916-fe7e-1a7275b49b7f",
  "kind": "theorem",
  "lexical_name": "sup_sdiff_mem_of_mem_compression",
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
  "slug": "sup-sdiff-mem-of-mem-compression--048fa9f8ea61ce8e1ccde617",
  "source": {
    "blob": "31dd45492bf4de729963846f3c841eb04e98155a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 229,
    "path": "GRWTSK/Topology/GeneralTopology/UV/Variantb0fb4a47c522a6a210d30761cace7304f2dec2abc7725fae05a5fdc38ea698ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:048fa9f8ea61ce8e1ccde617d504c4d747bad0c67f153a5fbad084dbc77ac69e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UV/Variantb0fb4a47c522a6a210d30761cace7304f2dec2abc7725fae05a5fdc38ea698ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:117fc8d6-9c36-8916-fe7e-1a7275b49b7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sup_sdiff_mem_of_mem_compression (ha : a ∈ 𝓒 u v s) (hva : v ≤ a) (hua : Disjoint u a) :
    (a ⊔ u) \ v ∈ s := by
  rw [mem_compression, compress_of_disjoint_of_le hua hva] at ha
  obtain ⟨_, ha⟩ | ⟨_, b, hb, rfl⟩ := ha
  · exact ha
  have hu : u = ⊥ := by
    suffices Disjoint u (u \ v) by rwa [(hua.mono_right hva).sdiff_eq_left, disjoint_self] at this
    refine hua.mono_right ?_
    rw [← compress_idem, compress_of_disjoint_of_le hua hva]
    exact sdiff_le_sdiff_right le_sup_right
  have hv : v = ⊥ := by
    rw [← disjoint_self]
    apply Disjoint.mono_right hva
    rw [← compress_idem, compress_of_disjoint_of_le hua hva]
    exact disjoint_sdiff_self_right
  rwa [hu, hv, compress_self, sup_bot_eq, sdiff_bot]

/-- If `a` is in the `u, v`-compression but `v ≤ a`, then `a` must have been in the original
family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UV/Variantb0fb4a47c522a6a210d30761cace7304f2dec2abc7725fae05a5fdc38ea698ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UV/Variantb0fb4a47c522a6a210d30761cace7304f2dec2abc7725fae05a5fdc38ea698ef.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31dd45492bf4de729963846f3c841eb04e98155a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
