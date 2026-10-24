# squareRemovedRemainder_uniformly_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf8d75a3-24e7-2163-0059-88e6d65de658",
  "kind": "theorem",
  "lexical_name": "squareRemovedRemainder_uniformly_bounded",
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
  "slug": "squareremovedremainder-uniformly-bounded--15ed09a70df33c5d6439d098",
  "source": {
    "blob": "e6cee640aedfd75b443c95167df97fbe2a4a87d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 343,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant360142c83404e1adb560928cdbeb7a32dc109cdc8e3b225c38c757b4832e8931.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15ed09a70df33c5d6439d09871fc1d6b6c10eaaf9b4fb8cef24526754248c53c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant360142c83404e1adb560928cdbeb7a32dc109cdc8e3b225c38c757b4832e8931.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf8d75a3-24e7-2163-0059-88e6d65de658`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareRemovedRemainder_uniformly_bounded :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, 1 ≤ A → |squareRemovedRemainder A| ≤ C := by
  obtain ⟨C, hC0, hC⟩ := negativeErrorMean_uniformly_bounded
  have hB := squarePrefixBaseline_nonneg
  have hP := SourcePrimePowerPartition.higherPrimePowerBudget_nonneg
  refine ⟨2+C+squarePrefixBaseline+SourcePrimePowerPartition.higherPrimePowerBudget,
    by linarith, ?_⟩
  intro A hA
  have hm0 := squareTailNegativeMean_nonneg hA
  have hmB := squareTailNegativeMean_le_baseline hA
  have hm : |squarePrefixBaseline-squareTailNegativeMean A| ≤ squarePrefixBaseline :=
    abs_le.mpr ⟨by linarith, by linarith⟩
  have hH := criticalContinuousMoment_abs_le_two A hA
  have hE := hC A hA
  have hQ := SourcePrimePowerPartition.higherPrimePowerMoment_abs_le A hA
  have he : squareRemovedRemainder A = criticalContinuousMoment A + negativeErrorMean A +
      (squarePrefixBaseline-squareTailNegativeMean A) +
      SourcePrimePowerPartition.higherPrimePowerMoment A := by
    unfold squareRemovedRemainder
    ring
  rw [he]
  calc
    _ ≤ |criticalContinuousMoment A+negativeErrorMean A+
          (squarePrefixBaseline-squareTailNegativeMean A)| +
          |SourcePrimePowerPartition.higherPrimePowerMoment A| := abs_add_le _ _
    _ ≤ |criticalContinuousMoment A+negativeErrorMean A| +
          |squarePrefixBaseline-squareTailNegativeMean A| +
          |SourcePrimePowerPartition.higherPrimePowerMoment A| :=
        add_le_add (abs_add_le _ _) (le_refl _)
    _ ≤ |criticalContinuousMoment A|+|negativeErrorMean A|+
          |squarePrefixBaseline-squareTailNegativeMean A| +
          |SourcePrimePowerPartition.higherPrimePowerMoment A| :=
        add_le_add (add_le_add (abs_add_le _ _) (le_refl _)) (le_refl _)
    _ ≤ _ := add_le_add (add_le_add (add_le_add hH hE) hm) hQ

/-- The actual signed square-removed lower frontier remains an open proposition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant360142c83404e1adb560928cdbeb7a32dc109cdc8e3b225c38c757b4832e8931.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant360142c83404e1adb560928cdbeb7a32dc109cdc8e3b225c38c757b4832e8931.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6cee640aedfd75b443c95167df97fbe2a4a87d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
