# Matrix.instFiniteSpectrum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c167d4cbd68f834c90c2b1c2d404c8f435689b7ea69dd43f49a90051a656bd9",
  "kind": "instance",
  "lexical_name": "Matrix.instFiniteSpectrum",
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
  "slug": "matrix-instfinitespectrum--ddec48ee1aeaf07a35ad2d08",
  "source": {
    "blob": "6dd85fd7219fa6fb2009ffa4a255dfdaaaaa9da6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 124,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variant71d894146a390c2c9dad561fe45a3bcbab0f895e6402e7e515ac8feec253cf4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ddec48ee1aeaf07a35ad2d085026231ada29ea6cf8571741749f4a52d2bcc253",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Minpoly/Variant71d894146a390c2c9dad561fe45a3bcbab0f895e6402e7e515ac8feec253cf4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c167d4cbd68f834c90c2b1c2d404c8f435689b7ea69dd43f49a90051a656bd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Matrix.instFiniteSpectrum (A : Matrix n n R) : Finite (spectrum R A) :=
  Set.finite_coe_iff.mpr (Matrix.finite_spectrum A)

end FiniteSpectrum
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Minpoly/Variant71d894146a390c2c9dad561fe45a3bcbab0f895e6402e7e515ac8feec253cf4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variant71d894146a390c2c9dad561fe45a3bcbab0f895e6402e7e515ac8feec253cf4e.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dd85fd7219fa6fb2009ffa4a255dfdaaaaa9da6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
