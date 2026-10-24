# Complete source: GRWTSK.Topology.GeneralTopology.Real.Variant7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e025368bee57d3e5e09ece766dc900e112bf3c6` · SHA-256 `7f7247330e456365e94aeb1bcd5fbd602a5f1552d9e35aa8ef8a6d918b82e1f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Topology.MetricSpace.Basic
import Mathlib.Topology.Algebra.UniformGroup
import Mathlib.Topology.Algebra.UniformMulAction
import Mathlib.Topology.Algebra.Ring.Basic
import Mathlib.Topology.Algebra.Star
import Mathlib.Topology.Algebra.Order.Field
import Mathlib.Topology.Algebra.Order.Archimedean
import Mathlib.RingTheory.Subring.Basic
import Mathlib.GroupTheory.Archimedean
import Mathlib.Algebra.Order.Group.Bounds
import Mathlib.Algebra.Periodic
import Mathlib.Topology.Instances.Int

#align_import topology.instances.real from "leanprover-community/mathlib"@"9a59dcb7a2d06bf55da57b9030169219980660cd"

/-!
# Topological properties of ℝ
-/


noncomputable section

open Classical Filter Int Metric Set TopologicalSpace Topology Uniformity Interval

universe u v w

variable {α : Type u} {β : Type v} {γ : Type w}

instance : NoncompactSpace ℝ := Int.closedEmbedding_coe_real.noncompactSpace

theorem Real.uniformContinuous_add : UniformContinuous fun p : ℝ × ℝ => p.1 + p.2 :=
  Metric.uniformContinuous_iff.2 fun _ε ε0 =>
    let ⟨δ, δ0, Hδ⟩ := rat_add_continuous_lemma abs ε0
    ⟨δ, δ0, fun h =>
      let ⟨h₁, h₂⟩ := max_lt_iff.1 h
      Hδ h₁ h₂⟩
#align real.uniform_continuous_add Real.uniformContinuous_add

theorem Real.uniformContinuous_neg : UniformContinuous (@Neg.neg ℝ _) :=
  Metric.uniformContinuous_iff.2 fun ε ε0 =>
    ⟨_, ε0, fun h => by rw [dist_comm] at h; simpa only [Real.dist_eq, neg_sub_neg] using h⟩
#align real.uniform_continuous_neg Real.uniformContinuous_neg

instance : ContinuousStar ℝ := ⟨continuous_id⟩

instance : UniformAddGroup ℝ :=
  UniformAddGroup.mk' Real.uniformContinuous_add Real.uniformContinuous_neg

-- short-circuit type class inference
instance : TopologicalAddGroup ℝ := by infer_instance
instance : TopologicalRing ℝ := inferInstance
instance : TopologicalDivisionRing ℝ := inferInstance

instance : ProperSpace ℝ where
  isCompact_closedBall x r := by
    rw [Real.closedBall_eq_Icc]
    apply isCompact_Icc

instance : SecondCountableTopology ℝ := secondCountable_of_proper

theorem Real.isTopologicalBasis_Ioo_rat :
    @IsTopologicalBasis ℝ _ (⋃ (a : ℚ) (b : ℚ) (_ : a < b), {Ioo (a : ℝ) b}) :=
  isTopologicalBasis_of_open_of_nhds (by simp (config := { contextual := true }) [isOpen_Ioo])
    fun a v hav hv =>
    let ⟨l, u, ⟨hl, hu⟩, h⟩ := mem_nhds_iff_exists_Ioo_subset.mp (IsOpen.mem_nhds hv hav)
    let ⟨q, hlq, hqa⟩ := exists_rat_btwn hl
    let ⟨p, hap, hpu⟩ := exists_rat_btwn hu
    ⟨Ioo q p, by
      simp only [mem_iUnion]
      exact ⟨q, p, Rat.cast_lt.1 <| hqa.trans hap, rfl⟩, ⟨hqa, hap⟩, fun a' ⟨hqa', ha'p⟩ =>
      h ⟨hlq.trans hqa', ha'p.trans hpu⟩⟩
