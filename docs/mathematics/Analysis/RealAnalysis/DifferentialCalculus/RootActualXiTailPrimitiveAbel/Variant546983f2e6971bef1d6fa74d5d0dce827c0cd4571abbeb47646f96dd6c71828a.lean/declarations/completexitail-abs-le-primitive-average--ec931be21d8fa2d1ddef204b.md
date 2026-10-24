# completeXiTail_abs_le_primitive_average

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8c09f9f-6c98-614c-ba0f-bfa77a5d3f2c",
  "kind": "theorem",
  "lexical_name": "completeXiTail_abs_le_primitive_average",
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
  "slug": "completexitail-abs-le-primitive-average--ec931be21d8fa2d1ddef204b",
  "source": {
    "blob": "d3766d484915c1271579c93cc2e129d4e85e8540",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 128,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiTailPrimitiveAbel/Variant546983f2e6971bef1d6fa74d5d0dce827c0cd4571abbeb47646f96dd6c71828a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec931be21d8fa2d1ddef204b8f8426866f384a4cafe745d97669ef8b3803bce1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiTailPrimitiveAbel/Variant546983f2e6971bef1d6fa74d5d0dce827c0cd4571abbeb47646f96dd6c71828a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8c09f9f-6c98-614c-ba0f-bfa77a5d3f2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeXiTail_abs_le_primitive_average {A : ℝ} (hA : 91 ≤ A) :
    |completeXiTail A| ≤ (5 / A ^ 2 + 5 / (2 * A)) *
      ∫ t in Real.log 7..2 * A, |actualAnchoredXiTailPrimitive t| := by
  have hlb : Real.log 7 ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
  let B : ℝ := 5 / A ^ 2 + 5 / (2 * A)
  have hg : IntervalIntegrable (fun t => B * |actualAnchoredXiTailPrimitive t|)
      volume (Real.log 7) (2 * A) := by
    have hi := (actualAnchoredXiTailPrimitive_absolutelyContinuous hlb).continuousOn.intervalIntegrable
    simpa only [Real.norm_eq_abs] using hi.norm.const_mul B
  have hb : ∀ᵐ t : ℝ, t ∈ Ioc (Real.log 7) (2 * A) →
      ‖actualAnchoredXiTailPrimitive t *
        (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t -
          deriv (sourceCorrelation explicitSecondDerivative A) t / 2)‖ ≤
        B * |actualAnchoredXiTailPrimitive t| := by
    filter_upwards with t _
    have h2 : |iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t| ≤ 5 / A ^ 2 :=
      by simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
        actualCorrelation_second_abs_le_five hA t
    have h1 := sourceCorrelation_deriv_abs_le_five_div (by linarith : 1 ≤ A) t
    have hh := abs_sub (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t)
      (deriv (sourceCorrelation explicitSecondDerivative A) t / 2)
    rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at hh
    have hk : |iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2| ≤ B := by
      dsimp [B]
      have he : (5 / A) / 2 = 5 / (2 * A) := by ring
      nlinarith
    rw [Real.norm_eq_abs, abs_mul]
    nlinarith [mul_nonneg (abs_nonneg (actualAnchoredXiTailPrimitive t)) (sub_nonneg.mpr hk)]
  rw [completeXiTail_eq_anchored_primitive hA, abs_neg]
  have he := intervalIntegral.norm_integral_le_of_norm_le hlb hb hg
  simpa only [Real.norm_eq_abs, intervalIntegral.integral_const_mul, B] using he

/-- An actual uniform average witness would supply the unchanged complete signed tail budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiTailPrimitiveAbel/Variant546983f2e6971bef1d6fa74d5d0dce827c0cd4571abbeb47646f96dd6c71828a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiTailPrimitiveAbel/Variant546983f2e6971bef1d6fa74d5d0dce827c0cd4571abbeb47646f96dd6c71828a.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3766d484915c1271579c93cc2e129d4e85e8540` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
