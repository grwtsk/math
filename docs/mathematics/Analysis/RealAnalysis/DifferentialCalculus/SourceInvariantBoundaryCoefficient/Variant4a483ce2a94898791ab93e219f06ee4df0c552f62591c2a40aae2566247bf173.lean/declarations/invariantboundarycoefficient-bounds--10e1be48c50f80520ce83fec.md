# invariantBoundaryCoefficient_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45399d77-4d3a-49e4-512d-17a377e4ed79",
  "kind": "theorem",
  "lexical_name": "invariantBoundaryCoefficient_bounds",
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
  "slug": "invariantboundarycoefficient-bounds--10e1be48c50f80520ce83fec",
  "source": {
    "blob": "9fc93876d11d75d742f4e66747128d9d3076fe9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 130,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceInvariantBoundaryCoefficient/Variant4a483ce2a94898791ab93e219f06ee4df0c552f62591c2a40aae2566247bf173.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10e1be48c50f80520ce83fecaecc244fd4dbbfbf3bf3e66af75c0c48fc538c75",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceInvariantBoundaryCoefficient/Variant4a483ce2a94898791ab93e219f06ee4df0c552f62591c2a40aae2566247bf173.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45399d77-4d3a-49e4-512d-17a377e4ed79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem invariantBoundaryCoefficient_bounds (A : ℝ) (hA : 91 ≤ A) :
    (1 / 2 : ℝ) - 15 / A ^ 2 ≤ invariantBoundaryCoefficient A ∧
      invariantBoundaryCoefficient A ≤ (1 / 2 : ℝ) + 10 / A ^ 2 := by
  have hlog0 : 0 ≤ Real.log (7 : ℝ) := Real.log_nonneg (by norm_num)
  have hlog2 : Real.log (7 : ℝ) ≤ 2 := log_seven_lt_two.le
  have hg : 0 ≤ 5 / A ^ 2 := by positivity
  have hder := actual_deriv_abs_le_linear A (Real.log 7) hA
  rw [abs_of_nonneg hlog0] at hder
  have hder10 : |deriv (sourceCorrelation explicitSecondDerivative A) (Real.log 7)| ≤
      10 / A ^ 2 := by
    calc
      _ ≤ 5 / A ^ 2 * Real.log 7 := hder
      _ ≤ 5 / A ^ 2 * 2 := mul_le_mul_of_nonneg_left hlog2 hg
      _ = _ := by ring
  have hC := actual_correlation_zero_taylor_bound A (Real.log 7) hA
  have hlogSq : (Real.log (7 : ℝ)) ^ 2 ≤ 4 := by nlinarith
  have hC10 : |sourceCorrelation explicitSecondDerivative A (Real.log 7) - 1| ≤
      10 / A ^ 2 := by
    calc
      _ ≤ 5 / A ^ 2 * Real.log 7 ^ 2 / 2 := hC
      _ ≤ 5 / A ^ 2 * 4 / 2 := div_le_div_of_nonneg_right
        (mul_le_mul_of_nonneg_left hlogSq hg) (by norm_num)
      _ = _ := by ring
  have hl := (abs_le.mp hC10).1
  have hCu := (abs_le.mp (actual_correlation_abs_le_one A (Real.log 7) (by linarith))).2
  have hd := abs_le.mp hder10
  unfold invariantBoundaryCoefficient
  have hbudget : (15 : ℝ) / A ^ 2 = (3 / 2 : ℝ) * (10 / A ^ 2) := by ring
  rw [hbudget]
  constructor <;> linarith [hd.1, hd.2]

/-- The source coefficient cannot be removed by an invariant-mean centering. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceInvariantBoundaryCoefficient/Variant4a483ce2a94898791ab93e219f06ee4df0c552f62591c2a40aae2566247bf173.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceInvariantBoundaryCoefficient/Variant4a483ce2a94898791ab93e219f06ee4df0c552f62591c2a40aae2566247bf173.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fc93876d11d75d742f4e66747128d9d3076fe9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
