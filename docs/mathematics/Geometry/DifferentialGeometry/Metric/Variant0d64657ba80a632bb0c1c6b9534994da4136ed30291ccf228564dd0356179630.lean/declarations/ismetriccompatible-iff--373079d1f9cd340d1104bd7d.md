# isMetricCompatible_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:745cdf1d-08f1-fc3f-2f1f-52d85c7aa6e9",
  "kind": "lemma",
  "lexical_name": "isMetricCompatible_iff",
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
  "slug": "ismetriccompatible-iff--373079d1f9cd340d1104bd7d",
  "source": {
    "blob": "b96bb749bd6ff2a216c1bae452b0d055c331ee8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 178,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Metric/Variant0d64657ba80a632bb0c1c6b9534994da4136ed30291ccf228564dd0356179630.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:373079d1f9cd340d1104bd7dab0a4df9cfdab1b0777520dd1b19f9bce28845ac",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Metric/Variant0d64657ba80a632bb0c1c6b9534994da4136ed30291ccf228564dd0356179630.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:745cdf1d-08f1-fc3f-2f1f-52d85c7aa6e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public lemma isMetricCompatible_iff [FiniteDimensional ℝ F] :
    cov.IsMetricCompatible ↔ ∀ {x : M} {X : Π x, TangentSpace I x} {σ τ : (x : M) → V x},
      MDiffAt (T% X) x → MDiffAt (T% σ) x → MDiffAt (T% τ) x →
      d% ⟪σ, τ⟫ x (X x) = ⟪∇ X σ, τ⟫ x + ⟪σ, ∇ X τ⟫ x := by
  refine ⟨fun hcov x X σ τ hX ↦ hcov.mvfderiv_inner_eq X, fun h ↦ ?_⟩
  ext1 x
  apply VectorBundle.injective_eval_mdifferentiableAt_sec I F; ext1 σ; ext1 hσ
  apply VectorBundle.injective_eval_mdifferentiableAt_sec I F; ext1 τ; ext1 hτ
  apply VectorBundle.injective_eval_mdifferentiableAt_sec I E (TangentSpace I); ext X hX
  simp (disch := assumption) [derivMetricTensor_apply]
  linear_combination h hX hσ hτ

end CovariantDerivative
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Metric/Variant0d64657ba80a632bb0c1c6b9534994da4136ed30291ccf228564dd0356179630.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Metric/Variant0d64657ba80a632bb0c1c6b9534994da4136ed30291ccf228564dd0356179630.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b96bb749bd6ff2a216c1bae452b0d055c331ee8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
