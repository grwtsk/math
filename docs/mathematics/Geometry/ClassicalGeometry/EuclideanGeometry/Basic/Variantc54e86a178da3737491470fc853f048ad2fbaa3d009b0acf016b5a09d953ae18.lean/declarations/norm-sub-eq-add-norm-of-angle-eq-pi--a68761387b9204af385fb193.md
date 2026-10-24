# norm_sub_eq_add_norm_of_angle_eq_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4d5148c-fec8-c943-82bd-498c4106ae81",
  "kind": "theorem",
  "lexical_name": "norm_sub_eq_add_norm_of_angle_eq_pi",
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
  "slug": "norm-sub-eq-add-norm-of-angle-eq-pi--a68761387b9204af385fb193",
  "source": {
    "blob": "4833c76af38ca76af825d03dfb545508ef47b607",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 246,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc54e86a178da3737491470fc853f048ad2fbaa3d009b0acf016b5a09d953ae18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a68761387b9204af385fb193d4cd45220e9a451ba318cb6588b0fa110118f5b9",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc54e86a178da3737491470fc853f048ad2fbaa3d009b0acf016b5a09d953ae18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4d5148c-fec8-c943-82bd-498c4106ae81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_sub_eq_add_norm_of_angle_eq_pi {x y : V} (h : angle x y = π) :
    ‖x - y‖ = ‖x‖ + ‖y‖ := by
  rw [← sq_eq_sq₀ (norm_nonneg (x - y)) (add_nonneg (norm_nonneg x) (norm_nonneg y)),
    norm_sub_pow_two_real, inner_eq_neg_mul_norm_of_angle_eq_pi h]
  ring

/-- If the angle between two vectors is 0, the norm of their sum equals
the sum of their norms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc54e86a178da3737491470fc853f048ad2fbaa3d009b0acf016b5a09d953ae18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc54e86a178da3737491470fc853f048ad2fbaa3d009b0acf016b5a09d953ae18.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4833c76af38ca76af825d03dfb545508ef47b607` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
