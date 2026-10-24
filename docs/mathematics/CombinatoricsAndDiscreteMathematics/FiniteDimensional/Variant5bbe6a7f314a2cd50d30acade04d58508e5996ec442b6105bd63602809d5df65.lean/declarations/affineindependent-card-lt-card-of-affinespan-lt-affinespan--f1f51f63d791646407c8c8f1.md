# AffineIndependent.card_lt_card_of_affineSpan_lt_affineSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a39e7887d57f2c1ce6678a6f63ce7405b2854bb5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 330,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5bbe6a7f314a2cd50d30acade04d58508e5996ec442b6105bd63602809d5df65.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c504bc45-950f-97be-c45a-48dcc60f2f91",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:72bfb2c3-85ec-f884-cc5b-05593bd19420",
  "kind": "lemma",
  "lexical_name": "AffineIndependent.card_lt_card_of_affineSpan_lt_affineSpan",
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
  "slug": "affineindependent-card-lt-card-of-affinespan-lt-affinespan--f1f51f63d791646407c8c8f1",
  "source": {
    "blob": "a39e7887d57f2c1ce6678a6f63ce7405b2854bb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 330,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant5bbe6a7f314a2cd50d30acade04d58508e5996ec442b6105bd63602809d5df65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1f51f63d791646407c8c8f10b9d72e8ab84a4f8c5eeb28cd7b15f6d1f7b4c25",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant5bbe6a7f314a2cd50d30acade04d58508e5996ec442b6105bd63602809d5df65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72bfb2c3-85ec-f884-cc5b-05593bd19420`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AffineIndependent.card_lt_card_of_affineSpan_lt_affineSpan {s t : Finset V}
    (hs : AffineIndependent k ((↑) : s → V))
    (hst : affineSpan k (s : Set V) < affineSpan k (t : Set V)) : #s < #t := by
  obtain rfl | hs' := s.eq_empty_or_nonempty
  · simpa [card_pos] using hst
  obtain rfl | ht' := t.eq_empty_or_nonempty
  · simp at hst
  have := hs'.to_subtype
  have := ht'.to_set.to_subtype
  have dir_lt := AffineSubspace.direction_lt_of_nonempty (k := k) hst <| hs'.to_set.affineSpan k
  rw [direction_affineSpan, direction_affineSpan,
    ← @Subtype.range_coe _ (s : Set V), ← @Subtype.range_coe _ (t : Set V)] at dir_lt
  have finrank_lt := add_lt_add_left (Submodule.finrank_lt_finrank_of_lt dir_lt) 1
  -- We use `erw` to elide the difference between `↥s` and `↥(s : Set V)}`
  erw [hs.finrank_vectorSpan_add_one] at finrank_lt
  simpa using finrank_lt.trans_le <| finrank_vectorSpan_range_add_one_le _ _

/-- If the `vectorSpan` of a finite subset of an affinely independent
family lies in a submodule with dimension one less than its
cardinality, it equals that submodule. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant5bbe6a7f314a2cd50d30acade04d58508e5996ec442b6105bd63602809d5df65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant5bbe6a7f314a2cd50d30acade04d58508e5996ec442b6105bd63602809d5df65.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a39e7887d57f2c1ce6678a6f63ce7405b2854bb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
