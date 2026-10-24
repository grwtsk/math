# exists_ae_subset_biUnion_countable_of_isFiniteMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e52564f699c2fd2232ea0b53d1b60a7ae64e203a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 325,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01fea05375b1019c66ea3a3fe0e7461ef0effb8954674a52d36050f7447be6f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e4bdb87-e824-aa9f-9693-4dcaa39e642b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:65096f40-4164-8f1a-f447-32c7dec15055",
  "kind": "lemma",
  "lexical_name": "exists_ae_subset_biUnion_countable_of_isFiniteMeasure",
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
  "slug": "exists-ae-subset-biunion-countable-of-isfinitemeasure--f3905ca80a4ef857b991efab",
  "source": {
    "blob": "e52564f699c2fd2232ea0b53d1b60a7ae64e203a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 325,
    "path": "GRWTSK/Analysis/MeasureTheory/SFinite/Variant01fea05375b1019c66ea3a3fe0e7461ef0effb8954674a52d36050f7447be6f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3905ca80a4ef857b991efab8d59b44f9173f9dec97721ee62e49cd37f428d1c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SFinite/Variant01fea05375b1019c66ea3a3fe0e7461ef0effb8954674a52d36050f7447be6f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65096f40-4164-8f1a-f447-32c7dec15055`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exists_ae_subset_biUnion_countable_of_isFiniteMeasure [IsFiniteMeasure μ]
    {C : Set (Set α)} (hC : ∀ s ∈ C, MeasurableSet s) :
    ∃ D ⊆ C, D.Countable ∧ ∀ s ∈ C, s ≤ᵐ[μ] (⋃₀ D) := by
  let m := ⨆ D ∈ {D : Set (Set α) | D ⊆ C ∧ D.Countable}, μ (⋃₀ D)
  obtain ⟨D, D_mem, hD⟩ : ∃ D ∈ {D : Set (Set α) | D ⊆ C ∧ D.Countable}, μ (⋃₀ D) = m := by
    rcases eq_bot_or_bot_lt m with hm | hm
    · exact ⟨∅, by simp, by simp [hm]⟩
    obtain ⟨u, -, u_mem, u_lim⟩ :
        ∃ u : ℕ → ℝ≥0∞, StrictMono u ∧ (∀ n, u n ∈ Ioo 0 m) ∧ Tendsto u atTop (𝓝 m) :=
      exists_seq_strictMono_tendsto' hm
    have A n : ∃ D ∈ {D : Set (Set α) | D ⊆ C ∧ D.Countable}, u n < μ (⋃₀ D) :=
      lt_biSup_iff.1 (u_mem n).2
    choose! D D_mem huD using A
    have hD : ⋃ n, D n ∈ {D | D ⊆ C ∧ D.Countable} := by simp; grind
    refine ⟨⋃ n, D n, hD, ?_⟩
    apply le_antisymm (le_biSup (f := fun D ↦ μ (⋃₀ D)) hD)
    apply le_of_tendsto' u_lim (fun n ↦ (huD n).le.trans ?_)
    exact measure_mono (fun x hx ↦ by simp at hx ⊢; grind)
  refine ⟨D, by grind, by grind, fun s hs ↦ union_ae_eq_right_iff_ae_subset.mp ?_⟩
  symm
  apply ae_eq_of_ae_subset_of_measure_ge subset_union_right.eventuallySubset
  · rw [hD, show s ∪ ⋃₀ D = ⋃₀ (D ∪ {s}) by simp]
    apply le_biSup (f := fun D ↦ μ (⋃₀ D))
    simp [D_mem.2, insert_subset_iff, hs, D_mem.1]
  · exact (MeasurableSet.sUnion D_mem.2 (by grind)).nullMeasurableSet
  · simp

variable (μ) in
/-- Given a family of measurable sets, its measurable union is its union modulo sets of measure
zero. It is well defined up to measure 0. For instance, the measurable union of all the singleton
sets in `ℝ` is empty (while the usual union would be the whole space).
This lemma shows the existence of a measurable union, writing it as the union of a countable
subfamily. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SFinite/Variant01fea05375b1019c66ea3a3fe0e7461ef0effb8954674a52d36050f7447be6f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SFinite/Variant01fea05375b1019c66ea3a3fe0e7461ef0effb8954674a52d36050f7447be6f8.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e52564f699c2fd2232ea0b53d1b60a7ae64e203a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
