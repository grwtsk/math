# pairing_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61d67a2d-953d-7a88-80cd-a39af4773fff",
  "kind": "theorem",
  "lexical_name": "pairing_integral",
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
  "slug": "pairing-integral--b5b6528da3b0bb342ffb74c9",
  "source": {
    "blob": "40ccc358923369a8bc6204bc6fc7281767350ac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 69,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerBandGram/Variante608388167137a72f2c012dee8c00bf33d1ad3977dea8143e89e75c75de29206.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5b6528da3b0bb342ffb74c976328339a9cbefc8738588a9dc60f0772c2a8da8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualEulerBandGram/Variante608388167137a72f2c012dee8c00bf33d1ad3977dea8143e89e75c75de29206.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61d67a2d-953d-7a88-80cd-a39af4773fff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem pairing_integral {A : ℝ} (hA : 1 ≤ A) (T u : ℝ) :
    ⟪actualTiltBandState A T, translation u (reflection (actualTiltBandState A T))⟫_ℂ =
      ∫ ξ in actualStandardBand T,
        translationPhase u ξ * actualTiltStandardSpectrum A (-ξ) ^ 2 := by
  rw [← (Lp.fourierTransformₗᵢ ℝ ℂ).inner_map_map
    (actualTiltBandState A T) (translation u (reflection (actualTiltBandState A T)))]
  change ⟪(𝓕 (actualTiltBandState A T) : ComplexL2),
    (𝓕 (translation u (reflection (actualTiltBandState A T))) : ComplexL2)⟫_ℂ = _
  rw [fourier_translation, fourier_reflection, actualTiltBandState_fourier_eq, L2.inner_def,
    ← integral_indicator (show MeasurableSet (actualStandardBand T) from measurableSet_Icc)]
  apply integral_congr_ae
  filter_upwards [actualTiltBandSpectrum_coe_ae hA T,
    (LinearIsometryEquiv.neg ℝ (E := ℝ)).measurePreserving.quasiMeasurePreserving.ae
      (actualTiltBandSpectrum_coe_ae hA T),
    translationPhaseMultiplier_coe_ae u (reflection (actualTiltBandSpectrum A T)),
    reflection_coe_ae (actualTiltBandSpectrum A T)] with ξ hcut hcutneg hphase hreflect
  change actualTiltBandSpectrum A T (-ξ) =
    (actualStandardBand T).indicator (actualTiltStandardSpectrum A) (-ξ) at hcutneg
  rw [hcut, hphase, hreflect, hcutneg]
  by_cases hξ : ξ ∈ actualStandardBand T
  · have hn := (band_neg_mem T ξ).mpr hξ
    simp only [indicator_of_mem hξ, indicator_of_mem hn, RCLike.inner_apply']
    rw [← spectrum_neg A ξ]
    ring
  · simp only [indicator_of_notMem hξ, inner_zero_left]

/-- The actual reflected band atom has the exact angular Mellin phase and 2 pi factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualEulerBandGram/Variante608388167137a72f2c012dee8c00bf33d1ad3977dea8143e89e75c75de29206.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerBandGram/Variante608388167137a72f2c012dee8c00bf33d1ad3977dea8143e89e75c75de29206.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40ccc358923369a8bc6204bc6fc7281767350ac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
