# quadratureError_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b6f7109-1db5-1c3b-bf86-b55d06b4f58f",
  "kind": "theorem",
  "lexical_name": "quadratureError_abs_le",
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
  "slug": "quadratureerror-abs-le--1610cbf85941b06c1d8e9065",
  "source": {
    "blob": "f036a3251ade74af7aaf065ba9ab87fc70580966",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 204,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCompensatedReadout/Variantccc8fd41736ced8c3917aad4831fba58fb8cf3423fb3f62fbce72100b7395494.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1610cbf85941b06c1d8e90658f553ce3465ef48a1f9b1e0b7d979542a322ae17",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCompensatedReadout/Variantccc8fd41736ced8c3917aad4831fba58fb8cf3423fb3f62fbce72100b7395494.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b6f7109-1db5-1c3b-bf86-b55d06b4f58f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadratureError_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |quadratureError A| ≤ 1 + 10 / A := by
  have hp : 0 < A := by linarith
  have hcoef : 0 ≤ (1 / 2 : ℝ) + 5 / A := by positivity
  have hk (s : ℝ) : |kapitzaKernel A s| ≤ (1 / 2 : ℝ) + 5 / A := by
    have hc := actual_correlation_abs_le_one A s hA
    have hd := SourceCorrelationEnergy.sourceCorrelation_deriv_abs_le_five_div hA s
    have ht := abs_sub
      (sourceCorrelation explicitSecondDerivative A s / 2)
      (deriv (sourceCorrelation explicitSecondDerivative A) s)
    rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at ht
    unfold kapitzaKernel
    linarith
  have hg : IntervalIntegrable
      (fun s : ℝ => ((1 / 2 : ℝ) + 5 / A) * Real.exp (-s / 2)) volume 0 (2 * A) :=
    (by fun_prop : Continuous (fun s : ℝ =>
      ((1 / 2 : ℝ) + 5 / A) * Real.exp (-s / 2))).intervalIntegrable 0 (2 * A)
  have hn := intervalIntegral.norm_integral_le_of_norm_le
    (f := fun s => cutoffPhase s * (Real.exp (-s / 2) * kapitzaKernel A s))
    (by linarith : (0 : ℝ) ≤ 2 * A)
    (Filter.Eventually.of_forall (fun s _ => ?_)) hg
  · have hi : (∫ s in 0..2 * A, Real.exp (-s / 2)) ≤ 2 := by
      have hd (s : ℝ) : HasDerivAt (fun t : ℝ => -2 * Real.exp (-t / 2))
          (Real.exp (-s / 2)) s := by
        exact ((((hasDerivAt_id s).neg.div_const 2).exp).const_mul (-2)).congr_deriv
          (by dsimp; ring_nf)
      rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun s _ => hd s)
        ((by fun_prop : Continuous (fun s : ℝ => Real.exp (-s / 2))).intervalIntegrable
          0 (2 * A))]
      simp only [neg_zero, zero_div, Real.exp_zero, mul_one]
      nlinarith [Real.exp_pos (-(2 * A) / 2)]
    rw [intervalIntegral.integral_const_mul] at hn
    simp only [Real.norm_eq_abs] at hn
    unfold quadratureError
    rw [abs_neg]
    calc
      _ ≤ ((1 / 2 : ℝ) + 5 / A) * (∫ s in 0..2 * A, Real.exp (-s / 2)) := hn
      _ ≤ ((1 / 2 : ℝ) + 5 / A) * 2 := mul_le_mul_of_nonneg_left hi hcoef
      _ = 1 + 10 / A := by ring
  · simp only [Real.norm_eq_abs, abs_mul, abs_of_nonneg (cutoffPhase_bounds s).1,
      abs_of_pos (Real.exp_pos _)]
    have hb : cutoffPhase s ≤ 1 := (cutoffPhase_bounds s).2.le
    calc
      _ ≤ 1 * (Real.exp (-s / 2) * ((1 / 2 : ℝ) + 5 / A)) :=
        mul_le_mul hb (mul_le_mul_of_nonneg_left (hk s) (Real.exp_pos _).le)
          (mul_nonneg (Real.exp_pos _).le (abs_nonneg _)) (by norm_num)
      _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCompensatedReadout/Variantccc8fd41736ced8c3917aad4831fba58fb8cf3423fb3f62fbce72100b7395494.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCompensatedReadout/Variantccc8fd41736ced8c3917aad4831fba58fb8cf3423fb3f62fbce72100b7395494.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f036a3251ade74af7aaf065ba9ab87fc70580966` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
