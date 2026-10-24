# criticalRemovedRemainder_uniformly_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed25eeb9-ee01-d52f-2886-c0516dbd1482",
  "kind": "theorem",
  "lexical_name": "criticalRemovedRemainder_uniformly_bounded",
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
  "slug": "criticalremovedremainder-uniformly-bounded--644cab6f3cdde2ae21207562",
  "source": {
    "blob": "d357e1d5372202316efb1322cd713f23f4b8cd8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 124,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRemovedPrimeWork/Variant6da809bb64de9e6573544456ce152ae12410323d4541d32a350c2929ab632145.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:644cab6f3cdde2ae212075620e7fb1834edfe0dcf2b33fc4fd7e773d0e790f47",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRemovedPrimeWork/Variant6da809bb64de9e6573544456ce152ae12410323d4541d32a350c2929ab632145.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed25eeb9-ee01-d52f-2886-c0516dbd1482`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalRemovedRemainder_uniformly_bounded :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, 1 ≤ A → |criticalRemovedRemainder A| ≤ C := by
  obtain ⟨B, hB0, hB⟩ := negativeErrorMean_uniformly_bounded
  obtain ⟨C, hC0, _, hC⟩ := primeSquareMoment_uniform_main_term_error
  have hP := higherPrimePowerBudget_nonneg
  refine ⟨3+B+11*C+higherPrimePowerBudget, by linarith, ?_⟩
  intro A hA
  have hh := criticalDecayNegativeMean_mem_Icc hA
  have hhm : |1-criticalDecayNegativeMean A| ≤ 1 :=
    abs_le.mpr ⟨by linarith, by linarith⟩
  have he : criticalRemovedRemainder A =
      criticalContinuousMoment A+negativeErrorMean A+
        (primeSquareMoment A-diagonalMainCoefficient A*A)+
          (1-criticalDecayNegativeMean A)+higherPrimePowerMoment A := by
    unfold criticalRemovedRemainder
    ring
  rw [he]
  calc
    _ ≤ |criticalContinuousMoment A+negativeErrorMean A+
          (primeSquareMoment A-diagonalMainCoefficient A*A)+
            (1-criticalDecayNegativeMean A)|+|higherPrimePowerMoment A| := abs_add_le _ _
    _ ≤ |criticalContinuousMoment A+negativeErrorMean A+
          (primeSquareMoment A-diagonalMainCoefficient A*A)|+
            |1-criticalDecayNegativeMean A|+|higherPrimePowerMoment A| :=
      add_le_add (abs_add_le _ _) (le_refl _)
    _ ≤ |criticalContinuousMoment A+negativeErrorMean A|+
          |primeSquareMoment A-diagonalMainCoefficient A*A|+
            |1-criticalDecayNegativeMean A|+|higherPrimePowerMoment A| :=
      add_le_add (add_le_add (abs_add_le _ _) (le_refl _)) (le_refl _)
    _ ≤ |criticalContinuousMoment A|+|negativeErrorMean A|+
          |primeSquareMoment A-diagonalMainCoefficient A*A|+
            |1-criticalDecayNegativeMean A|+|higherPrimePowerMoment A| :=
      add_le_add (add_le_add (add_le_add (abs_add_le _ _) (le_refl _)) (le_refl _))
        (le_refl _)
    _ ≤ 2+B+11*C+1+higherPrimePowerBudget :=
      add_le_add (add_le_add (add_le_add (add_le_add
        (criticalContinuousMoment_abs_le_two A hA) (hB A hA)) (hC A hA)) hhm)
          (higherPrimePowerMoment_abs_le A hA)
    _ = _ := by ring

/-- Exact equivalence transports the original target but proves neither signed witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRemovedPrimeWork/Variant6da809bb64de9e6573544456ce152ae12410323d4541d32a350c2929ab632145.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRemovedPrimeWork/Variant6da809bb64de9e6573544456ce152ae12410323d4541d32a350c2929ab632145.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d357e1d5372202316efb1322cd713f23f4b8cd8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
