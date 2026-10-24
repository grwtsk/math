# derivativeProfile_first_exponential_moment_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:007abb4c-0fbc-1e0a-6a16-e26e15629c3b",
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
  "slug": "derivativeprofile-first-exponential-moment-zero--b76b37b6ced7e2b32b425105",
  "source": {
    "blob": "92cf282bd39eb4de5ce69dea0f14d499596796e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 548,
    "line": 463,
    "path": "GRWTSK/Topology/GeneralTopology/EstimateKernelMoments/Variant46acd8031f35cae96f40fe790c608b12ae27d32a479d8e93b5671d0bc47edf1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b76b37b6ced7e2b32b425105e2fe4e6615cd1002cdb47da977062b176582ab4e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EstimateKernelMoments/Variant46acd8031f35cae96f40fe790c608b12ae27d32a479d8e93b5671d0bc47edf1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:007abb4c-0fbc-1e0a-6a16-e26e15629c3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 463–548.

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
        ((firstWeightedCorrelation_contDiff A hA).differentiable (by norm_num) t).hasDerivAt)
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
          ((weightedCorrelation_contDiff A hA).continuous_deriv (by norm_num))
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
        ((weightedCorrelation_contDiff A hA).continuous_deriv (by norm_num))
    exact hc.integrable_of_hasCompactSupport
      (weightedCorrelation_hasCompactSupport A hA).deriv.mul_left
  have hi2 :
      Integrable
        (fun t =>
          t * weightedCorrelation A t) := by
    exact firstWeightedCorrelation_integrable A hA
  rw [integral_sub hi1 hi2, htdH]
  have hscale (t : ℝ) :
      (1 / 2 : ℝ) * t = t / 2 := by ring
  have hw1 :
      (∫ t, t * weightedCorrelation A t) = 0 := by
    simpa only [weightedCorrelation, hscale, mul_assoc] using hHC0
  rw [hw1, sub_zero]

/-- The zeroth and first exponential moments vanish for both the source
correlation and its derivative profile at every radius `A ≥ 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EstimateKernelMoments/Variant46acd8031f35cae96f40fe790c608b12ae27d32a479d8e93b5671d0bc47edf1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EstimateKernelMoments/Variant46acd8031f35cae96f40fe790c608b12ae27d32a479d8e93b5671d0bc47edf1f.lean#L463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92cf282bd39eb4de5ce69dea0f14d499596796e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
