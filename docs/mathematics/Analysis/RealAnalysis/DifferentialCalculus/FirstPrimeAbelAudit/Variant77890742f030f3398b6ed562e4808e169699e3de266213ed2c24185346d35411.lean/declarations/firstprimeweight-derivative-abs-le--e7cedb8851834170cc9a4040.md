# firstPrimeWeight_derivative_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63fa3180-2f19-51ac-2886-145f7201a96e",
  "kind": "theorem",
  "lexical_name": "firstPrimeWeight_derivative_abs_le",
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
  "slug": "firstprimeweight-derivative-abs-le--e7cedb8851834170cc9a4040",
  "source": {
    "blob": "cce9e3ce8672a20d9704e76805486937e0026742",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 181,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant77890742f030f3398b6ed562e4808e169699e3de266213ed2c24185346d35411.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7cedb8851834170cc9a4040d68f1f8d7da7ddf2c203ce3ab9c651f0e26d4303",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant77890742f030f3398b6ed562e4808e169699e3de266213ed2c24185346d35411.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63fa3180-2f19-51ac-2886-145f7201a96e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstPrimeWeight_derivative_abs_le (A u : ℝ) (hA : 1 ≤ A) :
    |deriv (firstPrimeWeight A) u| ≤ Real.exp (u / 2) *
      (1 / 2 + (65 / (3 * A ^ 2)) * |u|) := by
  rw [(firstPrimeWeight_hasDerivAt A u hA).deriv, abs_mul, abs_of_pos (Real.exp_pos _)]
  apply mul_le_mul_of_nonneg_left _ (Real.exp_pos _).le
  calc
    _ ≤ |deriv (sourceCorrelation explicitSecondDerivative A) u| +
        |sourceCorrelation explicitSecondDerivative A u / 2| := abs_add_le _ _
    _ ≤ (65 / (3 * A ^ 2)) * |u| + 1 / 2 := by
      apply add_le_add (PrimeSquareCorrelation.sourceCorrelation_derivative_linear_bound A u hA)
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      exact div_le_div_of_nonneg_right (EstimateCorrelation.actual_correlation_abs_le_one A u hA)
        (by norm_num)
    _ = _ := by ring

/-- All unproved arithmetic cancellation is retained in the signed remainder; the discarded main is bounded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant77890742f030f3398b6ed562e4808e169699e3de266213ed2c24185346d35411.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelAudit/Variant77890742f030f3398b6ed562e4808e169699e3de266213ed2c24185346d35411.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cce9e3ce8672a20d9704e76805486937e0026742` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
