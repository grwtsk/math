# count_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b2a47a394b185bb456e5c9098125b2ee5762165e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3254663-887e-9e71-29c3-08bb2a0b606c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca7566a0-0ac0-3224-98eb-6adf79efc902",
  "kind": "theorem",
  "lexical_name": "count_add",
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
  "slug": "count-add--8d3e6ece6d9bbdd1ded43a86",
  "source": {
    "blob": "b2a47a394b185bb456e5c9098125b2ee5762165e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d3e6ece6d9bbdd1ded43a8635be2eea0ba311a16f83431fffb9622560a10397",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca7566a0-0ac0-3224-98eb-6adf79efc902`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_add (a b : ℕ) : count p (a + b) = count p a + count (fun k ↦ p (a + k)) b := by
  have : Disjoint {x ∈ range a | p x} {x ∈ (range b).map <| addLeftEmbedding a | p x} := by
    apply disjoint_filter_filter
    rw [Finset.disjoint_left]
    simp_rw [mem_map, mem_range, addLeftEmbedding_apply]
    rintro x hx ⟨c, _, rfl⟩
    exact (Nat.le_add_right _ _).not_lt hx
  simp_rw [count_eq_card_filter_range, range_add, filter_union, card_union_of_disjoint this,
    filter_map, addLeftEmbedding, card_map]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Count/Variant2ef62e57e7af6fee72ecd69f8792792890d2605d19811ae3d5fae792cc12d740.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2a47a394b185bb456e5c9098125b2ee5762165e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
