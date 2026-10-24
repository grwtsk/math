# Topology.IsClosedEmbedding.isEmbedding_map_finiteMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b8d3b802caeee3f409048a9044cc77e96b73f4f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 985,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5e154ed40aee73b9d2ead9d7605d7eb4dd03805456c1d0378541d6732bdf04e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:277867b7-0285-4e1c-6981-26d4f64f67e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c466cb0c-289f-b261-b5c0-bfc0c089bed1",
  "kind": "lemma",
  "lexical_name": "Topology.IsClosedEmbedding.isEmbedding_map_finiteMeasure",
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
  "slug": "topology-isclosedembedding-isembedding-map-finitemeasure--d24c6e71689063e0c686a7bf",
  "source": {
    "blob": "8b8d3b802caeee3f409048a9044cc77e96b73f4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1028,
    "line": 985,
    "path": "GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variante5e154ed40aee73b9d2ead9d7605d7eb4dd03805456c1d0378541d6732bdf04e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d24c6e71689063e0c686a7bf91616dffce129f08ca4709116ee161b0d6943536",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/FiniteMeasure/Variante5e154ed40aee73b9d2ead9d7605d7eb4dd03805456c1d0378541d6732bdf04e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c466cb0c-289f-b261-b5c0-bfc0c089bed1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 985–1028.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Topology.IsClosedEmbedding.isEmbedding_map_finiteMeasure {Ω : Type*}
    [MeasurableSpace Ω] [TopologicalSpace Ω] [BorelSpace Ω] [NormalSpace Ω']
    (f : Ω → Ω') (hf : IsClosedEmbedding f) :
    IsEmbedding (fun (μ : FiniteMeasure Ω) ↦ μ.map f) := by
  let M : Set (FiniteMeasure Ω') := {μ | μ (range f)ᶜ = 0}
  have A : IsEmbedding (Subtype.val : M → FiniteMeasure Ω') := IsEmbedding.subtypeVal
  let B : FiniteMeasure Ω ≃ₜ M :=
  { toFun μ := by
      refine ⟨μ.map f, ?_⟩
      simp only [null_iff_toMeasure_null, mem_ofPred_eq, toMeasure_map, M]
      rw [Measure.map_apply hf.continuous.measurable hf.isClosed_range.isOpen_compl.measurableSet]
      simp
    invFun := M.domRestrict (fun μ ↦ μ.comap f)
    continuous_toFun := by fun_prop
    continuous_invFun := by
      rw [← continuousOn_iff_continuous_domRestrict]
      exact hf.continuousOn_comap_finiteMeasure
    left_inv μ := by
      ext s hs
      simp only [Set.domRestrict_apply, toMeasure_comap, toMeasure_map]
      rw [Measure.comap_apply, Measure.map_apply, preimage_image_eq]
      · exact hf.injective
      · exact hf.continuous.measurable
      · exact hf.measurableEmbedding.measurableSet_image' hs
      · exact hf.injective
      · exact fun t ht ↦ hf.measurableEmbedding.measurableSet_image' ht
      · exact hs
    right_inv μ := by
      ext s hs
      simp only [Set.domRestrict_apply, toMeasure_map]
      rw [Measure.map_apply hf.continuous.measurable hs]
      simp only [toMeasure_comap]
      rw [Measure.comap_apply _ hf.injective, image_preimage_eq_inter_range]
      · rw [← Measure.restrict_apply hs, Measure.restrict_eq_self_of_ae_mem]
        exact (null_iff_toMeasure_null (↑μ) (range f)ᶜ).mp (by exact μ.2)
      · exact fun t ht ↦ hf.measurableEmbedding.measurableSet_image' ht
      · exact hf.continuous.measurable hs }
  exact A.comp B.isEmbedding

end map -- section

end FiniteMeasure -- namespace

end MeasureTheory -- namespace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/FiniteMeasure/Variante5e154ed40aee73b9d2ead9d7605d7eb4dd03805456c1d0378541d6732bdf04e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variante5e154ed40aee73b9d2ead9d7605d7eb4dd03805456c1d0378541d6732bdf04e.lean#L985).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b8d3b802caeee3f409048a9044cc77e96b73f4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
