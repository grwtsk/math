# derivMetricTensor_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7899b3b4-705b-9699-c7b3-2f911ad9b9eb",
  "kind": "theorem",
  "lexical_name": "derivMetricTensor_apply",
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
  "slug": "derivmetrictensor-apply--f8aa6c429d6ae7ceebe71f08",
  "source": {
    "blob": "12cfd9a70cebfb2b92ff634e6512c3d3121b78c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 135,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Metric/Variant02d006243d9c78ad378c263a8121420ff19d6e1875d6def25d4ab657c34f419e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8aa6c429d6ae7ceebe71f088db3977119d6e78ab7f30182acea18a1ee494469",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Metric/Variant02d006243d9c78ad378c263a8121420ff19d6e1875d6def25d4ab657c34f419e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7899b3b4-705b-9699-c7b3-2f911ad9b9eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem derivMetricTensor_apply [FiniteDimensional ℝ F] (x : M)
    (hσ : MDiffAt (T% σ) x) (hτ : MDiffAt (T% τ) x) :
    cov.derivMetricTensor x (σ x) (τ x) (X x) =
    d% ⟪σ, τ⟫ x (X x) - ⟪∇ X σ, τ⟫ x - ⟪σ, ∇ X τ⟫ x := by
  unfold derivMetricTensor
  rw [TensorialAt.mkHom₂_apply _ _ hσ hτ, derivMetricTensorAux_apply]

variable {I} [ContMDiffVectorBundle 1 F V I] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Metric/Variant02d006243d9c78ad378c263a8121420ff19d6e1875d6def25d4ab657c34f419e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Metric/Variant02d006243d9c78ad378c263a8121420ff19d6e1875d6def25d4ab657c34f419e.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12cfd9a70cebfb2b92ff634e6512c3d3121b78c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
