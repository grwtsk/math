# twoTorsionPolynomial_disc_of_char_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1389ef0f-5270-c546-94d0-4e18343d6078",
  "kind": "lemma",
  "lexical_name": "twoTorsionPolynomial_disc_of_char_two",
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
  "slug": "twotorsionpolynomial-disc-of-char-two--754f7a4f6179289dbadddf76",
  "source": {
    "blob": "ab438dd76eac171aa857dbc2f7beac306cd40eaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 323,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Weierstrass/Variant5803c4903964b2466be98d4a4f0ce975a135e56324af6166bb31945b265d75f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:754f7a4f6179289dbadddf76cbaa61962736596b938e3d87f0e48b3ce7d6d15c",
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

Occurrence: `result:1389ef0f-5270-c546-94d0-4e18343d6078`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma twoTorsionPolynomial_disc_of_char_two : W.twoTorsionPolynomial.disc = 0 := by
  linear_combination W.twoTorsionPolynomial_disc + 8 * W.Δ * CharP.cast_eq_zero R 2

end CharTwo

section CharThree

variable [CharP R 3]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Weierstrass/Variant5803c4903964b2466be98d4a4f0ce975a135e56324af6166bb31945b265d75f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Weierstrass/Variant5803c4903964b2466be98d4a4f0ce975a135e56324af6166bb31945b265d75f8.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab438dd76eac171aa857dbc2f7beac306cd40eaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
