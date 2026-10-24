# continuous_convexCombPair_of_isBounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0da8a06-8ba1-443f-ef1e-fd10e8b5f708",
  "kind": "lemma",
  "lexical_name": "continuous_convexCombPair_of_isBounded",
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
  "slug": "continuous-convexcombpair-of-isbounded--2d492be4ab619f68e61e51b0",
  "source": {
    "blob": "765fba550482faddd0c55ca7289277e253e7798c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 206,
    "path": "GRWTSK/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d492be4ab619f68e61e51b03510133d56431a350865c8ff0c7705564857cf93",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0da8a06-8ba1-443f-ef1e-fd10e8b5f708`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuous_convexCombPair_of_isBounded
    {T : Type*} [TopologicalSpace T] (f : T → ℝ) (hf : Continuous f)
    (hf0 : ∀ t, 0 ≤ f t) (hf1 : ∀ t, f t ≤ 1) (x y : T → X)
    (hx : ContinuousOn x (f ⁻¹' {0}ᶜ)) (hy : ContinuousOn y (f ⁻¹' {1}ᶜ))
    (hx' : Bornology.IsBounded (Set.range x)) (hy' : Bornology.IsBounded (Set.range y)) :
    Continuous fun i ↦ convexCombPair (f i) (1 - f i) (hf0 _) (by simpa using hf1 _)
      (add_sub_cancel ..) (x i) (y i) := by
  obtain ⟨D, hD, hD'⟩ := ((Metric.isBounded_iff_eventually.mp (hx'.union hy')).and
    (Filter.eventually_gt_atTop 0)).exists
  replace hD := fun t₁ t₂ ↦ hD (.inl (Set.mem_range_self t₁)) (.inr (Set.mem_range_self t₂))
  rw [continuous_iff_continuousAt]
  intro t
  by_cases ht : f t ∈ Set.Ioo 0 1
  · exact ((isOpen_Ioo.preimage hf).isOpenEmbedding_subtypeVal.continuousAt_iff
      (x := ⟨t, ht⟩)).mp ((continuous_convexCombPair (X := X)).comp₃ (W := f ⁻¹' Set.Ioo 0 1)
      (e := fun i ↦ ⟨f i, Set.Ioo_subset_Icc_self i.prop⟩) (f := x ∘ (↑)) (k := y ∘ (↑))
      (by fun_prop) (hx.comp_continuous continuous_subtype_val (by grind))
      (hy.comp_continuous continuous_subtype_val (by grind))).continuousAt
  obtain ht | ht : f t = 0 ∨ f t = 1 := by
    simpa [le_antisymm_iff, hf0, hf1, -not_and, not_and_or] using ht
  · simp only [ContinuousAt, ht, sub_zero, convexCombPair_zero]
    rw [Metric.nhds_basis_ball.tendsto_right_iff]
    intro r hr
    filter_upwards [hy.continuousAt ((hf.isOpen_preimage _ isClosed_singleton.isOpen_compl).mem_nhds
      (x := t) (by simp [*])) (Metric.ball_mem_nhds _ (show 0 < r / 3 by simpa)),
      hf.tendsto' _ _ ht (Metric.ball_mem_nhds _ (show 0 < r / D / 3 by simp [*]))] with j hj hj'
    simp only [Set.mem_preimage, Metric.mem_ball, dist_zero_right, Real.norm_eq_abs] at hj hj' ⊢
    grw [dist_triangle _ (convexCombPair (f j) (1 - f j) (hf0 _) (by simpa using hf1 _)
      (add_sub_cancel ..) (x j) (y t)), dist_convexCombPair_convexCombPair_le]
    simp only [dist_self, mul_zero, zero_add, dist_convexCombPair_right]
    grw [sub_le_self _ (hf0 _), hj, hD, (le_abs_self _).trans hj'.le]
    · field_simp; norm_num
    · exact hf0 _
  · simp only [ContinuousAt, ht, sub_self, convexCombPair_one]
    rw [Metric.nhds_basis_ball.tendsto_right_iff]
    intro r hr
    filter_upwards [hx.continuousAt ((hf.isOpen_preimage _ isClosed_singleton.isOpen_compl).mem_nhds
      (x := t) (by simp [*])) (Metric.ball_mem_nhds _ (show 0 < r / 3 by simpa)),
      hf.tendsto' _ _ ht (Metric.ball_mem_nhds _ (show 0 < r / D / 3 by simp [*]))] with j hj hj'
    simp only [Set.mem_preimage, Metric.mem_ball, Real.dist_eq] at hj hj' ⊢
    grw [dist_triangle _ (convexCombPair (f j) (1 - f j) (hf0 _) (by simpa using hf1 _)
      (add_sub_cancel ..) (x t) (y j)), dist_convexCombPair_convexCombPair_le]
    simp only [dist_self, mul_zero, add_zero, dist_convexCombPair_left]
    grw [abs_sub_comm, ← le_abs_self] at hj'
    grw [hj.le, hj'.le, hf1, hD]
    · field_simp; norm_num
    · exact hf0 _

/-- When `X` is a bounded convex metric space, to check continuity of
`t ↦ f(t) • x(t) + (1 - f(t)) • y(t)` it suffices to show that `f` is continuous,
`x` is continuous away from `f(t) = 0`, and `y` is continuous away from `f(t) = 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `765fba550482faddd0c55ca7289277e253e7798c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
