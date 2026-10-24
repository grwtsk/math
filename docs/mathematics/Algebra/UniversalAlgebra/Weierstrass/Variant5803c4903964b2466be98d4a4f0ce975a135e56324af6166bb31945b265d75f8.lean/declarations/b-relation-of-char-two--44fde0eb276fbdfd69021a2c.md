# b_relation_of_char_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88cb6493-fdaa-a517-cea2-8cbc9593fe33",
  "kind": "lemma",
  "lexical_name": "b_relation_of_char_two",
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
  "slug": "b-relation-of-char-two--44fde0eb276fbdfd69021a2c",
  "source": {
    "blob": "ab438dd76eac171aa857dbc2f7beac306cd40eaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 177,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Weierstrass/Variant5803c4903964b2466be98d4a4f0ce975a135e56324af6166bb31945b265d75f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44fde0eb276fbdfd69021a2c0d14a803d9d523ef4b10d759f68f5c2359bb3065",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Weierstrass/Variant5803c4903964b2466be98d4a4f0ce975a135e56324af6166bb31945b265d75f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88cb6493-fdaa-a517-cea2-8cbc9593fe33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma b_relation_of_char_two : W.b₂ * W.b₆ = W.b₄ ^ 2 := by
  linear_combination -W.b_relation + 2 * W.b₈ * CharP.cast_eq_zero R 2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Weierstrass/Variant5803c4903964b2466be98d4a4f0ce975a135e56324af6166bb31945b265d75f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Weierstrass/Variant5803c4903964b2466be98d4a4f0ce975a135e56324af6166bb31945b265d75f8.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab438dd76eac171aa857dbc2f7beac306cd40eaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
