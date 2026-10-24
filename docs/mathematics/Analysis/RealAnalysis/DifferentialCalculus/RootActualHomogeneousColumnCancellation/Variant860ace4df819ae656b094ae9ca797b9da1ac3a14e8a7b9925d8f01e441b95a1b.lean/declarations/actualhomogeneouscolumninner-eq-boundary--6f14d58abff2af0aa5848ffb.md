# actualHomogeneousColumnInner_eq_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c18996e8-2439-84b8-a601-ef4de67e270c",
  "kind": "theorem",
  "lexical_name": "actualHomogeneousColumnInner_eq_boundary",
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
  "slug": "actualhomogeneouscolumninner-eq-boundary--6f14d58abff2af0aa5848ffb",
  "source": {
    "blob": "9644c4cd8c9fd76474d8c7b8dd2ddf9a515175a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 61,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualHomogeneousColumnCancellation/Variant860ace4df819ae656b094ae9ca797b9da1ac3a14e8a7b9925d8f01e441b95a1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f14d58abff2af0aa5848ffbdccfb5655b20d39fc53fcd302abb18a10641129f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualHomogeneousColumnCancellation/Variant860ace4df819ae656b094ae9ca797b9da1ac3a14e8a7b9925d8f01e441b95a1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c18996e8-2439-84b8-a601-ef4de67e270c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualHomogeneousColumnInner_eq_boundary {A : ℝ} (hA : 0 < A)
    (t a c : ℝ) :
    (∫ s in a..c, Real.exp (s / 2) *
      covariantMixedDerivative (actualLogMixedDensity A) t s) =
        Real.exp (c / 2) * actualTwistedTimeDensity A t c -
          Real.exp (a / 2) * actualTwistedTimeDensity A t a := by
  let F : ℝ → ℝ := fun s => Real.exp (t / 2) *
    (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) (t + s) -
      iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + s) / 4)
  have he (s : ℝ) : Real.exp (s / 2) * Real.exp (-s / 2) = 1 := by
    rw [← Real.exp_add, show s / 2 + -s / 2 = 0 by ring, Real.exp_zero]
  have hd (s : ℝ) : HasDerivAt F
      (Real.exp (s / 2) * covariantMixedDerivative (actualLogMixedDensity A) t s) s := by
    have h3 := (jet_hasDerivAt hA 3 (by norm_num) (t + s)).comp s
      ((hasDerivAt_id s).const_add t)
    have h1 := (jet_hasDerivAt hA 1 (by norm_num) (t + s)).comp s
      ((hasDerivAt_id s).const_add t)
    convert (h3.sub (h1.div_const 4)).const_mul (Real.exp (t / 2)) using 1 <;> try rfl
    rw [actual_covariant_ordinary_work_kernel A hA t s]
    calc
      _ = Real.exp (t / 2) * (Real.exp (s / 2) * Real.exp (-s / 2)) *
          (iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A) (t + s) -
            iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + s) / 4) := by
        ring
      _ = _ := by rw [he]; ring
  have h2 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 2
    (by norm_num)
  have h4 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 4
    (by norm_num)
  have hc : Continuous (fun s => Real.exp (s / 2) *
      covariantMixedDerivative (actualLogMixedDensity A) t s) := by
    simp_rw [actual_covariant_ordinary_work_kernel A hA]
    fun_prop
  have hf (s : ℝ) : F s = Real.exp (s / 2) * actualTwistedTimeDensity A t s := by
    unfold F actualTwistedTimeDensity
    calc
      _ = Real.exp (t / 2) * 1 *
          (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) (t + s) -
            iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + s) / 4) := by
        ring
      _ = Real.exp (t / 2) * (Real.exp (s / 2) * Real.exp (-s / 2)) *
          (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) (t + s) -
            iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + s) / 4) := by
        rw [he]
      _ = _ := by ring
  simpa only [hf] using intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun s _ => hd s) (hc.intervalIntegrable a c)

/-- This independently specifies the homogeneous lower trace plus its entire interior. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualHomogeneousColumnCancellation/Variant860ace4df819ae656b094ae9ca797b9da1ac3a14e8a7b9925d8f01e441b95a1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualHomogeneousColumnCancellation/Variant860ace4df819ae656b094ae9ca797b9da1ac3a14e8a7b9925d8f01e441b95a1b.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9644c4cd8c9fd76474d8c7b8dd2ddf9a515175a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
