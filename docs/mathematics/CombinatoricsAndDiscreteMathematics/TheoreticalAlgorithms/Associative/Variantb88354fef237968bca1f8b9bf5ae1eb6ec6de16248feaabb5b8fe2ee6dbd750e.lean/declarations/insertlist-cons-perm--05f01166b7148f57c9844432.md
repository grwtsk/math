# insertList_cons_perm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b3172e0-a348-b008-6b4e-215ae2e62be1",
  "kind": "theorem",
  "lexical_name": "insertList_cons_perm",
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
  "slug": "insertlist-cons-perm--05f01166b7148f57c9844432",
  "source": {
    "blob": "ddcb189e0bb3710a43ea511e7a5fcd0941f0a100",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2879,
    "line": 2860,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05f01166b7148f57c984443211d4e741c2579b28490d2b7f0a9860f806d19631",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b3172e0-a348-b008-6b4e-215ae2e62be1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2860–2879.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem insertList_cons_perm [BEq α] [EquivBEq α] {l₁ l₂ : List ((a : α) × β a)}
    {p : (a : α) × β a} (hl₁ : DistinctKeys l₁) (hl₂ : DistinctKeys (p :: l₂)) :
    (insertList l₁ (p :: l₂)).Perm (insertEntry p.1 p.2 (insertList l₁ l₂)) := by
  induction l₂ generalizing p l₁
  · simp [insertList]
  · rename_i h t ih
    rw [insertList]
    refine (ih hl₁.insertEntry hl₂.tail).trans
      ((insertEntry_of_perm hl₁.insertList
        (ih hl₁ (distinctKeys_of_sublist (by simp) hl₂))).trans
      (List.Perm.trans ?_ (insertEntry_of_perm hl₁.insertList.insertEntry
        (ih hl₁ (distinctKeys_of_sublist (by simp) hl₂)).symm)))
    apply getEntry?_ext hl₁.insertList.insertEntry.insertEntry
      hl₁.insertList.insertEntry.insertEntry (fun k => ?_)
    simp only [getEntry?_insertEntry]
    split <;> rename_i hp <;> split <;> rename_i hh <;> try rfl
    rw [DistinctKeys.def] at hl₂
    have := List.rel_of_pairwise_cons hl₂ List.mem_cons_self
    simp [BEq.trans hh (BEq.symm hp)] at this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean#L2860).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddcb189e0bb3710a43ea511e7a5fcd0941f0a100` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
