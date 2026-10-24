# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ContinuousMapDense.Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42e34c708789a0e6253a72c3fe0cad5f477eeb70` · SHA-256 `f6195e87fd5a225bd297be94c247b361c84fa33eeb1339c27074cb3429590fcf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ExistsContinuousSnormSubLeOfClosed.Variant94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ExistsContinuousSnormSubLeOfClosed.Variant94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57","mathematical_subject":"Analysis.Integration","original_sha256":"94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/MeasureTheory/Function/ContinuousMapDense.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Heather Macbeth. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Heather Macbeth
-/
import Mathlib.MeasureTheory.Measure.Regular
import Mathlib.MeasureTheory.Function.SimpleFuncDenseLp
import Mathlib.Topology.UrysohnsLemma
import Mathlib.MeasureTheory.Integral.Bochner


namespace GRWTSK.Analysis.RealAnalysis.Integration.ExistsContinuousSnormSubLeOfClosed.Variant94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57

#align_import measure_theory.function.continuous_map_dense from "leanprover-community/mathlib"@"e0736bb5b48bdadbca19dbd857e12bee38ccfbb8"

/-!
# Approximation in Lᵖ by continuous functions

This file proves that bounded continuous functions are dense in `Lp E p μ`, for `p < ∞`, if the
domain `α` of the functions is a normal topological space and the measure `μ` is weakly regular.
It also proves the same results for approximation by continuous functions with compact support
when the space is locally compact and `μ` is regular.

The result is presented in several versions. First concrete versions giving an approximation
up to `ε` in these various contexts, and then abstract versions stating that the topological
closure of the relevant subgroups of `Lp` are the whole space.

* `MeasureTheory.Memℒp.exists_hasCompactSupport_snorm_sub_le` states that, in a locally compact
  space, an `ℒp` function can be approximated by continuous functions with compact support,
  in the sense that `snorm (f - g) p μ` is small.
* `MeasureTheory.Memℒp.exists_hasCompactSupport_integral_rpow_sub_le`: same result, but expressed in
  terms of `∫ ‖f - g‖^p`.

Versions with `Integrable` instead of `Memℒp` are specialized to the case `p = 1`.
Versions with `boundedContinuous` instead of `HasCompactSupport` drop the locally
compact assumption and give only approximation by a bounded continuous function.

* `MeasureTheory.Lp.boundedContinuousFunction_dense`: The subgroup
  `MeasureTheory.Lp.boundedContinuousFunction` of `Lp E p μ`, the additive subgroup of
  `Lp E p μ` consisting of equivalence classes containing a continuous representative, is dense in
  `Lp E p μ`.
* `BoundedContinuousFunction.toLp_denseRange`: For finite-measure `μ`, the continuous linear
  map `BoundedContinuousFunction.toLp p μ 𝕜` from `α →ᵇ E` to `Lp E p μ` has dense range.
* `ContinuousMap.toLp_denseRange`: For compact `α` and finite-measure `μ`, the continuous linear
  map `ContinuousMap.toLp p μ 𝕜` from `C(α, E)` to `Lp E p μ` has dense range.

Note that for `p = ∞` this result is not true:  the characteristic function of the set `[0, ∞)` in
`ℝ` cannot be continuously approximated in `L∞`.

The proof is in three steps.  First, since simple functions are dense in `Lp`, it suffices to prove
the result for a scalar multiple of a characteristic function of a measurable set `s`. Secondly,
since the measure `μ` is weakly regular, the set `s` can be approximated above by an open set and
below by a closed set.  Finally, since the domain `α` is normal, we use Urysohn's lemma to find a
continuous function interpolating between these two sets.

## Related results

Are you looking for a result on "directional" approximation (above or below with respect to an
order) of functions whose codomain is `ℝ≥0∞` or `ℝ`, by semicontinuous functions?  See the
Vitali-Carathéodory theorem, in the file `Mathlib/MeasureTheory/Integral/VitaliCaratheodory.lean`.

-/


open scoped ENNReal NNReal Topology BoundedContinuousFunction

open MeasureTheory TopologicalSpace ContinuousMap Set

variable {α : Type*} [MeasurableSpace α] [TopologicalSpace α] [NormalSpace α] [BorelSpace α]

