# error_times_twice_curvature_budget_le_margin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:febeb54f-6871-1295-8bc3-376efa42ba4e",
  "kind": "theorem",
  "lexical_name": "error_times_twice_curvature_budget_le_margin",
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
  "slug": "error-times-twice-curvature-budget-le-margin--fc068683142740779b592874",
  "source": {
    "blob": "dbc5ac4e5783adf0e1e3568487afb87500b31d37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 113,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeScalarBudget/Variantf9049aa2b9b2c0a5f32b2bae5a6fdad575c726657450f9c0d96d4548da743658.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc068683142740779b592874ef4f7d03cfbe6d1b38e208703f4a33487492860c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeScalarBudget/Variantf9049aa2b9b2c0a5f32b2bae5a6fdad575c726657450f9c0d96d4548da743658.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:febeb54f-6871-1295-8bc3-376efa42ba4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem error_times_twice_curvature_budget_le_margin {A : ℝ} (hA : 1 ≤ A) :
    (Real.log 4 + 4 + Real.log 2) *
      (2 * (162826 / (7623 * A ^ 2) + 1 / 4)) ≤
      45 * (Real.log 4 + 4 + Real.log 2) := by
  simpa only [mul_comm] using mul_le_mul_of_nonneg_left
    (twice_curvature_budget_le_margin hA) mangoldt_error_budget_pos.le

end
end FormalResearch.RiemannHypothesis.SourceLowTimeScalarBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeScalarBudget/Variantf9049aa2b9b2c0a5f32b2bae5a6fdad575c726657450f9c0d96d4548da743658.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeScalarBudget/Variantf9049aa2b9b2c0a5f32b2bae5a6fdad575c726657450f9c0d96d4548da743658.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbc5ac4e5783adf0e1e3568487afb87500b31d37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
