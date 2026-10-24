# pairedResidualRemainder_uniformly_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb3b239c47cb9f96ae642aa69143434eb21f76e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f9e98a1a8219e167f684e81a53f3a4cb52a6d81fd28fc333206fefd96de0e4b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4fcf1cbf-cae0-8b17-0b88-16c5de21d5d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90abb454-0d1e-d378-cd73-c4126916d2ac",
  "kind": "theorem",
  "lexical_name": "pairedResidualRemainder_uniformly_bounded",
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
  "slug": "pairedresidualremainder-uniformly-bounded--1b3acde770a6c0ecb9319278",
  "source": {
    "blob": "eb3b239c47cb9f96ae642aa69143434eb21f76e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ContrastResidualV1Prebytes/Variant1f9e98a1a8219e167f684e81a53f3a4cb52a6d81fd28fc333206fefd96de0e4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b3acde770a6c0ecb9319278f2a961a352666209751d6715bb9343f8c4fc6c61",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ContrastResidualV1Prebytes/Variant1f9e98a1a8219e167f684e81a53f3a4cb52a6d81fd28fc333206fefd96de0e4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90abb454-0d1e-d378-cd73-c4126916d2ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedResidualRemainder_uniformly_bounded :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, 1 ≤ A → |pairedResidualRemainder A| ≤ C := by
  obtain ⟨B, hB0, hB⟩ := negativeErrorMean_uniformly_bounded
  obtain ⟨C, hC0, _, hC⟩ := primeSquareMoment_uniform_main_term_error
  refine ⟨2 + B + 11*C + higherPrimePowerBudget, ?_, ?_⟩
  · have hh := higherPrimePowerBudget_nonneg
    linarith
  · intro A hA
    have hH := criticalContinuousMoment_abs_le_two A hA
    have hM := hB A hA
    have hS := hC A hA
    have hP := higherPrimePowerMoment_abs_le A hA
    unfold pairedResidualRemainder
    calc
      _ ≤ |criticalContinuousMoment A + negativeErrorMean A +
          (primeSquareMoment A - diagonalMainCoefficient A*A)| + |higherPrimePowerMoment A| :=
        abs_add_le _ _
      _ ≤ |criticalContinuousMoment A + negativeErrorMean A| +
          |primeSquareMoment A - diagonalMainCoefficient A*A| + |higherPrimePowerMoment A| :=
        add_le_add_right (abs_add_le _ _) _
      _ ≤ |criticalContinuousMoment A| + |negativeErrorMean A| +
          |primeSquareMoment A - diagonalMainCoefficient A*A| + |higherPrimePowerMoment A| :=
        add_le_add_right (add_le_add_right (abs_add_le _ _) _) _
      _ ≤ 2 + B + 11*C + higherPrimePowerBudget := by linarith

end FormalResearch.RiemannHypothesis.SourcePairedContrastResidual
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ContrastResidualV1Prebytes/Variant1f9e98a1a8219e167f684e81a53f3a4cb52a6d81fd28fc333206fefd96de0e4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ContrastResidualV1Prebytes/Variant1f9e98a1a8219e167f684e81a53f3a4cb52a6d81fd28fc333206fefd96de0e4b.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb3b239c47cb9f96ae642aa69143434eb21f76e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
