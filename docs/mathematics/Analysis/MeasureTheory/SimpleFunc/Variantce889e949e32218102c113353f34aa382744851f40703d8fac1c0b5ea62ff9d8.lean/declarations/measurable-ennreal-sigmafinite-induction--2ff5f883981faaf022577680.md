# Measurable.ennreal_sigmaFinite_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "adbdc460fc9bf1402a274d5a9c34c19a93ecf6f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1318,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce889e949e32218102c113353f34aa382744851f40703d8fac1c0b5ea62ff9d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25c8a8d9-7cd5-99d0-481f-1a1331a2246b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3683f4ac-b154-a875-8359-f6c229d40848",
  "kind": "lemma",
  "lexical_name": "Measurable.ennreal_sigmaFinite_induction",
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
  "slug": "measurable-ennreal-sigmafinite-induction--2ff5f883981faaf022577680",
  "source": {
    "blob": "adbdc460fc9bf1402a274d5a9c34c19a93ecf6f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1331,
    "line": 1318,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variantce889e949e32218102c113353f34aa382744851f40703d8fac1c0b5ea62ff9d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ff5f883981faaf022577680d4df0211fc5401fc776aeb2aadc09ded00761ccb",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFunc/Variantce889e949e32218102c113353f34aa382744851f40703d8fac1c0b5ea62ff9d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3683f4ac-b154-a875-8359-f6c229d40848`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1318–1331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Measurable.ennreal_sigmaFinite_induction [SigmaFinite μ] {motive : (α → ℝ≥0∞) → Prop}
    (indicator : ∀ (c : ℝ≥0∞) ⦃s⦄, MeasurableSet s → μ s < ∞ → motive (Set.indicator s fun _ ↦ c))
    (add : ∀ ⦃f g : α → ℝ≥0∞⦄, Disjoint (support f) (support g) →
      Measurable f → Measurable g → motive f → motive g → motive (f + g))
    (iSup : ∀ ⦃f : ℕ → α → ℝ≥0∞⦄, (∀ n, Measurable (f n)) → Monotone f →
      (∀ n, motive (f n)) → motive fun x => ⨆ n, f n x)
    ⦃f : α → ℝ≥0∞⦄ (hf : Measurable f) : motive f := by
  refine Measurable.ennreal_induction (fun c s hs ↦ ?_) add iSup hf
  convert iSup (f := fun n ↦ (s ∩ spanningSets μ n).indicator fun _ ↦ c)
    (fun n ↦ measurable_const.indicator (hs.inter (measurableSet_spanningSets ..)))
    (fun m n hmn a ↦ Set.indicator_le_indicator_of_subset (by gcongr) (by simp) _)
    (fun n ↦ indicator _ (hs.inter (measurableSet_spanningSets ..))
      (measure_inter_lt_top_of_right_ne_top (measure_spanningSets_lt_top ..).ne)) with a
  simp [← Set.indicator_iUnion_apply (M := ℝ≥0∞) rfl, ← Set.inter_iUnion]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFunc/Variantce889e949e32218102c113353f34aa382744851f40703d8fac1c0b5ea62ff9d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variantce889e949e32218102c113353f34aa382744851f40703d8fac1c0b5ea62ff9d8.lean#L1318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adbdc460fc9bf1402a274d5a9c34c19a93ecf6f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
