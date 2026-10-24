# norm_withLpEquiv_crossProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc2137d4410a1a5534ab8f091a3bd726883a8f39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9d8e3b62b8a2af301dc33156b34a90bb6a4cb8f506bb294cb5f00e01cfc7193.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca53b0da-0b6d-3692-98d7-694506bdf726",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c9da79c-7ce3-9755-bfcc-93e160c3ed0f",
  "kind": "theorem",
  "lexical_name": "norm_withLpEquiv_crossProduct",
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
  "slug": "norm-withlpequiv-crossproduct--427f4963d3f63032d277f13d",
  "source": {
    "blob": "bc2137d4410a1a5534ab8f091a3bd726883a8f39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 26,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CrossProduct/Variantb9d8e3b62b8a2af301dc33156b34a90bb6a4cb8f506bb294cb5f00e01cfc7193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:427f4963d3f63032d277f13d32e4526a09844e24387b7e55e35ce628c28af330",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/CrossProduct/Variantb9d8e3b62b8a2af301dc33156b34a90bb6a4cb8f506bb294cb5f00e01cfc7193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c9da79c-7ce3-9755-bfcc-93e160c3ed0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_withLpEquiv_crossProduct (a b : EuclideanSpace ℝ (Fin 3)) :
    ‖(WithLp.equiv 2 (Fin 3 → ℝ)).symm (WithLp.equiv _ _ a ×₃ WithLp.equiv _ _ b)‖ =
    ‖a‖ * ‖b‖ * sin (angle a b) := by
  have := sin_angle_nonneg a b
  refine sq_eq_sq₀ (by positivity) (by positivity) |>.mp ?_
  trans ‖a‖^2 * ‖b‖^2 - ⟪a, b⟫ ^ 2
  · simp_rw [norm_sq_eq_re_inner (𝕜 := ℝ), EuclideanSpace.inner_eq_star_dotProduct, star_trivial,
      RCLike.re_to_real, Equiv.apply_symm_apply, cross_dot_cross,
      dotProduct_comm (WithLp.equiv _ _ b) (WithLp.equiv _ _ a), sq]
  · linear_combination (‖a‖ * ‖b‖) ^ 2 * (sin_sq_add_cos_sq (angle a b)).symm +
      congrArg (· ^ 2) (cos_angle_mul_norm_mul_norm a b)

/-- The L2 norm of the cross product of two real vectors (of type `Fin 3 → R`) equals the product
of their individual L2 norms times the sine of the angle between them. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/CrossProduct/Variantb9d8e3b62b8a2af301dc33156b34a90bb6a4cb8f506bb294cb5f00e01cfc7193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CrossProduct/Variantb9d8e3b62b8a2af301dc33156b34a90bb6a4cb8f506bb294cb5f00e01cfc7193.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc2137d4410a1a5534ab8f091a3bd726883a8f39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
