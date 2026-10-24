# actual_fullXiAbsoluteLogBudget_not_eventually_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3ecc7ab-4bcc-f4db-ebc8-241ee960db9b",
  "kind": "theorem",
  "lexical_name": "actual_fullXiAbsoluteLogBudget_not_eventually_bounded",
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
  "slug": "actual-fullxiabsolutelogbudget-not-eventually-bounded--fbd18c932874b7d473b6355a",
  "source": {
    "blob": "e34bc11554a55dd775a9b18313fc9c4b6f52feb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 72,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFullXiCellBudgetObstruction/Variant3f1173cbf7fc3404beb76fcb2a7349bcd1c2c92e91eb35e0c35084645ea0c2d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbd18c932874b7d473b6355a42d14ce492aafb67f5a76c7d67e6e32c65885581",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFullXiCellBudgetObstruction/Variant3f1173cbf7fc3404beb76fcb2a7349bcd1c2c92e91eb35e0c35084645ea0c2d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3ecc7ab-4bcc-f4db-ebc8-241ee960db9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_fullXiAbsoluteLogBudget_not_eventually_bounded :
    ¬ ∃ B R : ℝ, ∀ A : ℝ, 91 ≤ A → R ≤ A → fullXiAbsoluteLogBudget A ≤ B := by
  rintro ⟨B, R, h⟩
  let A : ℝ := max 91 (max R (80 * (B + Real.log 2 / 4 + 1)))
  have h91 : 91 ≤ A := le_max_left _ _
  have hR : R ≤ A := (le_max_left _ _).trans (le_max_right _ _)
  have hB : 80 * (B + Real.log 2 / 4 + 1) ≤ A :=
    (le_max_right _ _).trans (le_max_right _ _)
  have hlo := actual_fullXiAbsoluteLogBudget_linear_lower h91
  have hhi := h A h91 hR
  linarith

end FormalResearch.RiemannHypothesis.SourceFullXiCellBudgetObstruction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFullXiCellBudgetObstruction/Variant3f1173cbf7fc3404beb76fcb2a7349bcd1c2c92e91eb35e0c35084645ea0c2d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFullXiCellBudgetObstruction/Variant3f1173cbf7fc3404beb76fcb2a7349bcd1c2c92e91eb35e0c35084645ea0c2d7.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e34bc11554a55dd775a9b18313fc9c4b6f52feb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
