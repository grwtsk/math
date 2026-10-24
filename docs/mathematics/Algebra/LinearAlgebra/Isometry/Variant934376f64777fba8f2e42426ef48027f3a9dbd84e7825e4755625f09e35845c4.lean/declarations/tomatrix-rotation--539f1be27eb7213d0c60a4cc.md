# toMatrix_rotation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0a41b26-2737-2034-5df9-6318f9a37d69",
  "kind": "theorem",
  "lexical_name": "toMatrix_rotation",
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
  "slug": "tomatrix-rotation--539f1be27eb7213d0c60a4cc",
  "source": {
    "blob": "a263578f329e337df9658670b27b02eb105d865f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 149,
    "path": "GRWTSK/Algebra/LinearAlgebra/Isometry/Variant934376f64777fba8f2e42426ef48027f3a9dbd84e7825e4755625f09e35845c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:539f1be27eb7213d0c60a4ccbcc48cf23d3d671cfc494d27e9d32be2c6c58fa4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Isometry/Variant934376f64777fba8f2e42426ef48027f3a9dbd84e7825e4755625f09e35845c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0a41b26-2737-2034-5df9-6318f9a37d69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toMatrix_rotation (a : Circle) :
    LinearMap.toMatrix basisOneI basisOneI (rotation a).toLinearEquiv =
      Matrix.planeConformalMatrix (re a) (im a) (by simp [pow_two, ← normSq_apply]) := by
  ext i j
  simp only [LinearMap.toMatrix_apply, coe_basisOneI, LinearEquiv.coe_coe,
    LinearIsometryEquiv.coe_toLinearEquiv, rotation_apply, coe_basisOneI_repr, mul_re, mul_im,
    Matrix.val_planeConformalMatrix, Matrix.of_apply, Matrix.cons_val', Matrix.empty_val',
    Matrix.cons_val_fin_one]
  fin_cases i <;> fin_cases j <;> simp

/-- The determinant of `rotation` (as a linear map) is equal to `1`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Isometry/Variant934376f64777fba8f2e42426ef48027f3a9dbd84e7825e4755625f09e35845c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Isometry/Variant934376f64777fba8f2e42426ef48027f3a9dbd84e7825e4755625f09e35845c4.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a263578f329e337df9658670b27b02eb105d865f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
