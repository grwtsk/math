# actual_covariant_mixed_second_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1631ac64-53a8-fe14-a10d-5de11be14b78",
  "kind": "theorem",
  "lexical_name": "actual_covariant_mixed_second_abs_le",
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
  "slug": "actual-covariant-mixed-second-abs-le--ba51650240c92a59e002d666",
  "source": {
    "blob": "67566b7a8c07083f36dab1b3274e2c6b7ce0afe7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 122,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/A8ea7ce9952b9eecb34aSourceActualCovariantKernel/Variant6fbcdd1083ea8414695768c21da74efb05653f14ea7bb3751b61eecf599c7f9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba51650240c92a59e002d666ea58bdfac15f778f9fe848b43d7cb44ef21a3c64",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/A8ea7ce9952b9eecb34aSourceActualCovariantKernel/Variant6fbcdd1083ea8414695768c21da74efb05653f14ea7bb3751b61eecf599c7f9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1631ac64-53a8-fe14-a10d-5de11be14b78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_covariant_mixed_second_abs_le (A t s : ℝ) (hA : 91 ≤ A) :
    |covariantMixedDerivative (actualLogColumnSource A) t s| ≤
      Real.exp (t / 2) * Real.exp (-s / 2) * (5 / A ^ 2) := by
  rw [actual_covariant_mixed_second A (by linarith) t s]
  have hc : |iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + s)| ≤
      5 / A ^ 2 := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      actualCorrelation_second_abs_le_five hA (t + s)
  simp only [actualCovariantJet, abs_mul, abs_of_pos (Real.exp_pos _)]
  exact mul_le_mul_of_nonneg_left hc (by positivity)

/-- The actual 67 fourth-jet budget also retains the exact exponential prefactor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/A8ea7ce9952b9eecb34aSourceActualCovariantKernel/Variant6fbcdd1083ea8414695768c21da74efb05653f14ea7bb3751b61eecf599c7f9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/A8ea7ce9952b9eecb34aSourceActualCovariantKernel/Variant6fbcdd1083ea8414695768c21da74efb05653f14ea7bb3751b61eecf599c7f9a.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67566b7a8c07083f36dab1b3274e2c6b7ce0afe7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
