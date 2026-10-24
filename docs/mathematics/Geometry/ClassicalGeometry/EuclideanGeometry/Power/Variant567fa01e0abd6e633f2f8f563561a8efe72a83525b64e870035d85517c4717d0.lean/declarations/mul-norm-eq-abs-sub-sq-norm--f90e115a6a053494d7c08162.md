# mul_norm_eq_abs_sub_sq_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95db464756104328cd73f6318dd557bf13bcef98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6edb0ee-707c-1b21-fd6c-c69539671d58",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e92631f-40e2-bb23-3af1-0c8fd7edb28c",
  "kind": "theorem",
  "lexical_name": "mul_norm_eq_abs_sub_sq_norm",
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
  "slug": "mul-norm-eq-abs-sub-sq-norm--f90e115a6a053494d7c08162",
  "source": {
    "blob": "95db464756104328cd73f6318dd557bf13bcef98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 52,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f90e115a6a053494d7c08162d76c2ca7a445d02ac2929ee2b9b93c55f7d02f5f",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e92631f-40e2-bb23-3af1-0c8fd7edb28c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_norm_eq_abs_sub_sq_norm {x y z : V} (h₁ : ∃ k : ℝ, x = k • y)
    (h₃ : ‖z - y‖ = ‖z + y‖) : ‖x - y‖ * ‖x + y‖ = |‖z + y‖ ^ 2 - ‖z - x‖ ^ 2| := by
  obtain ⟨r, hr⟩ := h₁
  have hzy : ⟪z, y⟫ = 0 := by
    rwa [inner_eq_zero_iff_angle_eq_pi_div_two, ← norm_add_eq_norm_sub_iff_angle_eq_pi_div_two,
      eq_comm]
  have hzx : ⟪z, x⟫ = 0 := by rw [hr, inner_smul_right, hzy, mul_zero]
  calc
    ‖x - y‖ * ‖x + y‖ = ‖(r - 1) • y‖ * ‖(r + 1) • y‖ := by simp [sub_smul, add_smul, hr]
    _ = ‖r - 1‖ * ‖y‖ * (‖r + 1‖ * ‖y‖) := by simp_rw [norm_smul]
    _ = ‖r - 1‖ * ‖r + 1‖ * ‖y‖ ^ 2 := by ring
    _ = |(r - 1) * (r + 1) * ‖y‖ ^ 2| := by simp [abs_mul]
    _ = |r ^ 2 * ‖y‖ ^ 2 - ‖y‖ ^ 2| := by ring_nf
    _ = |‖x‖ ^ 2 - ‖y‖ ^ 2| := by simp [hr, norm_smul, mul_pow, sq_abs]
    _ = |‖z + y‖ ^ 2 - ‖z - x‖ ^ 2| := by
      simp [norm_add_sq_real, norm_sub_sq_real, hzy, hzx, abs_sub_comm]

end InnerProductGeometry

namespace EuclideanGeometry

/-!
### Geometrical results on spheres in Euclidean affine spaces

This section develops some results on spheres in Euclidean affine spaces.
-/


open InnerProductGeometry EuclideanGeometry

variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

/-- If `P` is a point on the line `AB` and `Q` is equidistant from `A` and `B`, then
`AP * BP = abs (BQ ^ 2 - PQ ^ 2)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Power/Variant567fa01e0abd6e633f2f8f563561a8efe72a83525b64e870035d85517c4717d0.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95db464756104328cd73f6318dd557bf13bcef98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
