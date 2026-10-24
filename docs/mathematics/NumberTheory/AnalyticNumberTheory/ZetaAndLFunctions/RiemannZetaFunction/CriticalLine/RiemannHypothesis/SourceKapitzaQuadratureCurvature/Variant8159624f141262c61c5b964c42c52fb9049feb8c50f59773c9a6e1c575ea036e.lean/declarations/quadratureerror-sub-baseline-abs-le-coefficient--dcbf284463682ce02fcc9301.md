# quadratureError_sub_baseline_abs_le_coefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d08581d2-28db-2f42-9aaf-eb1cad44c743",
  "kind": "theorem",
  "lexical_name": "quadratureError_sub_baseline_abs_le_coefficient",
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
  "slug": "quadratureerror-sub-baseline-abs-le-coefficient--dcbf284463682ce02fcc9301",
  "source": {
    "blob": "b58fbdf2690b9a2a8f146ba36b0f3387a325e7c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 155,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaQuadratureCurvature/Variant8159624f141262c61c5b964c42c52fb9049feb8c50f59773c9a6e1c575ea036e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcbf284463682ce02fcc9301b2a07eaf37e8bec43ebc5c6d15b5a35880c1ff82",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaQuadratureCurvature/Variant8159624f141262c61c5b964c42c52fb9049feb8c50f59773c9a6e1c575ea036e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d08581d2-28db-2f42-9aaf-eb1cad44c743`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadratureError_sub_baseline_abs_le_coefficient (A : ℝ) (hA : 1 ≤ A) :
    |quadratureError A - cutoffBaseline A| ≤ 8 * curvatureCoefficient / A ^ 2 := by
  have hp : 0 < A := by linarith
  have ha : 0 ≤ 2 * A := by linarith
  have hphase := weightedPhase_intervalIntegrable A
  have hk := hphase.mul_continuousOn (kernel_continuous A hp).continuousOn
  have hconst := hphase.mul_const (1 / 2 : ℝ)
  have hid : quadratureError A - cutoffBaseline A =
      -(∫ s in 0..2 * A,
        cutoffPhase s * Real.exp (-s / 2) * (kapitzaKernel A s - 1 / 2)) := by
    have hfun : (fun s => cutoffPhase s * Real.exp (-s / 2) *
        (kapitzaKernel A s - 1 / 2)) =
        (fun s => cutoffPhase s * Real.exp (-s / 2) * kapitzaKernel A s -
          cutoffPhase s * Real.exp (-s / 2) * (1 / 2 : ℝ)) := by funext s; ring
    unfold quadratureError cutoffBaseline
    rw [hfun, intervalIntegral.integral_sub hk hconst,
      intervalIntegral.integral_mul_const]
    have hsame : (fun s => cutoffPhase s *
        (Real.exp (-s / 2) * kapitzaKernel A s)) =
        (fun s => cutoffPhase s * Real.exp (-s / 2) * kapitzaKernel A s) := by
      funext s
      ring
    rw [hsame]
    ring
  rw [hid, abs_neg]
  have hg : IntervalIntegrable (fun s : ℝ => (curvatureCoefficient / A ^ 2) *
      (Real.exp (-s / 2) * (s + s ^ 2 / 4))) volume 0 (2 * A) :=
    (by fun_prop : Continuous (fun s : ℝ => (curvatureCoefficient / A ^ 2) *
      (Real.exp (-s / 2) * (s + s ^ 2 / 4)))).intervalIntegrable 0 (2 * A)
  have hn := intervalIntegral.norm_integral_le_of_norm_le
    (f := fun s => cutoffPhase s * Real.exp (-s / 2) * (kapitzaKernel A s - 1 / 2))
    ha (Filter.Eventually.of_forall (fun s hs => ?_)) hg
  · rw [intervalIntegral.integral_const_mul] at hn
    simp only [Real.norm_eq_abs] at hn
    have hm := exponential_moment_le_eight (2 * A) ha
    have hcoef : 0 ≤ curvatureCoefficient / A ^ 2 := by
      unfold curvatureCoefficient
      positivity
    calc
      _ ≤ (curvatureCoefficient / A ^ 2) *
          (∫ s in 0..2 * A, Real.exp (-s / 2) * (s + s ^ 2 / 4)) := hn
      _ ≤ (curvatureCoefficient / A ^ 2) * 8 := mul_le_mul_of_nonneg_left hm hcoef
      _ = 8 * curvatureCoefficient / A ^ 2 := by ring
  · have hs0 : 0 ≤ s := hs.1.le
    have hb : cutoffPhase s ≤ 1 := (cutoffPhase_bounds s).2.le
    simp only [Real.norm_eq_abs, abs_mul, abs_of_nonneg (cutoffPhase_bounds s).1,
      abs_of_pos (Real.exp_pos _)]
    have he : 0 ≤ Real.exp (-s / 2) := (Real.exp_pos _).le
    have htri := kernel_sub_half_abs_le_coefficient A s hA hs0
    calc
      _ ≤ 1 * Real.exp (-s / 2) *
          ((curvatureCoefficient / A ^ 2) * (s + s ^ 2 / 4)) :=
        mul_le_mul (mul_le_mul_of_nonneg_right hb he) htri
          (abs_nonneg _) (by positivity)
      _ = _ := by ring

/-- Only the signed positive debt is priced; the literal baseline remains nonpositive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaQuadratureCurvature/Variant8159624f141262c61c5b964c42c52fb9049feb8c50f59773c9a6e1c575ea036e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaQuadratureCurvature/Variant8159624f141262c61c5b964c42c52fb9049feb8c50f59773c9a6e1c575ea036e.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b58fbdf2690b9a2a8f146ba36b0f3387a325e7c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
