# StronglyMeasurable.integral_kernel_prod_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "563fbbb2bff3c1ec767ea32591ec96b1b942d2ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f71f67d81bc7bfa300ac99be1dc7a96f5d435cf2b295dc2b6a9542dfa3953919.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1154a5f-d875-e598-2765-cee4aa0222a9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ef7b113-ba34-ac6a-79ea-2ee281417a01",
  "kind": "theorem",
  "lexical_name": "StronglyMeasurable.integral_kernel_prod_right",
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
  "slug": "stronglymeasurable-integral-kernel-prod-right--451b14f6a5bb23a6e65d3572",
  "source": {
    "blob": "563fbbb2bff3c1ec767ea32591ec96b1b942d2ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variantf71f67d81bc7bfa300ac99be1dc7a96f5d435cf2b295dc2b6a9542dfa3953919.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:451b14f6a5bb23a6e65d3572785520bc48755a8391f87b6bff1157d7da493585",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variantf71f67d81bc7bfa300ac99be1dc7a96f5d435cf2b295dc2b6a9542dfa3953919.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ef7b113-ba34-ac6a-79ea-2ee281417a01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StronglyMeasurable.integral_kernel_prod_right ⦃f : α → β → E⦄
    (hf : StronglyMeasurable (uncurry f)) : StronglyMeasurable fun x => ∫ y, f x y ∂κ x := by
  classical
  by_cases hE : CompleteSpace E; swap
  · simp [integral, hE, stronglyMeasurable_const]
  borelize E
  haveI : TopologicalSpace.SeparableSpace (range (uncurry f) ∪ {0} : Set E) :=
    hf.separableSpace_range_union_singleton
  let s : ℕ → SimpleFunc (α × β) E :=
    SimpleFunc.approxOn _ hf.measurable (range (uncurry f) ∪ {0}) 0 (by simp)
  let s' : ℕ → α → SimpleFunc β E := fun n x => (s n).comp (Prod.mk x) measurable_prodMk_left
  let f' : ℕ → α → E := fun n =>
    {x | Integrable (f x) (κ x)}.indicator fun x => (s' n x).integral (κ x)
  have hf' : ∀ n, StronglyMeasurable (f' n) := by
    intro n; refine StronglyMeasurable.indicator ?_ (measurableSet_kernel_integrable hf)
    have : ∀ x, ((s' n x).range.filter fun x => x ≠ 0) ⊆ (s n).range := by
      intro x; refine Finset.Subset.trans (Finset.filter_subset _ _) ?_; intro y
      simp_rw [SimpleFunc.mem_range]; rintro ⟨z, rfl⟩; exact ⟨(x, z), rfl⟩
    simp only [SimpleFunc.integral_eq_sum_of_subset (this _)]
    refine Finset.stronglyMeasurable_sum _ fun x _ => ?_
    refine (Measurable.ennreal_toReal ?_).stronglyMeasurable.smul_const _
    simp only [s', SimpleFunc.coe_comp, preimage_comp]
    apply Kernel.measurable_kernel_prodMk_left
    exact (s n).measurableSet_fiber x
  have h2f' : Tendsto f' atTop (𝓝 fun x : α => ∫ y : β, f x y ∂κ x) := by
    rw [tendsto_pi_nhds]; intro x
    by_cases hfx : Integrable (f x) (κ x)
    · have (n) : Integrable (s' n x) (κ x) := by
        apply (hfx.norm.add hfx.norm).mono' (s' n x).aestronglyMeasurable
        filter_upwards with y
        simp_rw [s', SimpleFunc.coe_comp]; exact SimpleFunc.norm_approxOn_zero_le _ _ (x, y) n
      simp only [f', hfx, SimpleFunc.integral_eq_integral _ (this _), indicator_of_mem,
        mem_setOf_eq]
      refine
        tendsto_integral_of_dominated_convergence (fun y => ‖f x y‖ + ‖f x y‖)
          (fun n => (s' n x).aestronglyMeasurable) (hfx.norm.add hfx.norm) ?_ ?_
      · -- Porting note: was
        -- exact fun n => Eventually.of_forall fun y =>
        --   SimpleFunc.norm_approxOn_zero_le _ _ (x, y) n
        exact fun n => Eventually.of_forall fun y =>
          SimpleFunc.norm_approxOn_zero_le hf.measurable (by simp) (x, y) n
      · refine Eventually.of_forall fun y => SimpleFunc.tendsto_approxOn hf.measurable (by simp) ?_
        apply subset_closure
        simp [-uncurry_apply_pair]
    · simp [f', hfx, integral_undef]
  exact stronglyMeasurable_of_tendsto _ hf' h2f'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variantf71f67d81bc7bfa300ac99be1dc7a96f5d435cf2b295dc2b6a9542dfa3953919.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variantf71f67d81bc7bfa300ac99be1dc7a96f5d435cf2b295dc2b6a9542dfa3953919.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `563fbbb2bff3c1ec767ea32591ec96b1b942d2ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
