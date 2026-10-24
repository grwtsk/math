# Measurable.ennreal_sigmaFinite_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c52d2253-3393-1282-b921-86053fe01d33",
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
  "slug": "measurable-ennreal-sigmafinite-induction--f74c61641229fc882147656b",
  "source": {
    "blob": "66ebaf55a63f8a691411eebfd3dca650a66650bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1339,
    "line": 1326,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variantcdb3b492e45b87be7eac236925c3456a4967acdaceb3484aed2bb09e803a4318.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f74c61641229fc882147656b5e1df61a9de91ada016d25d6beee923a7154e248",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFunc/Variantcdb3b492e45b87be7eac236925c3456a4967acdaceb3484aed2bb09e803a4318.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c52d2253-3393-1282-b921-86053fe01d33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1326–1339.

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFunc/Variantcdb3b492e45b87be7eac236925c3456a4967acdaceb3484aed2bb09e803a4318.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variantcdb3b492e45b87be7eac236925c3456a4967acdaceb3484aed2bb09e803a4318.lean#L1326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66ebaf55a63f8a691411eebfd3dca650a66650bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
