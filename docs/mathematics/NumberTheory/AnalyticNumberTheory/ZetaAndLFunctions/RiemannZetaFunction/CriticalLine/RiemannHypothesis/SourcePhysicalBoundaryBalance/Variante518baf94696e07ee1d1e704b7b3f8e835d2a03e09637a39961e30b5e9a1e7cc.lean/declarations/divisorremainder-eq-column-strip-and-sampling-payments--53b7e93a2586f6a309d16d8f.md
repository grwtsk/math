# divisorRemainder_eq_column_strip_and_sampling_payments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f79303ea364cc9a306a3d594ea708847e98ded2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e518baf94696e07ee1d1e704b7b3f8e835d2a03e09637a39961e30b5e9a1e7cc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d0aff8b-edd4-0cde-e7f4-d59328ad990f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5334e93c-07ad-e023-37d1-b4ac1f8a436b",
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
  "slug": "divisorremainder-eq-column-strip-and-sampling-payments--53b7e93a2586f6a309d16d8f",
  "source": {
    "blob": "9f79303ea364cc9a306a3d594ea708847e98ded2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 171,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variante518baf94696e07ee1d1e704b7b3f8e835d2a03e09637a39961e30b5e9a1e7cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53b7e93a2586f6a309d16d8faf8fed2be1eb2d8005c7085a2eb192bdaf6d74dd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variante518baf94696e07ee1d1e704b7b3f8e835d2a03e09637a39961e30b5e9a1e7cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5334e93c-07ad-e023-37d1-b4ac1f8a436b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–200.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variante518baf94696e07ee1d1e704b7b3f8e835d2a03e09637a39961e30b5e9a1e7cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variante518baf94696e07ee1d1e704b7b3f8e835d2a03e09637a39961e30b5e9a1e7cc.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f79303ea364cc9a306a3d594ea708847e98ded2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
