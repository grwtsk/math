# fullKappaShortBudget_le_fixed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9145a006-f90b-be0c-730c-4ed5b2d97a30",
  "kind": "theorem",
  "lexical_name": "fullKappaShortBudget_le_fixed",
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
  "slug": "fullkappashortbudget-le-fixed--95393ec18a2ca5ec11313b7a",
  "source": {
    "blob": "e0d03473f2175de1ea0dbca19a46e7625744e8cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 69,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLeadingTailBudget/Variantd75f696e0f06e74c25f8c2fe504d8e5982f66859dce53d4ae82ee00665e86595.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95393ec18a2ca5ec11313b7a467c0390466cda88685a8651a3105096153dfcef",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLeadingTailBudget/Variantd75f696e0f06e74c25f8c2fe504d8e5982f66859dce53d4ae82ee00665e86595.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9145a006-f90b-be0c-730c-4ed5b2d97a30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fullKappaShortBudget_le_fixed {A : ℝ} (hA : 25600 ≤ A) :
    fullKappaShortBudget A ≤ leadingFixedErrorBudget := by
  have hp : 0 < A := by linarith
  have hs := actual_cutoff_logs_le_scale hA
  rw [fullKappaShortBudget_eq hp]
  unfold leadingFixedErrorBudget
  calc
    _ ≤ (20 * |fullPositiveKappa 1| * A + 40 * |fullPositiveKappa 2| * A +
        20 * |fullPositiveKappa 3| * A) / A +
        (67 / 3 : ℝ) * |fullPositiveKappa 4| * A ^ 3 / A ^ 3 := by
      apply add_le_add
      · apply div_le_div_of_nonneg_right _ hp.le
        apply add_le_add
        · apply add_le_add
          · exact mul_le_mul_of_nonneg_left hs.1 (by positivity)
          · exact mul_le_mul_of_nonneg_left hs.2.1 (by positivity)
        · simpa only [mul_one] using
            mul_le_mul_of_nonneg_left (show 1 ≤ A by linarith)
              (show 0 ≤ 20 * |fullPositiveKappa 3| by positivity)
      · exact div_le_div_of_nonneg_right
          (mul_le_mul_of_nonneg_left hs.2.2 (by positivity)) (by positivity)
    _ = _ := by field_simp; ring

/-- No signed row or tail disappears in the leading approximation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLeadingTailBudget/Variantd75f696e0f06e74c25f8c2fe504d8e5982f66859dce53d4ae82ee00665e86595.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLeadingTailBudget/Variantd75f696e0f06e74c25f8c2fe504d8e5982f66859dce53d4ae82ee00665e86595.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0d03473f2175de1ea0dbca19a46e7625744e8cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
