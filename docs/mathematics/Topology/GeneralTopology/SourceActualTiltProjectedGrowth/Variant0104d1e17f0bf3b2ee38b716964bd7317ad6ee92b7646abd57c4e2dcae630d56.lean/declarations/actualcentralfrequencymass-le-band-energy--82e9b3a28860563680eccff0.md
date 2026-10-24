# actualCentralFrequencyMass_le_band_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eda77f65-5c61-dd1d-fcd9-3d31a7748d8d",
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
  "slug": "actualcentralfrequencymass-le-band-energy--82e9b3a28860563680eccff0",
  "source": {
    "blob": "125c391b12486ccb1f098e66a0857e73a1c6854e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 105,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variant0104d1e17f0bf3b2ee38b716964bd7317ad6ee92b7646abd57c4e2dcae630d56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82e9b3a28860563680eccff05b211acb64ec8e83bf46654be69fc49445e89e9d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variant0104d1e17f0bf3b2ee38b716964bd7317ad6ee92b7646abd57c4e2dcae630d56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eda77f65-5c61-dd1d-fcd9-3d31a7748d8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–139.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variant0104d1e17f0bf3b2ee38b716964bd7317ad6ee92b7646abd57c4e2dcae630d56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variant0104d1e17f0bf3b2ee38b716964bd7317ad6ee92b7646abd57c4e2dcae630d56.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `125c391b12486ccb1f098e66a0857e73a1c6854e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
