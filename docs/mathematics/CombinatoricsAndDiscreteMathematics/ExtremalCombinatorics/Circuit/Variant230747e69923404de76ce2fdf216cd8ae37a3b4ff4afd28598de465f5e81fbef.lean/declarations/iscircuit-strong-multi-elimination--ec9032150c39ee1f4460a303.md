# IsCircuit.strong_multi_elimination

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c2fd3193f52863b78b94e2e5dba8c47beb4f325b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 426,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/230747e69923404de76ce2fdf216cd8ae37a3b4ff4afd28598de465f5e81fbef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:005e1f81-d38e-e68d-1126-8a65a1b9f925",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8bdab2d8-63ff-3cbf-86d0-a9628fed6bdc",
  "kind": "lemma",
  "lexical_name": "IsCircuit.strong_multi_elimination",
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
  "slug": "iscircuit-strong-multi-elimination--ec9032150c39ee1f4460a303",
  "source": {
    "blob": "c2fd3193f52863b78b94e2e5dba8c47beb4f325b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 426,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variant230747e69923404de76ce2fdf216cd8ae37a3b4ff4afd28598de465f5e81fbef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec9032150c39ee1f4460a3035814d0ef5c7f29579edad913a86edc24a4a7347c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variant230747e69923404de76ce2fdf216cd8ae37a3b4ff4afd28598de465f5e81fbef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bdab2d8-63ff-3cbf-86d0-a9628fed6bdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCircuit.strong_multi_elimination (hC₀ : M.IsCircuit C₀) (x : ι → α) (C : ι → Set α) (z : α)
    (hC : ∀ i, M.IsCircuit (C i)) (h_mem_C₀ : ∀ i, x i ∈ C₀) (h_mem : ∀ i, x i ∈ C i)
    (h_unique : ∀ ⦃i i'⦄, x i ∈ C i' → i = i') (hzC₀ : z ∈ C₀) (hzC : ∀ i, z ∉ C i) :
    ∃ C' ⊆ (C₀ ∪ ⋃ i, C i) \ range x, M.IsCircuit C' ∧ z ∈ C' := by
  have hwin := IsCircuit.strong_multi_elimination_insert (M := M) x (fun i ↦ (C i \ {x i}))
    (J := C₀ \ range x) (z := z) (by simp) (fun i ↦ ?_) ?_ ⟨hzC₀, ?_⟩ ?_
  · obtain ⟨C', hC'ss, hC', hzC'⟩ := hwin
    refine ⟨C', hC'ss.trans ?_, hC', hzC'⟩
    refine union_subset (diff_subset_diff_left subset_union_left)
      (iUnion_subset fun i ↦ subset_diff.2
        ⟨diff_subset.trans (subset_union_of_subset_right (subset_iUnion ..) _), ?_⟩)
    rw [disjoint_iff_forall_ne]
    rintro _ he _ ⟨j, hj, rfl⟩ rfl
    obtain rfl : j = i := h_unique he.1
    simp at he
  · simpa [insert_eq_of_mem (h_mem i)] using hC i
  · rwa [diff_union_self, union_eq_self_of_subset_right]
    rintro _ ⟨i, hi, rfl⟩
    exact h_mem_C₀ i
  · rintro ⟨i, hi, rfl⟩
    exact hzC _ (h_mem i)
  simp only [mem_diff, mem_singleton_iff, not_and, not_not]
  exact fun i hzi ↦ (hzC i hzi).elim

/-- A version of `Circuit.strong_multi_elimination` where the collection of circuits is
a `Set (Set α)` and the distinguished elements are a `Set α`, rather than both being indexed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variant230747e69923404de76ce2fdf216cd8ae37a3b4ff4afd28598de465f5e81fbef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variant230747e69923404de76ce2fdf216cd8ae37a3b4ff4afd28598de465f5e81fbef.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2fd3193f52863b78b94e2e5dba8c47beb4f325b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
