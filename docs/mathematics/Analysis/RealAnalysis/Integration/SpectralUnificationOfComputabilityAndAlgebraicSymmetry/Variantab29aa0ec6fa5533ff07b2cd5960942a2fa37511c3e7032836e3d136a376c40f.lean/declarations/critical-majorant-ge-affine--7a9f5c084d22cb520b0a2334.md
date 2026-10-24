# critical_majorant_ge_affine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a1174cc-5194-fdcf-cd39-d1f08a63ae43",
  "kind": "theorem",
  "lexical_name": "critical_majorant_ge_affine",
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
  "slug": "critical-majorant-ge-affine--7a9f5c084d22cb520b0a2334",
  "source": {
    "blob": "ac3ebcbd6d07d141efda5640a548e36da141bdd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 103,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantab29aa0ec6fa5533ff07b2cd5960942a2fa37511c3e7032836e3d136a376c40f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a9f5c084d22cb520b0a23347ba7a5de2d2e03f2a5e101adc4dc8dce158aa32c",
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

Occurrence: `result:5a1174cc-5194-fdcf-cd39-d1f08a63ae43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem critical_majorant_ge_affine (A : ℝ) (hA : 8000 ≤ A) :
    A / 16000 - 1 ≤
      ∫ t in lowerEndpoint..2 * A, powerErrorMajorant A (1/2) (fun _ ↦ 1) t := by
  have hA0 : 0 < A := by linarith
  have hA1 : 1 ≤ A := by linarith
  have ha : lowerEndpoint/A ≤ 2 :=
    (div_le_iff₀ hA0).2 (by linarith [source_interval_order A hA1])
  rw [critical_majorant_eq_absolute_signed_integral A hA0]
  have hn := intervalIntegral.abs_integral_le_integral_abs (μ := volume)
    (f := fun y ↦ deriv (unitCorrelation A) y - (A/2) * unitCorrelation A y) ha
  have hm := (neg_le_abs (∫ y in lowerEndpoint/A..2,
      (deriv (unitCorrelation A) y - (A/2) * unitCorrelation A y))).trans hn
  rw [critical_majorant_signed_integral_eq A hA0] at hm
  have ht := unitCorrelation_truncated_mass_ge A hA
  have hs : A / 16000 ≤ (A/2) * ∫ y in lowerEndpoint/A..2, unitCorrelation A y := by
    calc
      A / 16000 = (A/2) * (1/8000) := by ring
      _ ≤ _ := mul_le_mul_of_nonneg_left ht (by positivity)
  have hb := (abs_le.mp (unitCorrelation_abs_le_one A (lowerEndpoint/A) hA1)).1
  linarith

/-- Explicit constants, independent of the real source radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantab29aa0ec6fa5533ff07b2cd5960942a2fa37511c3e7032836e3d136a376c40f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantab29aa0ec6fa5533ff07b2cd5960942a2fa37511c3e7032836e3d136a376c40f.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac3ebcbd6d07d141efda5640a548e36da141bdd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
