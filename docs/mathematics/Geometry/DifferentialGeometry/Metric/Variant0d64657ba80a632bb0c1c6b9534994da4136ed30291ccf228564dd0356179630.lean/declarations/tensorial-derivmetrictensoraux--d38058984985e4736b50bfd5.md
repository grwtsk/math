# tensorial_derivMetricTensorAux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d958136-908d-d739-c846-8e7d99b03958",
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
  "slug": "tensorial-derivmetrictensoraux--d38058984985e4736b50bfd5",
  "source": {
    "blob": "b96bb749bd6ff2a216c1bae452b0d055c331ee8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 119,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Metric/Variant0d64657ba80a632bb0c1c6b9534994da4136ed30291ccf228564dd0356179630.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d38058984985e4736b50bfd59cc1dfd06541d703fa882d01f961d242e93c2470",
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

Occurrence: `result:8d958136-908d-d739-c846-8e7d99b03958`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–134.

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

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Metric/Variant0d64657ba80a632bb0c1c6b9534994da4136ed30291ccf228564dd0356179630.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Metric/Variant0d64657ba80a632bb0c1c6b9534994da4136ed30291ccf228564dd0356179630.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b96bb749bd6ff2a216c1bae452b0d055c331ee8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
