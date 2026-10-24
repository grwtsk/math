# tensorial_derivMetricTensorAux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "12cfd9a70cebfb2b92ff634e6512c3d3121b78c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02d006243d9c78ad378c263a8121420ff19d6e1875d6def25d4ab657c34f419e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6aa168df-5599-f833-5ea7-79c0dfca7864",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b57a90e-d701-287f-aab6-b794869bd935",
  "kind": "theorem",
  "lexical_name": "tensorial_derivMetricTensorAux₂",
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
  "slug": "tensorial-derivmetrictensoraux--8c2ccac2a3818b10b2e4ce5c",
  "source": {
    "blob": "12cfd9a70cebfb2b92ff634e6512c3d3121b78c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 111,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Metric/Variant02d006243d9c78ad378c263a8121420ff19d6e1875d6def25d4ab657c34f419e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c2ccac2a3818b10b2e4ce5c16dda57226d6a31f298f74b1d81c45869408c72c",
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

Occurrence: `result:9b57a90e-d701-287f-aab6-b794869bd935`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tensorial_derivMetricTensorAux₂ (σ : Π x, V x) (hσ : MDiffAt (T% σ) x) :
    TensorialAt I F (derivMetricTensorAux I cov σ · x) x where
  smul hf hτ := by
    ext X₀
    simp [mvfderiv_fun_mul hf (hσ.inner_bundle hτ),
      cov.isCovariantDerivativeOn.leibniz hτ hf, inner_add_right, inner_smul_right]
    ring
  add hτ hτ' := by
    ext X₀
    simp [mvfderiv_fun_add (hσ.inner_bundle hτ) (hσ.inner_bundle hτ'),
      cov.isCovariantDerivativeOn.add hτ hτ', inner_add_right]
    abel

variable {I} [ContMDiffVectorBundle 1 F V I] in
/-- The tensor `(X, σ, τ) ↦ X g(σ, τ) - g(∇_X σ, τ) - g(σ, ∇_X τ)` defining when a connection
`∇` on a Riemannian bundle `(M, V)` is compatible with the metric `g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Metric/Variant02d006243d9c78ad378c263a8121420ff19d6e1875d6def25d4ab657c34f419e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Metric/Variant02d006243d9c78ad378c263a8121420ff19d6e1875d6def25d4ab657c34f419e.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12cfd9a70cebfb2b92ff634e6512c3d3121b78c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
