# error_times_twice_curvature_budget_le_margin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f01f4e1b035b5472077dae86260163188b4cc7d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5e2896b89335041277632bd777f2e03d553c52a7dc16cc57b2ca4ee7ea4704b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7749dbe1-7b0b-b356-faee-ccfb26c2b645",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae7043eb-7c8b-8e33-c644-cec72292f9bd",
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
  "slug": "error-times-twice-curvature-budget-le-margin--3539a0e4449f656269e07c5b",
  "source": {
    "blob": "f01f4e1b035b5472077dae86260163188b4cc7d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 106,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/007SourceLowTimeScalarBudget/Variantf5e2896b89335041277632bd777f2e03d553c52a7dc16cc57b2ca4ee7ea4704b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3539a0e4449f656269e07c5bbc99311d38b2d3bcc2b1731fc92724a570681725",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/007SourceLowTimeScalarBudget/Variantf5e2896b89335041277632bd777f2e03d553c52a7dc16cc57b2ca4ee7ea4704b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae7043eb-7c8b-8e33-c644-cec72292f9bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–114.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/007SourceLowTimeScalarBudget/Variantf5e2896b89335041277632bd777f2e03d553c52a7dc16cc57b2ca4ee7ea4704b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/007SourceLowTimeScalarBudget/Variantf5e2896b89335041277632bd777f2e03d553c52a7dc16cc57b2ca4ee7ea4704b.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f01f4e1b035b5472077dae86260163188b4cc7d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
