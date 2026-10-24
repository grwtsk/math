# unitCorrelation_truncated_mass_ge_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41ed51a5-8ed3-7848-86fa-12a02bbaf60c",
  "kind": "theorem",
  "lexical_name": "unitCorrelation_truncated_mass_ge_sub",
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
  "slug": "unitcorrelation-truncated-mass-ge-sub--42852dc80f7e44dce285caca",
  "source": {
    "blob": "ac3ebcbd6d07d141efda5640a548e36da141bdd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 53,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantab29aa0ec6fa5533ff07b2cd5960942a2fa37511c3e7032836e3d136a376c40f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42852dc80f7e44dce285caca6728a30184a85c06cb1f08384970dc6983d9ff0c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantab29aa0ec6fa5533ff07b2cd5960942a2fa37511c3e7032836e3d136a376c40f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41ed51a5-8ed3-7848-86fa-12a02bbaf60c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitCorrelation_truncated_mass_ge_sub (A : ℝ) (hA : 1 ≤ A) :
    (1 / 4000 : ℝ) - lowerEndpoint / A ≤
      ∫ y in lowerEndpoint / A..2, unitCorrelation A y := by
  have hA0 : 0 < A := by linarith
  have hc := (unitCorrelation_contDiff A hA0).continuous
  have ha : 0 ≤ lowerEndpoint / A := by
    unfold lowerEndpoint
    exact div_nonneg (Real.log_nonneg (by norm_num)) hA0.le
  have hs := intervalIntegral.integral_add_adjacent_intervals (μ := volume)
    (hc.intervalIntegrable 0 (lowerEndpoint/A))
    (hc.intervalIntegrable (lowerEndpoint/A) 2)
  have hu : (∫ y in (0 : ℝ)..lowerEndpoint/A, unitCorrelation A y) ≤ lowerEndpoint/A := by
    have h := intervalIntegral.integral_mono_on (μ := volume) ha
      (hc.intervalIntegrable 0 (lowerEndpoint/A))
      (continuous_const.intervalIntegrable 0 (lowerEndpoint/A))
      (fun y _ ↦ (abs_le.mp (unitCorrelation_abs_le_one A y hA)).2)
    simpa only [intervalIntegral.integral_const, sub_zero, smul_eq_mul, mul_one] using h
  linarith [unitCorrelation_half_mass_ge A hA]

/-- A fixed tail threshold gives a fixed positive mass on the actual trimmed interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantab29aa0ec6fa5533ff07b2cd5960942a2fa37511c3e7032836e3d136a376c40f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantab29aa0ec6fa5533ff07b2cd5960942a2fa37511c3e7032836e3d136a376c40f.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac3ebcbd6d07d141efda5640a548e36da141bdd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
