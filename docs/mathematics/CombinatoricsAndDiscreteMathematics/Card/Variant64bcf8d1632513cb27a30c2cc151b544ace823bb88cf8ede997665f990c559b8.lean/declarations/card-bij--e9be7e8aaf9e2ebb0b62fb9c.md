# card_bij'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "493d7c6c08ecb7577d201d3318dbb075bb30f04a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 381,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64bcf8d1632513cb27a30c2cc151b544ace823bb88cf8ede997665f990c559b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f9cd543-cf7e-906e-ac20-63625ecf2657",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9960f6bf-ac80-0a1c-0672-7eaf2f1a5d61",
  "kind": "lemma",
  "lexical_name": "card_bij'",
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
  "slug": "card-bij--e9be7e8aaf9e2ebb0b62fb9c",
  "source": {
    "blob": "493d7c6c08ecb7577d201d3318dbb075bb30f04a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 381,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant64bcf8d1632513cb27a30c2cc151b544ace823bb88cf8ede997665f990c559b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9be7e8aaf9e2ebb0b62fb9c4f18eebb91a86fa8139555b97edd777cd71e53ed",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variant64bcf8d1632513cb27a30c2cc151b544ace823bb88cf8ede997665f990c559b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9960f6bf-ac80-0a1c-0672-7eaf2f1a5d61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card_bij' (i : ∀ a ∈ s, β) (j : ∀ a ∈ t, α) (hi : ∀ a ha, i a ha ∈ t)
    (hj : ∀ a ha, j a ha ∈ s) (left_inv : ∀ a ha, j (i a ha) (hi a ha) = a)
    (right_inv : ∀ a ha, i (j a ha) (hj a ha) = a) : #s = #t := by
  refine card_bij i hi (fun a1 h1 a2 h2 eq ↦ ?_) (fun b hb ↦ ⟨_, hj b hb, right_inv b hb⟩)
  rw [← left_inv a1 h1, ← left_inv a2 h2]
  simp only [eq]

/-- Given a bijection from a finite set `s` to a finite set `t`, the cardinalities of `s` and `t`
are equal.

The difference with `Finset.card_nbij'` is that the bijection is specified as a surjective
injection, rather than by an inverse function.

The difference with `Finset.card_bij` is that the bijection is a non-dependent function, rather than
being allowed to use membership of the domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variant64bcf8d1632513cb27a30c2cc151b544ace823bb88cf8ede997665f990c559b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant64bcf8d1632513cb27a30c2cc151b544ace823bb88cf8ede997665f990c559b8.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `493d7c6c08ecb7577d201d3318dbb075bb30f04a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
