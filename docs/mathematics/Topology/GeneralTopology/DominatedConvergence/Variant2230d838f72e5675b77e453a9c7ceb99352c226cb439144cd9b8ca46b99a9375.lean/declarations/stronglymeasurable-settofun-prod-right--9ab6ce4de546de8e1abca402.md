# StronglyMeasurable.setToFun_prod_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e0decd564c0ab8da2f65f26ab63ea91df1f2a8b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/2230d838f72e5675b77e453a9c7ceb99352c226cb439144cd9b8ca46b99a9375.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49d94c8f-43ba-e014-12d3-010e3136ed7a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f42cab66-8edf-5803-14cf-8d9d81a75821",
  "kind": "theorem",
  "lexical_name": "StronglyMeasurable.setToFun_prod_right",
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
  "slug": "stronglymeasurable-settofun-prod-right--9ab6ce4de546de8e1abca402",
  "source": {
    "blob": "0e0decd564c0ab8da2f65f26ab63ea91df1f2a8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 253,
    "path": "GRWTSK/Topology/GeneralTopology/DominatedConvergence/Variant2230d838f72e5675b77e453a9c7ceb99352c226cb439144cd9b8ca46b99a9375.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ab6ce4de546de8e1abca4029a7c8a3c1d0b89df6d722388339d1a3485d5b3ac",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DominatedConvergence/Variant2230d838f72e5675b77e453a9c7ceb99352c226cb439144cd9b8ca46b99a9375.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f42cab66-8edf-5803-14cf-8d9d81a75821`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StronglyMeasurable.setToFun_prod_right {β : Type*} {mβ : MeasurableSpace β} [SFinite μ]
    (hT : DominatedFinMeasAdditive μ T C)
    (h'T : ∀ (s : Set (β × α)), MeasurableSet s → StronglyMeasurable fun x => T (Prod.mk x ⁻¹' s))
    ⦃f : β → α → E⦄ (hf : StronglyMeasurable (Function.uncurry f)) :
    StronglyMeasurable fun x => setToFun μ T hT (f x) := by
  classical
  by_cases hF : CompleteSpace F; swap;
  · simp [setToFun, hF, stronglyMeasurable_const]
  borelize E
  have : SeparableSpace (range (Function.uncurry f) ∪ {0} : Set E) :=
    hf.separableSpace_range_union_singleton
  let s : ℕ → SimpleFunc (β × α) E :=
    SimpleFunc.approxOn _ hf.measurable (range (Function.uncurry f) ∪ {0}) 0 (by simp)
  let s' : ℕ → β → SimpleFunc α E := fun n x => (s n).comp (Prod.mk x) measurable_prodMk_left
  let f' : ℕ → β → F := fun n =>
    {x | Integrable (f x) μ}.indicator fun x => (s' n x).setToSimpleFunc T
  have hf' n : StronglyMeasurable (f' n) := by
    refine StronglyMeasurable.indicator ?_ (measurableSet_integrable hf)
    have : ∀ x, ((s' n x).range.filter fun x => x ≠ 0) ⊆ (s n).range := by
      intro x; refine Finset.Subset.trans (Finset.filter_subset _ _) ?_; intro y
      simp_rw [SimpleFunc.mem_range]; rintro ⟨z, rfl⟩; exact ⟨(x, z), rfl⟩
    simp_rw [SimpleFunc.setToSimpleFunc_eq_sum_of_subset T hT.1.map_empty_eq_zero (this _)]
    refine Finset.stronglyMeasurable_fun_sum _ fun x _ => ?_
    simp only [s', SimpleFunc.coe_comp, preimage_comp]
    apply StronglyMeasurable.apply_continuousLinearMap
    apply h'T
    exact (s n).measurableSet_fiber x
  have h2f' : Tendsto f' atTop (𝓝 fun x : β => setToFun μ T hT (f x)) := by
    apply tendsto_pi_nhds.2 fun x ↦ ?_
    by_cases hfx : Integrable (f x) μ
    · have (n : _) : Integrable (s' n x) μ := by
        apply (hfx.norm.add hfx.norm).mono' (s' n x).aestronglyMeasurable
        filter_upwards with y
        simp_rw [s', SimpleFunc.coe_comp]; exact SimpleFunc.norm_approxOn_zero_le _ _ (x, y) n
      simp only [mem_ofPred_eq, hfx, indicator_of_mem, this,
        ← setToFun_simpleFunc_eq_setToSimpleFunc hT, f']
      refine
        tendsto_setToFun_of_dominated_convergence hT (fun y => ‖f x y‖ + ‖f x y‖)
          (fun n => (s' n x).aestronglyMeasurable) (hfx.norm.add hfx.norm) ?_ ?_
      · refine fun n => Eventually.of_forall fun y =>
          SimpleFunc.norm_approxOn_zero_le ?_ ?_ (x, y) n
        · exact hf.measurable
        · simp
      · refine Eventually.of_forall fun y => SimpleFunc.tendsto_approxOn ?_ ?_ ?_
        · exact hf.measurable.of_uncurry_left
        · simp
        apply subset_closure
        simp [-Function.uncurry_apply_pair]
    · simp [f', hfx, setToFun_undef]
  exact stronglyMeasurable_of_tendsto _ hf' h2f'

variable {X : Type*} [TopologicalSpace X] [FirstCountableTopology X]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DominatedConvergence/Variant2230d838f72e5675b77e453a9c7ceb99352c226cb439144cd9b8ca46b99a9375.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DominatedConvergence/Variant2230d838f72e5675b77e453a9c7ceb99352c226cb439144cd9b8ca46b99a9375.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e0decd564c0ab8da2f65f26ab63ea91df1f2a8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
