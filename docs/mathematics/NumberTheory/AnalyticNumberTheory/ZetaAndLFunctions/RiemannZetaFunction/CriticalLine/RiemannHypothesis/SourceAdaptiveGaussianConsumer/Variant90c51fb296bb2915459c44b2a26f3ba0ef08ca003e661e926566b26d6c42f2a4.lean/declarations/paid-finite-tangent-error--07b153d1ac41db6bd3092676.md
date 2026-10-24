# paid_finite_tangent_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b7a55ff-bc11-1416-929e-4f1cafafbc11",
  "kind": "theorem",
  "lexical_name": "paid_finite_tangent_error",
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
  "slug": "paid-finite-tangent-error--07b153d1ac41db6bd3092676",
  "source": {
    "blob": "4d99a864f5ddd9bdc8e8b392dec2cdc26faaae87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 30,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianConsumer/Variant90c51fb296bb2915459c44b2a26f3ba0ef08ca003e661e926566b26d6c42f2a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07b153d1ac41db6bd3092676376f32fdd6279c41ba27f9d9355c0a8ffa89c3a4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianConsumer/Variant90c51fb296bb2915459c44b2a26f3ba0ef08ca003e661e926566b26d6c42f2a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b7a55ff-bc11-1416-929e-4f1cafafbc11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem paid_finite_tangent_error {A : ℝ} (hA : 200 ≤ A) (N : ℕ) :
    |finiteCompensatedReadout A N -
      smoothedTangentReadout (gaussianReal 0 (cutoffVariance N)) A N| ≤
      (tangentErrorConstant + 25 / 2) / A ^ 2 := by
  have hA0 : A ≠ 0 := by linarith
  have h := gaussian_finite_tangent_error hA (cutoffVariance N) N
  change |finiteCompensatedReadout A N -
      smoothedTangentReadout (gaussianReal 0 (cutoffVariance N)) A N| ≤
    tangentErrorConstant / A ^ 2 +
      ((5 / (2 * A ^ 2)) * (cutoffVariance N : ℝ)) * coefficientMass N +
      ((5 / A ^ 2) * Real.sqrt (cutoffVariance N : ℝ)) * driftMass N at h
  calc
    _ ≤ tangentErrorConstant / A ^ 2 +
        ((5 / (2 * A ^ 2)) * (cutoffVariance N : ℝ)) * coefficientMass N +
        ((5 / A ^ 2) * Real.sqrt (cutoffVariance N : ℝ)) * driftMass N := h
    _ = tangentErrorConstant / A ^ 2 +
        (5 / (2 * A ^ 2)) * ((cutoffVariance N : ℝ) * coefficientMass N) +
        (5 / A ^ 2) * (Real.sqrt (cutoffVariance N : ℝ) * driftMass N) := by ring
    _ ≤ tangentErrorConstant / A ^ 2 +
        (5 / (2 * A ^ 2)) * 1 + (5 / A ^ 2) * 2 :=
      add_le_add (add_le_add le_rfl
        (mul_le_mul_of_nonneg_left (variance_coefficientMass_le_one N) (by positivity)))
        (mul_le_mul_of_nonneg_left (sqrt_variance_driftMass_le_two N) (by positivity))
    _ = (tangentErrorConstant + 25 / 2) / A ^ 2 := by field_simp; ring

/-- This is the literal all-real original source; no approximation-price premise remains. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianConsumer/Variant90c51fb296bb2915459c44b2a26f3ba0ef08ca003e661e926566b26d6c42f2a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianConsumer/Variant90c51fb296bb2915459c44b2a26f3ba0ef08ca003e661e926566b26d6c42f2a4.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d99a864f5ddd9bdc8e8b392dec2cdc26faaae87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
