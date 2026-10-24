# derivMetricTensor_apply_eq_extend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5b2f524-c1fc-be7c-6dde-73318b73ff79",
  "kind": "theorem",
  "lexical_name": "derivMetricTensor_apply_eq_extend",
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
  "slug": "derivmetrictensor-apply-eq-extend--ef842a699d7b94c06d4caa4a",
  "source": {
    "blob": "b96bb749bd6ff2a216c1bae452b0d055c331ee8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 151,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Metric/Variant0d64657ba80a632bb0c1c6b9534994da4136ed30291ccf228564dd0356179630.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef842a699d7b94c06d4caa4a2d165d0677fb83b01aa973031ae431ae856358cb",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Metric/Variant0d64657ba80a632bb0c1c6b9534994da4136ed30291ccf228564dd0356179630.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5b2f524-c1fc-be7c-6dde-73318b73ff79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem derivMetricTensor_apply_eq_extend [FiniteDimensional ℝ F]
    (X₀ : TangentSpace I x) (σ₀ τ₀ : V x) :
    cov.derivMetricTensor x σ₀ τ₀ X₀ =
      d% ⟪(FiberBundle.extend F σ₀), (FiberBundle.extend F τ₀)⟫ x X₀
        - inner ℝ (cov (FiberBundle.extend F σ₀) x X₀) τ₀
        - inner ℝ σ₀ (cov (FiberBundle.extend F τ₀) x X₀) := by
  simp [derivMetricTensor, TensorialAt.mkHom₂_apply_eq_extend]

variable {I} [ContMDiffVectorBundle 1 F V I] in
/-- Predicate saying that a connection `∇` on a Riemannian bundle `(V, g)` is compatible with the
ambient metric, i.e. for all differentiable vector fields `X` on `M` and sections `σ` and `τ` of
`V`, we have `X ⟨σ, τ⟩ = ⟨∇_X σ, τ⟩ + ⟨σ, ∇_X τ⟩`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Metric/Variant0d64657ba80a632bb0c1c6b9534994da4136ed30291ccf228564dd0356179630.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Metric/Variant0d64657ba80a632bb0c1c6b9534994da4136ed30291ccf228564dd0356179630.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b96bb749bd6ff2a216c1bae452b0d055c331ee8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
