# eq_bot_or_vertexSet_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f1db705-931b-0b54-0c4a-fe07fb2a241b",
  "kind": "lemma",
  "lexical_name": "eq_bot_or_vertexSet_nonempty",
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
  "slug": "eq-bot-or-vertexset-nonempty--2582caad85b1ec4ef49778ec",
  "source": {
    "blob": "9d6f5b87d15931618fa4f38a605e0ab82c5b1e80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 399,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Subgraph/Variantb57a3db081d39337dd47fa49473d2c9a3bb09a14bf07bad3e1955d1f27fb1506.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2582caad85b1ec4ef49778ecbc525195c8d41ada179f988c94dfe73d4714fe8f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Subgraph/Variantb57a3db081d39337dd47fa49473d2c9a3bb09a14bf07bad3e1955d1f27fb1506.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f1db705-931b-0b54-0c4a-fe07fb2a241b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_bot_or_vertexSet_nonempty (G : Graph α β) : G = ⊥ ∨ V(G).Nonempty := by
  refine (em (V(G) = ∅)).elim (fun he ↦ .inl (Graph.ext he fun e x y ↦ ?_)) (Or.inr ∘
    nonempty_iff_ne_empty.mpr)
  simp only [edgeSet_bot, mem_empty_iff_false, not_false_eq_true, not_isLink_of_notMem_edgeSet,
    iff_false]
  exact fun h ↦ by simpa [he] using h.left_mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Subgraph/Variantb57a3db081d39337dd47fa49473d2c9a3bb09a14bf07bad3e1955d1f27fb1506.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Subgraph/Variantb57a3db081d39337dd47fa49473d2c9a3bb09a14bf07bad3e1955d1f27fb1506.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d6f5b87d15931618fa4f38a605e0ab82c5b1e80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
