# actual_low_mixed_restricted_abs_le_scaled

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "22a2d28c204ad692dcc30098b3ed594a8f7523b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c68fa0fd2a91c595fad924ae2e416b7e4ab71c0de29ff15c33dd697997493bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1be2b310-67ed-6a9c-0737-17f0e42f0e11",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a43139c0-588d-1dc7-3bff-37c256143eea",
  "kind": "theorem",
  "lexical_name": "actual_low_mixed_restricted_abs_le_scaled",
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
  "slug": "actual-low-mixed-restricted-abs-le-scaled--aa2994b07609dff73c016c20",
  "source": {
    "blob": "22a2d28c204ad692dcc30098b3ed594a8f7523b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 52,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeRadius/Variant7c68fa0fd2a91c595fad924ae2e416b7e4ab71c0de29ff15c33dd697997493bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa2994b07609dff73c016c20805054d22167b5a9b2610200707480b0ebdfd41d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeRadius/Variant7c68fa0fd2a91c595fad924ae2e416b7e4ab71c0de29ff15c33dd697997493bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a43139c0-588d-1dc7-3bff-37c256143eea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_low_mixed_restricted_abs_le_scaled {A : ℝ} (hA : 1 ≤ A) (S : Set ℝ) :
    |∫ v in S, actualLowMixedWorkDensity A v| ≤ lowTimeStripBudget A := by
  have hp : 0 < A := by linarith
  have h1 : IntegrableOn (fun v =>
      actualLowTimeProfile (deriv (normalizedTest explicitSecondDerivative A)) A v *
        actualReflectedProfile (deriv (normalizedTest explicitSecondDerivative A)) A v) S :=
    (actual_low_sector_integrable _
      ((normalizedTest_contDiff A hp).continuous_deriv (by norm_num)) hA
      (SourceActualMixedWorkFubini.deriv_source_tsupport_subset hp)).integrableOn
  have h0 : IntegrableOn (fun v =>
      actualLowTimeProfile (normalizedTest explicitSecondDerivative A) A v *
        actualReflectedProfile (normalizedTest explicitSecondDerivative A) A v) S :=
    (actual_low_sector_integrable _ (normalizedTest_contDiff A hp).continuous hA
      (SourceActualMixedWorkFubini.source_tsupport_subset hp)).integrableOn
  unfold actualLowMixedWorkDensity
  rw [integral_add h1 (h0.const_mul (1 / 4 : ℝ)), integral_const_mul]
  calc
    _ ≤ |∫ v in S, actualLowTimeProfile (deriv (normalizedTest explicitSecondDerivative A)) A v *
          actualReflectedProfile (deriv (normalizedTest explicitSecondDerivative A)) A v| +
        (1 / 4 : ℝ) * |∫ v in S, actualLowTimeProfile (normalizedTest explicitSecondDerivative A)
          A v * actualReflectedProfile (normalizedTest explicitSecondDerivative A) A v| := by
      have ht := abs_add_le
        (∫ v in S, actualLowTimeProfile (deriv (normalizedTest explicitSecondDerivative A))
          A v * actualReflectedProfile (deriv (normalizedTest explicitSecondDerivative A)) A v)
        ((1 / 4 : ℝ) * ∫ v in S, actualLowTimeProfile (normalizedTest explicitSecondDerivative A)
          A v * actualReflectedProfile (normalizedTest explicitSecondDerivative A) A v)
      simpa only [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 1 / 4)] using ht
    _ ≤ 2 * errorBudget * (162826 / (7623 * A ^ 2)) + (1 / 4 : ℝ) * (2 * errorBudget) :=
      add_le_add (actual_derivative_low_sector_abs_le hA S)
        (mul_le_mul_of_nonneg_left (actual_source_low_sector_abs_le hA S) (by norm_num))
    _ = errorBudget * (2 * (162826 / (7623 * A ^ 2) + 1 / 4)) := by ring
    _ = _ := by unfold lowTimeStripBudget; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeRadius/Variant7c68fa0fd2a91c595fad924ae2e416b7e4ab71c0de29ff15c33dd697997493bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeRadius/Variant7c68fa0fd2a91c595fad924ae2e416b7e4ab71c0de29ff15c33dd697997493bc.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22a2d28c204ad692dcc30098b3ed594a8f7523b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
