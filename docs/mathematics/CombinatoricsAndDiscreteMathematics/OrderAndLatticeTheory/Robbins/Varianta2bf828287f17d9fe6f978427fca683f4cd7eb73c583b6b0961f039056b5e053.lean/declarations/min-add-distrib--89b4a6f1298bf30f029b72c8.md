# min_add_distrib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b744ae4d8e99bb45d3f5d1a930887aed56b9af6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 354,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2bf828287f17d9fe6f978427fca683f4cd7eb73c583b6b0961f039056b5e053.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3eb99684-4146-cf76-faba-b9c8766a47bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7be617b2-b77e-2dae-1cc6-41a9952d988e",
  "kind": "lemma",
  "lexical_name": "min_add_distrib",
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
  "slug": "min-add-distrib--89b4a6f1298bf30f029b72c8",
  "source": {
    "blob": "1b744ae4d8e99bb45d3f5d1a930887aed56b9af6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 354,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Varianta2bf828287f17d9fe6f978427fca683f4cd7eb73c583b6b0961f039056b5e053.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89b4a6f1298bf30f029b72c81ac15ed79727df1db1a4ad79f88f7cadfa2a34e8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Varianta2bf828287f17d9fe6f978427fca683f4cd7eb73c583b6b0961f039056b5e053.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7be617b2-b77e-2dae-1cc6-41a9952d988e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma min_add_distrib : -(-a + -(b + c)) = -(-a + -b) + -(-a + -c) := by
  nth_rw 1 [← huntington (-_) b, neg_neg, add_assoc, ← neg_neg b, ← neg_neg c, min_add_left,
    ← huntington (-_) c, ← huntington (-(_ + b)) c]
  have l₁ := huntington (-(-a + -b)) c
  have l₂ := huntington (-(-a + -c)) b
  simp only [neg_neg] at l₁ l₂ ⊢
  rw [show -a + -(b + c) + b + -c = -a + b + (-(c + b) + -c) by ac_rfl,
    show -a + -(b + c) + b + c = -a + ((b + c) + -(b + c)) by ac_rfl]
  conv_lhs => enter [2, 1, 1, 2, 1]; rw [← neg_neg b, ← neg_neg c]
  rw [min_add_left, add_neg_self_const _ a, show -a + (a + -a) = a + (-a + -a) by ac_rfl, add_self,
    add_neg_self, neg_one, add_zero, ← add_self (-_), add_assoc (-_), l₁, ← l₂]
  ac_rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Varianta2bf828287f17d9fe6f978427fca683f4cd7eb73c583b6b0961f039056b5e053.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Robbins/Varianta2bf828287f17d9fe6f978427fca683f4cd7eb73c583b6b0961f039056b5e053.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b744ae4d8e99bb45d3f5d1a930887aed56b9af6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
