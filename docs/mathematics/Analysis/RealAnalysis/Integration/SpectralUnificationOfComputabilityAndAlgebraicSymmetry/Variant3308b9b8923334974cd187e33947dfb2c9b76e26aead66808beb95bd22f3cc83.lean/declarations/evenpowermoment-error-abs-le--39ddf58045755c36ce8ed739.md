# evenPowerMoment_error_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45c160c33c1f7be7de4255fea1045560def77484",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/3308b9b8923334974cd187e33947dfb2c9b76e26aead66808beb95bd22f3cc83.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05571a99-147b-42c8-e23a-63d63f9ae6e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fca2a2a6-7cf1-4d71-3d8a-79c32cf6b6c5",
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
  "slug": "evenpowermoment-error-abs-le--39ddf58045755c36ce8ed739",
  "source": {
    "blob": "45c160c33c1f7be7de4255fea1045560def77484",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 214,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3308b9b8923334974cd187e33947dfb2c9b76e26aead66808beb95bd22f3cc83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39ddf58045755c36ce8ed739fbbb63be0cd13c6d70ac95c241db9cfe4e1cfedc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3308b9b8923334974cd187e33947dfb2c9b76e26aead66808beb95bd22f3cc83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fca2a2a6-7cf1-4d71-3d8a-79c32cf6b6c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–236.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3308b9b8923334974cd187e33947dfb2c9b76e26aead66808beb95bd22f3cc83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3308b9b8923334974cd187e33947dfb2c9b76e26aead66808beb95bd22f3cc83.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45c160c33c1f7be7de4255fea1045560def77484` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
