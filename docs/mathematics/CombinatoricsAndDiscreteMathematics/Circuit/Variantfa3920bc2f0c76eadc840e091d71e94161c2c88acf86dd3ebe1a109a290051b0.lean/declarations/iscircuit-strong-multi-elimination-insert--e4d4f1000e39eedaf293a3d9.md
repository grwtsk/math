# IsCircuit.strong_multi_elimination_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bd9bf31de4a8209bcd163db1349199f94a10c3e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 415,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fa3920bc2f0c76eadc840e091d71e94161c2c88acf86dd3ebe1a109a290051b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe3bb9ad-13da-af29-dd4c-364dcf1351c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:70b91da6-0c36-ab8c-8db6-8d0f2a8546de",
  "kind": "lemma",
  "lexical_name": "IsCircuit.strong_multi_elimination_insert",
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
  "slug": "iscircuit-strong-multi-elimination-insert--e4d4f1000e39eedaf293a3d9",
  "source": {
    "blob": "bd9bf31de4a8209bcd163db1349199f94a10c3e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 415,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Circuit/Variantfa3920bc2f0c76eadc840e091d71e94161c2c88acf86dd3ebe1a109a290051b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4d4f1000e39eedaf293a3d9c5d5951ec05c9f07775633c1f40f636cf4fbe09d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Circuit/Variantfa3920bc2f0c76eadc840e091d71e94161c2c88acf86dd3ebe1a109a290051b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70b91da6-0c36-ab8c-8db6-8d0f2a8546de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCircuit.strong_multi_elimination_insert (x : ι → α) (I : ι → Set α) (z : α)
    (hxI : ∀ i, x i ∉ I i) (hC : ∀ i, M.IsCircuit (insert (x i) (I i)))
    (hJx : M.IsCircuit (J ∪ range x)) (hzJ : z ∈ J) (hzI : ∀ i, z ∉ I i) :
    ∃ C' ⊆ J ∪ ⋃ i, I i, M.IsCircuit C' ∧ z ∈ C' := by
  -- we may assume that `ι` is nonempty, and it suffices to show that
  -- `z` is spanned by the union of the `I` and `J \ {z}`.
  obtain hι | hι := isEmpty_or_nonempty ι
  · exact ⟨J, by simp, by simpa [range_eq_empty] using hJx, hzJ⟩
  suffices hcl : z ∈ M.closure ((⋃ i, I i) ∪ (J \ {z})) by
    rw [mem_closure_iff_exists_isCircuit (by simp [hzI])] at hcl
    obtain ⟨C', hC'ss, hC', hzC'⟩ := hcl
    refine ⟨C', ?_, hC', hzC'⟩
    rwa [union_comm, ← insert_union, insert_sdiff_singleton, insert_eq_of_mem hzJ] at hC'ss
  have hC' (i) : M.closure (I i) = M.closure (insert (x i) (I i)) := by
    simpa [sdiff_singleton_eq_self (hxI _)] using (hC i).closure_sdiff_singleton_eq (x i)
  -- This is true because each `I i` spans `x i` and `(range x) ∪ (J \ {z})` spans `z`.
  rw [closure_union_congr_left <| closure_iUnion_congr _ _ hC',
    iUnion_insert_eq_range_union_iUnion, union_right_comm]
  refine mem_of_mem_of_subset (hJx.mem_closure_sdiff_singleton_of_mem (.inl hzJ))
    (M.closure_subset_closure (subset_trans ?_ subset_union_left))
  rw [union_sdiff_distrib, union_comm]
  exact union_subset_union_left _ sdiff_subset

/-- A generalization of the strong circuit elimination axiom `Matroid.IsCircuit.strong_elimination`
to an infinite collection of circuits.

It states that, given a circuit `C₀`, an arbitrary collection `C : ι → Set α` of circuits,
an element `x i` of `C₀ ∩ C i` for each `i`, and an element `z ∈ C₀` outside all the `C i`,
the union of `C₀` and the `C i` contains a circuit containing `z` but none of the `x i`.

This is one of the axioms when defining infinite matroids via circuits.

TODO : A similar statement will hold even when all mentions of `z` are removed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Circuit/Variantfa3920bc2f0c76eadc840e091d71e94161c2c88acf86dd3ebe1a109a290051b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Circuit/Variantfa3920bc2f0c76eadc840e091d71e94161c2c88acf86dd3ebe1a109a290051b0.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd9bf31de4a8209bcd163db1349199f94a10c3e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
