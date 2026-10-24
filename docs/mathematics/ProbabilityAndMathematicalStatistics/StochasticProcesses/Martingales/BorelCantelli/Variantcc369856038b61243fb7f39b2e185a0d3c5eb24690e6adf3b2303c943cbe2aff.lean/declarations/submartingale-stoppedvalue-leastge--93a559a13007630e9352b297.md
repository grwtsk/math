# Submartingale.stoppedValue_leastGE

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
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d205a1ff-120a-baf5-7210-a41c52b55c56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d72804e9-85fd-0050-5eb0-bbe38bf01342",
  "kind": "theorem",
  "lexical_name": "Submartingale.stoppedValue_leastGE",
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
  "slug": "submartingale-stoppedvalue-leastge--93a559a13007630e9352b297",
  "source": {
    "blob": "360faf71b2f4b003f028ce88b806ce86bd38e256",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 95,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93a559a13007630e9352b2979a83a8794cfe2f9d31b6d13699c3b426b39bfbbf",
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

Occurrence: `result:d72804e9-85fd-0050-5eb0-bbe38bf01342`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submartingale.stoppedValue_leastGE [IsFiniteMeasure μ] (hf : Submartingale f ℱ μ) (r : ℝ) :
    Submartingale (fun i => stoppedValue f (leastGE f r i)) ℱ μ := by
  rw [submartingale_iff_expected_stoppedValue_mono]
  · intro σ π hσ hπ hσ_le_π hπ_bdd
    obtain ⟨n, hπ_le_n⟩ := hπ_bdd
    simp_rw [stoppedValue_stoppedValue_leastGE f σ r fun i => (hσ_le_π i).trans (hπ_le_n i)]
    simp_rw [stoppedValue_stoppedValue_leastGE f π r hπ_le_n]
    refine' hf.expected_stoppedValue_mono _ _ _ fun ω => (min_le_left _ _).trans (hπ_le_n ω)
    · exact hσ.min (hf.adapted.isStoppingTime_leastGE _ _)
    · exact hπ.min (hf.adapted.isStoppingTime_leastGE _ _)
    · exact fun ω => min_le_min (hσ_le_π ω) le_rfl
  · exact fun i => stronglyMeasurable_stoppedValue_of_le hf.adapted.progMeasurable_of_discrete
      (hf.adapted.isStoppingTime_leastGE _ _) leastGE_le
  · exact fun i => integrable_stoppedValue _ (hf.adapted.isStoppingTime_leastGE _ _) hf.integrable
      leastGE_le
#align measure_theory.submartingale.stopped_value_least_ge MeasureTheory.Submartingale.stoppedValue_leastGE

variable {r : ℝ} {R : ℝ≥0}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `360faf71b2f4b003f028ce88b806ce86bd38e256` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
