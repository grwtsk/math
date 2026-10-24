# dedup_eq_cons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1bcea68f63beb91a8f24691ca0450baf36e553b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f7be0fd-8bb3-6b22-08f4-f5db44514ad4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2af482fd-03f8-b1b4-9634-d615dbec5fd2",
  "kind": "theorem",
  "lexical_name": "dedup_eq_cons",
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
  "slug": "dedup-eq-cons--df4acdcdfd22fad82cd4bf98",
  "source": {
    "blob": "f1bcea68f63beb91a8f24691ca0450baf36e553b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 94,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df4acdcdfd22fad82cd4bf98fb17b3fac8c0fd91b714b8bc70cf2001334286e7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2af482fd-03f8-b1b4-9634-d615dbec5fd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dedup_eq_cons (l : List α) (a : α) (l' : List α) :
    l.dedup = a :: l' ↔ a ∈ l ∧ a ∉ l' ∧ l.dedup.tail = l' := by
  refine' ⟨fun h => _, fun h => _⟩
  · refine' ⟨mem_dedup.1 (h.symm ▸ mem_cons_self _ _), fun ha => _, by rw [h, tail_cons]⟩
    have : count a l.dedup ≤ 1 := nodup_iff_count_le_one.1 (nodup_dedup l) a
    rw [h, count_cons_self, add_le_iff_nonpos_left] at this
    exact not_le_of_lt (count_pos_iff_mem.2 ha) this
  · have := @List.cons_head!_tail α ⟨a⟩ _ (ne_nil_of_mem (mem_dedup.2 h.1))
    have hal : a ∈ l.dedup := mem_dedup.2 h.1
    rw [← this, mem_cons, or_iff_not_imp_right] at hal
    exact this ▸ h.2.2.symm ▸ cons_eq_cons.2 ⟨(hal (h.2.2.symm ▸ h.2.1)).symm, rfl⟩
#align list.dedup_eq_cons List.dedup_eq_cons

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant0bb6350a529c38438576b1dab25a9b018a2bbd5c7ad5de4293adaeb6c1ea0f1d.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1bcea68f63beb91a8f24691ca0450baf36e553b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