variable {E : Type*} [NormedAddCommGroup E] {μ : Measure α} {p : ℝ≥0∞}

namespace MeasureTheory

variable [NormedSpace ℝ E]

/-- A variant of Urysohn's lemma, `ℒ^p` version, for an outer regular measure `μ`:
consider two sets `s ⊆ u` which are respectively closed and open with `μ s < ∞`, and a vector `c`.
Then one may find a continuous function `f` equal to `c` on `s` and to `0` outside of `u`,
bounded by `‖c‖` everywhere, and such that the `ℒ^p` norm of `f - s.indicator (fun y ↦ c)` is
arbitrarily small. Additionally, this function `f` belongs to `ℒ^p`. -/
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
theorem Memℒp.exists_hasCompactSupport_snorm_sub_le [LocallyCompactSpace α] [μ.Regular] (hp : p ≠ ∞)
    {f : α → E} (hf : Memℒp f p μ) {ε : ℝ≥0∞} (hε : ε ≠ 0) :
    ∃ g : α → E, HasCompactSupport g ∧ snorm (f - g) p μ ≤ ε ∧ Continuous g ∧ Memℒp g p μ := by
  suffices H :
    ∃ g : α → E, snorm (f - g) p μ ≤ ε ∧ Continuous g ∧ Memℒp g p μ ∧ HasCompactSupport g
  · rcases H with ⟨g, hg, g_cont, g_mem, g_support⟩
    exact ⟨g, g_support, hg, g_cont, g_mem⟩
  -- It suffices to check that the set of functions we consider approximates characteristic
  -- functions, is stable under addition and consists of ae strongly measurable functions.
  -- First check the latter easy facts.
  apply hf.induction_dense hp _ _ _ _ hε
  rotate_left
  -- stability under addition
  · rintro f g ⟨f_cont, f_mem, hf⟩ ⟨g_cont, g_mem, hg⟩
    exact ⟨f_cont.add g_cont, f_mem.add g_mem, hf.add hg⟩
  -- ae strong measurability
  · rintro f ⟨_f_cont, f_mem, _hf⟩
    exact f_mem.aestronglyMeasurable
  -- We are left with approximating characteristic functions.
  -- This follows from `exists_continuous_snorm_sub_le_of_closed`.
  intro c t ht htμ ε hε
  rcases exists_Lp_half E μ p hε with ⟨δ, δpos, hδ⟩
  obtain ⟨η, ηpos, hη⟩ :
    ∃ η : ℝ≥0, 0 < η ∧ ∀ s : Set α, μ s ≤ η → snorm (s.indicator fun _x => c) p μ ≤ δ
  exact exists_snorm_indicator_le hp c δpos.ne'
  have hη_pos' : (0 : ℝ≥0∞) < η := ENNReal.coe_pos.2 ηpos
  obtain ⟨s, st, s_compact, μs⟩ : ∃ s, s ⊆ t ∧ IsCompact s ∧ μ (t \ s) < η
  exact ht.exists_isCompact_diff_lt htμ.ne hη_pos'.ne'
  have hsμ : μ s < ∞ := (measure_mono st).trans_lt htμ
  have I1 : snorm ((s.indicator fun _y => c) - t.indicator fun _y => c) p μ ≤ δ := by
    rw [← snorm_neg, neg_sub, ← indicator_diff st]
    exact hη _ μs.le
  obtain ⟨k, k_compact, sk⟩ : ∃ k : Set α, IsCompact k ∧ s ⊆ interior k :=
    exists_compact_superset s_compact
  rcases exists_continuous_snorm_sub_le_of_closed hp s_compact.isClosed isOpen_interior sk hsμ.ne c
      δpos.ne' with
    ⟨f, f_cont, I2, _f_bound, f_support, f_mem⟩
  have I3 : snorm (f - t.indicator fun _y => c) p μ ≤ ε := by
    convert
      (hδ _ _
          (f_mem.aestronglyMeasurable.sub
            (aestronglyMeasurable_const.indicator s_compact.measurableSet))
          ((aestronglyMeasurable_const.indicator s_compact.measurableSet).sub
            (aestronglyMeasurable_const.indicator ht))
          I2 I1).le using 2
    simp only [sub_add_sub_cancel]
  refine' ⟨f, I3, f_cont, f_mem, HasCompactSupport.intro k_compact fun x hx => _⟩
  rw [← Function.nmem_support]
  contrapose! hx
  exact interior_subset (f_support hx)
