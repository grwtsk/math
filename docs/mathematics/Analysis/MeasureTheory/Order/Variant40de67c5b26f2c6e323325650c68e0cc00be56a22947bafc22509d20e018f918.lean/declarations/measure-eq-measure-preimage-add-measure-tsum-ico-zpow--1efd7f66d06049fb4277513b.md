# measure_eq_measure_preimage_add_measure_tsum_Ico_zpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:002e5e1d-4998-fe78-4c64-326f79a74efc",
  "kind": "theorem",
  "lexical_name": "measure_eq_measure_preimage_add_measure_tsum_Ico_zpow",
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
  "slug": "measure-eq-measure-preimage-add-measure-tsum-ico-zpow--1efd7f66d06049fb4277513b",
  "source": {
    "blob": "564a2158f1d13b2b598a3dd79fc37c180fa8130c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1147,
    "line": 1104,
    "path": "GRWTSK/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1efd7f66d06049fb4277513b3d43e97f19eb7ecec6c8acaa24a0911645af535e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:002e5e1d-4998-fe78-4c64-326f79a74efc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1104–1147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_eq_measure_preimage_add_measure_tsum_Ico_zpow {α : Type*} {mα : MeasurableSpace α}
    (μ : Measure α) {f : α → ℝ≥0∞} (hf : Measurable f) {s : Set α} (hs : MeasurableSet s)
    {t : ℝ≥0} (ht : 1 < t) :
    μ s =
      μ (s ∩ f ⁻¹' {0}) + μ (s ∩ f ⁻¹' {∞}) +
      ∑' n : ℤ, μ (s ∩ f ⁻¹' Ico ((t : ℝ≥0∞) ^ n) ((t : ℝ≥0∞) ^ (n + 1))) := by
  have A : μ s = μ (s ∩ f ⁻¹' {0}) + μ (s ∩ f ⁻¹' Ioi 0) := by
    rw [← measure_union]
    · rw [← inter_union_distrib_left, ← preimage_union, singleton_union, Ioi_insert,
        ← _root_.bot_eq_zero, Ici_bot, preimage_univ, inter_univ]
    · exact disjoint_singleton_left.mpr self_notMem_Ioi
        |>.preimage f |>.inter_right' s |>.inter_left' s
    · exact hs.inter (hf measurableSet_Ioi)
  have B : μ (s ∩ f ⁻¹' Ioi 0) = μ (s ∩ f ⁻¹' {∞}) + μ (s ∩ f ⁻¹' Ioo 0 ∞) := by
    rw [← measure_union]
    · rw [← inter_union_distrib_left]
      congr
      ext x
      simp only [mem_singleton_iff, mem_union, mem_Ioo, mem_Ioi, mem_preimage]
      obtain (H | H) : f x = ∞ ∨ f x < ∞ := eq_or_lt_of_le le_top
      · simp only [H, or_false, ENNReal.zero_lt_top, not_top_lt, and_false]
      · simp only [H, H.ne, and_true, false_or]
    · refine disjoint_left.2 fun x hx h'x => ?_
      have : f x < ∞ := h'x.2.2
      exact lt_irrefl _ (this.trans_le (le_of_eq hx.2.symm))
    · exact hs.inter (hf measurableSet_Ioo)
  have C : μ (s ∩ f ⁻¹' Ioo 0 ∞) =
      ∑' n : ℤ, μ (s ∩ f ⁻¹' Ico ((t : ℝ≥0∞) ^ n) ((t : ℝ≥0∞) ^ (n + 1))) := by
    rw [← measure_iUnion,
      ENNReal.Ioo_zero_top_eq_iUnion_Ico_zpow (ENNReal.one_lt_coe_iff.2 ht) ENNReal.coe_ne_top,
      preimage_iUnion, inter_iUnion]
    · intro i j hij
      wlog h : i < j generalizing i j
      · exact (this hij.symm (hij.lt_or_gt.resolve_left h)).symm
      refine disjoint_left.2 fun x hx h'x => lt_irrefl (f x) ?_
      calc
        f x < (t : ℝ≥0∞) ^ (i + 1) := hx.2.2
        _ ≤ (t : ℝ≥0∞) ^ j := ENNReal.zpow_le_of_le (ENNReal.one_le_coe_iff.2 ht.le) h
        _ ≤ f x := h'x.2.1
    · intro n
      exact hs.inter (hf measurableSet_Ico)
  rw [A, B, C, add_assoc]

end ENNReal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean#L1104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `564a2158f1d13b2b598a3dd79fc37c180fa8130c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
