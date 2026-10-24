# nativeMellin_right_decay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40394a42-6cba-bd84-2789-79abdf0329e4",
  "kind": "theorem",
  "lexical_name": "nativeMellin_right_decay",
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
  "slug": "nativemellin-right-decay--152d381b01bbdfdc3ec58522",
  "source": {
    "blob": "76a3dc031e89a09c754080652860ca383c4dc5a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 116,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNativeRightLine/Variant3c57403592df6d5c0542ab6c840a871056ecb7f102913aa268a8817cea099275.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:152d381b01bbdfdc3ec585229ad84e3be48df756f5919aa7d43e512c278226ee",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNativeRightLine/Variant3c57403592df6d5c0542ab6c840a871056ecb7f102913aa268a8817cea099275.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40394a42-6cba-bd84-2789-79abdf0329e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nativeMellin_right_decay (A : ℝ) (hA : 1 ≤ A) (s : ℂ)
    (hsre : 0 ≤ (s - 1 / 2).re) (hs : 1 ≤ ‖s - 1 / 2‖) :
    ‖nativeMellinTransform A s‖ ≤
      408576 ^ 2 * Real.exp (2 * A * (s - 1 / 2).re) /
        ((4096 / 109395 : ℝ) * A ^ 9 * ‖s - 1 / 2‖ ^ 6) := by
  have hp : 0 < A := by linarith
  have hzpos : 0 < ‖s - 1 / 2‖ := by linarith
  have hz0 : s - 1 / 2 ≠ 0 := norm_pos_iff.mp hzpos
  have hZ : 0 < sourceNormalization A := source_normalization_pos A hA
  have hq := bilateral_right_decay A hA (s - 1 / 2) hsre hs
  have hb : ‖bilateralTransform A (s - 1 / 2)‖ ^ 2 ≤
      (408576 * Real.exp (A * (s - 1 / 2).re) /
        (A ^ 4 * Real.sqrt A * ‖s - 1 / 2‖ ^ 3)) ^ 2 :=
    pow_le_pow_left₀ (norm_nonneg _) hq 2
  rw [nativeMellin_eq_dividedTransform A hA s hz0,
    ← actual_transform A hp (s - 1 / 2) hz0]
  simp only [norm_div, norm_pow, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hZ]
  calc
    _ ≤ (408576 * Real.exp (A * (s - 1 / 2).re) /
        (A ^ 4 * Real.sqrt A * ‖s - 1 / 2‖ ^ 3)) ^ 2 / sourceNormalization A := by
      gcongr
    _ ≤ (408576 * Real.exp (A * (s - 1 / 2).re) /
        (A ^ 4 * Real.sqrt A * ‖s - 1 / 2‖ ^ 3)) ^ 2 / (4096 / 109395 : ℝ) :=
      div_le_div_of_nonneg_left (sq_nonneg _) (by norm_num) (normalization_floor A)
    _ = _ := by
      have he : Real.exp (2 * A * (s - 1 / 2).re) =
          Real.exp (A * (s - 1 / 2).re) ^ 2 := by
        rw [pow_two, ← Real.exp_add]
        congr 1
        ring
      rw [he]
      have hsqrt : (Real.sqrt A) ^ 2 = A := Real.sq_sqrt hp.le
      simp only [div_pow, mul_pow, hsqrt]
      ring

/-- The actual fixed c = 2 line has the source's literal height-six decay. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNativeRightLine/Variant3c57403592df6d5c0542ab6c840a871056ecb7f102913aa268a8817cea099275.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNativeRightLine/Variant3c57403592df6d5c0542ab6c840a871056ecb7f102913aa268a8817cea099275.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76a3dc031e89a09c754080652860ca383c4dc5a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
