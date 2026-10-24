# critical_majorant_eq_absolute_signed_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e691c9fb-99d2-a4ca-e4c7-0dcf8d0f0e78",
  "kind": "theorem",
  "lexical_name": "critical_majorant_eq_absolute_signed_integral",
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
  "slug": "critical-majorant-eq-absolute-signed-integral--cdfbb86c7f9e60dbc63beb23",
  "source": {
    "blob": "ac3ebcbd6d07d141efda5640a548e36da141bdd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 33,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantab29aa0ec6fa5533ff07b2cd5960942a2fa37511c3e7032836e3d136a376c40f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdfbb86c7f9e60dbc63beb235a490ac58d24c307e012a00fe6575a5c9b190584",
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

Occurrence: `result:e691c9fb-99d2-a4ca-e4c7-0dcf8d0f0e78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem critical_majorant_eq_absolute_signed_integral (A : ℝ) (hA : 0 < A) :
    (∫ t in lowerEndpoint..2 * A, powerErrorMajorant A (1/2) (fun _ ↦ 1) t) =
      ∫ y in lowerEndpoint / A..2,
        |deriv (unitCorrelation A) y - (A/2) * unitCorrelation A y| := by
  rw [critical_power_majorant_eq_unit_scale A (fun _ ↦ 1) hA]
  simp only [one_mul]
  rw [← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_congr
  intro y _
  dsimp only
  calc
    _ = |A| * |deriv (unitCorrelation A) y / A - unitCorrelation A y / 2| := by
      rw [abs_of_pos hA]
    _ = |A * (deriv (unitCorrelation A) y / A - unitCorrelation A y / 2)| :=
      (abs_mul _ _).symm
    _ = _ := by
      congr 1
      field_simp [hA.ne']

/-- Trimming the original lower source endpoint costs at most its exact interval length. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantab29aa0ec6fa5533ff07b2cd5960942a2fa37511c3e7032836e3d136a376c40f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantab29aa0ec6fa5533ff07b2cd5960942a2fa37511c3e7032836e3d136a376c40f.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac3ebcbd6d07d141efda5640a548e36da141bdd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
