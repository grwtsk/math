# derivativeProfile_first_exponential_moment_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa8fbdf0-4eda-b648-b04f-d18e74e94991",
  "kind": "theorem",
  "lexical_name": "derivativeProfile_first_exponential_moment_zero",
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
  "slug": "derivativeprofile-first-exponential-moment-zero--d026d11ec87b50db9a3b2706",
  "source": {
    "blob": "1d128e14ef5f0066e7ba5687f40b0215c225a292",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 544,
    "line": 457,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variantec906075c3ac2f5fb143cfec0efe89733a3e1ce1adad763e9fa7c3f3654cd9dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d026d11ec87b50db9a3b270655e11fd19217953def108981e4d7230e69b698b6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variantec906075c3ac2f5fb143cfec0efe89733a3e1ce1adad763e9fa7c3f3654cd9dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa8fbdf0-4eda-b648-b04f-d18e74e94991`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–544.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivativeProfile_first_exponential_moment_zero
    (A : ℝ) (hA : 1 ≤ A) :
    (∫ t,
      t * Real.exp (t / 2) *
        derivativeProfile A t) = 0 := by
  have hK0 :
      (∫ t, deriv (firstWeightedCorrelation A) t) = 0 :=
    integral_eq_zero_of_hasDerivAt_of_integrable
      (fun t =>
        ((firstWeightedCorrelation_contDiff A hA)
          .differentiable (by norm_num) t).hasDerivAt)
      (firstWeightedCorrelation_deriv_integrable A hA)
      (firstWeightedCorrelation_integrable A hA)
  have hH0 :=
    CorrelationMoment.full_correlation_moment_zero A hA
  have hHC0 :=
    sourceCorrelation_first_exponential_moment_zero A hA
  have htdH :
      (∫ t, t * deriv (weightedCorrelation A) t) = 0 := by
    have hti :
        Integrable
          (fun t =>
            t * deriv (weightedCorrelation A) t) := by
      have hc :
          Continuous
            (fun t =>
              t * deriv (weightedCorrelation A) t) := by
        exact continuous_id.mul
          ((weightedCorrelation_contDiff A hA)
            .continuous_deriv (by norm_num))
      exact hc.integrable_of_hasCompactSupport
        (weightedCorrelation_hasCompactSupport A hA).deriv.mul_left
    rw [show
      (fun t =>
        deriv (firstWeightedCorrelation A) t) =
        fun t =>
          weightedCorrelation A t +
            t * deriv (weightedCorrelation A) t by
      funext t
      exact firstWeightedCorrelation_deriv A t hA]
      at hK0
    rw [integral_add
      (weightedCorrelation_integrable A hA) hti] at hK0
    have hscale (t : ℝ) :
        (1 / 2 : ℝ) * t = t / 2 := by ring
    have hw0 :
        (∫ t, weightedCorrelation A t) = 0 := by
      simpa only [weightedCorrelation, hscale] using hH0
    linarith
  have hprofile :
      (fun t =>
        t * Real.exp (t / 2) *
          derivativeProfile A t) =
        fun t =>
          t * deriv (weightedCorrelation A) t -
            t * weightedCorrelation A t := by
    funext t
    rw [weightedCorrelation_deriv A t hA]
    unfold weightedCorrelation derivativeProfile
    ring
  rw [hprofile]
  have hi1 :
      Integrable
        (fun t =>
          t * deriv (weightedCorrelation A) t) := by
    have hc :
        Continuous
          (fun t =>
            t * deriv (weightedCorrelation A) t) := by
      exact continuous_id.mul
        ((weightedCorrelation_contDiff A hA)
          .continuous_deriv (by norm_num))
    exact hc.integrable_of_hasCompactSupport
      (weightedCorrelation_hasCompactSupport A hA).deriv.mul_left
  have hi2 :
      Integrable
        (fun t =>
          t * weightedCorrelation A t) := by
    simpa [firstWeightedCorrelation] using
      firstWeightedCorrelation_integrable A hA
  rw [integral_sub hi1 hi2, htdH]
  have hscale (t : ℝ) :
      (1 / 2 : ℝ) * t = t / 2 := by ring
  have hw1 :
      (∫ t, t * weightedCorrelation A t) = 0 := by
    simpa only [weightedCorrelation, hscale, mul_assoc] using hHC0
  rw [hw1, sub_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variantec906075c3ac2f5fb143cfec0efe89733a3e1ce1adad763e9fa7c3f3654cd9dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variantec906075c3ac2f5fb143cfec0efe89733a3e1ce1adad763e9fa7c3f3654cd9dd.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d128e14ef5f0066e7ba5687f40b0215c225a292` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
