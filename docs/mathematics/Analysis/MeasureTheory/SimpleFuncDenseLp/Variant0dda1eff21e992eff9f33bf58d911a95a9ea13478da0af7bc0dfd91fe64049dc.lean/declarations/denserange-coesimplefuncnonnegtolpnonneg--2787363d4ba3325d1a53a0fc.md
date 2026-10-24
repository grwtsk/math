# denseRange_coeSimpleFuncNonnegToLpNonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d813a837ff071d345a28499eb65379e4343c2a37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 853,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0dda1eff21e992eff9f33bf58d911a95a9ea13478da0af7bc0dfd91fe64049dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e69d141-a2dd-3911-e7ed-224e654dc2e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cb82dd49-7e7b-7691-e643-77da04502481",
  "kind": "theorem",
  "lexical_name": "denseRange_coeSimpleFuncNonnegToLpNonneg",
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
  "slug": "denserange-coesimplefuncnonnegtolpnonneg--2787363d4ba3325d1a53a0fc",
  "source": {
    "blob": "d813a837ff071d345a28499eb65379e4343c2a37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 924,
    "line": 853,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant0dda1eff21e992eff9f33bf58d911a95a9ea13478da0af7bc0dfd91fe64049dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2787363d4ba3325d1a53a0fcb7ad0bed3961985c1d1fa8ea0f51714d10fdd66b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant0dda1eff21e992eff9f33bf58d911a95a9ea13478da0af7bc0dfd91fe64049dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb82dd49-7e7b-7691-e643-77da04502481`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 853–924.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denseRange_coeSimpleFuncNonnegToLpNonneg [hp : Fact (1 ≤ p)] (hp_ne_top : p ≠ ∞) :
    DenseRange (coeSimpleFuncNonnegToLpNonneg p μ G) := fun g ↦ by
  borelize G
  rw [mem_closure_iff_seq_limit]
  have hg_memℒp : Memℒp (g : α → G) p μ := Lp.memℒp (g : Lp G p μ)
  have zero_mem : (0 : G) ∈ (range (g : α → G) ∪ {0} : Set G) ∩ { y | 0 ≤ y } := by
    simp only [union_singleton, mem_inter_iff, mem_insert_iff, eq_self_iff_true, true_or_iff,
      mem_setOf_eq, le_refl, and_self_iff]
  have : SeparableSpace ((range (g : α → G) ∪ {0}) ∩ { y | 0 ≤ y } : Set G) := by
    apply IsSeparable.separableSpace
    apply IsSeparable.mono _ (Set.inter_subset_left _ _)
    exact
      (Lp.stronglyMeasurable (g : Lp G p μ)).isSeparable_range.union
        (finite_singleton _).isSeparable
  have g_meas : Measurable (g : α → G) := (Lp.stronglyMeasurable (g : Lp G p μ)).measurable
  let x n := SimpleFunc.approxOn g g_meas ((range (g : α → G) ∪ {0}) ∩ { y | 0 ≤ y }) 0 zero_mem n
  have hx_nonneg : ∀ n, 0 ≤ x n := by
    intro n a
    change x n a ∈ { y : G | 0 ≤ y }
    have A : (range (g : α → G) ∪ {0} : Set G) ∩ { y | 0 ≤ y } ⊆ { y | 0 ≤ y } :=
      inter_subset_right _ _
    apply A
    exact SimpleFunc.approxOn_mem g_meas _ n a
  have hx_memℒp : ∀ n, Memℒp (x n) p μ :=
    SimpleFunc.memℒp_approxOn _ hg_memℒp _ ⟨aestronglyMeasurable_const, by simp⟩
  have h_toLp := fun n => Memℒp.coeFn_toLp (hx_memℒp n)
  have hx_nonneg_Lp : ∀ n, 0 ≤ toLp (x n) (hx_memℒp n) := by
    intro n
    rw [← Lp.simpleFunc.coeFn_le, Lp.simpleFunc.toLp_eq_toLp]
    filter_upwards [Lp.simpleFunc.coeFn_zero p μ G, h_toLp n] with a ha0 ha_toLp
    rw [ha0, ha_toLp]
    exact hx_nonneg n a
  have hx_tendsto :
      Tendsto (fun n : ℕ => snorm ((x n : α → G) - (g : α → G)) p μ) atTop (𝓝 0) := by
    apply SimpleFunc.tendsto_approxOn_Lp_snorm g_meas zero_mem hp_ne_top
    · have hg_nonneg : (0 : α → G) ≤ᵐ[μ] g := (Lp.coeFn_nonneg _).mpr g.2
      refine' hg_nonneg.mono fun a ha => subset_closure _
      simpa using ha
    · simp_rw [sub_zero]; exact hg_memℒp.snorm_lt_top
  refine'
    ⟨fun n =>
      (coeSimpleFuncNonnegToLpNonneg p μ G) ⟨toLp (x n) (hx_memℒp n), hx_nonneg_Lp n⟩,
      fun n => mem_range_self _, _⟩
  suffices Tendsto (fun n : ℕ => (toLp (x n) (hx_memℒp n) : Lp G p μ)) atTop (𝓝 (g : Lp G p μ)) by
    rw [tendsto_iff_dist_tendsto_zero] at this ⊢
    simp_rw [Subtype.dist_eq]
    exact this
  rw [Lp.tendsto_Lp_iff_tendsto_ℒp']
  refine Filter.Tendsto.congr (fun n => snorm_congr_ae (EventuallyEq.sub ?_ ?_)) hx_tendsto
  · symm
    rw [Lp.simpleFunc.toLp_eq_toLp]
    exact h_toLp n
  · rfl
#align measure_theory.Lp.simple_func.dense_range_coe_simple_func_nonneg_to_Lp_nonneg MeasureTheory.Lp.simpleFunc.denseRange_coeSimpleFuncNonnegToLpNonneg

variable {p μ G}

end Order

end simpleFunc

end Lp

variable [MeasurableSpace α] [NormedAddCommGroup E] {f : α → E} {p : ℝ≥0∞} {μ : Measure α}

/-- To prove something for an arbitrary `Lp` function in a second countable Borel normed group, it
suffices to show that
* the property holds for (multiples of) characteristic functions;
* is closed under addition;
* the set of functions in `Lp` for which the property holds is closed.
-/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant0dda1eff21e992eff9f33bf58d911a95a9ea13478da0af7bc0dfd91fe64049dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant0dda1eff21e992eff9f33bf58d911a95a9ea13478da0af7bc0dfd91fe64049dc.lean#L853).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d813a837ff071d345a28499eb65379e4343c2a37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
