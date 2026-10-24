# integral_norm_horizontal_ray_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b65a949-2c9e-1cd8-fbb4-64a75de50fdd",
  "kind": "theorem",
  "lexical_name": "integral_norm_horizontal_ray_le",
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
  "slug": "integral-norm-horizontal-ray-le--8d783c7744184306922ad157",
  "source": {
    "blob": "fec3e90d5f628c4bf80a8607ea223f751e834f43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 82,
    "path": "GRWTSK/NumberTheory/Chebyshev/TentHorizontalRays.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d783c7744184306922ad15708ebb842b7550e8dc8bdbd9a9d52cdc29a5be770",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/TentHorizontalRays.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b65a949-2c9e-1cd8-fbb4-64a75de50fdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_norm_horizontal_ray_le (x h y B : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (hy : y ≠ 0) (havoid : ∀ z : ZeroPoint, height z ≠ |y|) (hB : 0 ≤ B)
    (hcore : ∀ σ ∈ Icc (-3 : ℝ) 2,
      ‖-logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤ B) :
    (∫ σ in Iic (2 : ℝ), ‖integrand x h ((σ : ℂ) + (y : ℂ) * Complex.I)‖) ≤
      affineRayBudget x h (B + 2 * mangoldtLineMass) / y ^ 2 := by
  exact integral_norm_Iic_le_of_affine_envelope _
    (continuous_horizontal_integrand x h y hh ha hy havoid)
    x h (B + 2 * mangoldtLineMass) y hh ha
    (by linarith [mangoldtLineMass_nonneg]) hy
    (norm_horizontal_integrand_le x h y B hh ha hy hB hcore)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/TentHorizontalRays.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/TentHorizontalRays.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fec3e90d5f628c4bf80a8607ea223f751e834f43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
