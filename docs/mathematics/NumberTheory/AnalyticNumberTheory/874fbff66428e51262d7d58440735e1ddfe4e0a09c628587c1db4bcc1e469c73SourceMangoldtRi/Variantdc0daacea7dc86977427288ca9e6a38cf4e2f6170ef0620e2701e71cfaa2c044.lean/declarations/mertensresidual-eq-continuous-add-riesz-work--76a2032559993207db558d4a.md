# mertensResidual_eq_continuous_add_riesz_work

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03517910-f318-ac8b-5b89-1bef25b367f3",
  "kind": "theorem",
  "lexical_name": "mertensResidual_eq_continuous_add_riesz_work",
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
  "slug": "mertensresidual-eq-continuous-add-riesz-work--76a2032559993207db558d4a",
  "source": {
    "blob": "cd5022722d1af19e4450cbf79750261c951d780b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 216,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantdc0daacea7dc86977427288ca9e6a38cf4e2f6170ef0620e2701e71cfaa2c044.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76a2032559993207db558d4a4fb630f8f2aae8ad13d3b602bd5340a864996811",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantdc0daacea7dc86977427288ca9e6a38cf4e2f6170ef0620e2701e71cfaa2c044.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03517910-f318-ac8b-5b89-1bef25b367f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_eq_continuous_add_riesz_work (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = criticalContinuousMoment A +
      ∫ t in 0..2 * A,
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
          mangoldtRieszPrimitive t := by
  have hp : 0 < A := by linarith
  have hsecond := correlation_second_continuous A hp
  have hq : Continuous continuumRieszPrimitive := by unfold continuumRieszPrimitive; fun_prop
  have hfixed : (∫ t in 0..2 * A,
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * mangoldtRieszPrimitive t) =
      (∫ t in 0..2 * A,
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
          fixedRieszAtoms (2 * A) t) -
      criticalContinuousMoment A := by
    calc
      _ = ∫ t in 0..2 * A,
          deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
            (fixedRieszAtoms (2 * A) t - continuumRieszPrimitive t) := by
        apply intervalIntegral.integral_congr
        intro t ht
        rw [uIcc_of_le (by linarith : (0 : ℝ) ≤ 2 * A)] at ht
        dsimp only
        rw [mangoldtRieszPrimitive_eq_fixed_window (2 * A) t ht.2]
      _ = _ := by
        simp_rw [mul_sub]
        rw [intervalIntegral.integral_sub
          (f := fun t => deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
            fixedRieszAtoms (2 * A) t)
          (g := fun t => deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
            continuumRieszPrimitive t)
          ((hsecond.mul (fixedRieszAtoms_continuous (2 * A))).intervalIntegrable _ _)
          ((hsecond.mul hq).intervalIntegrable _ _), continuum_curvature_integral A hA]
  have hsum : (∫ t in 0..2 * A,
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * fixedRieszAtoms (2 * A) t) =
      ∑ n ∈ primePowerInventory (2 * A), vonMangoldt n / Real.sqrt n *
        sourceCorrelation explicitSecondDerivative A (Real.log n) := by
    unfold fixedRieszAtoms
    simp_rw [Finset.mul_sum]
    rw [intervalIntegral.integral_finsetSum]
    · apply Finset.sum_congr rfl
      intro n hn
      have hb := mangoldtInventory_log_bounds (2 * A) n hn
      have he : (fun t : ℝ => deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
          (vonMangoldt n / Real.sqrt n * max (t - Real.log n) 0)) =
          fun t => (vonMangoldt n / Real.sqrt n) *
            (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
              max (t - Real.log n) 0) := by
        funext t
        ring
      rw [he, intervalIntegral.integral_const_mul, ramp_integral A (Real.log n) hA hb.1 hb.2]
    · intro n _
      exact (hsecond.mul (continuous_const.mul
        ((continuous_id.sub continuous_const).max continuous_const))).intervalIntegrable _ _
  have hr : mertensResidual A =
      ∑ n ∈ primePowerInventory (2 * A), vonMangoldt n / Real.sqrt n *
        sourceCorrelation explicitSecondDerivative A (Real.log n) := by
    rw [mertensResidual_eq_closedPrimeMoment A hA]
    unfold closedPrimeMoment
    apply Finset.sum_congr rfl
    intro n hn
    have hn0 : 0 < n := by have h := (Finset.mem_Icc.mp hn).1; omega
    rw [exponentialTest_log _ _ hn0]
    ring
  rw [hsum, ← hr] at hfixed
  linarith

/-- The actual correlation annihilates every constant center. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantdc0daacea7dc86977427288ca9e6a38cf4e2f6170ef0620e2701e71cfaa2c044.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantdc0daacea7dc86977427288ca9e6a38cf4e2f6170ef0620e2701e71cfaa2c044.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd5022722d1af19e4450cbf79750261c951d780b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
