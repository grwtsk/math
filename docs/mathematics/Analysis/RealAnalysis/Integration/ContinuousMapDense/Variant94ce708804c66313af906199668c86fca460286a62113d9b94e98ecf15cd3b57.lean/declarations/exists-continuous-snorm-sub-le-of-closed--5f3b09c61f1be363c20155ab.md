# exists_continuous_snorm_sub_le_of_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29fdb7799c88779642e00156a001fcdd1836f70f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36f9fca9-c065-b115-1db6-b74f9dda84e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad25451b-787a-8c7f-322e-fa6f17cbb7d1",
  "kind": "theorem",
  "lexical_name": "exists_continuous_snorm_sub_le_of_closed",
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
  "slug": "exists-continuous-snorm-sub-le-of-closed--5f3b09c61f1be363c20155ab",
  "source": {
    "blob": "29fdb7799c88779642e00156a001fcdd1836f70f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 79,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f3b09c61f1be363c20155abc44147880030e15e6145ca361c94c0ff6d26fa86",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad25451b-787a-8c7f-322e-fa6f17cbb7d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_continuous_snorm_sub_le_of_closed [μ.OuterRegular] (hp : p ≠ ∞) {s u : Set α}
    (s_closed : IsClosed s) (u_open : IsOpen u) (hsu : s ⊆ u) (hs : μ s ≠ ∞) (c : E) {ε : ℝ≥0∞}
    (hε : ε ≠ 0) :
    ∃ f : α → E,
      Continuous f ∧
        snorm (fun x => f x - s.indicator (fun _y => c) x) p μ ≤ ε ∧
          (∀ x, ‖f x‖ ≤ ‖c‖) ∧ Function.support f ⊆ u ∧ Memℒp f p μ := by
  obtain ⟨η, η_pos, hη⟩ :
    ∃ η : ℝ≥0, 0 < η ∧ ∀ s : Set α, μ s ≤ η → snorm (s.indicator fun _x => c) p μ ≤ ε
  exact exists_snorm_indicator_le hp c hε
  have ηpos : (0 : ℝ≥0∞) < η := ENNReal.coe_lt_coe.2 η_pos
  obtain ⟨V, sV, V_open, h'V, hV⟩ : ∃ (V : Set α), V ⊇ s ∧ IsOpen V ∧ μ V < ∞ ∧ μ (V \ s) < η
  exact s_closed.measurableSet.exists_isOpen_diff_lt hs ηpos.ne'
  let v := u ∩ V
  have hsv : s ⊆ v := subset_inter hsu sV
  have hμv : μ v < ∞ := (measure_mono (inter_subset_right _ _)).trans_lt h'V
  obtain ⟨g, hgv, hgs, hg_range⟩ :=
    exists_continuous_zero_one_of_closed (u_open.inter V_open).isClosed_compl s_closed
      (disjoint_compl_left_iff.2 hsv)
  -- Multiply this by `c` to get a continuous approximation to the function `f`; the key point is
  -- that this is pointwise bounded by the indicator of the set `v \ s`, which has small measure.
  have g_norm : ∀ x, ‖g x‖ = g x := fun x => by rw [Real.norm_eq_abs, abs_of_nonneg (hg_range x).1]
  have gc_bd0 : ∀ x, ‖g x • c‖ ≤ ‖c‖ := by
    intro x
    simp only [norm_smul, g_norm x]
    apply mul_le_of_le_one_left (norm_nonneg _)
    exact (hg_range x).2
  have gc_bd :
      ∀ x, ‖g x • c - s.indicator (fun _x => c) x‖ ≤ ‖(v \ s).indicator (fun _x => c) x‖ := by
    intro x
    by_cases hv : x ∈ v
    · rw [← Set.diff_union_of_subset hsv] at hv
      cases' hv with hsv hs
      · simpa only [hsv.2, Set.indicator_of_not_mem, not_false_iff, sub_zero, hsv,
          Set.indicator_of_mem] using gc_bd0 x
      · simp [hgs hs, hs]
    · simp [hgv hv, show x ∉ s from fun h => hv (hsv h)]
  have gc_support : (Function.support fun x : α => g x • c) ⊆ v := by
    refine' Function.support_subset_iff'.2 fun x hx => _
    simp only [hgv hx, Pi.zero_apply, zero_smul]
  have gc_mem : Memℒp (fun x => g x • c) p μ := by
    refine' Memℒp.smul_of_top_left (memℒp_top_const _) _
    refine' ⟨g.continuous.aestronglyMeasurable, _⟩
    have : snorm (v.indicator fun _x => (1 : ℝ)) p μ < ⊤ := by
      refine' (snorm_indicator_const_le _ _).trans_lt _
      simp only [lt_top_iff_ne_top, hμv.ne, nnnorm_one, ENNReal.coe_one, one_div, one_mul, Ne.def,
        ENNReal.rpow_eq_top_iff, inv_lt_zero, false_and_iff, or_false_iff, not_and, not_lt,
        ENNReal.toReal_nonneg, imp_true_iff]
    refine' (snorm_mono fun x => _).trans_lt this
    by_cases hx : x ∈ v
    · simp only [hx, abs_of_nonneg (hg_range x).1, (hg_range x).2, Real.norm_eq_abs,
        indicator_of_mem, CstarRing.norm_one]
    · simp only [hgv hx, Pi.zero_apply, Real.norm_eq_abs, abs_zero, abs_nonneg]
  refine'
    ⟨fun x => g x • c, g.continuous.smul continuous_const, (snorm_mono gc_bd).trans _, gc_bd0,
      gc_support.trans (inter_subset_left _ _), gc_mem⟩
  exact hη _ ((measure_mono (diff_subset_diff (inter_subset_right _ _) Subset.rfl)).trans hV.le)
#align measure_theory.exists_continuous_snorm_sub_le_of_closed MeasureTheory.exists_continuous_snorm_sub_le_of_closed

/-- In a locally compact space, any function in `ℒp` can be approximated by compactly supported
continuous functions when `p < ∞`, version in terms of `snorm`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29fdb7799c88779642e00156a001fcdd1836f70f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
