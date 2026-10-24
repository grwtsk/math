# measurable_kernel_prodMk_left_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f9d3441ed4976bac7b264c0834919a77b694285",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff82972a-3802-ff78-3b86-385ae42d2e14",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fba28ac9-b0b5-5e2c-da8e-03a3fdaecf86",
  "kind": "theorem",
  "lexical_name": "measurable_kernel_prodMk_left_of_finite",
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
  "slug": "measurable-kernel-prodmk-left-of-finite--38d6140c7fd21fabb4201829",
  "source": {
    "blob": "7f9d3441ed4976bac7b264c0834919a77b694285",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 35,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38d6140c7fd21fabb4201829c318acc081f95f5f47c249f2230de4ad98b91ddf",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fba28ac9-b0b5-5e2c-da8e-03a3fdaecf86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurable_kernel_prodMk_left_of_finite {t : Set (α × β)} (ht : MeasurableSet t)
    (hκs : ∀ a, IsFiniteMeasure (κ a)) : Measurable fun a => κ a (Prod.mk a ⁻¹' t) := by
  -- `t` is a measurable set in the product `α × β`: we use that the product σ-algebra is generated
  -- by boxes to prove the result by induction.
  induction t, ht
    using MeasurableSpace.induction_on_inter generateFrom_prod.symm isPiSystem_prod with
  | empty => simp only [preimage_empty, measure_empty, measurable_const]
  | basic t ht =>
    simp only [Set.mem_image2, Set.mem_setOf_eq] at ht
    obtain ⟨t₁, ht₁, t₂, ht₂, rfl⟩ := ht
    classical
    simp_rw [mk_preimage_prod_right_eq_if]
    have h_eq_ite : (fun a => κ a (ite (a ∈ t₁) t₂ ∅)) = fun a => ite (a ∈ t₁) (κ a t₂) 0 := by
      ext1 a
      split_ifs
      exacts [rfl, measure_empty]
    rw [h_eq_ite]
    exact Measurable.ite ht₁ (Kernel.measurable_coe κ ht₂) measurable_const
  | compl t htm iht =>
    have h_eq_sdiff : ∀ a, Prod.mk a ⁻¹' tᶜ = Set.univ \ Prod.mk a ⁻¹' t := by
      intro a
      ext1 b
      simp only [mem_compl_iff, mem_preimage, mem_diff, mem_univ, true_and]
    simp_rw [h_eq_sdiff]
    have : (fun a => κ a (Set.univ \ Prod.mk a ⁻¹' t)) =
        fun a => κ a Set.univ - κ a (Prod.mk a ⁻¹' t) := by
      ext1 a
      rw [← Set.diff_inter_self_eq_diff, Set.inter_univ, measure_diff (Set.subset_univ _)]
      · exact (measurable_prodMk_left htm).nullMeasurableSet
      · exact measure_ne_top _ _
    rw [this]
    exact Measurable.sub (Kernel.measurable_coe κ MeasurableSet.univ) iht
  | iUnion f h_disj hf_meas hf =>
    have (a : α) : κ a (Prod.mk a ⁻¹' ⋃ i, f i) = ∑' i, κ a (Prod.mk a ⁻¹' f i) := by
      rw [preimage_iUnion, measure_iUnion]
      · exact h_disj.mono fun _ _ ↦ .preimage _
      · exact fun i ↦ measurable_prodMk_left (hf_meas i)
    simpa only [this] using Measurable.ennreal_tsum hf

@[deprecated (since := "2025-03-05")]
alias measurable_kernel_prod_mk_left_of_finite := measurable_kernel_prodMk_left_of_finite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f9d3441ed4976bac7b264c0834919a77b694285` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
