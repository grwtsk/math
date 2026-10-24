# lintegral_toKernel_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdac0048-19a4-7563-abb9-3813cecdbfb5",
  "kind": "lemma",
  "lexical_name": "lintegral_toKernel_mem",
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
  "slug": "lintegral-tokernel-mem--caef1ec12b6b0dd65da0daee",
  "source": {
    "blob": "68df4de21d3c5a60e207acbee33b7fdff8eb3e7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 627,
    "line": 557,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:caef1ec12b6b0dd65da0daee347423e384f924c421f7d8e56047813715362e32",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdac0048-19a4-7563-abb9-3813cecdbfb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 557–627.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lintegral_toKernel_mem [IsFiniteKernel κ] (hf : IsCondKernelCDF f κ ν)
    (a : α) {s : Set (β × ℝ)} (hs : MeasurableSet s) :
    ∫⁻ b, hf.toKernel f (a, b) (Prod.mk b ⁻¹' s) ∂(ν a) = κ a s := by
  -- `setLIntegral_toKernel_prod` gives the result for sets of the form `t₁ × t₂`. These
  -- sets form a π-system that generates the product σ-algebra, hence we can get the same equality
  -- for any measurable set `s`.
  induction s, hs
    using MeasurableSpace.induction_on_inter generateFrom_prod.symm isPiSystem_prod with
  | empty =>
    simp only [preimage_empty, measure_empty, lintegral_const, zero_mul]
  | basic s hs =>
    rcases hs with ⟨t₁, ht₁, t₂, ht₂, rfl⟩
    simp only [mem_setOf_eq] at ht₁ ht₂
    rw [← lintegral_add_compl _ ht₁]
    have h_eq1 : ∫⁻ x in t₁, hf.toKernel f (a, x) (Prod.mk x ⁻¹' t₁ ×ˢ t₂) ∂(ν a)
        = ∫⁻ x in t₁, hf.toKernel f (a, x) t₂ ∂(ν a) := by
      refine setLIntegral_congr_fun ht₁ (Eventually.of_forall fun a ha ↦ ?_)
      rw [mk_preimage_prod_right ha]
    have h_eq2 :
        ∫⁻ x in t₁ᶜ, hf.toKernel f (a, x) (Prod.mk x ⁻¹' t₁ ×ˢ t₂) ∂(ν a) = 0 := by
      suffices h_eq_zero :
          ∀ x ∈ t₁ᶜ, hf.toKernel f (a, x) (Prod.mk x ⁻¹' t₁ ×ˢ t₂) = 0 by
        rw [setLIntegral_congr_fun ht₁.compl (Eventually.of_forall h_eq_zero)]
        simp only [lintegral_const, zero_mul]
      intro a hat₁
      rw [mem_compl_iff] at hat₁
      simp only [hat₁, not_false_eq_true, mk_preimage_prod_right_eq_empty, measure_empty]
    rw [h_eq1, h_eq2, add_zero]
    exact setLIntegral_toKernel_prod hf a ht₁ ht₂
  | compl t ht ht_eq =>
    calc ∫⁻ b, hf.toKernel f (a, b) (Prod.mk b ⁻¹' tᶜ) ∂(ν a)
      = ∫⁻ b, hf.toKernel f (a, b) (Prod.mk b ⁻¹' t)ᶜ ∂(ν a) := rfl
    _ = ∫⁻ b, hf.toKernel f (a, b) univ
          - hf.toKernel f (a, b) (Prod.mk b ⁻¹' t) ∂(ν a) := by
        congr with x : 1
        exact measure_compl (measurable_prodMk_left ht)
          (measure_ne_top (hf.toKernel f (a, x)) _)
    _ = ∫⁻ x, hf.toKernel f (a, x) univ ∂(ν a) -
          ∫⁻ x, hf.toKernel f (a, x) (Prod.mk x ⁻¹' t) ∂(ν a) := by
        have h_le : (fun x ↦ hf.toKernel f (a, x) (Prod.mk x ⁻¹' t))
              ≤ᵐ[ν a] fun x ↦ hf.toKernel f (a, x) univ :=
          Eventually.of_forall fun _ ↦ measure_mono (subset_univ _)
        rw [lintegral_sub _ _ h_le]
        · exact Kernel.measurable_kernel_prodMk_left' ht a
        refine ((lintegral_mono_ae h_le).trans_lt ?_).ne
        rw [lintegral_toKernel_univ hf]
        exact measure_lt_top _ univ
    _ = κ a univ - κ a t := by rw [ht_eq, lintegral_toKernel_univ hf]
    _ = κ a tᶜ := (measure_compl ht (measure_ne_top _ _)).symm
  | iUnion f' hf_disj hf_meas hf_eq =>
    have h_eq : ∀ a, Prod.mk a ⁻¹' ⋃ i, f' i = ⋃ i, Prod.mk a ⁻¹' f' i := by
      simp only [preimage_iUnion, implies_true]
    simp_rw [h_eq]
    have h_disj : ∀ a, Pairwise (Disjoint on fun i ↦ Prod.mk a ⁻¹' f' i) := by
      intro a i j hij
      have h_disj := hf_disj hij
      rw [Function.onFun, disjoint_iff_inter_eq_empty] at h_disj ⊢
      ext1 x
      simp only [mem_inter_iff, mem_setOf_eq, mem_empty_iff_false, iff_false]
      intro h_mem_both
      suffices (a, x) ∈ ∅ by rwa [mem_empty_iff_false] at this
      rwa [← h_disj, mem_inter_iff]
    calc ∫⁻ b, hf.toKernel f (a, b) (⋃ i, Prod.mk b ⁻¹' f' i) ∂(ν a)
      = ∫⁻ b, ∑' i, hf.toKernel f (a, b) (Prod.mk b ⁻¹' f' i) ∂(ν a) := by
          congr with x : 1
          rw [measure_iUnion (h_disj x) fun i ↦ measurable_prodMk_left (hf_meas i)]
    _ = ∑' i, ∫⁻ b, hf.toKernel f (a, b) (Prod.mk b ⁻¹' f' i) ∂(ν a) :=
          lintegral_tsum fun i ↦ (Kernel.measurable_kernel_prodMk_left' (hf_meas i) a).aemeasurable
    _ = ∑' i, κ a (f' i) := by simp_rw [hf_eq]
    _ = κ a (iUnion f') := (measure_iUnion hf_disj hf_meas).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean#L557).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68df4de21d3c5a60e207acbee33b7fdff8eb3e7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
