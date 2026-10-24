# discrepancy_majorant_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fda1aae9-1805-3e4d-1724-59da57aa9f9a",
  "kind": "theorem",
  "lexical_name": "discrepancy_majorant_neg",
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
  "slug": "discrepancy-majorant-neg--8a38b6b5ec6b1f0d14234dba",
  "source": {
    "blob": "0eaffa26d46f0543d09f7ef814e0d28266de8793",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 139,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExportReview/Variant99fad10cd1fc977117846d670356991955ee2ba8c43927104ab6c86c589f5adf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a38b6b5ec6b1f0d14234dba16e14fbc6167a2ad21b557c978cfa460f7fa4065",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExportReview/Variant99fad10cd1fc977117846d670356991955ee2ba8c43927104ab6c86c589f5adf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fda1aae9-1805-3e4d-1724-59da57aa9f9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discrepancy_majorant_neg {s : ℝ} (hs : s ∈ Ioo (Real.log 2) (Real.log 4)) :
    normalizedPsiError s + 1 / 64 < 0 := by
  by_cases hcell : s < Real.log 3
  · rw [discrepancy_on_first_cell ⟨hs.1.le, hcell⟩]
    have he : Real.exp (-s) ≤ 1 / 2 := by
      have ht := Real.exp_le_exp.mpr (show -s ≤ -(Real.log 2) by linarith [hs.1])
      simpa only [Real.exp_neg, Real.exp_log (by norm_num : (0 : ℝ) < 2), one_div] using ht
    have hprod := mul_le_mul he log_two_bounds.2 log_two_bounds.1
      (by norm_num : (0 : ℝ) ≤ 1 / 2)
    norm_num at hprod
    linarith
  · rw [discrepancy_on_second_cell ⟨le_of_not_gt hcell, hs.2⟩]
    have he : Real.exp (-s) ≤ 1 / 3 := by
      have ht := Real.exp_le_exp.mpr (show -s ≤ -(Real.log 3) by linarith)
      simpa only [Real.exp_neg, Real.exp_log (by norm_num : (0 : ℝ) < 3), one_div] using ht
    have hq : 0 ≤ Real.log 2 + Real.log 3 := add_nonneg log_two_bounds.1 log_three_bounds.1
    have hqhi : Real.log 2 + Real.log 3 ≤ 9 / 5 := by
      linarith [log_two_bounds.2, log_three_bounds.2]
    have hprod := mul_le_mul he hqhi hq (by norm_num : (0 : ℝ) ≤ 1 / 3)
    norm_num at hprod
    linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExportReview/Variant99fad10cd1fc977117846d670356991955ee2ba8c43927104ab6c86c589f5adf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExportReview/Variant99fad10cd1fc977117846d670356991955ee2ba8c43927104ab6c86c589f5adf.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eaffa26d46f0543d09f7ef814e0d28266de8793` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
