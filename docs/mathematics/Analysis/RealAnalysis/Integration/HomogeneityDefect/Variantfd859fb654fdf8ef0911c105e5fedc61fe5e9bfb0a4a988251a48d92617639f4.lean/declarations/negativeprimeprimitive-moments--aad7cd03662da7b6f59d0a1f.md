# negativePrimePrimitive_moments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:300b2091-6920-93ab-5232-8fab9a9a6843",
  "kind": "theorem",
  "lexical_name": "negativePrimePrimitive_moments",
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
  "slug": "negativeprimeprimitive-moments--aad7cd03662da7b6f59d0a1f",
  "source": {
    "blob": "aae5930c09c365323c06ada6904c8975b6ea35f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 103,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefect/Variantfd859fb654fdf8ef0911c105e5fedc61fe5e9bfb0a4a988251a48d92617639f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aad7cd03662da7b6f59d0a1f674ca8879df66e9ea7d0fad85ecef08019954c2d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HomogeneityDefect/Variantfd859fb654fdf8ef0911c105e5fedc61fe5e9bfb0a4a988251a48d92617639f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:300b2091-6920-93ab-5232-8fab9a9a6843`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negativePrimePrimitive_moments (A : ℝ) (hA : 1 ≤ A) :
    (∫ t : ℝ, Real.exp (t / 2) * negativePrimePrimitive A t) = 0 ∧
      (∫ t : ℝ, t * Real.exp (t / 2) * negativePrimePrimitive A t) =
        -sourceRankOneCoefficient A / 2 := by
  have hiH0 : Integrable (fun t : ℝ ↦ Real.exp (t / 2) * correlationPrimitive A t) := by
    simpa only [pow_zero, one_mul] using weighted_primitive_integrable A 0 hA
  have hiH1 : Integrable (fun t : ℝ ↦ t * Real.exp (t / 2) * correlationPrimitive A t) := by
    simpa only [pow_one] using weighted_primitive_integrable A 1 hA
  have hiC0 : Integrable (fun t : ℝ ↦ Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t) := by
    simpa only [pow_zero, one_mul] using TwoMomentSampling.weighted_moment_integrable
      (sourceCorrelation explicitSecondDerivative A)
      (sourceCorrelation_contDiff A (by linarith)).continuous
      (sourceCorrelation_hasCompactSupport A (by linarith)) 0
  have hiC1 : Integrable (fun t : ℝ ↦ t * Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t) := by
    simpa only [one_div_mul_eq_div] using weighted_correlation_firstMoment_integrable A (1 / 2) hA
  constructor
  · simp only [negativePrimePrimitive, mul_sub, ← mul_div_assoc]
    rw [integral_sub (hiH0.div_const 2) hiC0, integral_div, weighted_primitive_zeroMoment A hA]
    have h := full_correlation_moment_zero A hA
    simpa only [one_div_mul_eq_div, zero_div, zero_sub, neg_eq_zero] using h
  · simp only [negativePrimePrimitive, mul_sub, ← mul_div_assoc]
    rw [integral_sub (hiH1.div_const 2) hiC1, integral_div,
      weighted_primitive_firstMoment A hA, full_correlation_firstMoment_zero A hA, sub_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HomogeneityDefect/Variantfd859fb654fdf8ef0911c105e5fedc61fe5e9bfb0a4a988251a48d92617639f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefect/Variantfd859fb654fdf8ef0911c105e5fedc61fe5e9bfb0a4a988251a48d92617639f4.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aae5930c09c365323c06ada6904c8975b6ea35f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
