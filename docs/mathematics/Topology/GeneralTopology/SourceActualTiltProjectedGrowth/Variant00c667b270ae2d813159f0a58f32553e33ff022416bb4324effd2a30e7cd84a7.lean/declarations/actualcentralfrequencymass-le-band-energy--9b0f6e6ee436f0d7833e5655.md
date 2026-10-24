# actualCentralFrequencyMass_le_band_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:648b65f6-8010-bc59-70ad-7e4c7dc33a36",
  "kind": "theorem",
  "lexical_name": "actualCentralFrequencyMass_le_band_energy",
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
  "slug": "actualcentralfrequencymass-le-band-energy--9b0f6e6ee436f0d7833e5655",
  "source": {
    "blob": "9579f88d3852b4636c3f87f72f2233e7675778d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 97,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variant00c667b270ae2d813159f0a58f32553e33ff022416bb4324effd2a30e7cd84a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b0f6e6ee436f0d7833e565570dab88fda89d193e2dd240b9595f1e1375b5534",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variant00c667b270ae2d813159f0a58f32553e33ff022416bb4324effd2a30e7cd84a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:648b65f6-8010-bc59-70ad-7e4c7dc33a36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCentralFrequencyMass_le_band_energy {A : ℝ} (hA : 1 ≤ A) :
    actualCentralFrequencyMass A ≤ actualRightLineMass (3 / 2) *
      ‖actualTiltBandState A (actualCentralFrequencyRadius A)‖ ^ 2 := by
  have hr : 0 ≤ actualCentralFrequencyRadius A := by
    unfold actualCentralFrequencyRadius
    positivity
  have hc := spectrum_continuous hA
  have hs : Continuous (fun t : ℝ =>
      actualTiltStandardSpectrum A (-t / (2 * Real.pi))) := hc.comp (by fun_prop)
  have hd : Continuous (actualClosedFrequencyDensity A) := by
    unfold actualClosedFrequencyDensity
    simp_rw [mellin_eq_spectrum_sq hA]
    exact Complex.continuous_re.comp ((hs.pow 2).mul (polynomial_continuous A))
  have hh := intervalIntegral.integral_mono_on (μ := volume) (by linarith :
      -actualCentralFrequencyRadius A ≤ actualCentralFrequencyRadius A)
    (hd.intervalIntegrable _ _) (((hs.norm.pow 2).const_mul _).intervalIntegrable _ _)
    (fun t _ => density_upper hA t)
  have hb := mul_le_mul_of_nonneg_left hh (show 0 ≤ 1 / (2 * Real.pi) by positivity)
  unfold actualCentralFrequencyMass
  apply hb.trans_eq
  rw [intervalIntegral.integral_const_mul]
  simp only [Pi.pow_apply]
  rw [show (1 / (2 * Real.pi)) * (actualRightLineMass (3 / 2) *
      (∫ t in -actualCentralFrequencyRadius A..actualCentralFrequencyRadius A,
        ‖actualTiltStandardSpectrum A (-t / (2 * Real.pi))‖ ^ 2)) =
      actualRightLineMass (3 / 2) * ((1 / (2 * Real.pi)) *
      (∫ t in -actualCentralFrequencyRadius A..actualCentralFrequencyRadius A,
        ‖actualTiltStandardSpectrum A (-t / (2 * Real.pi))‖ ^ 2)) by ring]
  rw [spectrum_energy_angular, actualTiltBandState_norm_sq hA]
  unfold actualStandardBand
  rw [intervalIntegral.integral_of_le (by
    exact div_le_div_of_nonneg_right (by linarith) (by positivity)),
    integral_Icc_eq_integral_Ioc]

/-- Actual band energies increase with angular height, with no new source assumption. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variant00c667b270ae2d813159f0a58f32553e33ff022416bb4324effd2a30e7cd84a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variant00c667b270ae2d813159f0a58f32553e33ff022416bb4324effd2a30e7cd84a7.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9579f88d3852b4636c3f87f72f2233e7675778d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
