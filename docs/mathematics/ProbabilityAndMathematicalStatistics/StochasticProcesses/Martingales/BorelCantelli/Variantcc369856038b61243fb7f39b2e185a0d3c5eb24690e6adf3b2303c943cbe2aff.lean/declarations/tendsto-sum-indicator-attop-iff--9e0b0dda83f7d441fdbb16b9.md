# tendsto_sum_indicator_atTop_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "360faf71b2f4b003f028ce88b806ce86bd38e256",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 357,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:002259ae-228c-b04f-3782-1b62e21a464f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5aac3e4-179a-e394-d465-902f0ae023ca",
  "kind": "theorem",
  "lexical_name": "tendsto_sum_indicator_atTop_iff'",
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
  "slug": "tendsto-sum-indicator-attop-iff--9e0b0dda83f7d441fdbb16b9",
  "source": {
    "blob": "360faf71b2f4b003f028ce88b806ce86bd38e256",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 357,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e0b0dda83f7d441fdbb16b987932964c0003890769347c2101aecb7c0f8ada0",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5aac3e4-179a-e394-d465-902f0ae023ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_sum_indicator_atTop_iff' [IsFiniteMeasure μ] {s : ℕ → Set Ω}
    (hs : ∀ n, MeasurableSet[ℱ n] (s n)) : ∀ᵐ ω ∂μ,
    Tendsto (fun n => ∑ k in Finset.range n,
      (s (k + 1)).indicator (1 : Ω → ℝ) ω) atTop atTop ↔
    Tendsto (fun n => ∑ k in Finset.range n,
      (μ[(s (k + 1)).indicator (1 : Ω → ℝ)|ℱ k]) ω) atTop atTop := by
  have := tendsto_sum_indicator_atTop_iff (eventually_of_forall fun ω n => ?_) (adapted_process hs)
    (integrable_process μ hs) (eventually_of_forall <| process_difference_le s)
  swap
  · rw [process, process, ← sub_nonneg, Finset.sum_apply, Finset.sum_apply,
      Finset.sum_range_succ_sub_sum]
    exact Set.indicator_nonneg (fun _ _ => zero_le_one) _
  simp_rw [process, predictablePart_process_ae_eq] at this
  simpa using this
#align measure_theory.tendsto_sum_indicator_at_top_iff' MeasureTheory.tendsto_sum_indicator_atTop_iff'

/-- **Lévy's generalization of the Borel-Cantelli lemma**: given a sequence of sets `s` and a
filtration `ℱ` such that for all `n`, `s n` is `ℱ n`-measurable, `limsup s atTop` is almost
everywhere equal to the set for which `∑ k, ℙ(s (k + 1) | ℱ k) = ∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `360faf71b2f4b003f028ce88b806ce86bd38e256` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
