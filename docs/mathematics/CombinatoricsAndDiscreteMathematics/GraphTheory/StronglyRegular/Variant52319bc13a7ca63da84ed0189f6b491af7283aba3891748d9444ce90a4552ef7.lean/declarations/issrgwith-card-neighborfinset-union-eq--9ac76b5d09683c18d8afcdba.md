# IsSRGWith.card_neighborFinset_union_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "335b84b790d194581b260b50a45576edcb3ad0dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac1e85d0-ae22-6830-5a89-fe99c70c7f25",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:603d3681-1f7f-784f-25d3-6eaaccad268d",
  "kind": "theorem",
  "lexical_name": "IsSRGWith.card_neighborFinset_union_eq",
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
  "slug": "issrgwith-card-neighborfinset-union-eq--9ac76b5d09683c18d8afcdba",
  "source": {
    "blob": "335b84b790d194581b260b50a45576edcb3ad0dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 94,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ac76b5d09683c18d8afcdba1cd3fdc60624116f91f6c666d5f2518db83cc1ee",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:603d3681-1f7f-784f-25d3-6eaaccad268d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSRGWith.card_neighborFinset_union_eq {v w : V} (h : G.IsSRGWith n k ℓ μ) :
    #(G.neighborFinset v ∪ G.neighborFinset w) =
      2 * k - Fintype.card (G.commonNeighbors v w) := by
  apply Nat.add_right_cancel (m := Fintype.card (G.commonNeighbors v w))
  rw [Nat.sub_add_cancel, ← Set.toFinset_card]
  · simp [commonNeighbors, ← neighborFinset_def, Finset.card_union_add_card_inter,
      h.regular.degree_eq, two_mul]
  · apply le_trans (card_commonNeighbors_le_degree_left _ _ _)
    simp [h.regular.degree_eq, two_mul]

/-- Assuming `G` is strongly regular, `2*(k + 1) - m` in `G` is the number of vertices that are
adjacent to either `v` or `w` when `¬G.Adj v w`. So it's the cardinality of
`G.neighborSet v ∪ G.neighborSet w`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variant52319bc13a7ca63da84ed0189f6b491af7283aba3891748d9444ce90a4552ef7.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `335b84b790d194581b260b50a45576edcb3ad0dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