#align measure_theory.mem_ℒp.exists_has_compact_support_snorm_sub_le MeasureTheory.Memℒp.exists_hasCompactSupport_snorm_sub_le

/-- In a locally compact space, any function in `ℒp` can be approximated by compactly supported
continuous functions when `0 < p < ∞`, version in terms of `∫`. -/
theorem Memℒp.exists_hasCompactSupport_integral_rpow_sub_le [LocallyCompactSpace α] [μ.Regular]
    {p : ℝ} (hp : 0 < p) {f : α → E} (hf : Memℒp f (ENNReal.ofReal p) μ) {ε : ℝ} (hε : 0 < ε) :
    ∃ g : α → E,
      HasCompactSupport g ∧
        (∫ x, ‖f x - g x‖ ^ p ∂μ) ≤ ε ∧ Continuous g ∧ Memℒp g (ENNReal.ofReal p) μ := by
  have I : 0 < ε ^ (1 / p) := Real.rpow_pos_of_pos hε _
  have A : ENNReal.ofReal (ε ^ (1 / p)) ≠ 0 := by
    simp only [Ne.def, ENNReal.ofReal_eq_zero, not_le, I]
  have B : ENNReal.ofReal p ≠ 0 := by simpa only [Ne.def, ENNReal.ofReal_eq_zero, not_le] using hp
  rcases hf.exists_hasCompactSupport_snorm_sub_le ENNReal.coe_ne_top A with
    ⟨g, g_support, hg, g_cont, g_mem⟩
  change snorm _ (ENNReal.ofReal p) _ ≤ _ at hg
  refine' ⟨g, g_support, _, g_cont, g_mem⟩
  rwa [(hf.sub g_mem).snorm_eq_integral_rpow_norm B ENNReal.coe_ne_top,
    ENNReal.ofReal_le_ofReal_iff I.le, one_div, ENNReal.toReal_ofReal hp.le,
    Real.rpow_le_rpow_iff _ hε.le (inv_pos.2 hp)] at hg
  exact integral_nonneg fun x => Real.rpow_nonneg_of_nonneg (norm_nonneg _) _
#align measure_theory.mem_ℒp.exists_has_compact_support_integral_rpow_sub_le MeasureTheory.Memℒp.exists_hasCompactSupport_integral_rpow_sub_le

/-- In a locally compact space, any integrable function can be approximated by compactly supported
continuous functions, version in terms of `∫⁻`. -/
theorem Integrable.exists_hasCompactSupport_lintegral_sub_le [LocallyCompactSpace α] [μ.Regular]
    {f : α → E} (hf : Integrable f μ) {ε : ℝ≥0∞} (hε : ε ≠ 0) :
    ∃ g : α → E,
      HasCompactSupport g ∧ (∫⁻ x, ‖f x - g x‖₊ ∂μ) ≤ ε ∧ Continuous g ∧ Integrable g μ := by
  simp only [← memℒp_one_iff_integrable, ← snorm_one_eq_lintegral_nnnorm] at hf ⊢
  exact hf.exists_hasCompactSupport_snorm_sub_le ENNReal.one_ne_top hε
#align measure_theory.integrable.exists_has_compact_support_lintegral_sub_le MeasureTheory.Integrable.exists_hasCompactSupport_lintegral_sub_le

/-- In a locally compact space, any integrable function can be approximated by compactly supported
continuous functions, version in terms of `∫`. -/
theorem Integrable.exists_hasCompactSupport_integral_sub_le [LocallyCompactSpace α] [μ.Regular]
    {f : α → E} (hf : Integrable f μ) {ε : ℝ} (hε : 0 < ε) :
    ∃ g : α → E, HasCompactSupport g ∧ (∫ x, ‖f x - g x‖ ∂μ) ≤ ε ∧
      Continuous g ∧ Integrable g μ := by
  simp only [← memℒp_one_iff_integrable, ← snorm_one_eq_lintegral_nnnorm, ← ENNReal.ofReal_one]
    at hf ⊢
  simpa using hf.exists_hasCompactSupport_integral_rpow_sub_le zero_lt_one hε
