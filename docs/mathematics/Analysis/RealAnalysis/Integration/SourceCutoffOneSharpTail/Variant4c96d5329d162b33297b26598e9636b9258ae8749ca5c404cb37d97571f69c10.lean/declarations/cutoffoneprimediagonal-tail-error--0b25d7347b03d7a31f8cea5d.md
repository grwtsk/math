# cutoffOnePrimeDiagonal_tail_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db6f3d7b-004d-cf78-d3f9-6b79499aaa11",
  "kind": "theorem",
  "lexical_name": "cutoffOnePrimeDiagonal_tail_error",
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
  "slug": "cutoffoneprimediagonal-tail-error--0b25d7347b03d7a31f8cea5d",
  "source": {
    "blob": "4acf58c268b3854342439705f0d00af4dbb1ad43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 39,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCutoffOneSharpTail/Variant4c96d5329d162b33297b26598e9636b9258ae8749ca5c404cb37d97571f69c10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b25d7347b03d7a31f8cea5db5eca6048d9d6079ebb48b8f4e084d1c3f16b87a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCutoffOneSharpTail/Variant4c96d5329d162b33297b26598e9636b9258ae8749ca5c404cb37d97571f69c10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db6f3d7b-004d-cf78-d3f9-6b79499aaa11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutoffOnePrimeDiagonal_tail_error {Q A : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A) :
    |cutoffOnePrimeDiagonal A + diagonalMainCoefficient A * A| ≤
      2 * (Real.log 4 + 4) * Real.sqrt (tailEnergyCoefficient Q) := by
  have hA : 1 ≤ A := hQ.trans hQA
  have hF := diagonalCorrelation_contDiff A (by linarith : 0 < A)
  have hE0 : primeLogError 0 = 0 := by simp [primeLogError, primeLogPrefix_zero]
  have he := primeLogWindow_sub_integral 0 A (by norm_num) (by linarith) (diagonalCorrelation A) hF
  rw [diagonalCorrelation_at_upper A (by linarith), hE0, zero_mul, mul_zero,
    sub_zero, zero_sub, diagonalCorrelation_integral A hA] at he
  have hi := primeLogError_mul_deriv_intervalIntegrable 0 A (by linarith) (diagonalCorrelation A) hF
  have hmajor : IntervalIntegrable
      (fun t => (Real.log 4 + 4) * |deriv (diagonalCorrelation A) t|) volume 0 A :=
    (hF.continuous_deriv_one.abs.intervalIntegrable 0 A).const_mul _
  have hm : (∫ t in 0..A, |primeLogError t * deriv (diagonalCorrelation A) t|) ≤
      ∫ t in 0..A, (Real.log 4 + 4) * |deriv (diagonalCorrelation A) t| := by
    apply intervalIntegral.integral_mono_on (by linarith) hi.abs hmajor
    intro t ht
    rw [abs_mul]
    exact mul_le_mul_of_nonneg_right (actual_primeLogError_fixed t ht.1) (abs_nonneg _)
  rw [cutoffOnePrimeDiagonal_eq_window A hA]
  have heq : -primeLogWindow 0 A (diagonalCorrelation A) + diagonalMainCoefficient A * A =
      ∫ t in 0..A, primeLogError t * deriv (diagonalCorrelation A) t := by linarith
  rw [heq]
  calc
    _ ≤ ∫ t in 0..A, |primeLogError t * deriv (diagonalCorrelation A) t| :=
      intervalIntegral.abs_integral_le_integral_abs (by linarith)
    _ ≤ _ := hm
    _ = (Real.log 4 + 4) * (∫ t in 0..A, |deriv (diagonalCorrelation A) t|) :=
      intervalIntegral.integral_const_mul _ _
    _ ≤ (Real.log 4 + 4) * (2 * Real.sqrt (tailEnergyCoefficient Q)) :=
      mul_le_mul_of_nonneg_left (diagonal_variation_le_tail hQ hQA (by norm_num) (by linarith) le_rfl)
        (by positivity)
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCutoffOneSharpTail/Variant4c96d5329d162b33297b26598e9636b9258ae8749ca5c404cb37d97571f69c10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCutoffOneSharpTail/Variant4c96d5329d162b33297b26598e9636b9258ae8749ca5c404cb37d97571f69c10.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4acf58c268b3854342439705f0d00af4dbb1ad43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
