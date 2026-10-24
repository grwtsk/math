# sUnion_memPartition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "94c1f4dca2984279e633f1fad821856c3a7e0cc4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb73bb5699e39f80402df11b5be4dd3865d1c68b9aa4ddea1502e62db2eef880.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5dd5d4a-290f-7031-250a-6b93a677312f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:56675af0-3b11-aec0-8a11-2e25b565a7fc",
  "kind": "lemma",
  "lexical_name": "sUnion_memPartition",
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
  "slug": "sunion-mempartition--011c942a853a1842c24c9909",
  "source": {
    "blob": "94c1f4dca2984279e633f1fad821856c3a7e0cc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 74,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantcb73bb5699e39f80402df11b5be4dd3865d1c68b9aa4ddea1502e62db2eef880.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:011c942a853a1842c24c99093be22fe0f1005b37f59a666462665b31109c88ae",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantcb73bb5699e39f80402df11b5be4dd3865d1c68b9aa4ddea1502e62db2eef880.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56675af0-3b11-aec0-8a11-2e25b565a7fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sUnion_memPartition (f : ℕ → Set α) (n : ℕ) : ⋃₀ memPartition f n = univ := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [memPartition_succ]
    ext x
    have : x ∈ ⋃₀ memPartition f n := by simp [ih]
    simp only [mem_sUnion, mem_iUnion, mem_insert_iff, mem_singleton_iff, exists_prop, mem_univ,
      iff_true] at this ⊢
    obtain ⟨t, ht, hxt⟩ := this
    by_cases hxf : x ∈ f n
    · exact ⟨t ∩ f n, ⟨t, ht, Or.inl rfl⟩, hxt, hxf⟩
    · exact ⟨t \ f n, ⟨t, ht, Or.inr rfl⟩, hxt, hxf⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantcb73bb5699e39f80402df11b5be4dd3865d1c68b9aa4ddea1502e62db2eef880.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MemPartition/Variantcb73bb5699e39f80402df11b5be4dd3865d1c68b9aa4ddea1502e62db2eef880.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94c1f4dca2984279e633f1fad821856c3a7e0cc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
