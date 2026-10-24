# criticalPrimeError_eq_chebyshev_log_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d61732b2bb4d726b577b0033a97aac4ceefab316",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12b4da16fc42407370a08f675340ca67eeea74027e0edfd1cffa1b028a0d7906.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed8c4739-192c-09ee-85f7-35adafb766d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a60f71b7-d495-035a-478e-e58d0157a762",
  "kind": "theorem",
  "lexical_name": "criticalPrimeError_eq_chebyshev_log_boundary",
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
  "slug": "criticalprimeerror-eq-chebyshev-log-boundary--4e1d68c5333b06276a593f35",
  "source": {
    "blob": "d61732b2bb4d726b577b0033a97aac4ceefab316",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 113,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant12b4da16fc42407370a08f675340ca67eeea74027e0edfd1cffa1b028a0d7906.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e1d68c5333b06276a593f353dea682f14dfb9edc18ebb05be60385884d2f15f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant12b4da16fc42407370a08f675340ca67eeea74027e0edfd1cffa1b028a0d7906.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a60f71b7-d495-035a-478e-e58d0157a762`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalPrimeError_eq_chebyshev_log_boundary (A : ℝ) (hA : 1 ≤ A) :
    normalizedCriticalPrimeError A =
      chebyshevError (Real.exp (2*A)) * criticalWeight A (Real.exp (2*A)) +
      2 * criticalWeight A 2 -
      ∫ t in lowerEndpoint..2*A, chebyshevError (Real.exp t) * criticalLogDerivative A t := by
  have hC := sourceCorrelation_contDiff A (by linarith : 0 < A)
  have h := source_signed_pairing_ibp explicitSecondDerivative A hA hC
  have hpair : signedPairing explicitSecondDerivative A =
      ∫ t in lowerEndpoint..2*A, chebyshevError (Real.exp t) * criticalLogDerivative A t := by
    unfold signedPairing errorProfile
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only
    rw [sourceWeight_eq_criticalLogDerivative A t (by linarith)]
  have hsum : (∑ n ∈ primePowerInventory (2*A), ArithmeticFunction.vonMangoldt n *
      exponentialTest (sourceCorrelation explicitSecondDerivative A) (Real.log n)) =
      closedPrimeMoment A := rfl
  have hsmooth : (∫ t in lowerEndpoint..2*A, Real.exp t *
      exponentialTest (sourceCorrelation explicitSecondDerivative A) t) = smoothMoment A := by
    unfold smoothMoment
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only [exponentialTest]
    rw [← mul_assoc, ← Real.exp_add, show t + -t/2 = t/2 by ring]
  have hlow : exponentialTest (sourceCorrelation explicitSecondDerivative A) lowerEndpoint =
      criticalWeight A 2 := by
    rw [← criticalWeight_exp A lowerEndpoint (by linarith), lowerEndpoint,
      Real.exp_log (by norm_num : (0 : ℝ) < 2)]
  rw [hpair, hsum, hsmooth, hlow, ← criticalWeight_exp A (2*A) (by linarith)] at h
  have herr : normalizedCriticalPrimeError A = closedPrimeMoment A - smoothMoment A := by
    rw [← primeSmoothDefect_eq_normalizedCriticalPrimeError A hA]
    rfl
  linarith

/-- Exact Chebyshev partial summation in multiplicative coordinates, with both endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant12b4da16fc42407370a08f675340ca67eeea74027e0edfd1cffa1b028a0d7906.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant12b4da16fc42407370a08f675340ca67eeea74027e0edfd1cffa1b028a0d7906.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d61732b2bb4d726b577b0033a97aac4ceefab316` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