#align real.is_topological_basis_Ioo_rat Real.isTopologicalBasis_Ioo_rat

@[simp]
theorem Real.cocompact_eq : cocompact ℝ = atBot ⊔ atTop := by
  simp only [← comap_dist_right_atTop_eq_cocompact (0 : ℝ), Real.dist_eq, sub_zero,
    comap_abs_atTop]
#align real.cocompact_eq Real.cocompact_eq

/- TODO(Mario): Prove that these are uniform isomorphisms instead of uniform embeddings
lemma uniform_embedding_add_rat {r : ℚ} : uniform_embedding (fun p : ℚ => p + r) :=
_

lemma uniform_embedding_mul_rat {q : ℚ} (hq : q ≠ 0) : uniform_embedding ((*) q) :=
_ -/
theorem Real.mem_closure_iff {s : Set ℝ} {x : ℝ} : x ∈ closure s ↔ ∀ ε > 0, ∃ y ∈ s, |y - x| < ε :=
  by simp [mem_closure_iff_nhds_basis nhds_basis_ball, Real.dist_eq]
#align real.mem_closure_iff Real.mem_closure_iff

theorem Real.uniformContinuous_inv (s : Set ℝ) {r : ℝ} (r0 : 0 < r) (H : ∀ x ∈ s, r ≤ |x|) :
    UniformContinuous fun p : s => p.1⁻¹ :=
  Metric.uniformContinuous_iff.2 fun _ε ε0 =>
    let ⟨δ, δ0, Hδ⟩ := rat_inv_continuous_lemma abs ε0 r0
    ⟨δ, δ0, fun {a b} h => Hδ (H _ a.2) (H _ b.2) h⟩
#align real.uniform_continuous_inv Real.uniformContinuous_inv

theorem Real.uniformContinuous_abs : UniformContinuous (abs : ℝ → ℝ) :=
  Metric.uniformContinuous_iff.2 fun ε ε0 =>
    ⟨ε, ε0, lt_of_le_of_lt (abs_abs_sub_abs_le_abs_sub _ _)⟩
#align real.uniform_continuous_abs Real.uniformContinuous_abs

@[deprecated continuousAt_inv₀]
theorem Real.tendsto_inv {r : ℝ} (r0 : r ≠ 0) : Tendsto (fun q => q⁻¹) (𝓝 r) (𝓝 r⁻¹) :=
  continuousAt_inv₀ r0
#align real.tendsto_inv Real.tendsto_inv

