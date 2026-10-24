# actual_retained_spatial_strip_abs_le_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e7a05a3-5d77-317a-3cac-67c99ac28e4a",
  "kind": "theorem",
  "lexical_name": "actual_retained_spatial_strip_abs_le_uniform",
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
  "slug": "actual-retained-spatial-strip-abs-le-uniform--557287fb0825893643febedf",
  "source": {
    "blob": "f04fd44ee06fe601dcab08624ab44098f5f1f3cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 128,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactRestrictedStripAttempt03/Variant4ae3eae86da2c72b121430ad052f597ac07373bbba5a84d36a07b8c36f9c672f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:557287fb0825893643febedf72750b0858b3b5c62985fffb7a5a29a0e1cf09a8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactRestrictedStripAttempt03/Variant4ae3eae86da2c72b121430ad052f597ac07373bbba5a84d36a07b8c36f9c672f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e7a05a3-5d77-317a-3cac-67c99ac28e4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_retained_spatial_strip_abs_le_uniform {Q A : ℝ} (hQ : 91 ≤ Q)
    (hQA : Q ≤ A) :
    |∫ v in actualWorkLeftStrip A, actualMixedWorkDensity A v| ≤
      (Real.log 4 + 4 + Real.log 2) * (1 / 2 + 2 * tailEnergyCoefficient Q / Q ^ 2) := by
  have hQp : 0 < Q := by linarith
  have hAp : 0 < A := hQp.trans_le hQA
  have hsq : Q ^ 2 ≤ A ^ 2 := by nlinarith
  apply (actual_retained_spatial_strip_abs_le_tail hQ hQA).trans
  apply mul_le_mul_of_nonneg_left ?_ mangoldt_error_budget_pos.le
  simpa only [add_comm] using add_le_add_left (div_le_div_of_nonneg_left
    (mul_nonneg (by norm_num : (0 : ℝ) ≤ 2) (tailEnergyCoefficient_pos Q).le)
    (sq_pos_of_pos hQp) hsq) (1 / 2 : ℝ)

/-- The comparison improves only the paid strip; all joint overlap counterterms survive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactRestrictedStripAttempt03/Variant4ae3eae86da2c72b121430ad052f597ac07373bbba5a84d36a07b8c36f9c672f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactRestrictedStripAttempt03/Variant4ae3eae86da2c72b121430ad052f597ac07373bbba5a84d36a07b8c36f9c672f.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f04fd44ee06fe601dcab08624ab44098f5f1f3cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