#align measure_theory.integrable.exists_has_compact_support_integral_sub_le MeasureTheory.Integrable.exists_hasCompactSupport_integral_sub_le

/-- Any function in `ℒp` can be approximated by bounded continuous functions when `p < ∞`,
version in terms of `snorm`. -/
theorem Memℒp.exists_boundedContinuous_snorm_sub_le [μ.WeaklyRegular] (hp : p ≠ ∞) {f : α → E}
    (hf : Memℒp f p μ) {ε : ℝ≥0∞} (hε : ε ≠ 0) :
    ∃ g : α →ᵇ E, snorm (f - (g : α → E)) p μ ≤ ε ∧ Memℒp g p μ := by
  suffices H :
    ∃ g : α → E, snorm (f - g) p μ ≤ ε ∧ Continuous g ∧ Memℒp g p μ ∧ Metric.Bounded (range g)
  · rcases H with ⟨g, hg, g_cont, g_mem, g_bd⟩
    exact ⟨⟨⟨g, g_cont⟩, Metric.bounded_range_iff.1 g_bd⟩, hg, g_mem⟩
  -- It suffices to check that the set of functions we consider approximates characteristic
  -- functions, is stable under addition and made of ae strongly measurable functions.
  -- First check the latter easy facts.
  apply hf.induction_dense hp _ _ _ _ hε
  rotate_left
  -- stability under addition
  · rintro f g ⟨f_cont, f_mem, f_bd⟩ ⟨g_cont, g_mem, g_bd⟩
    refine' ⟨f_cont.add g_cont, f_mem.add g_mem, _⟩
    let f' : α →ᵇ E := ⟨⟨f, f_cont⟩, Metric.bounded_range_iff.1 f_bd⟩
    let g' : α →ᵇ E := ⟨⟨g, g_cont⟩, Metric.bounded_range_iff.1 g_bd⟩
    exact (f' + g').bounded_range
  -- ae strong measurability
  · exact fun f ⟨_, h, _⟩ => h.aestronglyMeasurable
  -- We are left with approximating characteristic functions.
  -- This follows from `exists_continuous_snorm_sub_le_of_closed`.
  intro c t ht htμ ε hε
  rcases exists_Lp_half E μ p hε with ⟨δ, δpos, hδ⟩
  obtain ⟨η, ηpos, hη⟩ :
    ∃ η : ℝ≥0, 0 < η ∧ ∀ s : Set α, μ s ≤ η → snorm (s.indicator fun _x => c) p μ ≤ δ
  exact exists_snorm_indicator_le hp c δpos.ne'
  have hη_pos' : (0 : ℝ≥0∞) < η := ENNReal.coe_pos.2 ηpos
  obtain ⟨s, st, s_closed, μs⟩ : ∃ s, s ⊆ t ∧ IsClosed s ∧ μ (t \ s) < η
  exact ht.exists_isClosed_diff_lt htμ.ne hη_pos'.ne'
  have hsμ : μ s < ∞ := (measure_mono st).trans_lt htμ
  have I1 : snorm ((s.indicator fun _y => c) - t.indicator fun _y => c) p μ ≤ δ := by
    rw [← snorm_neg, neg_sub, ← indicator_diff st]
    exact hη _ μs.le
  rcases exists_continuous_snorm_sub_le_of_closed hp s_closed isOpen_univ (subset_univ _) hsμ.ne c
      δpos.ne' with
    ⟨f, f_cont, I2, f_bound, -, f_mem⟩
  have I3 : snorm (f - t.indicator fun _y => c) p μ ≤ ε := by
    convert
      (hδ _ _
          (f_mem.aestronglyMeasurable.sub
            (aestronglyMeasurable_const.indicator s_closed.measurableSet))
          ((aestronglyMeasurable_const.indicator s_closed.measurableSet).sub
            (aestronglyMeasurable_const.indicator ht))
          I2 I1).le using 2
    simp only [sub_add_sub_cancel]
  refine' ⟨f, I3, f_cont, f_mem, _⟩
  exact (BoundedContinuousFunction.ofNormedAddCommGroup f f_cont _ f_bound).bounded_range
