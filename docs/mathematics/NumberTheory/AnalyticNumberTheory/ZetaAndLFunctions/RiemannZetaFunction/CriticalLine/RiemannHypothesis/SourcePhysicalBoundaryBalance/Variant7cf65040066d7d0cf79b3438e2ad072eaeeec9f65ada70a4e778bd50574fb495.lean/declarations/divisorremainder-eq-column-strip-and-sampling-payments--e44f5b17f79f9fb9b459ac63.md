# divisorRemainder_eq_column_strip_and_sampling_payments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:469b4b21-c6a9-6924-76d7-d216e8bf80b8",
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
  "slug": "divisorremainder-eq-column-strip-and-sampling-payments--e44f5b17f79f9fb9b459ac63",
  "source": {
    "blob": "3bc729d0933553761663e1b0d37eb96b039a770b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 175,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant7cf65040066d7d0cf79b3438e2ad072eaeeec9f65ada70a4e778bd50574fb495.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e44f5b17f79f9fb9b459ac635e7b8e5c128cb58ca0f9a61c274cca66ed2ca3f5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant7cf65040066d7d0cf79b3438e2ad072eaeeec9f65ada70a4e778bd50574fb495.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:469b4b21-c6a9-6924-76d7-d216e8bf80b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–204.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant7cf65040066d7d0cf79b3438e2ad072eaeeec9f65ada70a4e778bd50574fb495.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant7cf65040066d7d0cf79b3438e2ad072eaeeec9f65ada70a4e778bd50574fb495.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bc729d0933553761663e1b0d37eb96b039a770b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
