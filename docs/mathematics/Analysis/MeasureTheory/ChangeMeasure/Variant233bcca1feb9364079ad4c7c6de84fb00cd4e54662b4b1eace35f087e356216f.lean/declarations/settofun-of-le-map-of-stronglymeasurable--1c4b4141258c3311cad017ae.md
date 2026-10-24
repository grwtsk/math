# setToFun_of_le_map_of_stronglyMeasurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74a7ebec-80ee-352c-34c7-62718da8ef9f",
  "kind": "theorem",
  "lexical_name": "setToFun_of_le_map_of_stronglyMeasurable",
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
  "slug": "settofun-of-le-map-of-stronglymeasurable--1c4b4141258c3311cad017ae",
  "source": {
    "blob": "2f8a6014c613c47fa42f2de2ee8722e4f4da63d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 64,
    "path": "GRWTSK/Analysis/MeasureTheory/ChangeMeasure/Variant233bcca1feb9364079ad4c7c6de84fb00cd4e54662b4b1eace35f087e356216f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c4b4141258c3311cad017aefd08f7c6edfeae2dcebebd9a6af6e6ea97ff07cb",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ChangeMeasure/Variant233bcca1feb9364079ad4c7c6de84fb00cd4e54662b4b1eace35f087e356216f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74a7ebec-80ee-352c-34c7-62718da8ef9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setToFun_of_le_map_of_stronglyMeasurable
    (hT : DominatedFinMeasAdditive μ T C) {β : Type*} {_ : MeasurableSpace β}
    {μ' : Measure β} {φ : α → β} {T' : Set β → E →L[ℝ] F} (hT' : DominatedFinMeasAdditive μ' T' C')
    {f : β → E} (hf : Integrable (f ∘ φ) μ) (hfm : StronglyMeasurable f) (hφ : Measurable φ)
    (hμ' : μ' ≤ μ.map φ)
    (h : ∀ (s : Set β) (x : E), MeasurableSet s → T' s x = T (φ ⁻¹' s) x) :
    setToFun μ' T' hT' f = setToFun μ T hT (f ∘ φ) := by
  by_cases hF : CompleteSpace F; swap
  · simp [setToFun, hF]
  have hfi' : Integrable f μ' :=
    ((integrable_map_measure hfm.aestronglyMeasurable hφ.aemeasurable).2 hf).mono_measure hμ'
  borelize E
  have : SeparableSpace (range f ∪ {0} : Set E) := hfm.separableSpace_range_union_singleton
  refine tendsto_nhds_unique_of_forall
    (tendsto_setToFun_approxOn_of_measurable_of_range_subset hT' hfm.measurable hfi' _ Subset.rfl)
      (tendsto_setToFun_approxOn_of_measurable_of_range_subset hT (hfm.measurable.comp hφ) hf
        (range f ∪ {0}) (union_subset_union_left {0} (range_comp_subset_range φ f))) fun i ↦ ?_
  rw [setToFun_simpleFunc _ _ (SimpleFunc.integrable_approxOn_range _ hfi' _),
    setToFun_simpleFunc, SimpleFunc.approxOn_comp hfm.measurable hφ]; swap
  · apply SimpleFunc.integrable_approxOn _ hf (by simp) (by simp)
  simp only [union_singleton, SimpleFunc.measurableSet_preimage, h, ← preimage_comp,
    SimpleFunc.coe_comp]
  refine (Finset.sum_subset (SimpleFunc.range_comp_subset_range _ hφ) fun y _ hy => ?_).symm
  rw [SimpleFunc.mem_range, ← Set.preimage_singleton_eq_empty, SimpleFunc.coe_comp] at hy
  simp [hy, hT.1.map_empty_eq_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ChangeMeasure/Variant233bcca1feb9364079ad4c7c6de84fb00cd4e54662b4b1eace35f087e356216f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ChangeMeasure/Variant233bcca1feb9364079ad4c7c6de84fb00cd4e54662b4b1eace35f087e356216f.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f8a6014c613c47fa42f2de2ee8722e4f4da63d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
