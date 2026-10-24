# abs_logSampling_integral_Ioi_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1f19827-edb1-d7c2-679c-9501b525fc9c",
  "kind": "theorem",
  "lexical_name": "abs_logSampling_integral_Ioi_le",
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
  "slug": "abs-logsampling-integral-ioi-le--e9c578186d3ee67d2413b359",
  "source": {
    "blob": "47254b066532e3813be15b87e1c016d94e0bb0d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 382,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantdb0d99a1df1a15daab31311f2e50f4b8347affa4077725ecaf1723218bfefd3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9c578186d3ee67d2413b359cbf95e443e23f7aea5e31a7e7b05fe8d7335671e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantdb0d99a1df1a15daab31311f2e50f4b8347affa4077725ecaf1723218bfefd3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1f19827-edb1-d7c2-679c-9501b525fc9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_logSampling_integral_Ioi_le
    {F : ℝ → ℝ}
    (hMom : TwoMomentProfile F)
    {x B0 B1 : ℝ}
    (hx : 0 < x)
    (hB : ProfileSupBounds F B0 B1) :
    |∫ u in Ioi (1 : ℝ),
      logSamplingTerm F x u| ≤
      Real.exp (-Real.log x / 2) *
        (4 * B0) := by
  have hbase :
      IntegrableOn
        (fun r : ℝ =>
          r * Real.exp (-r / 2))
        (Ioi (0 : ℝ)) :=
    .of_integral_ne_zero (by
      rw [exponential_half_first_moment]
      norm_num)
  have href : IntegrableOn (reflectedMomentIntegrand F (Real.log x)) (Ioi (0 : ℝ)) :=
    (reflectedMomentIntegrand_integrable
      hMom (Real.log x)).integrableOn
  have hrefAbs :
      IntegrableOn
        (fun r =>
          |reflectedMomentIntegrand F
            (Real.log x) r|)
        (Ioi (0 : ℝ)) := by
    simpa only [IntegrableOn, Real.norm_eq_abs] using href.norm
  have hbound :
      |∫ r in Ioi (0 : ℝ),
        reflectedMomentIntegrand F
          (Real.log x) r| ≤
        4 * B0 := by
    calc
      |∫ r in Ioi (0 : ℝ),
        reflectedMomentIntegrand F
          (Real.log x) r| ≤
        ∫ r in Ioi (0 : ℝ),
          |reflectedMomentIntegrand F
            (Real.log x) r| := by
        exact abs_integral_le_integral_abs
      _ ≤
        ∫ r in Ioi (0 : ℝ),
          B0 * (r * Real.exp (-r / 2)) := by
        refine setIntegral_mono_ae_restrict hrefAbs
          (hbase.const_mul B0) ?_
        exact
          (ae_restrict_iff' measurableSet_Ioi).2
            (Eventually.of_forall fun r hr => by
              have hr0 : 0 ≤ r := le_of_lt hr
              have hE : 0 ≤ Real.exp (-r / 2) :=
                (Real.exp_pos _).le
              unfold reflectedMomentIntegrand
              dsimp only
              rw [abs_mul, abs_mul,
                abs_of_nonneg hr0,
                abs_of_nonneg hE]
              have hFle := hB.2.2.1 (Real.log x - r)
              nlinarith [mul_nonneg hr0 hE])
      _ = 4 * B0 := by
        rw [integral_const_mul,
          exponential_half_first_moment]
        ring
  rw [logSampling_integral_Ioi_eq_reflected
    hMom hx, abs_mul,
    abs_of_pos (Real.exp_pos _)]
  exact mul_le_mul_of_nonneg_left hbound
    (Real.exp_pos _).le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantdb0d99a1df1a15daab31311f2e50f4b8347affa4077725ecaf1723218bfefd3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantdb0d99a1df1a15daab31311f2e50f4b8347affa4077725ecaf1723218bfefd3e.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47254b066532e3813be15b87e1c016d94e0bb0d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
