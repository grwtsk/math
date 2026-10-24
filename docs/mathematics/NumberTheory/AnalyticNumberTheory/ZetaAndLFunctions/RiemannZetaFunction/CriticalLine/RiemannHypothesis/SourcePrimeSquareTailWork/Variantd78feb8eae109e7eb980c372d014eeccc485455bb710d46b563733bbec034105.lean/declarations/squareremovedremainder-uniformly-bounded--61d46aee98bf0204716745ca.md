# squareRemovedRemainder_uniformly_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be9d0ba271cd10c0c32a38528d307181fd6010ea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 335,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d78feb8eae109e7eb980c372d014eeccc485455bb710d46b563733bbec034105.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9827b0a-bcba-9442-a9ed-c9f93bde3799",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b036a43c-dd47-f219-ccf7-97e055c2aa29",
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
  "slug": "squareremovedremainder-uniformly-bounded--61d46aee98bf0204716745ca",
  "source": {
    "blob": "be9d0ba271cd10c0c32a38528d307181fd6010ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 335,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variantd78feb8eae109e7eb980c372d014eeccc485455bb710d46b563733bbec034105.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61d46aee98bf0204716745ca216521ff858bec4f45c6dc7690be826508da5a11",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variantd78feb8eae109e7eb980c372d014eeccc485455bb710d46b563733bbec034105.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b036a43c-dd47-f219-ccf7-97e055c2aa29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–370.

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

end FormalResearch.RiemannHypothesis.SourcePrimeSquareTailWork
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variantd78feb8eae109e7eb980c372d014eeccc485455bb710d46b563733bbec034105.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variantd78feb8eae109e7eb980c372d014eeccc485455bb710d46b563733bbec034105.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be9d0ba271cd10c0c32a38528d307181fd6010ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
