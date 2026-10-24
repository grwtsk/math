# criticalPrimeError_eq_chebyshev_log_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65095971-57c8-a93e-95e5-06294eb0964a",
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
  "slug": "criticalprimeerror-eq-chebyshev-log-boundary--51bd874db575ede47a28fc0b",
  "source": {
    "blob": "45348fe9b2d6106809e2d7eb0e595f9bfaedc762",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 121,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant7252947447cb854fc3e1efa44319858041e1b49335a0fb807272e79cefb3d40e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51bd874db575ede47a28fc0b9032e97a3f7165c9df9221a0741b4f8efc5009db",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant7252947447cb854fc3e1efa44319858041e1b49335a0fb807272e79cefb3d40e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65095971-57c8-a93e-95e5-06294eb0964a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–155.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant7252947447cb854fc3e1efa44319858041e1b49335a0fb807272e79cefb3d40e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant7252947447cb854fc3e1efa44319858041e1b49335a0fb807272e79cefb3d40e.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45348fe9b2d6106809e2d7eb0e595f9bfaedc762` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
