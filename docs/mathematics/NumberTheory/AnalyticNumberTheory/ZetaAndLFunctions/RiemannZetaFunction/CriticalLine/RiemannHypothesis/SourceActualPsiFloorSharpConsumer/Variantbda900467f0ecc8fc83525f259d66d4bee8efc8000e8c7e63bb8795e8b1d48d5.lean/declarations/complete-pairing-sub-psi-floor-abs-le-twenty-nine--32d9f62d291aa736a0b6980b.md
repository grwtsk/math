# complete_pairing_sub_psi_floor_abs_le_twenty_nine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df2181fe-cdda-79ff-7f20-b7dbbc5abcba",
  "kind": "theorem",
  "lexical_name": "complete_pairing_sub_psi_floor_abs_le_twenty_nine",
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
  "slug": "complete-pairing-sub-psi-floor-abs-le-twenty-nine--32d9f62d291aa736a0b6980b",
  "source": {
    "blob": "564ca67ee45fd6f915ecb1d726d51a7eb2b56175",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorSharpConsumer/Variantbda900467f0ecc8fc83525f259d66d4bee8efc8000e8c7e63bb8795e8b1d48d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32d9f62d291aa736a0b6980b7b5c21d957aea20a5b9056e4b7b56d6875423567",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorSharpConsumer/Variantbda900467f0ecc8fc83525f259d66d4bee8efc8000e8c7e63bb8795e8b1d48d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df2181fe-cdda-79ff-7f20-b7dbbc5abcba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_pairing_sub_psi_floor_abs_le_twenty_nine {A : ℝ} (hA : 25600 ≤ A) :
    |completeCorrectedAbelPairing A - actualPsiFloorPairing A| ≤ 29 := by
  have he := complete_pairing_eq_psi_floor_add_actual_errors (by linarith : 91 ≤ A)
  have hs := renormalized_tail_sub_actual_leading_abs_le_fourteen hA
  have hf := (actual_cancelled_factorial_full_abs_le_five A
    (by linarith : 91 ≤ A)).trans (fiveCancelledFactorialBudget_le_fifteen hA)
  have ht := abs_add_le (actualCancelledFactorialWork A)
    (renormalizedActualSignedTail A - actualLeadingRenormalizedTail A)
  have hid : completeCorrectedAbelPairing A - actualPsiFloorPairing A =
      actualCancelledFactorialWork A +
        (renormalizedActualSignedTail A - actualLeadingRenormalizedTail A) := by linarith
  rw [← hid] at ht
  linarith

/-- The original residual keeps its independently proved zeta calibration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorSharpConsumer/Variantbda900467f0ecc8fc83525f259d66d4bee8efc8000e8c7e63bb8795e8b1d48d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorSharpConsumer/Variantbda900467f0ecc8fc83525f259d66d4bee8efc8000e8c7e63bb8795e8b1d48d5.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `564ca67ee45fd6f915ecb1d726d51a7eb2b56175` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
