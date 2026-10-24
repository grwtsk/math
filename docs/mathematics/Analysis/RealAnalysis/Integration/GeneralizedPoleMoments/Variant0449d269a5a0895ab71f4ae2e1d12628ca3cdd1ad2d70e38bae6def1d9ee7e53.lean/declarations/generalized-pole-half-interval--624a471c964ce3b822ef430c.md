# generalized_pole_half_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:273e41bd-449b-abe5-2583-42837332ddee",
  "kind": "theorem",
  "lexical_name": "generalized_pole_half_interval",
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
  "slug": "generalized-pole-half-interval--624a471c964ce3b822ef430c",
  "source": {
    "blob": "fb0f2f3e68b09d9620a4aa67786fcbcadc7e322d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 176,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:624a471c964ce3b822ef430c4bf94184fd9b3c8b10fc4175ad2c9e8b4572cf84",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:273e41bd-449b-abe5-2583-42837332ddee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem generalized_pole_half_interval (A σ : ℝ) (hA : 1 ≤ A)
    (hσ : σ ^ 2 = 1 / 4) :
    (∫ t in 0..2 * A, t * Real.exp (σ * t) *
      sourceCorrelation explicitSecondDerivative A t) =
      ∫ t in 0..2 * A, t * Real.exp ((-σ) * t) *
        sourceCorrelation explicitSecondDerivative A t := by
  let C := sourceCorrelation explicitSecondDerivative A
  let f : ℝ → ℝ := fun t ↦ t * Real.exp (σ * t) * C t
  have hi : Integrable f := generalized_pole_moment_integrable A σ hA
  have hfull : (∫ t, f t) = ∫ t in -(2 * A)..2 * A, f t := by
    calc
      _ = ∫ t, (Icc (-(2 * A)) (2 * A)).indicator f t := by
        apply integral_congr_ae
        filter_upwards [] with t
        by_cases ht : t ∈ Icc (-(2 * A)) (2 * A)
        · simp only [indicator_of_mem ht]
        · rw [indicator_of_notMem ht]
          have hz : C t = 0 := by
            apply sourceCorrelation_eq_zero_of_two_mul_le_abs A t (by linarith)
            by_contra h
            exact ht (abs_le.mp (le_of_lt (lt_of_not_ge h)))
          simp [f, hz]
      _ = _ := zeroExtension_integral f (-(2 * A)) (2 * A) (by linarith)
  have hreflection : (∫ t in -(2 * A)..0, f t) =
      -(∫ t in 0..2 * A, t * Real.exp ((-σ) * t) * C t) := by
    calc
      _ = ∫ t in 0..2 * A, f (-t) := by
        simpa only [neg_zero] using
          (intervalIntegral.integral_comp_neg f (a := 0) (b := 2 * A)).symm
      _ = ∫ t in 0..2 * A, -(t * Real.exp ((-σ) * t) * C t) := by
        apply intervalIntegral.integral_congr
        intro t _
        dsimp [f, C]
        rw [sourceCorrelation_even A t]
        rw [show σ * -t = (-σ) * t by ring]
        ring
      _ = _ := intervalIntegral.integral_neg
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (a := -(2 * A)) (b := 0) (c := 2 * A)
    hi.intervalIntegrable hi.intervalIntegrable
  have hz : (∫ t, f t) = 0 := generalized_pole_moment_zero A σ hA hσ
  rw [hreflection, ← hfull, hz] at hsplit
  change _ = _
  linarith

/-- The positive-half affine pole budget is uniformly bounded, rather than zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb0f2f3e68b09d9620a4aa67786fcbcadc7e322d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
