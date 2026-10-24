# lintegral_condKernelReal_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f4ac2e8-39a2-6a67-3e9a-b2ec4e885351",
  "kind": "theorem",
  "lexical_name": "lintegral_condKernelReal_mem",
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
  "slug": "lintegral-condkernelreal-mem--3cf624528194a5d761171a7b",
  "source": {
    "blob": "ba43ee13e0b7da787fe27cb685b7a531403c97ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 143,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Disintegration/Variantc58b5a90a271919c6eb0940e62c8ca49a4b8916ee8326841fbcb8628b9ff1754.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cf624528194a5d761171a7b0701a205cc26097c5ee734ab7c07de652473fd78",
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

Occurrence: `result:1f4ac2e8-39a2-6a67-3e9a-b2ec4e885351`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_condKernelReal_mem {s : Set (α × ℝ)} (hs : MeasurableSet s) :
    ∫⁻ a, condKernelReal ρ a {x | (a, x) ∈ s} ∂ρ.fst = ρ s := by
  -- `set_lintegral_condKernelReal_prod` gives the result for sets of the form `t₁ × t₂`. These
  -- sets form a π-system that generates the product σ-algebra, hence we can get the same equality
  -- for any measurable set `s`.
  apply MeasurableSpace.induction_on_inter generateFrom_prod.symm isPiSystem_prod _ _ _ _ hs
  · simp only [mem_empty_iff_false, setOf_false, measure_empty, lintegral_const,
      zero_mul]
  · intro t ht
    rw [mem_image2] at ht
    obtain ⟨t₁, t₂, ht₁, ht₂, rfl⟩ := ht
    have h_prod_eq_snd : ∀ a ∈ t₁, {x : ℝ | (a, x) ∈ t₁ ×ˢ t₂} = t₂ := by
      intro a ha
      simp only [ha, prod_mk_mem_set_prod_eq, true_and_iff, setOf_mem_eq]
    cases' eq_empty_or_nonempty t₂ with h h
    · simp only [h, prod_empty, mem_empty_iff_false, setOf_false, measure_empty, lintegral_const,
        zero_mul]
    rw [← lintegral_add_compl _ ht₁]
    have h_eq1 : ∫⁻ a in t₁, condKernelReal ρ a {x : ℝ | (a, x) ∈ t₁ ×ˢ t₂} ∂ρ.fst =
        ∫⁻ a in t₁, condKernelReal ρ a t₂ ∂ρ.fst := by
      refine' set_lintegral_congr_fun ht₁ (eventually_of_forall fun a ha => _)
      rw [h_prod_eq_snd a ha]
    have h_eq2 : ∫⁻ a in t₁ᶜ, condKernelReal ρ a {x : ℝ | (a, x) ∈ t₁ ×ˢ t₂} ∂ρ.fst = 0 := by
      suffices h_eq_zero : ∀ a ∈ t₁ᶜ, condKernelReal ρ a {x : ℝ | (a, x) ∈ t₁ ×ˢ t₂} = 0
      · rw [set_lintegral_congr_fun ht₁.compl (eventually_of_forall h_eq_zero)]
        simp only [lintegral_const, zero_mul]
      intro a hat₁
      rw [mem_compl_iff] at hat₁
      simp only [hat₁, prod_mk_mem_set_prod_eq, false_and_iff, setOf_false, measure_empty]
    rw [h_eq1, h_eq2, add_zero]
    exact set_lintegral_condKernelReal_prod ρ ht₁ ht₂
  · intro t ht ht_eq
    calc
      ∫⁻ a, condKernelReal ρ a {x : ℝ | (a, x) ∈ tᶜ} ∂ρ.fst =
          ∫⁻ a, condKernelReal ρ a {x : ℝ | (a, x) ∈ t}ᶜ ∂ρ.fst := rfl
      _ = ∫⁻ a, condKernelReal ρ a univ - condKernelReal ρ a {x : ℝ | (a, x) ∈ t} ∂ρ.fst := by
        congr with a : 1
        exact measure_compl (measurable_prod_mk_left ht) (measure_ne_top (condKernelReal ρ a) _)
      _ = ∫⁻ a, condKernelReal ρ a univ ∂ρ.fst -
          ∫⁻ a, condKernelReal ρ a {x : ℝ | (a, x) ∈ t} ∂ρ.fst := by
        have h_le : (fun a => condKernelReal ρ a {x : ℝ | (a, x) ∈ t}) ≤ᵐ[ρ.fst] fun a =>
            condKernelReal ρ a univ := eventually_of_forall fun a => measure_mono (subset_univ _)
        rw [lintegral_sub _ _ h_le]
        · exact kernel.measurable_kernel_prod_mk_left ht
        refine' ((lintegral_mono_ae h_le).trans_lt _).ne
        rw [lintegral_condKernelReal_univ]
        exact measure_lt_top ρ univ
      _ = ρ univ - ρ t := by rw [ht_eq, lintegral_condKernelReal_univ]
      _ = ρ tᶜ := (measure_compl ht (measure_ne_top _ _)).symm
  · intro f hf_disj hf_meas hf_eq
    have h_eq : ∀ a, {x | (a, x) ∈ ⋃ i, f i} = ⋃ i, {x | (a, x) ∈ f i} := by
      intro a
      ext1 x
      simp only [mem_iUnion, mem_setOf_eq]
    simp_rw [h_eq]
    have h_disj : ∀ a, Pairwise (Disjoint on fun i => {x | (a, x) ∈ f i}) := by
      intro a i j hij
      have h_disj := hf_disj hij
      rw [Function.onFun, disjoint_iff_inter_eq_empty] at h_disj ⊢
      ext1 x
      simp only [mem_inter_iff, mem_setOf_eq, mem_empty_iff_false, iff_false_iff]
      intro h_mem_both
      suffices (a, x) ∈ ∅ by rwa [mem_empty_iff_false] at this
      rwa [← h_disj, mem_inter_iff]
    calc
      ∫⁻ a, condKernelReal ρ a (⋃ i, {x | (a, x) ∈ f i}) ∂ρ.fst =
          ∫⁻ a, ∑' i, condKernelReal ρ a {x | (a, x) ∈ f i} ∂ρ.fst := by
        congr with a : 1
        rw [measure_iUnion (h_disj a) fun i => measurable_prod_mk_left (hf_meas i)]
      _ = ∑' i, ∫⁻ a, condKernelReal ρ a {x | (a, x) ∈ f i} ∂ρ.fst :=
        (lintegral_tsum fun i => (kernel.measurable_kernel_prod_mk_left (hf_meas i)).aemeasurable)
      _ = ∑' i, ρ (f i) := by simp_rw [hf_eq]
      _ = ρ (iUnion f) := (measure_iUnion hf_disj hf_meas).symm
#align probability_theory.lintegral_cond_kernel_real_mem ProbabilityTheory.lintegral_condKernelReal_mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Disintegration/Variantc58b5a90a271919c6eb0940e62c8ca49a4b8916ee8326841fbcb8628b9ff1754.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Disintegration/Variantc58b5a90a271919c6eb0940e62c8ca49a4b8916ee8326841fbcb8628b9ff1754.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba43ee13e0b7da787fe27cb685b7a531403c97ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
