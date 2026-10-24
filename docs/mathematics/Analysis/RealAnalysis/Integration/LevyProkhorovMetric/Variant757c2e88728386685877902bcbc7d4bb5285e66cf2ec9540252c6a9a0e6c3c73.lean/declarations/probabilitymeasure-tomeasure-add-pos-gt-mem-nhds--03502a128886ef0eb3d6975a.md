# ProbabilityMeasure.toMeasure_add_pos_gt_mem_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5a3cec9b3322e6a6337e53352aee7d75562b9d9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 493,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/757c2e88728386685877902bcbc7d4bb5285e66cf2ec9540252c6a9a0e6c3c73.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6cdbd1ee-f22a-f588-9e4b-bee4acece13f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e26eb1ca-ee67-f6cb-c458-469054f28e69",
  "kind": "lemma",
  "lexical_name": "ProbabilityMeasure.toMeasure_add_pos_gt_mem_nhds",
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
  "slug": "probabilitymeasure-tomeasure-add-pos-gt-mem-nhds--03502a128886ef0eb3d6975a",
  "source": {
    "blob": "a5a3cec9b3322e6a6337e53352aee7d75562b9d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 516,
    "line": 493,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant757c2e88728386685877902bcbc7d4bb5285e66cf2ec9540252c6a9a0e6c3c73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03502a128886ef0eb3d6975a13284bd33a87bb71b7baeb27beba4a6314e3bb93",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant757c2e88728386685877902bcbc7d4bb5285e66cf2ec9540252c6a9a0e6c3c73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e26eb1ca-ee67-f6cb-c458-469054f28e69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 493–516.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ProbabilityMeasure.toMeasure_add_pos_gt_mem_nhds (P : ProbabilityMeasure Ω)
    {G : Set Ω} (G_open : IsOpen G) {ε : ℝ≥0∞} (ε_pos : 0 < ε) :
    {Q | P.toMeasure G < Q.toMeasure G + ε} ∈ 𝓝 P := by
  by_cases easy : P.toMeasure G < ε
  · exact Eventually.of_forall (fun _ ↦ lt_of_lt_of_le easy le_add_self)
  by_cases ε_top : ε = ∞
  · simp [ε_top, measure_lt_top]
  simp only [not_lt] at easy
  have aux : P.toMeasure G - ε < liminf (fun Q ↦ Q.toMeasure G) (𝓝 P) := by
    apply lt_of_lt_of_le (ENNReal.sub_lt_self (measure_lt_top _ _).ne _ _)
        <| ProbabilityMeasure.le_liminf_measure_open_of_tendsto tendsto_id G_open
    · exact (lt_of_lt_of_le ε_pos easy).ne.symm
    · exact ε_pos.ne.symm
  filter_upwards [gt_mem_sets_of_limsInf_gt (α := ℝ≥0∞) isBounded_ge_of_bot
      (show P.toMeasure G - ε < limsInf ((𝓝 P).map (fun Q ↦ Q.toMeasure G)) from aux)] with Q hQ
  simp only [preimage_setOf_eq, mem_setOf_eq] at hQ
  convert ENNReal.add_lt_add_right ε_top hQ
  exact (tsub_add_cancel_of_le easy).symm

variable [SeparableSpace Ω]

variable (Ω) in
/-- In a separable pseudometric space, for any ε > 0 there exists a countable collection of
disjoint Borel measurable subsets of diameter at most ε that cover the whole space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant757c2e88728386685877902bcbc7d4bb5285e66cf2ec9540252c6a9a0e6c3c73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant757c2e88728386685877902bcbc7d4bb5285e66cf2ec9540252c6a9a0e6c3c73.lean#L493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5a3cec9b3322e6a6337e53352aee7d75562b9d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
