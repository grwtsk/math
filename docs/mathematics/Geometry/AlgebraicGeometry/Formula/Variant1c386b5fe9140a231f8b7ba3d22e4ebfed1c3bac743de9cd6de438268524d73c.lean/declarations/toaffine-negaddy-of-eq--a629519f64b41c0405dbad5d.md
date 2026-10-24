# toAffine_negAddY_of_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40ba44ca762a4798015e4d3acc0ee5bdf3cd8660",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 297,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c386b5fe9140a231f8b7ba3d22e4ebfed1c3bac743de9cd6de438268524d73c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fbf7d3fe-04ff-f2ef-1929-c6a6f64b1f5b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c170fb55-c179-5109-d5be-a71b17568be5",
  "kind": "lemma",
  "lexical_name": "toAffine_negAddY_of_eq",
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
  "slug": "toaffine-negaddy-of-eq--a629519f64b41c0405dbad5d",
  "source": {
    "blob": "40ba44ca762a4798015e4d3acc0ee5bdf3cd8660",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 297,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Formula/Variant1c386b5fe9140a231f8b7ba3d22e4ebfed1c3bac743de9cd6de438268524d73c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a629519f64b41c0405dbad5d7c8e2fce1144a06afb90c4e7787b116404f66a3e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Formula/Variant1c386b5fe9140a231f8b7ba3d22e4ebfed1c3bac743de9cd6de438268524d73c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c170fb55-c179-5109-d5be-a71b17568be5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma toAffine_negAddY_of_eq {P : Fin 3 → F} (hPz : P z ≠ 0) {n d : F} (hd : d ≠ 0) :
    W.toAffine.negAddY (P x / P z ^ 2) (P x / P z ^ 2) (P y / P z ^ 3) (-n / (P z * d)) =
      (-n * (n ^ 2 - W.a₁ * n * P z * d - W.a₂ * P z ^ 2 * d ^ 2 - 2 * P x * d ^ 2 - P x * d ^ 2)
        + P y * d ^ 3) / (P z * d) ^ 3 := by
  rw [Affine.negAddY, toAffine_addX_of_eq hPz hd]
  field_simp [mul_ne_zero (pow_ne_zero 2 <| mul_ne_zero hPz hd) <| pow_ne_zero 2 hPz]
  ring1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Formula/Variant1c386b5fe9140a231f8b7ba3d22e4ebfed1c3bac743de9cd6de438268524d73c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Formula/Variant1c386b5fe9140a231f8b7ba3d22e4ebfed1c3bac743de9cd6de438268524d73c.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40ba44ca762a4798015e4d3acc0ee5bdf3cd8660` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
