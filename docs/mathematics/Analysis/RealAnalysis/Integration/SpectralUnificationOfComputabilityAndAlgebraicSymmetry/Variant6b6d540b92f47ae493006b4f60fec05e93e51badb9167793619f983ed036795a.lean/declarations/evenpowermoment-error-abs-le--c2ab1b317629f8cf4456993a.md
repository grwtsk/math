# evenPowerMoment_error_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2c9c224-9e3c-dcc0-dd51-eaaaac02f242",
  "kind": "theorem",
  "lexical_name": "evenPowerMoment_error_abs_le",
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
  "slug": "evenpowermoment-error-abs-le--c2ab1b317629f8cf4456993a",
  "source": {
    "blob": "e9ada83120e0e176b5cfe481f0203ed18ab8c4e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 222,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6b6d540b92f47ae493006b4f60fec05e93e51badb9167793619f983ed036795a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2ab1b317629f8cf4456993aede102c9899e35edb8c1fdd8e5ea989ebcac08b6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6b6d540b92f47ae493006b4f60fec05e93e51badb9167793619f983ed036795a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2c9c224-9e3c-dcc0-dd51-eaaaac02f242`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evenPowerMoment_error_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |∫ t in (0 : ℝ)..(2 * A), mangoldtLogError (Real.exp (t / 2)) *
        deriv (sourceCorrelation explicitSecondDerivative A) t| ≤ 10 * (Real.log 4 + 4) := by
  have hA0 : 0 < A := by linarith
  have hlen : 0 ≤ 2 * A := by positivity
  have hK : 0 ≤ Real.log 4 + 4 := by positivity
  have hb := intervalIntegral.norm_integral_le_of_norm_le_const
    (a := (0 : ℝ)) (b := 2 * A) (C := (Real.log 4 + 4) * (5 / A))
    (f := fun t ↦ mangoldtLogError (Real.exp (t / 2)) *
      deriv (sourceCorrelation explicitSecondDerivative A) t) (fun t ht ↦ ?_)
  · simp only [Real.norm_eq_abs, sub_zero, abs_of_nonneg hlen] at hb
    have he : (Real.log 4 + 4) * (5 / A) * (2 * A) = 10 * (Real.log 4 + 4) := by
      field_simp
      ring
    simpa only [he] using hb
  · rw [uIoc_of_le hlen] at ht
    rw [Real.norm_eq_abs, abs_mul]
    exact mul_le_mul
      (mangoldtLogError_abs_le _ (Real.one_le_exp (by linarith [ht.1] : 0 ≤ t / 2)))
      (EstimateActualSourceKernelBound.sourceCorrelation_deriv_abs_le A t hA)
      (abs_nonneg _) hK

/-- The half-integral main term has a genuinely uniform arithmetic error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6b6d540b92f47ae493006b4f60fec05e93e51badb9167793619f983ed036795a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6b6d540b92f47ae493006b4f60fec05e93e51badb9167793619f983ed036795a.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9ada83120e0e176b5cfe481f0203ed18ab8c4e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
