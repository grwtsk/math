# complex_full_moment_retains_halves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6be09ae-a2c3-604b-3631-0c27c369ab71",
  "kind": "theorem",
  "lexical_name": "complex_full_moment_retains_halves",
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
  "slug": "complex-full-moment-retains-halves--7fb215cbefd07e31e9a63377",
  "source": {
    "blob": "af8178ff43acb435ac597cc1191097b7c8d6cd86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 44,
    "path": "GRWTSK/Analysis/NativeOffGridTransformReadout/Variant09b477e7b53bfa5f205d45eccc371781a4715d939a7d227044b5622de7577387.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fb215cbefd07e31e9a63377d8e32bca37eecb2d5f4f6358eecb6507936f5be8",
  "verification": {
    "reference": "docs/verification/Analysis/NativeOffGridTransformReadout/Variant09b477e7b53bfa5f205d45eccc371781a4715d939a7d227044b5622de7577387.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6be09ae-a2c3-604b-3631-0c27c369ab71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complex_full_moment_retains_halves {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    complexTestMoment A z ^ 2 = complexHalfMoment A z + complexHalfMoment A (-z) := by
  have hpos : 0 < A := by linarith
  have hi := complex_weighted_actual_correlation_integrable hA z
  have hfull : (∫ t : ℝ, Complex.exp (z * (t : ℂ)) * (C A t : ℂ)) =
      ∫ t in -(2 * A)..2 * A, Complex.exp (z * (t : ℂ)) * (C A t : ℂ) := by
    calc
      _ = ∫ t : ℝ, (Icc (-(2 * A)) (2 * A)).indicator
          (fun t : ℝ ↦ Complex.exp (z * (t : ℂ)) * (C A t : ℂ)) t := by
        apply integral_congr_ae
        filter_upwards [] with t
        by_cases ht : t ∈ Icc (-(2 * A)) (2 * A)
        · rw [indicator_of_mem ht]
        · rw [indicator_of_notMem ht]
          have hz : C A t = 0 := by
            apply sourceCorrelation_eq_zero_of_two_mul_le_abs A t hpos
            by_contra hh
            exact ht (abs_le.mp (le_of_lt (lt_of_not_ge hh)))
          rw [hz, Complex.ofReal_zero, mul_zero]
      _ = _ := by
        rw [MeasureTheory.integral_indicator measurableSet_Icc, integral_Icc_eq_integral_Ioc,
          intervalIntegral.integral_of_le (by linarith : -(2 * A) ≤ 2 * A)]
  have hreflect : (∫ t in -(2 * A)..0, Complex.exp (z * (t : ℂ)) * (C A t : ℂ)) =
      complexHalfMoment A (-z) := by
    calc
      _ = ∫ t in (0 : ℝ)..2 * A, Complex.exp (z * ((-t : ℝ) : ℂ)) * (C A (-t) : ℂ) := by
        simpa only [neg_zero] using
          (intervalIntegral.integral_comp_neg
            (fun t : ℝ ↦ Complex.exp (z * (t : ℂ)) * (C A t : ℂ))
            (a := 0) (b := 2 * A)).symm
      _ = _ := by
        unfold complexHalfMoment
        apply intervalIntegral.integral_congr
        intro t _
        dsimp only
        rw [sourceCorrelation_even A t]
        congr 2
        push_cast
        ring
  have hs := intervalIntegral.integral_add_adjacent_intervals
    (a := -(2 * A)) (b := 0) (c := 2 * A) hi.intervalIntegrable hi.intervalIntegrable
  rw [hreflect, ← hfull, complex_actual_full_correlation_moment hA] at hs
  simpa only [complexHalfMoment, add_comm] using hs.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/NativeOffGridTransformReadout/Variant09b477e7b53bfa5f205d45eccc371781a4715d939a7d227044b5622de7577387.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/NativeOffGridTransformReadout/Variant09b477e7b53bfa5f205d45eccc371781a4715d939a7d227044b5622de7577387.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af8178ff43acb435ac597cc1191097b7c8d6cd86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
