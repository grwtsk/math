# positive_generalized_half_moment_abs_le_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28f6984b-6e3d-cbc2-2115-0a522ed57ce7",
  "kind": "theorem",
  "lexical_name": "positive_generalized_half_moment_abs_le_four",
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
  "slug": "positive-generalized-half-moment-abs-le-four--c7ab2f2d24bb5ab57d95a8f3",
  "source": {
    "blob": "fb0f2f3e68b09d9620a4aa67786fcbcadc7e322d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 222,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7ab2f2d24bb5ab57d95a8f39dc82524028b88aac8792d853209afb0a172d9b2",
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

Occurrence: `result:28f6984b-6e3d-cbc2-2115-0a522ed57ce7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_generalized_half_moment_abs_le_four (A : ℝ) (hA : 1 ≤ A) :
    |∫ t in 0..2 * A, t * Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t| ≤ 4 := by
  have hc := (sourceCorrelation_contDiff A (by linarith)).continuous
  have he : Continuous (fun t : ℝ ↦ t * Real.exp (-t / 2)) := by fun_prop
  have hp : (∫ t in 0..2 * A, t * Real.exp (-t / 2)) =
      4 - (4 * A + 4) * Real.exp (-A) := by
    have hd (t : ℝ) : HasDerivAt (fun x ↦ -2 * (x + 2) * Real.exp (-x / 2))
        (t * Real.exp (-t / 2)) t := by
      apply ((((hasDerivAt_id t).add_const 2).const_mul (-2)).mul
        (((hasDerivAt_id t).neg.div_const 2).exp)).congr_deriv
      dsimp
      ring
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun t _ ↦ hd t) (he.intervalIntegrable _ _)]
    simp only [zero_add, neg_zero, zero_div, Real.exp_zero, mul_one]
    rw [show -(2 * A) / 2 = -A by ring]
    ring
  have hhalf := generalized_pole_half_interval A (1 / 2) hA (by norm_num)
  have hs (t : ℝ) : (1 / 2 : ℝ) * t = t / 2 := by ring
  have hn (t : ℝ) : (-(1 / 2) : ℝ) * t = -t / 2 := by ring
  simp only [hs, hn] at hhalf
  rw [hhalf]
  calc
    _ ≤ ∫ t in 0..2 * A, |t * Real.exp (-t / 2) *
        sourceCorrelation explicitSecondDerivative A t| :=
      intervalIntegral.abs_integral_le_integral_abs (by linarith)
    _ ≤ ∫ t in 0..2 * A, t * Real.exp (-t / 2) := by
      apply intervalIntegral.integral_mono_on (by linarith)
        ((he.mul hc).abs.intervalIntegrable _ _) (he.intervalIntegrable _ _)
      intro t ht
      have hnonneg : 0 ≤ t * Real.exp (-t / 2) :=
        mul_nonneg ht.1 (Real.exp_pos _).le
      change |t * Real.exp (-t / 2) * sourceCorrelation explicitSecondDerivative A t| ≤
        t * Real.exp (-t / 2)
      rw [abs_mul, abs_of_nonneg hnonneg]
      simpa only [mul_one] using mul_le_mul_of_nonneg_left
        (EstimateCorrelation.actual_correlation_abs_le_one A t hA) hnonneg
    _ = 4 - (4 * A + 4) * Real.exp (-A) := hp
    _ ≤ 4 := by nlinarith [Real.exp_pos (-A)]

/-- The actual polynomial bump is pointwise nonnegative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb0f2f3e68b09d9620a4aa67786fcbcadc7e322d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
