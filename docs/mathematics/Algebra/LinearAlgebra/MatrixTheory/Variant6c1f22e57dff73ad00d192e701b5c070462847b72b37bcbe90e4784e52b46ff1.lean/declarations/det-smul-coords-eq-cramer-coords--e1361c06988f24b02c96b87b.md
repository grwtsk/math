# det_smul_coords_eq_cramer_coords

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2df6c704-15ad-115c-8e10-c8bbfdf1d717",
  "kind": "theorem",
  "lexical_name": "det_smul_coords_eq_cramer_coords",
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
  "slug": "det-smul-coords-eq-cramer-coords--e1361c06988f24b02c96b87b",
  "source": {
    "blob": "ac23a8eeb536c1d78a092b444d604b47b74d211f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 163,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant6c1f22e57dff73ad00d192e701b5c070462847b72b37bcbe90e4784e52b46ff1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1361c06988f24b02c96b87bb884a47ba52c04e2c5f322ef94a0849fa7b92e87",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variant6c1f22e57dff73ad00d192e701b5c070462847b72b37bcbe90e4784e52b46ff1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2df6c704-15ad-115c-8e10-c8bbfdf1d717`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_smul_coords_eq_cramer_coords (x : P) :
    (b.toMatrix b₂).det • b₂.coords x = (b.toMatrix b₂)ᵀ.cramer (b.coords x) := by
  have hu := b.isUnit_toMatrix b₂
  rw [Matrix.isUnit_iff_isUnit_det] at hu
  rw [← b.toMatrix_inv_vecMul_toMatrix, Matrix.det_smul_inv_vecMul_eq_cramer_transpose _ _ hu]

end CommRing

end AffineBasis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variant6c1f22e57dff73ad00d192e701b5c070462847b72b37bcbe90e4784e52b46ff1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variant6c1f22e57dff73ad00d192e701b5c070462847b72b37bcbe90e4784e52b46ff1.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac23a8eeb536c1d78a092b444d604b47b74d211f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
