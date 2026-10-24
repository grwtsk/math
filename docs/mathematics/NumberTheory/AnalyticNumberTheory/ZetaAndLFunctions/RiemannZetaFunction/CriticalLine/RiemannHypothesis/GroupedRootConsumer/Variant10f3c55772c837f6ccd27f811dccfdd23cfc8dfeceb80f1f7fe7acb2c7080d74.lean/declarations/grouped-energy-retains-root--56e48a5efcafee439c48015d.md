# grouped_energy_retains_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43c992ba-fed2-6ee0-2a9a-67496a4d0d8f",
  "kind": "theorem",
  "lexical_name": "grouped_energy_retains_root",
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
  "slug": "grouped-energy-retains-root--56e48a5efcafee439c48015d",
  "source": {
    "blob": "5553864c89e1147df3feab13a677800a8a02baf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 23,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedRootConsumer/Variant10f3c55772c837f6ccd27f811dccfdd23cfc8dfeceb80f1f7fe7acb2c7080d74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56e48a5efcafee439c48015d907f1434a0650824888b7cd31e45502979c2c150",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedRootConsumer/Variant10f3c55772c837f6ccd27f811dccfdd23cfc8dfeceb80f1f7fe7acb2c7080d74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43c992ba-fed2-6ee0-2a9a-67496a4d0d8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem grouped_energy_retains_root {ι κ : Type*} [Fintype ι] [Fintype κ]
    [DecidableEq κ] (label : ι → κ) (hs : Function.Surjective label)
    (w v : ι → ℝ) (hw : ∀ i, 0 < w i) (hW : (∑ i, w i) ≠ 0) :
    (∑ i, v i) ^ 2 / (∑ i, w i) ≤ groupedEnergy label w v := by
  have hp := surjective_grouping_positive_width label hs w hw
  have htot := complete_grouping_retains_total label w
  have h := WeightedHodge.finite_refinement_mono Finset.univ
    (fiberTotal label w) (fiberTotal label v) (fun k _ ↦ hp k) (by simpa [htot] using hW)
  simpa only [Finset.mem_univ, forall_true_left, complete_grouping_retains_total, groupedEnergy]
    using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedRootConsumer/Variant10f3c55772c837f6ccd27f811dccfdd23cfc8dfeceb80f1f7fe7acb2c7080d74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedRootConsumer/Variant10f3c55772c837f6ccd27f811dccfdd23cfc8dfeceb80f1f7fe7acb2c7080d74.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5553864c89e1147df3feab13a677800a8a02baf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
