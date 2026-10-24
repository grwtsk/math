# addZ_of_X_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad6216cad2e4e296e4b327093a169c12f1535c32",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 535,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b501841484ae229f4b6e9e2594b26e37c3efeb904c2b89bdedb5159f10a9f780.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9853cd2-32c6-8b92-f858-f2b5109d6b17",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:018f32e2-de13-6552-444e-e490075e3595",
  "kind": "lemma",
  "lexical_name": "addZ_of_X_eq",
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
  "slug": "addz-of-x-eq--ba68791d4feb1ab1f723da2f",
  "source": {
    "blob": "ad6216cad2e4e296e4b327093a169c12f1535c32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 539,
    "line": 535,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Formula/Variantb501841484ae229f4b6e9e2594b26e37c3efeb904c2b89bdedb5159f10a9f780.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba68791d4feb1ab1f723da2f53e9cddebe25d0dfea367cf8630ac1a64acb518e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Formula/Variantb501841484ae229f4b6e9e2594b26e37c3efeb904c2b89bdedb5159f10a9f780.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:018f32e2-de13-6552-444e-e490075e3595`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–539.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma addZ_of_X_eq [NoZeroDivisors R] {P Q : Fin 3 → R} (hP : W'.Equation P) (hQ : W'.Equation Q)
    (hPz : P z ≠ 0) (hQz : Q z ≠ 0) (hx : P x * Q z = Q x * P z) : W'.addZ P Q = 0 := by
  apply eq_zero_of_ne_zero_of_mul_right_eq_zero <| mul_ne_zero hPz hQz
  rw [addZ_eq' hP hQ, hx, sub_self, zero_pow three_ne_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Formula/Variantb501841484ae229f4b6e9e2594b26e37c3efeb904c2b89bdedb5159f10a9f780.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Formula/Variantb501841484ae229f4b6e9e2594b26e37c3efeb904c2b89bdedb5159f10a9f780.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad6216cad2e4e296e4b327093a169c12f1535c32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
