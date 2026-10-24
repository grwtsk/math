# measurable_kernel_prod_mk_left_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "52213a5c2fb76687f78d93d536d935668db8bd8c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64bc8de0-a030-111d-bfaa-2e99c3daaa58",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4fb6002f-eb33-c23f-c363-0df6faf72f92",
  "kind": "theorem",
  "lexical_name": "measurable_kernel_prod_mk_left_of_finite",
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
  "slug": "measurable-kernel-prod-mk-left-of-finite--7812a1246300748cb11a6e41",
  "source": {
    "blob": "52213a5c2fb76687f78d93d536d935668db8bd8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 40,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7812a1246300748cb11a6e41e400f96fecbfd16c11ad4390cd665f7f3389a377",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fb6002f-eb33-c23f-c363-0df6faf72f92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurable_kernel_prod_mk_left_of_finite {t : Set (α × β)} (ht : MeasurableSet t)
    (hκs : ∀ a, IsFiniteMeasure (κ a)) : Measurable fun a => κ a (Prod.mk a ⁻¹' t) := by
  -- `t` is a measurable set in the product `α × β`: we use that the product σ-algebra is generated
  -- by boxes to prove the result by induction.
  -- Porting note: added motive
  refine' MeasurableSpace.induction_on_inter
    (C := fun t => Measurable fun a => κ a (Prod.mk a ⁻¹' t))
    generateFrom_prod.symm isPiSystem_prod _ _ _ _ ht
  ·-- case `t = ∅`
    simp only [preimage_empty, measure_empty, measurable_const]
  · -- case of a box: `t = t₁ ×ˢ t₂` for measurable sets `t₁` and `t₂`
    intro t' ht'
    simp only [Set.mem_image2, Set.mem_setOf_eq, exists_and_left] at ht'
    obtain ⟨t₁, ht₁, t₂, ht₂, rfl⟩ := ht'
    classical
    simp_rw [mk_preimage_prod_right_eq_if]
    have h_eq_ite : (fun a => κ a (ite (a ∈ t₁) t₂ ∅)) = fun a => ite (a ∈ t₁) (κ a t₂) 0 := by
      ext1 a
      split_ifs
      exacts [rfl, measure_empty]
    rw [h_eq_ite]
    exact Measurable.ite ht₁ (kernel.measurable_coe κ ht₂) measurable_const
  · -- we assume that the result is true for `t` and we prove it for `tᶜ`
    intro t' ht' h_meas
    have h_eq_sdiff : ∀ a, Prod.mk a ⁻¹' t'ᶜ = Set.univ \ Prod.mk a ⁻¹' t' := by
      intro a
      ext1 b
      simp only [mem_compl_iff, mem_preimage, mem_diff, mem_univ, true_and_iff]
    simp_rw [h_eq_sdiff]
    have :
      (fun a => κ a (Set.univ \ Prod.mk a ⁻¹' t')) = fun a =>
        κ a Set.univ - κ a (Prod.mk a ⁻¹' t') := by
      ext1 a
      rw [← Set.diff_inter_self_eq_diff, Set.inter_univ, measure_diff (Set.subset_univ _)]
      · exact (@measurable_prod_mk_left α β _ _ a) ht'
      · exact measure_ne_top _ _
    rw [this]
    exact Measurable.sub (kernel.measurable_coe κ MeasurableSet.univ) h_meas
  · -- we assume that the result is true for a family of disjoint sets and prove it for their union
    intro f h_disj hf_meas hf
    have h_Union :
      (fun a => κ a (Prod.mk a ⁻¹' ⋃ i, f i)) = fun a => κ a (⋃ i, Prod.mk a ⁻¹' f i) := by
      ext1 a
      congr with b
      simp only [mem_iUnion, mem_preimage]
    rw [h_Union]
    have h_tsum :
      (fun a => κ a (⋃ i, Prod.mk a ⁻¹' f i)) = fun a => ∑' i, κ a (Prod.mk a ⁻¹' f i) := by
      ext1 a
      rw [measure_iUnion]
      · intro i j hij s hsi hsj b hbs
        have habi : {(a, b)} ⊆ f i := by rw [Set.singleton_subset_iff]; exact hsi hbs
        have habj : {(a, b)} ⊆ f j := by rw [Set.singleton_subset_iff]; exact hsj hbs
        simpa only [Set.bot_eq_empty, Set.le_eq_subset, Set.singleton_subset_iff,
          Set.mem_empty_iff_false] using h_disj hij habi habj
      · exact fun i => (@measurable_prod_mk_left α β _ _ a) (hf_meas i)
    rw [h_tsum]
    exact Measurable.ennreal_tsum hf
#align probability_theory.kernel.measurable_kernel_prod_mk_left_of_finite ProbabilityTheory.kernel.measurable_kernel_prod_mk_left_of_finite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52213a5c2fb76687f78d93d536d935668db8bd8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
