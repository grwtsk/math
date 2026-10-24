# signed_pairing_eq_block_add_complement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b8ec5a1-4c7d-8254-8f60-72bf0bb2624e",
  "kind": "theorem",
  "lexical_name": "signed_pairing_eq_block_add_complement",
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
  "slug": "signed-pairing-eq-block-add-complement--ad0f138b8bde6d7d8cd37827",
  "source": {
    "blob": "365839cb747438fa34162bdc314085d5487dfb77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteXiComplementConsumer/Variant5bf52684c4eb0995a66e6f7ebba5ff5a8efc2e92bb7a41ae66aa8ef0b75b45ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad0f138b8bde6d7d8cd378278d3bad270911e0082bc464e00c3fd1bef637b889",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteXiComplementConsumer/Variant5bf52684c4eb0995a66e6f7ebba5ff5a8efc2e92bb7a41ae66aa8ef0b75b45ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b8ec5a1-4c7d-8254-8f60-72bf0bb2624e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_pairing_eq_block_add_complement (A : ℝ) (hA : 40 ≤ A) :
    signedCesaroPairing A =
      (∫ y in (13 / 2)..7, actualTransformedXiBlockDensity A y) + completeXiComplement A := by
  have hX := exp_scale_ge_seven A hA
  have hw := actual_transformed_whole_intervalIntegrable A hA
  have h2X : (2 : ℝ) ≤ Real.exp (2 * A) := by linarith
  have h26 : IntervalIntegrable (actualTransformedXiBlockDensity A) volume 2 (13 / 2) := by
    apply hw.mono ?_ le_rfl
    rw [uIcc_of_le (by norm_num : (2 : ℝ) ≤ 13 / 2), uIcc_of_le h2X]
    intro y hy
    exact ⟨hy.1, by linarith [hy.2]⟩
  have h27 : IntervalIntegrable (actualTransformedXiBlockDensity A) volume 2 7 := by
    apply hw.mono ?_ le_rfl
    rw [uIcc_of_le (by norm_num : (2 : ℝ) ≤ 7), uIcc_of_le h2X]
    intro y hy
    exact ⟨hy.1, hy.2.trans hX⟩
  have h7X : IntervalIntegrable (actualTransformedXiBlockDensity A) volume 7
      (Real.exp (2 * A)) := by
    apply hw.mono ?_ le_rfl
    rw [uIcc_of_le hX, uIcc_of_le h2X]
    intro y hy
    exact ⟨by linarith [hy.1], hy.2⟩
  have h67 := actual_transformed_density_intervalIntegrable A hA
  have hfirst := intervalIntegral.integral_add_adjacent_intervals h26 h67
  have hsecond := intervalIntegral.integral_add_adjacent_intervals h27 h7X
  have he := signedCesaroPairing_eq_explicit_shiftedXi A (by linarith : 1 ≤ A)
  change signedCesaroPairing A =
    ∫ y in 2..Real.exp (2 * A), actualTransformedXiBlockDensity A y at he
  rw [he]
  unfold completeXiComplement
  linarith only [hfirst, hsecond]

/-- The new finite eta margin reduces a budget for this particular complete complement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteXiComplementConsumer/Variant5bf52684c4eb0995a66e6f7ebba5ff5a8efc2e92bb7a41ae66aa8ef0b75b45ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteXiComplementConsumer/Variant5bf52684c4eb0995a66e6f7ebba5ff5a8efc2e92bb7a41ae66aa8ef0b75b45ca.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `365839cb747438fa34162bdc314085d5487dfb77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
