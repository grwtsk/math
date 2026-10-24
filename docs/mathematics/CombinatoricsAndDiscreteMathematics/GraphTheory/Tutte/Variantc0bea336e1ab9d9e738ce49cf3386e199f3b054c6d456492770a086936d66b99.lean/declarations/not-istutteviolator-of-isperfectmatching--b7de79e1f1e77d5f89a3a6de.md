# not_isTutteViolator_of_isPerfectMatching

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a38b5edd15c4705a22ded0e378e628b81e26f27",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc2449e3-9e09-6fee-d03a-6d7b0f5fc0cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0adbcda-409a-aef0-c66b-4668a3a41233",
  "kind": "lemma",
  "lexical_name": "not_isTutteViolator_of_isPerfectMatching",
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
  "slug": "not-istutteviolator-of-isperfectmatching--b7de79e1f1e77d5f89a3a6de",
  "source": {
    "blob": "5a38b5edd15c4705a22ded0e378e628b81e26f27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 144,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7de79e1f1e77d5f89a3a6de683cd253ca9e39094ef4cf65d49dc8bd264c8c1e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0adbcda-409a-aef0-c66b-4668a3a41233`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_isTutteViolator_of_isPerfectMatching {M : Subgraph G} (hM : M.IsPerfectMatching)
    (u : Set V) :
    ¬G.IsTutteViolator u := by
  choose f hf g hgf hg using ConnectedComponent.odd_matches_node_outside hM (u := u)
  have hfinj : f.Injective := fun c d hcd ↦ by
    replace hcd : g c = g d := Subtype.val_injective <| hM.1.eq_of_adj_right (hgf c) (hcd ▸ hgf d)
    exact Subtype.val_injective <| ConnectedComponent.eq_of_common_vertex (hg c) (hcd ▸ hg d)
  simpa [IsTutteViolator] using!
    Nat.card_le_card_of_injective (fun c ↦ ⟨f c, hf c⟩) (fun c d ↦ by simp [hfinj.eq_iff])

open scoped symmDiff

/-- This lemma constructs a perfect matching on `G` from two near-matchings. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a38b5edd15c4705a22ded0e378e628b81e26f27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
