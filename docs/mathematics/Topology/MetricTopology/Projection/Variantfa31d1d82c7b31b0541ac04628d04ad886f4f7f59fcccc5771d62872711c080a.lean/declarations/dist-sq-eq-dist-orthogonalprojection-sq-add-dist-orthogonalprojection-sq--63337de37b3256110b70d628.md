# dist_sq_eq_dist_orthogonalProjection_sq_add_dist_orthogonalProjection_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27d30f66-5cc7-f835-01bf-ff33a4bdc937",
  "kind": "theorem",
  "lexical_name": "dist_sq_eq_dist_orthogonalProjection_sq_add_dist_orthogonalProjection_sq",
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
  "slug": "dist-sq-eq-dist-orthogonalprojection-sq-add-dist-orthogonalprojection-sq--63337de37b3256110b70d628",
  "source": {
    "blob": "cd85e240c46743b65059b0945464e0510d11201a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 316,
    "path": "GRWTSK/Topology/MetricTopology/Projection/Variantfa31d1d82c7b31b0541ac04628d04ad886f4f7f59fcccc5771d62872711c080a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63337de37b3256110b70d6284abc612fd879bba36ee1c55ce49ee3f095b562a3",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Projection/Variantfa31d1d82c7b31b0541ac04628d04ad886f4f7f59fcccc5771d62872711c080a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27d30f66-5cc7-f835-01bf-ff33a4bdc937`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_sq_eq_dist_orthogonalProjection_sq_add_dist_orthogonalProjection_sq
    {s : AffineSubspace ℝ P} [Nonempty s] [s.direction.HasOrthogonalProjection] {p₁ : P} (p₂ : P)
    (hp₁ : p₁ ∈ s) :
    dist p₁ p₂ * dist p₁ p₂ =
      dist p₁ (orthogonalProjection s p₂) * dist p₁ (orthogonalProjection s p₂) +
        dist p₂ (orthogonalProjection s p₂) * dist p₂ (orthogonalProjection s p₂) := by
  rw [dist_comm p₂ _, dist_eq_norm_vsub V p₁ _, dist_eq_norm_vsub V p₁ _, dist_eq_norm_vsub V _ p₂,
    ← vsub_add_vsub_cancel p₁ (orthogonalProjection s p₂) p₂,
    norm_add_sq_eq_norm_sq_add_norm_sq_iff_real_inner_eq_zero]
  exact Submodule.inner_right_of_mem_orthogonal (vsub_orthogonalProjection_mem_direction p₂ hp₁)
    (orthogonalProjection_vsub_mem_direction_orthogonal s p₂)

/-- The distance between a point and its orthogonal projection to a subspace equals the distance
to that subspace as given by `Metric.infDist`. This is not a `simp` lemma since the simplest form
depends on the context (if any calculations are to be done with the distance, the version with
the orthogonal projection gives access to more lemmas about orthogonal projections that may be
useful). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Projection/Variantfa31d1d82c7b31b0541ac04628d04ad886f4f7f59fcccc5771d62872711c080a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Projection/Variantfa31d1d82c7b31b0541ac04628d04ad886f4f7f59fcccc5771d62872711c080a.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd85e240c46743b65059b0945464e0510d11201a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
