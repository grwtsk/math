# LinearEquiv.det_coe_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0146fdb3-0448-be41-afec-c6ccb280d61f",
  "kind": "theorem",
  "lexical_name": "LinearEquiv.det_coe_symm",
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
  "slug": "linearequiv-det-coe-symm--36fb426b18782a009bea7211",
  "source": {
    "blob": "0e9579694b898742a80ba221afe136e8d655c2d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 448,
    "path": "GRWTSK/Algebra/LinearAlgebra/Determinant/Variant5798da7bcff0703bf37def05d85c8921330f96c3685a9dca44762d0bbddf8994.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36fb426b18782a009bea721177c419d3edce751bf2b46006ccedf0cf6854e21e",
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

Occurrence: `result:0146fdb3-0448-be41-afec-c6ccb280d61f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearEquiv.det_coe_symm {𝕜 : Type*} [Field 𝕜] [Module 𝕜 M] (f : M ≃ₗ[𝕜] M) :
    LinearMap.det (f.symm : M →ₗ[𝕜] M) = (LinearMap.det (f : M →ₗ[𝕜] M))⁻¹ := by
  field_simp [IsUnit.ne_zero f.isUnit_det']
#align linear_equiv.det_coe_symm LinearEquiv.det_coe_symm

/-- Builds a linear equivalence from a linear map whose determinant in some bases is a unit. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Determinant/Variant5798da7bcff0703bf37def05d85c8921330f96c3685a9dca44762d0bbddf8994.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Determinant/Variant5798da7bcff0703bf37def05d85c8921330f96c3685a9dca44762d0bbddf8994.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e9579694b898742a80ba221afe136e8d655c2d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
