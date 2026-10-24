# weightedCorrelation_second_deriv_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:147bbc13-fb57-c001-9782-989904db5105",
  "kind": "theorem",
  "lexical_name": "weightedCorrelation_second_deriv_window",
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
  "slug": "weightedcorrelation-second-deriv-window--7b9232b9f7a3879c438d2df7",
  "source": {
    "blob": "a82f33acf6371550c6242bbd1030ea9dee496b9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 51,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoPositiveWindow/Variant74799e3bc42f5e9c6a64ea277785bbc842f48019d9704281717ba8898cb5e11e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b9232b9f7a3879c438d2df79c2c83d2f289a505e91efb8397a9a75353ee25cf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoPositiveWindow/Variant74799e3bc42f5e9c6a64ea277785bbc842f48019d9704281717ba8898cb5e11e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:147bbc13-fb57-c001-9782-989904db5105`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedCorrelation_second_deriv_window (A u : ℝ) (hA : 10 ≤ A)
    (hu : 0 ≤ u) (huA : u ≤ A / 20) :
    (3 / 2) * Real.exp (3 * u / 2) ≤ deriv (deriv (weightedCorrelation A)) u := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hs : (100 : ℝ) ≤ A ^ 2 := by nlinarith
  have hden : 0 < 7623 * A ^ 2 := by positivity
  have hb0 : 162826 / (7623 * A ^ 2) ≤ (11 / 50 : ℝ) := by
    apply (div_le_iff₀ hden).2
    nlinarith
  have hb1 : 162826 / (7623 * A ^ 2) * u ≤ (11 / 100 : ℝ) := by
    rw [div_mul_eq_mul_div]
    apply (div_le_iff₀ hden).2
    have hua : 20 * u ≤ A := by linarith
    have hsq : 10 * A ≤ A ^ 2 := by nlinarith
    nlinarith
  have hb2 : 162826 / (7623 * A ^ 2) * u ^ 2 / 2 ≤ (11 / 400 : ℝ) := by
    rw [div_mul_eq_mul_div, div_div]
    apply (div_le_iff₀ (by positivity : 0 < 7623 * A ^ 2 * 2)).2
    have husq : 400 * u ^ 2 ≤ A ^ 2 := by nlinarith
    nlinarith
  have h0 := SourceCorrelationCurvature.sourceCorrelation_second_deriv_abs_le_coefficient hA1 u
  have h1 := SourceCorrelationCurvature.sourceCorrelation_deriv_increment_bound hA1 0 u
  have h2 := SourceCorrelationCurvature.sourceCorrelation_linear_taylor_bound hA1 0 u
  simp only [zero_add, actual_correlation_deriv_zero A hA1, sub_zero, abs_of_nonneg hu] at h1
  simp only [zero_add, actual_correlation_at_zero A hA1,
    actual_correlation_deriv_zero A hA1, mul_zero, sub_zero] at h2
  have hc0 := (abs_le.mp (h0.trans hb0)).1
  have hc1 := (abs_le.mp (h1.trans hb1)).1
  have hc2 := (abs_le.mp (h2.trans hb2)).1
  rw [weightedCorrelation_second_deriv_formula A u hA1]
  exact mul_le_mul_of_nonneg_right (by nlinarith) (Real.exp_pos _).le

end
end FormalResearch.RiemannHypothesis.SourcePeanoPositiveWindow
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoPositiveWindow/Variant74799e3bc42f5e9c6a64ea277785bbc842f48019d9704281717ba8898cb5e11e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoPositiveWindow/Variant74799e3bc42f5e9c6a64ea277785bbc842f48019d9704281717ba8898cb5e11e.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a82f33acf6371550c6242bbd1030ea9dee496b9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