theorem Real.continuous_inv : Continuous fun a : { r : ℝ // r ≠ 0 } => a.val⁻¹ :=
  continuousOn_inv₀.restrict
#align real.continuous_inv Real.continuous_inv

@[deprecated Continuous.inv₀]
theorem Real.Continuous.inv [TopologicalSpace α] {f : α → ℝ} (h : ∀ a, f a ≠ 0)
    (hf : Continuous f) : Continuous fun a => (f a)⁻¹ :=
  hf.inv₀ h
#align real.continuous.inv Real.Continuous.inv

theorem Real.uniformContinuous_const_mul {x : ℝ} : UniformContinuous ((· * ·) x) :=
  uniformContinuous_const_smul x
#align real.uniform_continuous_const_mul Real.uniformContinuous_const_mul

theorem Real.uniformContinuous_mul (s : Set (ℝ × ℝ)) {r₁ r₂ : ℝ}
    (H : ∀ x ∈ s, |(x : ℝ × ℝ).1| < r₁ ∧ |x.2| < r₂) :
    UniformContinuous fun p : s => p.1.1 * p.1.2 :=
  Metric.uniformContinuous_iff.2 fun _ε ε0 =>
    let ⟨δ, δ0, Hδ⟩ := rat_mul_continuous_lemma abs ε0
    ⟨δ, δ0, fun {a b} h =>
      let ⟨h₁, h₂⟩ := max_lt_iff.1 h
      Hδ (H _ a.2).1 (H _ b.2).2 h₁ h₂⟩
#align real.uniform_continuous_mul Real.uniformContinuous_mul

@[deprecated continuous_mul]
protected theorem Real.continuous_mul : Continuous fun p : ℝ × ℝ => p.1 * p.2 := continuous_mul
#align real.continuous_mul Real.continuous_mul

-- porting note: moved `TopologicalRing` instance up

instance : CompleteSpace ℝ := by
  apply complete_of_cauchySeq_tendsto
  intro u hu
  let c : CauSeq ℝ abs := ⟨u, Metric.cauchySeq_iff'.1 hu⟩
  refine' ⟨c.lim, fun s h => _⟩
  rcases Metric.mem_nhds_iff.1 h with ⟨ε, ε0, hε⟩
  have := c.equiv_lim ε ε0
  simp only [mem_map, mem_atTop_sets, mem_setOf_eq]
  refine' this.imp fun N hN n hn => hε (hN n hn)

theorem Real.totallyBounded_ball (x ε : ℝ) : TotallyBounded (ball x ε) := by
  rw [Real.ball_eq_Ioo]; apply totallyBounded_Ioo
#align real.totally_bounded_ball Real.totallyBounded_ball

section

theorem closure_of_rat_image_lt {q : ℚ} :
    closure (((↑) : ℚ → ℝ) '' { x | q < x }) = { r | ↑q ≤ r } :=
  Subset.antisymm
    ((isClosed_ge' _).closure_subset_iff.2
      (image_subset_iff.2 fun p h => le_of_lt <| (@Rat.cast_lt ℝ _ _ _).2 h))
    fun x hx => mem_closure_iff_nhds.2 fun t ht =>
      let ⟨ε, ε0, hε⟩ := Metric.mem_nhds_iff.1 ht
      let ⟨p, h₁, h₂⟩ := exists_rat_btwn ((lt_add_iff_pos_right x).2 ε0)
      ⟨p, hε <| by rwa [mem_ball, Real.dist_eq, abs_of_pos (sub_pos.2 h₁), sub_lt_iff_lt_add'],
        mem_image_of_mem _ <| Rat.cast_lt.1 <| lt_of_le_of_lt hx.out h₁⟩
#align closure_of_rat_image_lt closure_of_rat_image_lt

/- TODO(Mario): Put these back only if needed later
lemma closure_of_rat_image_le_eq {q : ℚ} : closure ((coe : ℚ → ℝ) '' {x | q ≤ x}) = {r | ↑q ≤ r} :=
  _

lemma closure_of_rat_image_le_le_eq {a b : ℚ} (hab : a ≤ b) :
    closure (of_rat '' {q:ℚ | a ≤ q ∧ q ≤ b}) = {r:ℝ | of_rat a ≤ r ∧ r ≤ of_rat b} :=
  _
-/
theorem Real.bounded_iff_bddBelow_bddAbove {s : Set ℝ} : Bounded s ↔ BddBelow s ∧ BddAbove s :=
  ⟨by
    intro bdd
    rcases (bounded_iff_subset_ball 0).1 bdd with ⟨r, hr⟩
    -- hr : s ⊆ closed_ball 0 r
    rw [Real.closedBall_eq_Icc] at hr
    -- hr : s ⊆ Icc (0 - r) (0 + r)
    exact ⟨bddBelow_Icc.mono hr, bddAbove_Icc.mono hr⟩,
    fun h => bounded_of_bddAbove_of_bddBelow h.2 h.1⟩
#align real.bounded_iff_bdd_below_bdd_above Real.bounded_iff_bddBelow_bddAbove

theorem Real.subset_Icc_sInf_sSup_of_bounded {s : Set ℝ} (h : Bounded s) :
    s ⊆ Icc (sInf s) (sSup s) :=
  subset_Icc_csInf_csSup (Real.bounded_iff_bddBelow_bddAbove.1 h).1
    (Real.bounded_iff_bddBelow_bddAbove.1 h).2
#align real.subset_Icc_Inf_Sup_of_bounded Real.subset_Icc_sInf_sSup_of_bounded

end

section Periodic

namespace Function

/-- A continuous, periodic function has compact range. -/
theorem Periodic.compact_of_continuous [TopologicalSpace α] {f : ℝ → α} {c : ℝ} (hp : Periodic f c)
    (hc : c ≠ 0) (hf : Continuous f) : IsCompact (range f) := by
  rw [← hp.image_uIcc hc 0]
  exact isCompact_uIcc.image hf
#align function.periodic.compact_of_continuous Function.Periodic.compact_of_continuous

@[deprecated Function.Periodic.compact_of_continuous]
theorem Periodic.compact_of_continuous' [TopologicalSpace α] {f : ℝ → α} {c : ℝ} (hp : Periodic f c)
    (hc : 0 < c) (hf : Continuous f) : IsCompact (range f) :=
  hp.compact_of_continuous hc.ne' hf
#align function.periodic.compact_of_continuous' Function.Periodic.compact_of_continuous'

/-- A continuous, periodic function is bounded. -/
theorem Periodic.bounded_of_continuous [PseudoMetricSpace α] {f : ℝ → α} {c : ℝ} (hp : Periodic f c)
    (hc : c ≠ 0) (hf : Continuous f) : Bounded (range f) :=
  (hp.compact_of_continuous hc hf).bounded
#align function.periodic.bounded_of_continuous Function.Periodic.bounded_of_continuous

end Function

end Periodic

section Subgroups

namespace Int

open Metric

/-- This is a special case of `NormedSpace.discreteTopology_zmultiples`. It exists only to simplify
dependencies. -/
instance {a : ℝ} : DiscreteTopology (AddSubgroup.zmultiples a) := by
  rcases eq_or_ne a 0 with (rfl | ha)
  · rw [AddSubgroup.zmultiples_zero_eq_bot]
    exact Subsingleton.discreteTopology (α := (⊥ : Submodule ℤ ℝ))
  rw [discreteTopology_iff_open_singleton_zero, isOpen_induced_iff]
  refine' ⟨ball 0 |a|, isOpen_ball, _⟩
  ext ⟨x, hx⟩
  obtain ⟨k, rfl⟩ := AddSubgroup.mem_zmultiples_iff.mp hx
  simp [ha, Real.dist_eq, abs_mul, (by norm_cast : |(k : ℝ)| < 1 ↔ |k| < 1)]

/-- Under the coercion from `ℤ` to `ℝ`, inverse images of compact sets are finite. -/
theorem tendsto_coe_cofinite : Tendsto ((↑) : ℤ → ℝ) cofinite (cocompact ℝ) := by
  apply (castAddHom ℝ).tendsto_coe_cofinite_of_discrete cast_injective
  rw [range_castAddHom]
  infer_instance
#align int.tendsto_coe_cofinite Int.tendsto_coe_cofinite

/-- For nonzero `a`, the "multiples of `a`" map `zmultiplesHom` from `ℤ` to `ℝ` is discrete, i.e.
inverse images of compact sets are finite. -/
theorem tendsto_zmultiplesHom_cofinite {a : ℝ} (ha : a ≠ 0) :
    Tendsto (zmultiplesHom ℝ a) cofinite (cocompact ℝ) := by
  apply (zmultiplesHom ℝ a).tendsto_coe_cofinite_of_discrete $ smul_left_injective ℤ ha
  rw [AddSubgroup.range_zmultiplesHom]
  infer_instance
#align int.tendsto_zmultiples_hom_cofinite Int.tendsto_zmultiplesHom_cofinite

end Int

namespace AddSubgroup

/-- The subgroup "multiples of `a`" (`zmultiples a`) is a discrete subgroup of `ℝ`, i.e. its
intersection with compact sets is finite. -/
theorem tendsto_zmultiples_subtype_cofinite (a : ℝ) :
    Tendsto (zmultiples a).subtype cofinite (cocompact ℝ) :=
  (zmultiples a).tendsto_coe_cofinite_of_discrete
#align add_subgroup.tendsto_zmultiples_subtype_cofinite AddSubgroup.tendsto_zmultiples_subtype_cofinite

end AddSubgroup

end Subgroups
```
