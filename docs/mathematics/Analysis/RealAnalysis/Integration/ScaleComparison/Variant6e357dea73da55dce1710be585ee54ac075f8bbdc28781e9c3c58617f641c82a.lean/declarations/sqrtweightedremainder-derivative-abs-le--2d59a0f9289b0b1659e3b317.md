# sqrtWeightedRemainder_derivative_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ab77d18-ff4c-5143-a4c0-6982bf48fa22",
  "kind": "theorem",
  "lexical_name": "sqrtWeightedRemainder_derivative_abs_le",
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
  "slug": "sqrtweightedremainder-derivative-abs-le--2d59a0f9289b0b1659e3b317",
  "source": {
    "blob": "f16a4d7b8718bd1035ee13e143e263c3809508b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 51,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d59a0f9289b0b1659e3b3174d4087a0d24611f128f915f268665440d363857b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ab77d18-ff4c-5143-a4c0-6982bf48fa22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrtWeightedRemainder_derivative_abs_le (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |deriv (sqrtWeightedRemainder A) q| ≤ scaleComparisonCoefficient A / q := by
  have hq0 : 0 < q := by linarith
  rw [(sqrtWeightedRemainder_hasDerivAt A q hA hq0).deriv, abs_div,
    abs_of_pos (Real.sqrt_pos.mpr hq0)]
  calc
    _ ≤ (scaleComparisonCoefficient A / Real.sqrt q) / Real.sqrt q :=
      div_le_div_of_nonneg_right (homogeneity_defect_abs_le A q hA hq)
        (Real.sqrt_nonneg q)
    _ = _ := by rw [div_div, Real.mul_self_sqrt hq0.le]

/-- The derivative has a genuine integral on every positive compact comparison interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f16a4d7b8718bd1035ee13e143e263c3809508b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
