# actualUpperPeriodMeanTrace_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3a39f06-7c3e-a5f6-51ee-36713658d9f3",
  "kind": "theorem",
  "lexical_name": "actualUpperPeriodMeanTrace_abs_le",
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
  "slug": "actualupperperiodmeantrace-abs-le--e4720b9672bb3ab7ebdd207b",
  "source": {
    "blob": "2dddda296840e79bc5f3075b450469433d5222da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 194,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant62ae5d704b21134e8b1f3e598c95d5af226ac9addd159293ea17d9540c2db021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4720b9672bb3ab7ebdd207b9cc4598572548cc092c2bde73249b13f041ce6f2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant62ae5d704b21134e8b1f3e598c95d5af226ac9addd159293ea17d9540c2db021.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3a39f06-7c3e-a5f6-51ee-36713658d9f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualUpperPeriodMeanTrace_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |actualUpperPeriodMeanTrace A| ≤
      135 * (Real.log 4 + 4 + Real.log 2) * Real.exp (3 / 2) / (A * Real.exp A) := by
  have hA1 : 1 ≤ A := by linarith
  let U : ℝ := vaughanCutoff A
  let K : ℝ := (sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ)
  have hU1 : 1 ≤ U := by exact_mod_cast vaughanCutoff_pos A hA1
  have hU : 0 < U := by linarith
  have hKa := actual_column_window_nonempty hA1
  have hK2 : 2 ≤ K := by
    exact_mod_cast (show 2 ≤ sourceKernelCutoff A / (vaughanCutoff A + 1) by
      have := vaughanCutoff_pos A hA1
      omega)
  have hK : 0 < K := by linarith
  have hsU : 0 < Real.sqrt U := Real.sqrt_pos.2 hU
  have hsK : 0 < Real.sqrt K := Real.sqrt_pos.2 hK
  have he := actualUpperColumn_quotient_gap A
  have he4 : Real.exp (2 * A) ≤ 4 * (U * K) := by
    change Real.exp (2 * A) < (K + 2) * ((vaughanCutoff A + 1 : ℕ) : ℝ) at he
    have hau : ((vaughanCutoff A + 1 : ℕ) : ℝ) = U + 1 := by dsimp [U]; simp
    rw [hau] at he
    nlinarith
  have hep : Real.exp A ^ 2 = Real.exp (2 * A) := by
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  have hs : Real.exp A ≤ 3 * (Real.sqrt U * Real.sqrt K) := by
    have hsu := Real.sq_sqrt hU.le
    have hsk := Real.sq_sqrt hK.le
    nlinarith [Real.exp_pos A, mul_pos hsU hsK]
  have hm := actualCenteredPrefixPeriodMean_abs_le (vaughanCutoff A)
    (vaughanCutoff_pos A hA1)
  have ht := upper_factor_abs_le hA
  unfold actualUpperPeriodMeanTrace
  rw [abs_mul]
  calc
    _ ≤ ((U - 1) / 2) * ((Real.log 4 + 4 + Real.log 2) * (3 / U) ^ 2 *
        Real.exp (3 / 2) * Real.sqrt U / Real.sqrt K * (10 / A)) :=
      mul_le_mul hm ht (abs_nonneg _) (by positivity)
    _ ≤ 135 * (Real.log 4 + 4 + Real.log 2) * Real.exp (3 / 2) / (A * Real.exp A) := by
      apply (le_div_iff₀ (mul_pos (by linarith : 0 < A) (Real.exp_pos A))).2
      field_simp
      nlinarith [Real.sq_sqrt hU.le, Real.sq_sqrt hK.le,
        Real.exp_pos (3 / 2), Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 4),
        Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 2)]

/-- This separate upper mean tends to zero; the lower mean and complete signed interior remain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant62ae5d704b21134e8b1f3e598c95d5af226ac9addd159293ea17d9540c2db021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant62ae5d704b21134e8b1f3e598c95d5af226ac9addd159293ea17d9540c2db021.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dddda296840e79bc5f3075b450469433d5222da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
