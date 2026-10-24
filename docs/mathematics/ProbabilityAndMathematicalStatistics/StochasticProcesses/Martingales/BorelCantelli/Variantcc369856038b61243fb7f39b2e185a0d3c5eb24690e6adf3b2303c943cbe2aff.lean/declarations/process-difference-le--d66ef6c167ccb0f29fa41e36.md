# process_difference_le

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
      "line": 305,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f3ebeb6-bb4c-ed46-5569-317939e741c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c096734-5d90-0353-67ff-90f6421ae11b",
  "kind": "theorem",
  "lexical_name": "process_difference_le",
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
  "slug": "process-difference-le--d66ef6c167ccb0f29fa41e36",
  "source": {
    "blob": "360faf71b2f4b003f028ce88b806ce86bd38e256",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 305,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d66ef6c167ccb0f29fa41e36176749a4726c310dcdb75f99e1a6c14611acdc1f",
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

Occurrence: `result:0c096734-5d90-0353-67ff-90f6421ae11b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem process_difference_le (s : ℕ → Set Ω) (ω : Ω) (n : ℕ) :
    |process s (n + 1) ω - process s n ω| ≤ (1 : ℝ≥0) := by
  norm_cast
  rw [process, process, Finset.sum_apply, Finset.sum_apply,
    Finset.sum_range_succ_sub_sum, ← Real.norm_eq_abs, norm_indicator_eq_indicator_norm]
  refine' Set.indicator_le' (fun _ _ => _) (fun _ _ => zero_le_one) _
  rw [Pi.one_apply, norm_one]
#align measure_theory.borel_cantelli.process_difference_le MeasureTheory.BorelCantelli.process_difference_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `360faf71b2f4b003f028ce88b806ce86bd38e256` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
