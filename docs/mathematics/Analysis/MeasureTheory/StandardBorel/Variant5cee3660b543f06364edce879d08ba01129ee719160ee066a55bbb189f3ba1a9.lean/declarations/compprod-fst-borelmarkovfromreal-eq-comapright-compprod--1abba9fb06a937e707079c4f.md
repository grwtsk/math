# compProd_fst_borelMarkovFromReal_eq_comapRight_compProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8df5db01-d484-a20b-5866-49c99fab53e1",
  "kind": "lemma",
  "lexical_name": "compProd_fst_borelMarkovFromReal_eq_comapRight_compProd",
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
  "slug": "compprod-fst-borelmarkovfromreal-eq-comapright-compprod--1abba9fb06a937e707079c4f",
  "source": {
    "blob": "156e851c5f54e19386ae6486675ed4aeb73f549f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 243,
    "path": "GRWTSK/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1abba9fb06a937e707079c4f4a09b287654c598760870339809a036d28c2630c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8df5db01-d484-a20b-5866-49c99fab53e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma compProd_fst_borelMarkovFromReal_eq_comapRight_compProd
    (κ : Kernel α (β × Ω)) [IsSFiniteKernel κ] (η : Kernel (α × β) ℝ) [IsSFiniteKernel η]
    (hη : (fst (map κ (Prod.map (id : β → β) (embeddingReal Ω)))) ⊗ₖ η
      = map κ (Prod.map (id : β → β) (embeddingReal Ω))) :
    fst κ ⊗ₖ borelMarkovFromReal Ω η
      = comapRight (fst (map κ (Prod.map (id : β → β) (embeddingReal Ω))) ⊗ₖ η)
        (MeasurableEmbedding.id.prodMap (measurableEmbedding_embeddingReal Ω)) := by
  let e := embeddingReal Ω
  let he := measurableEmbedding_embeddingReal Ω
  let κ' := map κ (Prod.map (id : β → β) e)
  have hη' : fst κ' ⊗ₖ η = κ' := hη
  have h_prod_embed : MeasurableEmbedding (Prod.map (id : β → β) e) :=
    MeasurableEmbedding.id.prodMap he
  change fst κ ⊗ₖ borelMarkovFromReal Ω η = comapRight (fst κ' ⊗ₖ η) h_prod_embed
  rw [comapRight_compProd_id_prod _ _ he]
  have h_fst : fst κ' = fst κ := by
    ext a u
    unfold κ'
    rw [fst_apply, map_apply _ (by fun_prop),
      Measure.map_map measurable_fst h_prod_embed.measurable, fst_apply]
    congr
  rw [h_fst]
  ext a t ht : 2
  simp_rw [compProd_apply ht]
  refine lintegral_congr_ae ?_
  have h_ae : ∀ᵐ t ∂(fst κ a), (a, t) ∈ {p : α × β | η p (range e)ᶜ = 0} := by
    rw [← h_fst]
    have h_compProd : κ' a (univ ×ˢ range e)ᶜ = 0 := by
      unfold κ'
      rw [map_apply' _ (by fun_prop)]
      swap; · exact (MeasurableSet.univ.prod he.measurableSet_range).compl
      suffices Prod.map id e ⁻¹' (univ ×ˢ range e)ᶜ = ∅ by rw [this]; simp
      ext x
      simp
    rw [← hη', compProd_null] at h_compProd
    swap; · exact (MeasurableSet.univ.prod he.measurableSet_range).compl
    simp only [preimage_compl, mem_univ, mk_preimage_prod_right] at h_compProd
    exact h_compProd
  filter_upwards [h_ae] with a ha
  rw [borelMarkovFromReal, comapRight_apply', comapRight_apply']
  rotate_left
  · exact measurable_prodMk_left ht
  · exact measurable_prodMk_left ht
  classical
  rw [piecewise_apply, if_pos]
  exact ha

/-- For `κ' := map κ (Prod.map (id : β → β) e)`, the hypothesis `hη` is `fst κ' ⊗ₖ η = κ'`.
With that hypothesis, `fst κ ⊗ₖ borelMarkovFromReal κ η = κ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `156e851c5f54e19386ae6486675ed4aeb73f549f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
