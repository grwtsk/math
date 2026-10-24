# LinearEquiv.isUnit_det'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f97dc963-822c-ba31-3fbe-40d58e7e7a8b",
  "kind": "theorem",
  "lexical_name": "LinearEquiv.isUnit_det'",
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
  "slug": "linearequiv-isunit-det--cdc2e54aaf4284e11dbdb7cf",
  "source": {
    "blob": "0e9579694b898742a80ba221afe136e8d655c2d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 442,
    "path": "GRWTSK/Algebra/LinearAlgebra/Determinant/Variant5798da7bcff0703bf37def05d85c8921330f96c3685a9dca44762d0bbddf8994.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdc2e54aaf4284e11dbdb7cfae164ec6a387bab68139c366452942c235ce75ab",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Determinant/Variant5798da7bcff0703bf37def05d85c8921330f96c3685a9dca44762d0bbddf8994.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f97dc963-822c-ba31-3fbe-40d58e7e7a8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearEquiv.isUnit_det' {A : Type*} [CommRing A] [Module A M] (f : M ≃ₗ[A] M) :
    IsUnit (LinearMap.det (f : M →ₗ[A] M)) :=
  isUnit_of_mul_eq_one _ _ f.det_mul_det_symm
#align linear_equiv.is_unit_det' LinearEquiv.isUnit_det'

/-- The determinant of `f.symm` is the inverse of that of `f` when `f` is a linear equiv. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Determinant/Variant5798da7bcff0703bf37def05d85c8921330f96c3685a9dca44762d0bbddf8994.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Determinant/Variant5798da7bcff0703bf37def05d85c8921330f96c3685a9dca44762d0bbddf8994.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e9579694b898742a80ba221afe136e8d655c2d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
