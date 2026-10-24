# pairing_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fbd71c5-288f-0c9f-a3cd-ed296a8df605",
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
  "slug": "pairing-integral--a7a0dcf97bf9bd17af6bfa41",
  "source": {
    "blob": "eaf4a6254492113524d0d5d72b916dd3dae14288",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 61,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerBandGram/Variant7ebb766428bc3455365316e2e7378242ccc4dd0f9077609505b252a3c4250f61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7a0dcf97bf9bd17af6bfa41813e594efbe3ea894ea0eddea11b90f897ade8f5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualEulerBandGram/Variant7ebb766428bc3455365316e2e7378242ccc4dd0f9077609505b252a3c4250f61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fbd71c5-288f-0c9f-a3cd-ed296a8df605`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–87.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualEulerBandGram/Variant7ebb766428bc3455365316e2e7378242ccc4dd0f9077609505b252a3c4250f61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerBandGram/Variant7ebb766428bc3455365316e2e7378242ccc4dd0f9077609505b252a3c4250f61.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eaf4a6254492113524d0d5d72b916dd3dae14288` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
