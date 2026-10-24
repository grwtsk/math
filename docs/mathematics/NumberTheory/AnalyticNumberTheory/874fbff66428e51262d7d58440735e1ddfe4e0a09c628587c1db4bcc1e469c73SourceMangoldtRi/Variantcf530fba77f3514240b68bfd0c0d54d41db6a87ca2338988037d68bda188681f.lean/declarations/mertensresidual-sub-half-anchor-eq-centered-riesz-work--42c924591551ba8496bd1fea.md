# mertensResidual_sub_half_anchor_eq_centered_riesz_work

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:190f3176-c3e7-e17b-a798-8ba1498d5bbb",
  "kind": "theorem",
  "lexical_name": "mertensResidual_sub_half_anchor_eq_centered_riesz_work",
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
  "slug": "mertensresidual-sub-half-anchor-eq-centered-riesz-work--42c924591551ba8496bd1fea",
  "source": {
    "blob": "f34b18088dc057d23bdf4e79387c9185ac8815a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 314,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantcf530fba77f3514240b68bfd0c0d54d41db6a87ca2338988037d68bda188681f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42c924591551ba8496bd1fea81a9d18c736339ce65bcb92eb82f5e6a7021ede8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantcf530fba77f3514240b68bfd0c0d54d41db6a87ca2338988037d68bda188681f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:190f3176-c3e7-e17b-a798-8ba1498d5bbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_sub_half_anchor_eq_centered_riesz_work
    (A anchor b : ℝ) (hA : 1 ≤ A) :
    mertensResidual A - anchor / 2 =
      ∫ t in 0..2 * A,
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
          centeredRieszProfile A anchor b t := by
  have hp : 0 < A := by linarith
  have hsecond := correlation_second_continuous A hp
  have h0B : (0 : ℝ) ≤ 2 * A := by linarith
  have hmain : IntervalIntegrable
      (fun t => deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
        mangoldtRieszPrimitive t) volume 0 (2 * A) :=
    (hsecond.continuousOn.mul
      (mangoldtRieszPrimitive_continuousOn (2 * A))).intervalIntegrable_of_Icc h0B
  have hlinear : IntervalIntegrable
      (fun t => deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
        (rieszCenterSlope A anchor * t)) volume 0 (2 * A) :=
    (hsecond.mul (continuous_const.mul continuous_id)).intervalIntegrable _ _
  have hconstant : IntervalIntegrable
      (fun t => deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * b)
      volume 0 (2 * A) := (hsecond.mul continuous_const).intervalIntegrable _ _
  have he : (∫ t in 0..2 * A,
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
        centeredRieszProfile A anchor b t) =
      (∫ t in 0..2 * A,
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * mangoldtRieszPrimitive t) -
      rieszCenterSlope A anchor := by
    unfold centeredRieszProfile
    simp_rw [mul_sub]
    rw [intervalIntegral.integral_sub (hmain.sub hlinear) hconstant,
      intervalIntegral.integral_sub hmain hlinear]
    have hlin : (fun t : ℝ => deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
        (rieszCenterSlope A anchor * t)) =
        fun t => rieszCenterSlope A anchor *
          (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * t) := by
      funext t
      ring
    rw [hlin, intervalIntegral.integral_const_mul, intervalIntegral.integral_mul_const,
      sourceCorrelation_linear_curvature_integral_eq_one A hA,
      sourceCorrelation_curvature_integral_eq_zero A hA]
    ring
  rw [he, mertensResidual_eq_continuous_add_riesz_work A hA,
    criticalContinuousMoment_eq_rational hA]
  unfold rieszCenterSlope
  ring

/-- The actual archimedean zero-frequency anchor specializes the exact reconstruction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantcf530fba77f3514240b68bfd0c0d54d41db6a87ca2338988037d68bda188681f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantcf530fba77f3514240b68bfd0c0d54d41db6a87ca2338988037d68bda188681f.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f34b18088dc057d23bdf4e79387c9185ac8815a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
