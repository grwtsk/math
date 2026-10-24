# actual_strictPrime_eq_closedPrimeMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd361b5a-aca9-9e19-c36d-4a7406a149a2",
  "kind": "theorem",
  "lexical_name": "actual_strictPrime_eq_closedPrimeMoment",
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
  "slug": "actual-strictprime-eq-closedprimemoment--05a5369552aabe63abece4a2",
  "source": {
    "blob": "9a7ad3573a19246bf28ac2362c364c3af2811809",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 20,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualPrimeContourResidual/Variant3e9db739ea10d6392b741f49b914e4df9391fa8324119b3388e3e3f86791ac85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05a5369552aabe63abece4a211cf58903b6be6303d7685ca5cf3668e84de0c3e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceActualPrimeContourResidual/Variant3e9db739ea10d6392b741f49b914e4df9391fa8324119b3388e3e3f86791ac85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd361b5a-aca9-9e19-c36d-4a7406a149a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_strictPrime_eq_closedPrimeMoment (A : ℝ) (hA : 1 ≤ A) :
    primePowerContribution explicitSecondDerivative A = closedPrimeMoment A := by
  classical
  unfold primePowerContribution closedPrimeMoment primePowerInventory
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro n hn
  have hnpos : 0 < (n : ℝ) := by
    exact_mod_cast lt_of_lt_of_le (by norm_num : 0 < (2 : ℕ)) (Finset.mem_Icc.mp hn).1
  have hweight : exponentialTest (sourceCorrelation explicitSecondDerivative A) (Real.log n) =
      sourceCorrelation explicitSecondDerivative A (Real.log n) / Real.sqrt n := by
    unfold exponentialTest
    rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hnpos]
    ring
  rw [hweight]
  by_cases hcut : (n : ℝ) < Real.exp (2 * A)
  · simp only [hcut, if_true]
    ring
  · have hlog : 2 * A ≤ Real.log n := by
      simpa only [Real.log_exp] using
        Real.log_le_log (Real.exp_pos _) (le_of_not_gt hcut)
    rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A (Real.log n)
      (by linarith) (hlog.trans (le_abs_self _))]
    simp [hcut]

/-- The independently original arithmetic residual is exactly this full actual prime contour. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceActualPrimeContourResidual/Variant3e9db739ea10d6392b741f49b914e4df9391fa8324119b3388e3e3f86791ac85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualPrimeContourResidual/Variant3e9db739ea10d6392b741f49b914e4df9391fa8324119b3388e3e3f86791ac85.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a7ad3573a19246bf28ac2362c364c3af2811809` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
