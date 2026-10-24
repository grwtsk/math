# fullKappaShortBudget_le_fixed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6c6d4ac-9eb2-ec5c-ed0c-230a89d985c8",
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
  "slug": "fullkappashortbudget-le-fixed--7f6052839e72e7dd19750329",
  "source": {
    "blob": "413463b42a27d41d68177ee1b1f9a9c492a3b956",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 61,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLeadingTailBudget/Variant9f7aca4df170bc0b469ed1fff6c0c4606a57a859a53a6197598079e3dac155bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f6052839e72e7dd197503299ea5e7a7d2cb323ca2e46366cdaf016bae5be6c5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLeadingTailBudget/Variant9f7aca4df170bc0b469ed1fff6c0c4606a57a859a53a6197598079e3dac155bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6c6d4ac-9eb2-ec5c-ed0c-230a89d985c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–84.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLeadingTailBudget/Variant9f7aca4df170bc0b469ed1fff6c0c4606a57a859a53a6197598079e3dac155bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLeadingTailBudget/Variant9f7aca4df170bc0b469ed1fff6c0c4606a57a859a53a6197598079e3dac155bc.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `413463b42a27d41d68177ee1b1f9a9c492a3b956` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
