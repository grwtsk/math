# actual_differential_moments_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ea30180-94ae-3b6e-a30a-45139b046a69",
  "kind": "theorem",
  "lexical_name": "actual_differential_moments_zero",
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
  "slug": "actual-differential-moments-zero--330f9d614b45a78fc2399db1",
  "source": {
    "blob": "0555bde7a08a8c69773fd92e064ccaa17befc691",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 29,
    "path": "GRWTSK/Analysis/Convolution/CompactProfileDifferentialMoments.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:330f9d614b45a78fc2399db1e2a6a650e7e092a7b407d1ec62229b67eaf0a65f",
  "verification": {
    "reference": "docs/verification/Analysis/Convolution/CompactProfileDifferentialMoments.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ea30180-94ae-3b6e-a30a-45139b046a69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_differential_moments_zero {A : ℝ} (hA : 1 ≤ A) :
    Integrable (fun x : ℝ ↦ Real.exp ((1 / 2 : ℝ) * x) *
      (deriv (deriv (correlation A)) x - (1 / 2 : ℝ) * deriv (correlation A) x)) ∧
    Integrable (fun x : ℝ ↦ x * Real.exp ((1 / 2 : ℝ) * x) *
      (deriv (deriv (correlation A)) x - (1 / 2 : ℝ) * deriv (correlation A) x)) ∧
    (∫ x : ℝ, Real.exp ((1 / 2 : ℝ) * x) *
      (deriv (deriv (correlation A)) x - (1 / 2 : ℝ) * deriv (correlation A) x)) = 0 ∧
    (∫ x : ℝ, x * Real.exp ((1 / 2 : ℝ) * x) *
      (deriv (deriv (correlation A)) x - (1 / 2 : ℝ) * deriv (correlation A) x)) = 0 := by
  have positive : 0 < A := by linarith
  have zero : (∫ x : ℝ, Real.exp ((1 / 2 : ℝ) * x) * correlation A x) = 0 := by
    rw [correlation_eq_native positive]
    exact CorrelationMoment.full_correlation_moment_zero A hA
  have firstZero : (∫ x : ℝ, x * Real.exp ((1 / 2 : ℝ) * x) * correlation A x) = 0 :=
    CompactProfileFirstPoleMoment.first_pole_correlation_integral_zero positive (by norm_num)
  exact GRWTSK.Analysis.Integration.CompactWeightedDerivativeMoments.differential_moments_zero
    (correlation_contDiff_two positive) (correlation_hasCompactSupport positive)
    (1 / 2) (1 / 2) zero firstZero

end

end GRWTSK.Analysis.Convolution.CompactProfileDifferentialMoments
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Convolution/CompactProfileDifferentialMoments.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Convolution/CompactProfileDifferentialMoments.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0555bde7a08a8c69773fd92e064ccaa17befc691` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
