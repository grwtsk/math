# paid_finite_tangent_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df68d376-813c-05b4-857c-9913afc43823",
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
  "slug": "paid-finite-tangent-error--99140d4ed2a0fa5a95cda617",
  "source": {
    "blob": "382167db069c974b03cbfe38b8e01cd8e5591f88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianConsumer/Variant6d71ee0c1a993f546a978c0f856cae754c3c51bf658d1c19cd76664f42fa7a2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99140d4ed2a0fa5a95cda61733b10d9e61506f0f81151e799532af563fff5e0b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianConsumer/Variant6d71ee0c1a993f546a978c0f856cae754c3c51bf658d1c19cd76664f42fa7a2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df68d376-813c-05b4-857c-9913afc43823`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–63.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianConsumer/Variant6d71ee0c1a993f546a978c0f856cae754c3c51bf658d1c19cd76664f42fa7a2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianConsumer/Variant6d71ee0c1a993f546a978c0f856cae754c3c51bf658d1c19cd76664f42fa7a2e.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `382167db069c974b03cbfe38b8e01cd8e5591f88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