#align measure_theory.mem_ℒp.exists_bounded_continuous_snorm_sub_le MeasureTheory.Memℒp.exists_boundedContinuous_snorm_sub_le

/-- Any function in `ℒp` can be approximated by bounded continuous functions when `0 < p < ∞`,
version in terms of `∫`. -/
theorem Memℒp.exists_boundedContinuous_integral_rpow_sub_le [μ.WeaklyRegular] {p : ℝ} (hp : 0 < p)
    {f : α → E} (hf : Memℒp f (ENNReal.ofReal p) μ) {ε : ℝ} (hε : 0 < ε) :
    ∃ g : α →ᵇ E, (∫ x, ‖f x - g x‖ ^ p ∂μ) ≤ ε ∧ Memℒp g (ENNReal.ofReal p) μ := by
  have I : 0 < ε ^ (1 / p) := Real.rpow_pos_of_pos hε _
  have A : ENNReal.ofReal (ε ^ (1 / p)) ≠ 0 := by
    simp only [Ne.def, ENNReal.ofReal_eq_zero, not_le, I]
  have B : ENNReal.ofReal p ≠ 0 := by simpa only [Ne.def, ENNReal.ofReal_eq_zero, not_le] using hp
  rcases hf.exists_boundedContinuous_snorm_sub_le ENNReal.coe_ne_top A with ⟨g, hg, g_mem⟩
  change snorm _ (ENNReal.ofReal p) _ ≤ _ at hg
  refine' ⟨g, _, g_mem⟩
  rwa [(hf.sub g_mem).snorm_eq_integral_rpow_norm B ENNReal.coe_ne_top,
    ENNReal.ofReal_le_ofReal_iff I.le, one_div, ENNReal.toReal_ofReal hp.le,
    Real.rpow_le_rpow_iff _ hε.le (inv_pos.2 hp)] at hg
  exact integral_nonneg fun x => Real.rpow_nonneg_of_nonneg (norm_nonneg _) _
#align measure_theory.mem_ℒp.exists_bounded_continuous_integral_rpow_sub_le MeasureTheory.Memℒp.exists_boundedContinuous_integral_rpow_sub_le

/-- Any integrable function can be approximated by bounded continuous functions,
version in terms of `∫⁻`. -/
theorem Integrable.exists_boundedContinuous_lintegral_sub_le [μ.WeaklyRegular] {f : α → E}
    (hf : Integrable f μ) {ε : ℝ≥0∞} (hε : ε ≠ 0) :
    ∃ g : α →ᵇ E, (∫⁻ x, ‖f x - g x‖₊ ∂μ) ≤ ε ∧ Integrable g μ := by
  simp only [← memℒp_one_iff_integrable, ← snorm_one_eq_lintegral_nnnorm] at hf ⊢
  exact hf.exists_boundedContinuous_snorm_sub_le ENNReal.one_ne_top hε
#align measure_theory.integrable.exists_bounded_continuous_lintegral_sub_le MeasureTheory.Integrable.exists_boundedContinuous_lintegral_sub_le

/-- Any integrable function can be approximated by bounded continuous functions,
version in terms of `∫`. -/
theorem Integrable.exists_boundedContinuous_integral_sub_le [μ.WeaklyRegular] {f : α → E}
    (hf : Integrable f μ) {ε : ℝ} (hε : 0 < ε) :
    ∃ g : α →ᵇ E, (∫ x, ‖f x - g x‖ ∂μ) ≤ ε ∧ Integrable g μ := by
  simp only [← memℒp_one_iff_integrable, ← snorm_one_eq_lintegral_nnnorm, ← ENNReal.ofReal_one]
    at hf ⊢
  simpa using hf.exists_boundedContinuous_integral_rpow_sub_le zero_lt_one hε
#align measure_theory.integrable.exists_bounded_continuous_integral_sub_le MeasureTheory.Integrable.exists_boundedContinuous_integral_sub_le

namespace Lp

variable (E)

