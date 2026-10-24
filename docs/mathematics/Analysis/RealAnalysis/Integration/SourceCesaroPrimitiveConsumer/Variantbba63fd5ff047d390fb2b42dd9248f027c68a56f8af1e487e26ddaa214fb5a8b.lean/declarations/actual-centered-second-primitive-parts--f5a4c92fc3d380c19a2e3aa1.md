# actual_centered_second_primitive_parts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0893f3c2-3d86-f95d-f74a-cd05c2d38906",
  "kind": "theorem",
  "lexical_name": "actual_centered_second_primitive_parts",
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
  "slug": "actual-centered-second-primitive-parts--f5a4c92fc3d380c19a2e3aa1",
  "source": {
    "blob": "f4a51f5566dcb28ef527e5cc3422303d23ebf555",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 77,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCesaroPrimitiveConsumer/Variantbba63fd5ff047d390fb2b42dd9248f027c68a56f8af1e487e26ddaa214fb5a8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5a4c92fc3d380c19a2e3aa149e2992d294c4a4804965363371803ccd62dd8f5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCesaroPrimitiveConsumer/Variantbba63fd5ff047d390fb2b42dd9248f027c68a56f8af1e487e26ddaa214fb5a8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0893f3c2-3d86-f95d-f74a-cd05c2d38906`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_centered_second_primitive_parts (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in Real.log 2..2 * A, primitiveDensity t * cesaroWeight A t) =
      ∫ t in Real.log 2..2 * A,
        actualCesaroPrimitive t * deriv (deriv (cesaroWeight A)) t := by
  have hp : 0 < A := by linarith
  have hF := centeredCriticalPrimitive_absolutelyContinuous A hA
  have hG := actualCesaroPrimitive_absolutelyContinuous A hA
  have hk1 : ContDiff ℝ 1 (cesaroWeight A) := by
    exact criticalKernel_contDiff A hp
  have hk2 : ContDiff ℝ 1 (deriv (cesaroWeight A)) := by
    apply contDiff_one_iff_deriv.mpr
    constructor
    · intro t
      have he : deriv (cesaroWeight A) = fun u =>
          deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u +
            deriv (sourceCorrelation explicitSecondDerivative A) u / 2 :=
        funext fun u => (cesaroWeight_hasDerivAt A u hp).deriv
      rw [he]
      exact ((actual_correlation_third_derivative A hp t).add
        (((sourceCorrelation_deriv_contDiff hp).differentiable
          (by norm_num) t).hasDerivAt.div_const 2)).differentiableAt
    · exact cesaroWeight_second_deriv_continuous A hp
  have hup : cesaroWeight A (2 * A) = 0 := by
    have ht := actual_correlation_three_upper_traces A hp
    simp only [cesaroWeight, ht.1, sourceCorrelation_upper_endpoint A hp, zero_div, add_zero]
  have hup1 : deriv (cesaroWeight A) (2 * A) = 0 := by
    rw [(cesaroWeight_hasDerivAt A (2 * A) hp).deriv]
    have ht := actual_correlation_three_upper_traces A hp
    simp only [ht.1, ht.2.1, zero_div, add_zero]
  have hparts1 := hF.integral_mul_deriv_eq_deriv_mul
    hk1.contDiffOn.absolutelyContinuousOnInterval
  rw [centeredCriticalPrimitive_at_first_atom, hup] at hparts1
  simp only [mul_zero, zero_mul, sub_self, zero_sub] at hparts1
  have hderF : (∫ t in Real.log 2..2 * A,
      deriv centeredCriticalPrimitive t * cesaroWeight A t) =
      ∫ t in Real.log 2..2 * A, primitiveDensity t * cesaroWeight A t := by
    apply intervalIntegral.integral_congr_ae
    filter_upwards [criticalPrimitive_ae_hasDerivAt (2 * A) (by linarith)] with t ht hm
    have hd := (ht (first_atom_interval_subset A hA (uIoc_subset_uIcc hm))).sub_const
      (criticalPrimitive (Real.log 2))
    rw [show deriv centeredCriticalPrimitive t = primitiveDensity t from hd.deriv]
  rw [hderF] at hparts1
  have hparts2 := hG.integral_mul_deriv_eq_deriv_mul
    hk2.contDiffOn.absolutelyContinuousOnInterval
  rw [actualCesaroPrimitive_at_first_atom, hup1] at hparts2
  simp only [mul_zero, zero_mul, sub_self, zero_sub] at hparts2
  have hderG : (∫ t in Real.log 2..2 * A,
      deriv actualCesaroPrimitive t * deriv (cesaroWeight A) t) =
      ∫ t in Real.log 2..2 * A,
        centeredCriticalPrimitive t * deriv (cesaroWeight A) t := by
    have hi : IntervalIntegrable centeredCriticalPrimitive volume (Real.log 2) (2 * A) :=
      hF.continuousOn.intervalIntegrable
    apply intervalIntegral.integral_congr_ae
    filter_upwards [hi.ae_hasDerivAt_integral] with t ht hm
    rw [show deriv actualCesaroPrimitive t = centeredCriticalPrimitive t from
      (ht (uIoc_subset_uIcc hm) (Real.log 2) (by simp)).deriv]
  rw [hderG] at hparts2
  linarith

/-- Exact original remaining work, retaining its nonzero gamma boundary at the first atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCesaroPrimitiveConsumer/Variantbba63fd5ff047d390fb2b42dd9248f027c68a56f8af1e487e26ddaa214fb5a8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCesaroPrimitiveConsumer/Variantbba63fd5ff047d390fb2b42dd9248f027c68a56f8af1e487e26ddaa214fb5a8b.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4a51f5566dcb28ef527e5cc3422303d23ebf555` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
