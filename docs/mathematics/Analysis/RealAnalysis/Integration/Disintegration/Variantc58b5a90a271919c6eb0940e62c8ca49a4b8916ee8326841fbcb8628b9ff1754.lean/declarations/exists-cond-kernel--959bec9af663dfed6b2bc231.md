# exists_cond_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:677b7617-6950-1a08-e518-84861d9b9bb5",
  "kind": "theorem",
  "lexical_name": "exists_cond_kernel",
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
  "slug": "exists-cond-kernel--959bec9af663dfed6b2bc231",
  "source": {
    "blob": "ba43ee13e0b7da787fe27cb685b7a531403c97ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 272,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Disintegration/Variantc58b5a90a271919c6eb0940e62c8ca49a4b8916ee8326841fbcb8628b9ff1754.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:959bec9af663dfed6b2bc231cb32018f2cdee145fa65e22eefaa44aa3cb6d643",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Disintegration/Variantc58b5a90a271919c6eb0940e62c8ca49a4b8916ee8326841fbcb8628b9ff1754.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:677b7617-6950-1a08-e518-84861d9b9bb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_cond_kernel (γ : Type*) [MeasurableSpace γ] :
    ∃ (η : kernel α Ω) (_h : IsMarkovKernel η), kernel.const γ ρ =
      kernel.compProd (kernel.const γ ρ.fst) (kernel.prodMkLeft γ η) := by
  obtain ⟨f, hf⟩ := exists_measurableEmbedding_real Ω
  let ρ' : Measure (α × ℝ) := ρ.map (Prod.map id f)
  -- The general idea is to define `η = kernel.comapRight (condKernelReal ρ') hf`. There is
  -- however an issue: that `η` may not be a Markov kernel since its value is only a
  -- probability distribution almost everywhere with respect to `ρ.fst`, not everywhere.
  -- We modify it to obtain a Markov kernel which is almost everywhere equal.
  let ρ_set := (toMeasurable ρ.fst {a | condKernelReal ρ' a (range f) = 1}ᶜ)ᶜ
  have hm : MeasurableSet ρ_set := (measurableSet_toMeasurable _ _).compl
  have h_eq_one_of_mem : ∀ a ∈ ρ_set, condKernelReal ρ' a (range f) = 1 := by
    intro a ha
    rw [mem_compl_iff] at ha
    have h_ss := subset_toMeasurable ρ.fst {a : α | condKernelReal ρ' a (range f) = 1}ᶜ
    suffices ha' : a ∉ {a : α | condKernelReal ρ' a (range f) = 1}ᶜ
    · rwa [not_mem_compl_iff] at ha'
    exact not_mem_subset h_ss ha
  have h_prod_embed : MeasurableEmbedding (Prod.map (id : α → α) f) :=
    MeasurableEmbedding.id.prod_mk hf
  have h_fst : ρ'.fst = ρ.fst := by
    ext1 u hu
    rw [Measure.fst_apply hu, Measure.fst_apply hu,
      Measure.map_apply h_prod_embed.measurable (measurable_fst hu)]
    rfl
  have h_ae : ∀ᵐ a ∂ρ.fst, a ∈ ρ_set := by
    rw [ae_iff]
    simp only [not_mem_compl_iff, setOf_mem_eq, measure_toMeasurable]
    change ρ.fst {a : α | a ∉ {a' : α | condKernelReal ρ' a' (range f) = 1}} = 0
    rw [← ae_iff, ← h_fst]
    refine' ae_condKernelReal_eq_one ρ' hf.measurableSet_range _
    rw [Measure.map_apply h_prod_embed.measurable]
    swap; · exact measurable_snd hf.measurableSet_range.compl
    convert measure_empty (α := α × Ω)
    ext1 x
    simp only [mem_compl_iff, mem_range, preimage_setOf_eq, Prod_map, mem_setOf_eq,
      mem_empty_iff_false, iff_false_iff, Classical.not_not, exists_apply_eq_apply]
  classical
  obtain ⟨x₀, hx₀⟩ : ∃ x, x ∈ range f := range_nonempty _
  let η' :=
    kernel.piecewise hm (condKernelReal ρ') (kernel.deterministic (fun _ => x₀) measurable_const)
  -- We show that `kernel.comapRight η' hf` is a suitable Markov kernel.
  refine' ⟨kernel.comapRight η' hf, _, _⟩
  · refine' kernel.IsMarkovKernel.comapRight _ _ fun a => _
    rw [kernel.piecewise_apply']
    split_ifs with h_mem
    · exact h_eq_one_of_mem _ h_mem
    · rw [kernel.deterministic_apply' _ _ hf.measurableSet_range, Set.indicator_apply, if_pos hx₀]
  have : kernel.const γ ρ = kernel.comapRight (kernel.const γ ρ') h_prod_embed := by
    ext c t ht : 2
    rw [kernel.const_apply, kernel.comapRight_apply' _ _ _ ht, kernel.const_apply,
      Measure.map_apply h_prod_embed.measurable (h_prod_embed.measurableSet_image.mpr ht)]
    congr with x : 1
    rw [← @Prod.mk.eta _ _ x]
    simp only [id.def, mem_preimage, Prod.map_mk, mem_image, Prod.mk.inj_iff, Prod.exists]
    refine' ⟨fun h => ⟨x.1, x.2, h, rfl, rfl⟩, _⟩
    rintro ⟨a, b, h_mem, rfl, hf_eq⟩
    rwa [hf.injective hf_eq] at h_mem
  rw [this, kernel.const_eq_compProd_real _ ρ']
  ext c t ht : 2
  rw [kernel.comapRight_apply' _ _ _ ht,
    kernel.compProd_apply _ _ _ (h_prod_embed.measurableSet_image.mpr ht), kernel.const_apply,
    h_fst, kernel.compProd_apply _ _ _ ht, kernel.const_apply]
  refine' lintegral_congr_ae _
  filter_upwards [h_ae] with a ha
  rw [kernel.prodMkLeft_apply', kernel.prodMkLeft_apply', kernel.comapRight_apply']
  swap
  · exact measurable_prod_mk_left ht
  have h1 : {c : ℝ | (a, c) ∈ Prod.map id f '' t} = f '' {c : Ω | (a, c) ∈ t} := by
    ext1 x
    simp only [Prod_map, id.def, mem_image, Prod.mk.inj_iff, Prod.exists, mem_setOf_eq]
    constructor
    · rintro ⟨a', b, h_mem, rfl, hf_eq⟩
      exact ⟨b, h_mem, hf_eq⟩
    · rintro ⟨b, h_mem, hf_eq⟩
      exact ⟨a, b, h_mem, rfl, hf_eq⟩
  have h2 : condKernelReal ρ' (c, a).snd = η' (c, a).snd := by
    rw [kernel.piecewise_apply, if_pos ha]
  rw [h1, h2]
#align probability_theory.exists_cond_kernel ProbabilityTheory.exists_cond_kernel

/-- Conditional kernel of a measure on a product space: a Markov kernel such that
`ρ = ((kernel.const Unit ρ.fst) ⊗ₖ (kernel.prodMkLeft Unit ρ.condKernel)) ()`
(see `ProbabilityTheory.measure_eq_compProd`). -/
noncomputable irreducible_def _root_.MeasureTheory.Measure.condKernel : kernel α Ω :=
  (exists_cond_kernel ρ Unit).choose
#align measure_theory.measure.cond_kernel MeasureTheory.Measure.condKernel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Disintegration/Variantc58b5a90a271919c6eb0940e62c8ca49a4b8916ee8326841fbcb8628b9ff1754.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Disintegration/Variantc58b5a90a271919c6eb0940e62c8ca49a4b8916ee8326841fbcb8628b9ff1754.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba43ee13e0b7da787fe27cb685b7a531403c97ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
