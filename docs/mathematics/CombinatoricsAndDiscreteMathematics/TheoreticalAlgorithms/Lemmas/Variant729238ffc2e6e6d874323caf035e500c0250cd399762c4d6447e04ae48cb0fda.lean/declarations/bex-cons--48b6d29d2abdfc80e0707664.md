# bex_cons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31bc03e7dd70cabb3661149ad0b95c4b1606e970",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/729238ffc2e6e6d874323caf035e500c0250cd399762c4d6447e04ae48cb0fda.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d00f622-c213-5fdd-a0d5-cb251d9b2b32",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd64b294-3ab9-fa38-38e4-a9a5905a2e33",
  "kind": "theorem",
  "lexical_name": "bex_cons",
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
  "slug": "bex-cons--48b6d29d2abdfc80e0707664",
  "source": {
    "blob": "31bc03e7dd70cabb3661149ad0b95c4b1606e970",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 80,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant729238ffc2e6e6d874323caf035e500c0250cd399762c4d6447e04ae48cb0fda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48b6d29d2abdfc80e07076644e142e8b2968a5d6730db841da442278792c0d58",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant729238ffc2e6e6d874323caf035e500c0250cd399762c4d6447e04ae48cb0fda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd64b294-3ab9-fa38-38e4-a9a5905a2e33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bex_cons (p : α → Prop) (a : α) (l : List α) : (∃ x ∈ a :: l, p x) ↔ p a ∨ ∃ x ∈ l, p x :=
  ⟨fun ⟨x, h, px⟩ => by
    simp only [find?, mem_cons] at h
    cases' h with h h
    · cases h; exact Or.inl px;
    · exact Or.inr ⟨x, h, px⟩,
  fun o =>
    o.elim (fun pa => ⟨a, mem_cons_self _ _, pa⟩) fun ⟨x, h, px⟩ => ⟨x, mem_cons_of_mem _ h, px⟩⟩
#align list.bex_cons List.bex_cons

#align list.ball_cons List.forall_mem_consₓ

/-! list subset -/

#align list.subset List.Subset
-- This is relying on an automatically generated instance name from Std.
-- See https://github.com/leanprover/lean4/issues/2343
#align list.has_subset List.instHasSubsetList
#align list.nil_subset List.nil_subset
#align list.subset.refl List.Subset.refl
#align list.subset.trans List.Subset.trans
#align list.subset_cons List.subset_cons
#align list.subset_of_cons_subset List.subset_of_cons_subset
#align list.cons_subset_cons List.cons_subset_cons
#align list.subset_append_left List.subset_append_left
#align list.subset_append_right List.subset_append_right
#align list.subset_cons_of_subset List.subset_cons_of_subset
#align list.eq_nil_of_length_eq_zero List.eq_nil_of_length_eq_zero
#align list.ne_nil_of_length_eq_succ List.ne_nil_of_length_eq_succ
#align list.length_map₂ List.length_zipWith
#align list.length_take List.length_take
#align list.length_take_le List.length_take_le
#align list.length_remove_nth List.length_removeNth
#align list.partition_eq_filter_filter List.partition_eq_filter_filterₓ

/-! sublists -/

#align list.sublist List.Sublist

alias length_le_of_sublist := Sublist.length_le
#align list.length_le_of_sublist List.length_le_of_sublist

/-! filter -/

#align list.filter_nil List.filter_nilₓ
#align list.filter_cons_of_pos List.filter_cons_of_posₓ
#align list.filter_cons_of_neg List.filter_cons_of_negₓ
#align list.filter_append List.filter_appendₓ
#align list.filter_sublist List.filter_sublistₓ

/-! map_accumr -/


section MapAccumr

variable {φ : Type w₁} {σ : Type w₂}

/-- Runs a function over a list returning the intermediate results and a final result. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant729238ffc2e6e6d874323caf035e500c0250cd399762c4d6447e04ae48cb0fda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant729238ffc2e6e6d874323caf035e500c0250cd399762c4d6447e04ae48cb0fda.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31bc03e7dd70cabb3661149ad0b95c4b1606e970` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
