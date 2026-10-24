# actualPeanoCubicError_abs_le_of_actual_row_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b13dde19-de95-7c59-0ac4-d0ad363b6202",
  "kind": "theorem",
  "lexical_name": "actualPeanoCubicError_abs_le_of_actual_row_bound",
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
  "slug": "actualpeanocubicerror-abs-le-of-actual-row-bound--cd0cdc6e69e67f87dd88c795",
  "source": {
    "blob": "0cf90a7df70f1ab429d3ec2182cdc0fa89178518",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrectedOmegaPeanoTaylor/Variant7493d6233eeeeb61ec4d6c4c45965c7f79af6d0f030232480bc89112821d8e1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd0cdc6e69e67f87dd88c7954332ee840d6b369bc8f0b361007ee9b54d28d0e6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrectedOmegaPeanoTaylor/Variant7493d6233eeeeb61ec4d6c4c45965c7f79af6d0f030232480bc89112821d8e1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b13dde19-de95-7c59-0ac4-d0ad363b6202`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPeanoCubicError_abs_le_of_actual_row_bound (A : ℝ) (hA : 1 ≤ A)
    (hrow : ∀ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |actualPeanoCubicRemainder A (Real.log (d : ℝ))| ≤ 320 * 67 / A ^ 4) :
    |actualPeanoCubicError A| ≤ 640 * 67 / A ^ 3 := by
  have hc : 0 ≤ 320 * 67 / A ^ 4 := by positivity
  unfold actualPeanoCubicError
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        |realMoebius d / Real.sqrt (d : ℝ) *
          actualPeanoCubicRemainder A (Real.log (d : ℝ))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        (320 * 67 / A ^ 4) * (|realMoebius d| / Real.sqrt (d : ℝ)) := by
      apply Finset.sum_le_sum
      intro d hd
      rw [abs_mul, abs_div, abs_of_nonneg (Real.sqrt_nonneg _)]
      apply (mul_le_mul_of_nonneg_left (hrow d hd) (by positivity)).trans
      exact le_of_eq (by ring)
    _ = (320 * 67 / A ^ 4) *
        (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| / Real.sqrt (d : ℝ)) :=
      (Finset.mul_sum _ _ _).symm
    _ ≤ (320 * 67 / A ^ 4) * (2 * A) :=
      mul_le_mul_of_nonneg_left (actualMoebiusSqrtMass_le A hA) hc
    _ = _ := by
      field_simp [show A ≠ 0 by linarith]
      ring

/-- The combined actual short Peano and cubic errors retain both inventories. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrectedOmegaPeanoTaylor/Variant7493d6233eeeeb61ec4d6c4c45965c7f79af6d0f030232480bc89112821d8e1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrectedOmegaPeanoTaylor/Variant7493d6233eeeeb61ec4d6c4c45965c7f79af6d0f030232480bc89112821d8e1f.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cf90a7df70f1ab429d3ec2182cdc0fa89178518` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
