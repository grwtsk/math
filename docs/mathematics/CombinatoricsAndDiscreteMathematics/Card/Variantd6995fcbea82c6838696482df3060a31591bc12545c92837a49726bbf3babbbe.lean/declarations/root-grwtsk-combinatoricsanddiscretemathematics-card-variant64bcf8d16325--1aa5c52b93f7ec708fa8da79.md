# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Card.Variant64bcf8d1632513cb27a30c2cc151b544ace823bb88cf8ede997665f990c559b8.Set.BijOn.finsetCard_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e38ea8b8-9d90-607a-0723-804d057e3ca9",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Card.Variant64bcf8d1632513cb27a30c2cc151b544ace823bb88cf8ede997665f990c559b8.Set.BijOn.finsetCard_eq",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-card-variant64bcf8d16325--1aa5c52b93f7ec708fa8da79",
  "source": {
    "blob": "ae16dc8a4e379463f11277b2f94281a27d0f2d93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 435,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantd6995fcbea82c6838696482df3060a31591bc12545c92837a49726bbf3babbbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1aa5c52b93f7ec708fa8da7934e565b1a7cf65f0e12420894d05159b46f56087",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variantd6995fcbea82c6838696482df3060a31591bc12545c92837a49726bbf3babbbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e38ea8b8-9d90-607a-0723-804d057e3ca9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Card.Variant64bcf8d1632513cb27a30c2cc151b544ace823bb88cf8ede997665f990c559b8.Set.BijOn.finsetCard_eq (e : α → β) (he : Set.BijOn e s t) : #s = #t :=
  card_nbij e he.mapsTo he.injOn he.surjOn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variantd6995fcbea82c6838696482df3060a31591bc12545c92837a49726bbf3babbbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantd6995fcbea82c6838696482df3060a31591bc12545c92837a49726bbf3babbbe.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae16dc8a4e379463f11277b2f94281a27d0f2d93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
