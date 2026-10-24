# combined_corrected_calibration_budget_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3d11d52-01c9-984b-a0db-d367fe96e164",
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
  "slug": "combined-corrected-calibration-budget-lt--9ae29197e620bcadc6f5a5df",
  "source": {
    "blob": "a2da072591d8a0229efce7a51811e8611d93d9ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 127,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrectedOmegaPeanoTaylor/Variant2ca34d938e88173b46905e9cee49952cb0a04f2285a6529553ecf450132cb13e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ae29197e620bcadc6f5a5df4a58eb527326ccca7392d759d7b34e7df0cb94fd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrectedOmegaPeanoTaylor/Variant2ca34d938e88173b46905e9cee49952cb0a04f2285a6529553ecf450132cb13e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3d11d52-01c9-984b-a0db-d367fe96e164`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–139.

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

/-- Corrected complete calibration is conditional only on the explicit actual analytic row bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrectedOmegaPeanoTaylor/Variant2ca34d938e88173b46905e9cee49952cb0a04f2285a6529553ecf450132cb13e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrectedOmegaPeanoTaylor/Variant2ca34d938e88173b46905e9cee49952cb0a04f2285a6529553ecf450132cb13e.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2da072591d8a0229efce7a51811e8611d93d9ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
