# divisorRemainder_eq_column_strip_and_sampling_payments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e6fbc2f76d69d5eae6b3671559f8ec32b9075c24",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a0e6ce6f131f0dd1927a7d9be3cacf0b4fa5c4b8907fbd77e38fc7506a8a9a47.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:002465e4-e1a5-5d69-9df2-81679497c453",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef83ab24-d10e-4c87-1434-a2ca30532064",
  "kind": "theorem",
  "lexical_name": "divisorRemainder_eq_column_strip_and_sampling_payments",
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
  "slug": "divisorremainder-eq-column-strip-and-sampling-payments--1d061e4dc3393d5ed994d45a",
  "source": {
    "blob": "e6fbc2f76d69d5eae6b3671559f8ec32b9075c24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 161,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Varianta0e6ce6f131f0dd1927a7d9be3cacf0b4fa5c4b8907fbd77e38fc7506a8a9a47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d061e4dc3393d5ed994d45ad39b84ccf3b6531ad9869643e4bee967f591d3c0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Varianta0e6ce6f131f0dd1927a7d9be3cacf0b4fa5c4b8907fbd77e38fc7506a8a9a47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef83ab24-d10e-4c87-1434-a2ca30532064`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisorRemainder_eq_column_strip_and_sampling_payments (A : ℝ) (hA : 1 ≤ A)
    (d : ℕ) (hd : 1 ≤ d) :
    divisorRemainder A d =
      shortColumnPlainRowsAt A d (vaughanCutoff A) -
      quotientStripRowsAt A d (vaughanCutoff A) +
      physicalQuotientDeletedRowsAt A d (vaughanCutoff A) +
      (sourceLogSamplingMainTerm A d - completeMangoldtPlainRowsAt A d) +
      ∑ m ∈ Finset.Icc 1 (vaughanCutoff A), vonMangoldt m *
        (sourcePlainKernel A ((d * m : ℕ) : ℝ) -
          sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ)) := by
  have hs := strictRowsAt_eq_logKernel_sub_short_sub_column A hA d
    (vaughanCutoff A) hd (vaughanCutoff_le_sourceKernelCutoff A hA)
  have hp := actual_physicalRows_eq_auxiliary_strict_add_strip A hA d hd
  have he := physicalRowsAt_eq_off_add_deleted A d (vaughanCutoff A)
  have hm := divisorMultiplesInteraction_eq_physicalOffRows A d hd
  rw [← completeRowsAt_eq_sourceMobiusKernel A hA d hd] at hs
  unfold divisorRemainder
  rw [hm]
  have hsum :
      (∑ m ∈ Finset.Icc 1 (vaughanCutoff A), vonMangoldt m *
        (sourcePlainKernel A ((d * m : ℕ) : ℝ) -
          sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ))) =
      shortMangoldtPlainRowsAt A d (vaughanCutoff A) -
        ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
          vonMangoldt m * sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ) := by
    simp only [mul_sub, Finset.sum_sub_distrib, shortMangoldtPlainRowsAt]
  rw [hsum]
  linarith

/-- The actual target keeps its independently defined global baseline and every signed payment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Varianta0e6ce6f131f0dd1927a7d9be3cacf0b4fa5c4b8907fbd77e38fc7506a8a9a47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Varianta0e6ce6f131f0dd1927a7d9be3cacf0b4fa5c4b8907fbd77e38fc7506a8a9a47.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6fbc2f76d69d5eae6b3671559f8ec32b9075c24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
