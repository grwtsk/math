# combined_corrected_calibration_budget_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a95004c2-1fd4-2917-1414-be257f7ac6da",
  "kind": "theorem",
  "lexical_name": "combined_corrected_calibration_budget_lt",
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
  "slug": "combined-corrected-calibration-budget-lt--0993102b6242e5a425c44ba9",
  "source": {
    "blob": "5c9e70e8dab1ea0967a8ba68557112bbadf17e46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 120,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fac371696651f03f636eSourceCorrectedOmegaPeanoTaylor/Variant40caf5fb9fe9d31e2d3315adc400e085bfa0c48d4d95e12e1d701365f27b0095.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0993102b6242e5a425c44ba967757cc0cd41ecccd9bbe493123805c540c58591",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fac371696651f03f636eSourceCorrectedOmegaPeanoTaylor/Variant40caf5fb9fe9d31e2d3315adc400e085bfa0c48d4d95e12e1d701365f27b0095.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a95004c2-1fd4-2917-1414-be257f7ac6da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem combined_corrected_calibration_budget_lt (A : ℝ) (hA : 117 ≤ A) :
    260 / A ^ 2 + 960 * 67 / A ^ 3 < 3 / 50 := by
  have hAp : 0 < A := by linarith
  have hA2 : (117 : ℝ) ^ 2 ≤ A ^ 2 := by nlinarith
  have hA3 : (117 : ℝ) ^ 3 ≤ A ^ 3 := by nlinarith [sq_nonneg (A - 117)]
  have h1 : 260 / A ^ 2 ≤ 260 / (117 : ℝ) ^ 2 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) hA2
  have h2 : 960 * 67 / A ^ 3 ≤ 960 * 67 / (117 : ℝ) ^ 3 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) hA3
  have hn : 260 / (117 : ℝ) ^ 2 + 960 * 67 / (117 : ℝ) ^ 3 < 3 / 50 := by norm_num
  linarith

/-- Corrected calibration keeps the actual analytic row bound explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fac371696651f03f636eSourceCorrectedOmegaPeanoTaylor/Variant40caf5fb9fe9d31e2d3315adc400e085bfa0c48d4d95e12e1d701365f27b0095.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fac371696651f03f636eSourceCorrectedOmegaPeanoTaylor/Variant40caf5fb9fe9d31e2d3315adc400e085bfa0c48d4d95e12e1d701365f27b0095.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c9e70e8dab1ea0967a8ba68557112bbadf17e46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
