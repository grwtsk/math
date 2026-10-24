# source_composedVariation_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b013c918-7097-51e4-734b-972a60d7c3be",
  "kind": "theorem",
  "lexical_name": "source_composedVariation_abs_le",
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
  "slug": "source-composedvariation-abs-le--5cbca691b886bef6c87d234b",
  "source": {
    "blob": "f05233e91f59fd2dd091663ed54a54d47a570387",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1108,
    "line": 1062,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationAudit/Varianta960651f6e2f0a72a37d672c5e40b906004203a0fe0fe560e468a344b2d58fc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cbca691b886bef6c87d234bc148b1e51cea3ba33a97510680ac1bdbe3f643e1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationAudit/Varianta960651f6e2f0a72a37d672c5e40b906004203a0fe0fe560e468a344b2d58fc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b013c918-7097-51e4-734b-972a60d7c3be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1062–1108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_composedVariation_abs_le (A : ℝ) (h G : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h) :
    Real.sqrt (G : ℝ) * |ThetaRemainder.thetaRemainder A (h * G ^ 2)| +
      (∑ j ∈ Icc 1 (G - 1), Real.sqrt (j : ℝ) *
        |ThetaRemainder.thetaRemainder A (h * j ^ 2) -
          ThetaRemainder.thetaRemainder A (h * (j + 1) ^ 2)|) ≤
      (ThetaKernelEstimate.kernelBound A +
        4 * (28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
          8 * Real.sqrt (325325 / 18) / A ^ 3)) / Real.sqrt (h : ℝ) := by
  have hA0 : 0 < A := by linarith
  have hbound := ThetaKernelEstimate.kernelBound_nonneg A hA
  by_cases hG : G = 0
  · subst G
    simp only [Nat.cast_zero, Real.sqrt_zero, zero_mul, zero_tsub, Icc_eq_empty_of_lt
      (by norm_num : (0 : ℕ) < 1), sum_empty, add_zero]
    positivity
  have hG1 : 1 ≤ G := by omega
  have hv := composedVariation_endpoint_le (realThetaRemainder A) (h : ℝ)
    (ThetaKernelEstimate.kernelBound A)
    (28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
      8 * Real.sqrt (325325 / 18) / A ^ 3) G (by exact_mod_cast hh)
    (fun q hq ↦ (realThetaRemainder_hasDerivAt A q hA
      (zero_lt_one.trans_le hq)).continuousAt.continuousWithinAt)
    (fun q hq ↦ (realThetaRemainder_hasDerivAt A q hA
      (zero_lt_one.trans hq)).differentiableAt) hbound (fun hG' ↦ by
      have hp : 1 ≤ h * G ^ 2 := Nat.mul_pos hh (pow_pos hG' _)
      have he := ThetaKernelEstimate.thetaRemainder_abs_le_kernelBound A (h * G ^ 2) hA hp
      rw [← realThetaRemainder_eq_nat A (h * G ^ 2) hp] at he
      simpa only [Nat.cast_mul, Nat.cast_pow] using he)
    (fun q hq ↦ realThetaRemainder_derivative_abs_le A q hA hq.le)
  have hv' :
      Real.sqrt (G : ℝ) * |realThetaRemainder A ((h * G ^ 2 : ℕ) : ℝ)| +
        (∑ j ∈ Icc 1 (G - 1), Real.sqrt (j : ℝ) *
          |realThetaRemainder A ((h * j ^ 2 : ℕ) : ℝ) -
            realThetaRemainder A ((h * (j + 1) ^ 2 : ℕ) : ℝ)|) ≤
        (ThetaKernelEstimate.kernelBound A +
          4 * (28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
            8 * Real.sqrt (325325 / 18) / A ^ 3)) / Real.sqrt (h : ℝ) := by
    simpa only [composedVariation, Nat.cast_mul, Nat.cast_pow] using hv
  rw [realThetaRemainder_eq_nat A (h * G ^ 2) (Nat.mul_pos hh (pow_pos hG1 _))] at hv'
  convert hv' using 1
  congr 1
  apply sum_congr rfl
  intro j hj
  have hj1 := (mem_Icc.mp hj).1
  rw [realThetaRemainder_eq_nat A (h * j ^ 2) (Nat.mul_pos hh (pow_pos hj1 _)),
    realThetaRemainder_eq_nat A (h * (j + 1) ^ 2) (Nat.mul_pos hh (pow_pos (by omega) _))]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationAudit/Varianta960651f6e2f0a72a37d672c5e40b906004203a0fe0fe560e468a344b2d58fc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariationAudit/Varianta960651f6e2f0a72a37d672c5e40b906004203a0fe0fe560e468a344b2d58fc1.lean#L1062).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f05233e91f59fd2dd091663ed54a54d47a570387` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
