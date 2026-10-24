# criticalPrimeTest_second_deriv_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d2efd09-1e8e-33da-73aa-5a057d097912",
  "kind": "theorem",
  "lexical_name": "criticalPrimeTest_second_deriv_abs_le",
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
  "slug": "criticalprimetest-second-deriv-abs-le--f4739b3c38ecbb31250667e1",
  "source": {
    "blob": "8562c776beaae36c5adc68278b0fca65403e5d38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 59,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variantd95a67108afd0c25456ce2f24f6f158107fbc99a1c5a68f87eac6080790260db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4739b3c38ecbb31250667e1a29a0bd8f788de416d1ab27cb38d4bfdccc62ae4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variantd95a67108afd0c25456ce2f24f6f158107fbc99a1c5a68f87eac6080790260db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d2efd09-1e8e-33da-73aa-5a057d097912`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalPrimeTest_second_deriv_abs_le {A : ℝ} (hA : 1 ≤ A) (u : ℝ) :
    |deriv (deriv (criticalPrimeTest A)) u| ≤ 28 * Real.exp A := by
  have hp : 0 < A := by linarith
  by_cases hu : u ≤ 2*A
  · rw [criticalPrimeTest_second_deriv hp, abs_mul, abs_of_pos (Real.exp_pos _)]
    have hc := actual_correlation_abs_le_one A u hA
    have hd := sourceCorrelation_deriv_abs_le_five_div hA u
    have hdd := sourceCorrelation_second_deriv_abs_le_coefficient hA u
    have hdf : |deriv (sourceCorrelation explicitSecondDerivative A) u| ≤ 5 := by
      apply hd.trans
      exact (div_le_iff₀ hp).2 (by linarith)
    have hddf : |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u| ≤ 22 := by
      apply hdd.trans
      apply (div_le_iff₀ (by positivity : 0 < 7623*A^2)).2
      nlinarith [sq_nonneg (A-1)]
    have hbr : |sourceCorrelation explicitSecondDerivative A u / 4 +
        deriv (sourceCorrelation explicitSecondDerivative A) u +
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u| ≤ 28 := by
      have h1 := abs_add_le (sourceCorrelation explicitSecondDerivative A u / 4)
        (deriv (sourceCorrelation explicitSecondDerivative A) u)
      have h2 := abs_add_le (sourceCorrelation explicitSecondDerivative A u / 4 +
        deriv (sourceCorrelation explicitSecondDerivative A) u)
        (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u)
      rw [abs_div, abs_of_pos (by norm_num : (0:ℝ)<4)] at h1
      linarith
    have hex : Real.exp (u/2) ≤ Real.exp A := Real.exp_le_exp.mpr (by linarith)
    nlinarith [Real.exp_pos (u/2), Real.exp_pos A]
  · rw [criticalPrimeTest_second_deriv_zero_after hp (lt_of_not_ge hu), abs_zero]
    positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variantd95a67108afd0c25456ce2f24f6f158107fbc99a1c5a68f87eac6080790260db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variantd95a67108afd0c25456ce2f24f6f158107fbc99a1c5a68f87eac6080790260db.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8562c776beaae36c5adc68278b0fca65403e5d38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