/-- A function in `Lp` can be approximated in `Lp` by continuous functions. -/
theorem boundedContinuousFunction_dense [SecondCountableTopologyEither α E] [_i : Fact (1 ≤ p)]
    (hp : p ≠ ∞) [μ.WeaklyRegular] : (boundedContinuousFunction E p μ).topologicalClosure = ⊤ := by
  rw [AddSubgroup.eq_top_iff']
  intro f
  refine' mem_closure_iff_frequently.mpr _
  rw [Metric.nhds_basis_closedBall.frequently_iff]
  intro ε hε
  have A : ENNReal.ofReal ε ≠ 0 := by simp only [Ne.def, ENNReal.ofReal_eq_zero, not_le, hε]
  obtain ⟨g, hg, g_mem⟩ :
      ∃ g : α →ᵇ E, snorm ((f : α → E) - (g : α → E)) p μ ≤ ENNReal.ofReal ε ∧ Memℒp g p μ :=
    (Lp.memℒp f).exists_boundedContinuous_snorm_sub_le hp A
  refine' ⟨g_mem.toLp _, _, ⟨g, rfl⟩⟩
  simp only [dist_eq_norm, Metric.mem_closedBall']
  rw [Lp.norm_def]
  -- porting note: original proof started with:
  -- convert ENNReal.toReal_le_of_le_ofReal hε.le hg using 2
  -- the `convert` was completely borked and timed out
  have key : snorm ((f : α → E) - (g : α → E)) p μ = snorm (f - Memℒp.toLp (↑g) g_mem) p μ := by
    apply snorm_congr_ae
    filter_upwards [coeFn_sub f (g_mem.toLp g), g_mem.coeFn_toLp] with x hx h'x
    simp only [hx, Pi.sub_apply, sub_right_inj, h'x]
  simpa only [key] using ENNReal.toReal_le_of_le_ofReal hε.le hg
set_option linter.uppercaseLean3 false in
#align measure_theory.Lp.bounded_continuous_function_dense MeasureTheory.Lp.boundedContinuousFunction_dense

end Lp

end MeasureTheory

variable [SecondCountableTopologyEither α E] [_i : Fact (1 ≤ p)] (hp : p ≠ ∞)

variable (𝕜 : Type*) [NormedField 𝕜] [NormedAlgebra ℝ 𝕜] [NormedSpace 𝕜 E]

variable (E) (μ)

namespace BoundedContinuousFunction

theorem toLp_denseRange [μ.WeaklyRegular] [IsFiniteMeasure μ] :
    DenseRange (toLp p μ 𝕜 : (α →ᵇ E) →L[𝕜] Lp E p μ) := by
  haveI : NormedSpace ℝ E := RestrictScalars.normedSpace ℝ 𝕜 E
  rw [denseRange_iff_closure_range]
  suffices (LinearMap.range (toLp p μ 𝕜 : _ →L[𝕜] Lp E p μ)).toAddSubgroup.topologicalClosure = ⊤
    by exact congr_arg ((↑) : AddSubgroup (Lp E p μ) → Set (Lp E p μ)) this
  simpa [range_toLp p μ] using MeasureTheory.Lp.boundedContinuousFunction_dense E hp
set_option linter.uppercaseLean3 false in
#align bounded_continuous_function.to_Lp_dense_range BoundedContinuousFunction.toLp_denseRange

end BoundedContinuousFunction

namespace ContinuousMap

/-- Continuous functions are dense in `MeasureTheory.Lp`, `1 ≤ p < ∞`. This theorem assumes that
the domain is a compact space because otherwise `ContinuousMap.toLp` is undefined. Use
`BoundedContinuousFunction.toLp_denseRange` if the domain is not a compact space.  -/
theorem toLp_denseRange [CompactSpace α] [μ.WeaklyRegular] [IsFiniteMeasure μ] :
    DenseRange (toLp p μ 𝕜 : C(α, E) →L[𝕜] Lp E p μ) := by
  refine (BoundedContinuousFunction.toLp_denseRange _ _ hp 𝕜).mono ?_
  refine range_subset_iff.2 fun f ↦ ?_
  exact ⟨f.toContinuousMap, rfl⟩
set_option linter.uppercaseLean3 false in
#align continuous_map.to_Lp_dense_range ContinuousMap.toLp_denseRange

end ContinuousMap
```
