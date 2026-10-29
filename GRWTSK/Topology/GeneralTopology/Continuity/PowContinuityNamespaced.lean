-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ZeroCpowEqNhds.Variant2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ZeroCpowEqNhds.Variant2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c","mathematical_subject":"Topology.GeneralTopology","original_sha256":"2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/SpecialFunctions/Pow/Continuity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Abhimanyu Pallavi Sudhir, Jean Lo, Calle Sönne, Sébastien Gouëzel,
  Rémy Degenne, David Loeffler
-/
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics


namespace GRWTSK.Topology.GeneralTopology.ZeroCpowEqNhds.Variant2a886a239106e5b7b8d326732e8cf20bc7eb68b9dba1cd7a170d8fa40c4ebb1c

#align_import analysis.special_functions.pow.continuity from "leanprover-community/mathlib"@"0b9eaaa7686280fad8cce467f5c3c57ee6ce77f8"

/-!
# Continuity of power functions

This file contains lemmas about continuity of the power functions on `ℂ`, `ℝ`, `ℝ≥0`, and `ℝ≥0∞`.
-/


noncomputable section

open Classical Real Topology NNReal ENNReal Filter BigOperators ComplexConjugate

open Filter Finset Set

local macro_rules | `($x ^ $y) => `(HPow.hPow $x $y) -- Porting note: See issue lean4#2220

section CpowLimits

/-!
## Continuity for complex powers
-/


open Complex

variable {α : Type*}

theorem zero_cpow_eq_nhds {b : ℂ} (hb : b ≠ 0) : (fun x : ℂ => (0 : ℂ) ^ x) =ᶠ[𝓝 b] 0 := by
  suffices : ∀ᶠ x : ℂ in 𝓝 b, x ≠ 0
  exact
    this.mono fun x hx => by
      dsimp only
      rw [zero_cpow hx, Pi.zero_apply]
  exact IsOpen.eventually_mem isOpen_ne hb
#align zero_cpow_eq_nhds zero_cpow_eq_nhds

theorem cpow_eq_nhds {a b : ℂ} (ha : a ≠ 0) :
    (fun x => x ^ b) =ᶠ[𝓝 a] fun x => exp (log x * b) := by
  suffices : ∀ᶠ x : ℂ in 𝓝 a, x ≠ 0
  exact
    this.mono fun x hx => by
      dsimp only
      rw [cpow_def_of_ne_zero hx]
  exact IsOpen.eventually_mem isOpen_ne ha
#align cpow_eq_nhds cpow_eq_nhds

theorem cpow_eq_nhds' {p : ℂ × ℂ} (hp_fst : p.fst ≠ 0) :
    (fun x => x.1 ^ x.2) =ᶠ[𝓝 p] fun x => exp (log x.1 * x.2) := by
  suffices : ∀ᶠ x : ℂ × ℂ in 𝓝 p, x.1 ≠ 0
  exact
    this.mono fun x hx => by
      dsimp only
      rw [cpow_def_of_ne_zero hx]
  refine' IsOpen.eventually_mem _ hp_fst
  change IsOpen { x : ℂ × ℂ | x.1 = 0 }ᶜ
  rw [isOpen_compl_iff]
  exact isClosed_eq continuous_fst continuous_const
#align cpow_eq_nhds' cpow_eq_nhds'

-- Continuity of `fun x => a ^ x`: union of these two lemmas is optimal.
theorem continuousAt_const_cpow {a b : ℂ} (ha : a ≠ 0) : ContinuousAt (fun x : ℂ => a ^ x) b := by
  have cpow_eq : (fun x : ℂ => a ^ x) = fun x => exp (log a * x) := by
    ext1 b
    rw [cpow_def_of_ne_zero ha]
  rw [cpow_eq]
  exact continuous_exp.continuousAt.comp (ContinuousAt.mul continuousAt_const continuousAt_id)
#align continuous_at_const_cpow continuousAt_const_cpow

theorem continuousAt_const_cpow' {a b : ℂ} (h : b ≠ 0) : ContinuousAt (fun x : ℂ => a ^ x) b := by
  by_cases ha : a = 0
  · rw [ha, continuousAt_congr (zero_cpow_eq_nhds h)]
    exact continuousAt_const
  · exact continuousAt_const_cpow ha
#align continuous_at_const_cpow' continuousAt_const_cpow'

/-- The function `z ^ w` is continuous in `(z, w)` provided that `z` does not belong to the interval
`(-∞, 0]` on the real line. See also `Complex.continuousAt_cpow_zero_of_re_pos` for a version that
works for `z = 0` but assumes `0 < re w`. -/
theorem continuousAt_cpow {p : ℂ × ℂ} (hp_fst : 0 < p.fst.re ∨ p.fst.im ≠ 0) :
    ContinuousAt (fun x : ℂ × ℂ => x.1 ^ x.2) p := by
  have hp_fst_ne_zero : p.fst ≠ 0 := by
    intro h
    cases' hp_fst with hp_fst hp_fst <;>
      · rw [h] at hp_fst
        simp at hp_fst
  rw [continuousAt_congr (cpow_eq_nhds' hp_fst_ne_zero)]
  refine' continuous_exp.continuousAt.comp _
  exact
    ContinuousAt.mul
      (ContinuousAt.comp (continuousAt_clog hp_fst) continuous_fst.continuousAt)
      continuous_snd.continuousAt
#align continuous_at_cpow continuousAt_cpow

theorem continuousAt_cpow_const {a b : ℂ} (ha : 0 < a.re ∨ a.im ≠ 0) :
    ContinuousAt (fun x => cpow x b) a :=
  Tendsto.comp (@continuousAt_cpow (a, b) ha) (continuousAt_id.prod continuousAt_const)
#align continuous_at_cpow_const continuousAt_cpow_const

theorem Filter.Tendsto.cpow {l : Filter α} {f g : α → ℂ} {a b : ℂ} (hf : Tendsto f l (𝓝 a))
    (hg : Tendsto g l (𝓝 b)) (ha : 0 < a.re ∨ a.im ≠ 0) :
    Tendsto (fun x => f x ^ g x) l (𝓝 (a ^ b)) :=
  (@continuousAt_cpow (a, b) ha).tendsto.comp (hf.prod_mk_nhds hg)
#align filter.tendsto.cpow Filter.Tendsto.cpow

theorem Filter.Tendsto.const_cpow {l : Filter α} {f : α → ℂ} {a b : ℂ} (hf : Tendsto f l (𝓝 b))
    (h : a ≠ 0 ∨ b ≠ 0) : Tendsto (fun x => a ^ f x) l (𝓝 (a ^ b)) := by
  cases h with
  | inl h => exact (continuousAt_const_cpow h).tendsto.comp hf
  | inr h => exact (continuousAt_const_cpow' h).tendsto.comp hf
#align filter.tendsto.const_cpow Filter.Tendsto.const_cpow

variable [TopologicalSpace α] {f g : α → ℂ} {s : Set α} {a : α}

nonrec theorem ContinuousWithinAt.cpow (hf : ContinuousWithinAt f s a)
    (hg : ContinuousWithinAt g s a) (h0 : 0 < (f a).re ∨ (f a).im ≠ 0) :
    ContinuousWithinAt (fun x => f x ^ g x) s a :=
  hf.cpow hg h0
#align continuous_within_at.cpow ContinuousWithinAt.cpow

nonrec theorem ContinuousWithinAt.const_cpow {b : ℂ} (hf : ContinuousWithinAt f s a)
    (h : b ≠ 0 ∨ f a ≠ 0) : ContinuousWithinAt (fun x => b ^ f x) s a :=
  hf.const_cpow h
#align continuous_within_at.const_cpow ContinuousWithinAt.const_cpow

nonrec theorem ContinuousAt.cpow (hf : ContinuousAt f a) (hg : ContinuousAt g a)
    (h0 : 0 < (f a).re ∨ (f a).im ≠ 0) : ContinuousAt (fun x => f x ^ g x) a :=
  hf.cpow hg h0
#align continuous_at.cpow ContinuousAt.cpow

nonrec theorem ContinuousAt.const_cpow {b : ℂ} (hf : ContinuousAt f a) (h : b ≠ 0 ∨ f a ≠ 0) :
    ContinuousAt (fun x => b ^ f x) a :=
  hf.const_cpow h
#align continuous_at.const_cpow ContinuousAt.const_cpow

theorem ContinuousOn.cpow (hf : ContinuousOn f s) (hg : ContinuousOn g s)
    (h0 : ∀ a ∈ s, 0 < (f a).re ∨ (f a).im ≠ 0) : ContinuousOn (fun x => f x ^ g x) s := fun a ha =>
  (hf a ha).cpow (hg a ha) (h0 a ha)
#align continuous_on.cpow ContinuousOn.cpow

theorem ContinuousOn.const_cpow {b : ℂ} (hf : ContinuousOn f s) (h : b ≠ 0 ∨ ∀ a ∈ s, f a ≠ 0) :
    ContinuousOn (fun x => b ^ f x) s := fun a ha => (hf a ha).const_cpow (h.imp id fun h => h a ha)
#align continuous_on.const_cpow ContinuousOn.const_cpow

theorem Continuous.cpow (hf : Continuous f) (hg : Continuous g)
    (h0 : ∀ a, 0 < (f a).re ∨ (f a).im ≠ 0) : Continuous fun x => f x ^ g x :=
  continuous_iff_continuousAt.2 fun a => hf.continuousAt.cpow hg.continuousAt (h0 a)
#align continuous.cpow Continuous.cpow

theorem Continuous.const_cpow {b : ℂ} (hf : Continuous f) (h : b ≠ 0 ∨ ∀ a, f a ≠ 0) :
    Continuous fun x => b ^ f x :=
  continuous_iff_continuousAt.2 fun a => hf.continuousAt.const_cpow <| h.imp id fun h => h a
#align continuous.const_cpow Continuous.const_cpow

theorem ContinuousOn.cpow_const {b : ℂ} (hf : ContinuousOn f s)
    (h : ∀ a : α, a ∈ s → 0 < (f a).re ∨ (f a).im ≠ 0) : ContinuousOn (fun x => f x ^ b) s :=
  hf.cpow continuousOn_const h
#align continuous_on.cpow_const ContinuousOn.cpow_const

end CpowLimits

section RpowLimits

/-!
## Continuity for real powers
-/


namespace Real

theorem continuousAt_const_rpow {a b : ℝ} (h : a ≠ 0) : ContinuousAt (rpow a) b := by
  have : rpow a = fun x : ℝ => ((a : ℂ) ^ (x : ℂ)).re := by
    ext1 x
    rw [rpow_eq_pow, rpow_def]
  rw [this]
  refine' Complex.continuous_re.continuousAt.comp _
  refine' (continuousAt_const_cpow _).comp Complex.continuous_ofReal.continuousAt
  norm_cast
#align real.continuous_at_const_rpow Real.continuousAt_const_rpow

theorem continuousAt_const_rpow' {a b : ℝ} (h : b ≠ 0) : ContinuousAt (rpow a) b := by
  have : rpow a = fun x : ℝ => ((a : ℂ) ^ (x : ℂ)).re := by
    ext1 x
    rw [rpow_eq_pow, rpow_def]
  rw [this]
  refine' Complex.continuous_re.continuousAt.comp _
  refine' (continuousAt_const_cpow' _).comp Complex.continuous_ofReal.continuousAt
  norm_cast
#align real.continuous_at_const_rpow' Real.continuousAt_const_rpow'

theorem rpow_eq_nhds_of_neg {p : ℝ × ℝ} (hp_fst : p.fst < 0) :
    (fun x : ℝ × ℝ => x.1 ^ x.2) =ᶠ[𝓝 p] fun x => exp (log x.1 * x.2) * cos (x.2 * π) := by
  suffices : ∀ᶠ x : ℝ × ℝ in 𝓝 p, x.1 < 0
  exact
    this.mono fun x hx => by
      dsimp only
      rw [rpow_def_of_neg hx]
  exact IsOpen.eventually_mem (isOpen_lt continuous_fst continuous_const) hp_fst
#align real.rpow_eq_nhds_of_neg Real.rpow_eq_nhds_of_neg

theorem rpow_eq_nhds_of_pos {p : ℝ × ℝ} (hp_fst : 0 < p.fst) :
    (fun x : ℝ × ℝ => x.1 ^ x.2) =ᶠ[𝓝 p] fun x => exp (log x.1 * x.2) := by
  suffices : ∀ᶠ x : ℝ × ℝ in 𝓝 p, 0 < x.1
  exact
    this.mono fun x hx => by
      dsimp only
      rw [rpow_def_of_pos hx]
  exact IsOpen.eventually_mem (isOpen_lt continuous_const continuous_fst) hp_fst
#align real.rpow_eq_nhds_of_pos Real.rpow_eq_nhds_of_pos

theorem continuousAt_rpow_of_ne (p : ℝ × ℝ) (hp : p.1 ≠ 0) :
    ContinuousAt (fun p : ℝ × ℝ => p.1 ^ p.2) p := by
  rw [ne_iff_lt_or_gt] at hp
  cases hp with
  | inl hp =>
    rw [continuousAt_congr (rpow_eq_nhds_of_neg hp)]
    refine' ContinuousAt.mul _ (continuous_cos.continuousAt.comp _)
    · refine' continuous_exp.continuousAt.comp (ContinuousAt.mul _ continuous_snd.continuousAt)
      refine' (continuousAt_log _).comp continuous_fst.continuousAt
      exact hp.ne
    · exact continuous_snd.continuousAt.mul continuousAt_const
  | inr hp =>
    rw [continuousAt_congr (rpow_eq_nhds_of_pos hp)]
    refine' continuous_exp.continuousAt.comp (ContinuousAt.mul _ continuous_snd.continuousAt)
    refine' (continuousAt_log _).comp continuous_fst.continuousAt
    exact hp.lt.ne.symm
#align real.continuous_at_rpow_of_ne Real.continuousAt_rpow_of_ne

theorem continuousAt_rpow_of_pos (p : ℝ × ℝ) (hp : 0 < p.2) :
    ContinuousAt (fun p : ℝ × ℝ => p.1 ^ p.2) p := by
  cases' p with x y
  dsimp only at hp
  obtain hx | rfl := ne_or_eq x 0
  · exact continuousAt_rpow_of_ne (x, y) hx
  have A : Tendsto (fun p : ℝ × ℝ => exp (log p.1 * p.2)) (𝓝[≠] 0 ×ˢ 𝓝 y) (𝓝 0) :=
    tendsto_exp_atBot.comp
      ((tendsto_log_nhdsWithin_zero.comp tendsto_fst).atBot_mul hp tendsto_snd)
  have B : Tendsto (fun p : ℝ × ℝ => p.1 ^ p.2) (𝓝[≠] 0 ×ˢ 𝓝 y) (𝓝 0) :=
    squeeze_zero_norm (fun p => abs_rpow_le_exp_log_mul p.1 p.2) A
  have C : Tendsto (fun p : ℝ × ℝ => p.1 ^ p.2) (𝓝[{0}] 0 ×ˢ 𝓝 y) (pure 0) := by
    rw [nhdsWithin_singleton, tendsto_pure, pure_prod, eventually_map]
    exact (lt_mem_nhds hp).mono fun y hy => zero_rpow hy.ne'
  simpa only [← sup_prod, ← nhdsWithin_union, compl_union_self, nhdsWithin_univ, nhds_prod_eq,
    ContinuousAt, zero_rpow hp.ne'] using B.sup (C.mono_right (pure_le_nhds _))
#align real.continuous_at_rpow_of_pos Real.continuousAt_rpow_of_pos

theorem continuousAt_rpow (p : ℝ × ℝ) (h : p.1 ≠ 0 ∨ 0 < p.2) :
    ContinuousAt (fun p : ℝ × ℝ => p.1 ^ p.2) p :=
  h.elim (fun h => continuousAt_rpow_of_ne p h) fun h => continuousAt_rpow_of_pos p h
#align real.continuous_at_rpow Real.continuousAt_rpow

theorem continuousAt_rpow_const (x : ℝ) (q : ℝ) (h : x ≠ 0 ∨ 0 < q) :
    ContinuousAt (fun x : ℝ => x ^ q) x := by
  change ContinuousAt ((fun p : ℝ × ℝ => p.1 ^ p.2) ∘ fun y : ℝ => (y, q)) x
  apply ContinuousAt.comp
  · exact continuousAt_rpow (x, q) h
  · exact (continuous_id'.prod_mk continuous_const).continuousAt
#align real.continuous_at_rpow_const Real.continuousAt_rpow_const

end Real

section

variable {α : Type*}

theorem Filter.Tendsto.rpow {l : Filter α} {f g : α → ℝ} {x y : ℝ} (hf : Tendsto f l (𝓝 x))
    (hg : Tendsto g l (𝓝 y)) (h : x ≠ 0 ∨ 0 < y) : Tendsto (fun t => f t ^ g t) l (𝓝 (x ^ y)) :=
  (Real.continuousAt_rpow (x, y) h).tendsto.comp (hf.prod_mk_nhds hg)
#align filter.tendsto.rpow Filter.Tendsto.rpow

theorem Filter.Tendsto.rpow_const {l : Filter α} {f : α → ℝ} {x p : ℝ} (hf : Tendsto f l (𝓝 x))
    (h : x ≠ 0 ∨ 0 ≤ p) : Tendsto (fun a => f a ^ p) l (𝓝 (x ^ p)) :=
  if h0 : 0 = p then h0 ▸ by simp [tendsto_const_nhds]
  else hf.rpow tendsto_const_nhds (h.imp id fun h' => h'.lt_of_ne h0)
#align filter.tendsto.rpow_const Filter.Tendsto.rpow_const

variable [TopologicalSpace α] {f g : α → ℝ} {s : Set α} {x : α} {p : ℝ}

nonrec theorem ContinuousAt.rpow (hf : ContinuousAt f x) (hg : ContinuousAt g x)
    (h : f x ≠ 0 ∨ 0 < g x) : ContinuousAt (fun t => f t ^ g t) x :=
  hf.rpow hg h
#align continuous_at.rpow ContinuousAt.rpow

nonrec theorem ContinuousWithinAt.rpow (hf : ContinuousWithinAt f s x)
    (hg : ContinuousWithinAt g s x) (h : f x ≠ 0 ∨ 0 < g x) :
    ContinuousWithinAt (fun t => f t ^ g t) s x :=
  hf.rpow hg h
#align continuous_within_at.rpow ContinuousWithinAt.rpow

theorem ContinuousOn.rpow (hf : ContinuousOn f s) (hg : ContinuousOn g s)
    (h : ∀ x ∈ s, f x ≠ 0 ∨ 0 < g x) : ContinuousOn (fun t => f t ^ g t) s := fun t ht =>
  (hf t ht).rpow (hg t ht) (h t ht)
#align continuous_on.rpow ContinuousOn.rpow

theorem Continuous.rpow (hf : Continuous f) (hg : Continuous g) (h : ∀ x, f x ≠ 0 ∨ 0 < g x) :
    Continuous fun x => f x ^ g x :=
  continuous_iff_continuousAt.2 fun x => hf.continuousAt.rpow hg.continuousAt (h x)
#align continuous.rpow Continuous.rpow

nonrec theorem ContinuousWithinAt.rpow_const (hf : ContinuousWithinAt f s x) (h : f x ≠ 0 ∨ 0 ≤ p) :
    ContinuousWithinAt (fun x => f x ^ p) s x :=
  hf.rpow_const h
#align continuous_within_at.rpow_const ContinuousWithinAt.rpow_const

nonrec theorem ContinuousAt.rpow_const (hf : ContinuousAt f x) (h : f x ≠ 0 ∨ 0 ≤ p) :
    ContinuousAt (fun x => f x ^ p) x :=
  hf.rpow_const h
#align continuous_at.rpow_const ContinuousAt.rpow_const

theorem ContinuousOn.rpow_const (hf : ContinuousOn f s) (h : ∀ x ∈ s, f x ≠ 0 ∨ 0 ≤ p) :
    ContinuousOn (fun x => f x ^ p) s := fun x hx => (hf x hx).rpow_const (h x hx)
#align continuous_on.rpow_const ContinuousOn.rpow_const

theorem Continuous.rpow_const (hf : Continuous f) (h : ∀ x, f x ≠ 0 ∨ 0 ≤ p) :
    Continuous fun x => f x ^ p :=
  continuous_iff_continuousAt.2 fun x => hf.continuousAt.rpow_const (h x)
#align continuous.rpow_const Continuous.rpow_const

end

end RpowLimits

/-! ## Continuity results for `cpow`, part II

These results involve relating real and complex powers, so cannot be done higher up.
-/


section CpowLimits2

namespace Complex

/-- See also `continuousAt_cpow` and `Complex.continuousAt_cpow_of_re_pos`. -/
theorem continuousAt_cpow_zero_of_re_pos {z : ℂ} (hz : 0 < z.re) :
    ContinuousAt (fun x : ℂ × ℂ => x.1 ^ x.2) (0, z) := by
  have hz₀ : z ≠ 0 := ne_of_apply_ne re hz.ne'
  rw [ContinuousAt, zero_cpow hz₀, tendsto_zero_iff_norm_tendsto_zero]
  refine' squeeze_zero (fun _ => norm_nonneg _) (fun _ => abs_cpow_le _ _) _
  simp only [div_eq_mul_inv, ← Real.exp_neg]
  refine' Tendsto.zero_mul_isBoundedUnder_le _ _
  · convert
        (continuous_fst.norm.tendsto ((0 : ℂ), z)).rpow
          ((continuous_re.comp continuous_snd).tendsto _) _ <;>
      simp [hz, Real.zero_rpow hz.ne']
  · simp only [Function.comp, Real.norm_eq_abs, abs_of_pos (Real.exp_pos _)]
    rcases exists_gt |im z| with ⟨C, hC⟩
    refine' ⟨Real.exp (π * C), eventually_map.2 _⟩
    refine'
      (((continuous_im.comp continuous_snd).abs.tendsto (_, z)).eventually (gt_mem_nhds hC)).mono
        fun z hz => Real.exp_le_exp.2 <| (neg_le_abs_self _).trans _
    rw [_root_.abs_mul]
    exact
      mul_le_mul (abs_le.2 ⟨(neg_pi_lt_arg _).le, arg_le_pi _⟩) hz.le (_root_.abs_nonneg _)
        Real.pi_pos.le
#align complex.continuous_at_cpow_zero_of_re_pos Complex.continuousAt_cpow_zero_of_re_pos

open ComplexOrder in
/-- See also `continuousAt_cpow` for a version that assumes `p.1 ≠ 0` but makes no
assumptions about `p.2`. -/
theorem continuousAt_cpow_of_re_pos {p : ℂ × ℂ} (h₁ : 0 ≤ p.1.re ∨ p.1.im ≠ 0) (h₂ : 0 < p.2.re) :
    ContinuousAt (fun x : ℂ × ℂ => x.1 ^ x.2) p := by
  cases' p with z w
  rw [← not_lt_zero_iff, lt_iff_le_and_ne, not_and_or, Ne.def, Classical.not_not,
    not_le_zero_iff] at h₁
  rcases h₁ with (h₁ | (rfl : z = 0))
  exacts [continuousAt_cpow h₁, continuousAt_cpow_zero_of_re_pos h₂]
#align complex.continuous_at_cpow_of_re_pos Complex.continuousAt_cpow_of_re_pos

/-- See also `continuousAt_cpow_const` for a version that assumes `z ≠ 0` but makes no
assumptions about `w`. -/
theorem continuousAt_cpow_const_of_re_pos {z w : ℂ} (hz : 0 ≤ re z ∨ im z ≠ 0) (hw : 0 < re w) :
    ContinuousAt (fun x => x ^ w) z :=
  Tendsto.comp (@continuousAt_cpow_of_re_pos (z, w) hz hw) (continuousAt_id.prod continuousAt_const)
#align complex.continuous_at_cpow_const_of_re_pos Complex.continuousAt_cpow_const_of_re_pos

/-- Continuity of `(x, y) ↦ x ^ y` as a function on `ℝ × ℂ`. -/
theorem continuousAt_ofReal_cpow (x : ℝ) (y : ℂ) (h : 0 < y.re ∨ x ≠ 0) :
    ContinuousAt (fun p => (p.1 : ℂ) ^ p.2 : ℝ × ℂ → ℂ) (x, y) := by
  rcases lt_trichotomy (0 : ℝ) x with (hx | rfl | hx)
  · -- x > 0 : easy case
    have : ContinuousAt (fun p => ⟨↑p.1, p.2⟩ : ℝ × ℂ → ℂ × ℂ) (x, y) :=
      continuous_ofReal.continuousAt.prod_map continuousAt_id
    refine' (continuousAt_cpow (Or.inl _)).comp this
    rwa [ofReal_re]
  · -- x = 0 : reduce to continuousAt_cpow_zero_of_re_pos
    have A : ContinuousAt (fun p => p.1 ^ p.2 : ℂ × ℂ → ℂ) ⟨↑(0 : ℝ), y⟩ := by
      rw [ofReal_zero]
      apply continuousAt_cpow_zero_of_re_pos
      tauto
    have B : ContinuousAt (fun p => ⟨↑p.1, p.2⟩ : ℝ × ℂ → ℂ × ℂ) ⟨0, y⟩ :=
      continuous_ofReal.continuousAt.prod_map continuousAt_id
    exact @ContinuousAt.comp (ℝ × ℂ) (ℂ × ℂ) ℂ _ _ _ _ (fun p => ⟨↑p.1, p.2⟩) ⟨0, y⟩ A B
  · -- x < 0 : difficult case
    suffices ContinuousAt (fun p => (-(p.1 : ℂ)) ^ p.2 * exp (π * I * p.2) : ℝ × ℂ → ℂ) (x, y) by
      refine' this.congr (eventually_of_mem (prod_mem_nhds (Iio_mem_nhds hx) univ_mem) _)
      exact fun p hp => (ofReal_cpow_of_nonpos (le_of_lt hp.1) p.2).symm
    have A : ContinuousAt (fun p => ⟨-↑p.1, p.2⟩ : ℝ × ℂ → ℂ × ℂ) (x, y) :=
      ContinuousAt.prod_map continuous_ofReal.continuousAt.neg continuousAt_id
    apply ContinuousAt.mul
    · refine' (continuousAt_cpow (Or.inl _)).comp A
      rwa [neg_re, ofReal_re, neg_pos]
    · exact (continuous_exp.comp (continuous_const.mul continuous_snd)).continuousAt
#align complex.continuous_at_of_real_cpow Complex.continuousAt_ofReal_cpow

theorem continuousAt_ofReal_cpow_const (x : ℝ) (y : ℂ) (h : 0 < y.re ∨ x ≠ 0) :
    ContinuousAt (fun a => (a : ℂ) ^ y : ℝ → ℂ) x :=
  @ContinuousAt.comp _ _ _ _ _ _ _ _ x (continuousAt_ofReal_cpow x y h)
    (continuous_id.prod_mk continuous_const).continuousAt
#align complex.continuous_at_of_real_cpow_const Complex.continuousAt_ofReal_cpow_const

theorem continuous_ofReal_cpow_const {y : ℂ} (hs : 0 < y.re) :
    Continuous (fun x => (x : ℂ) ^ y : ℝ → ℂ) :=
  continuous_iff_continuousAt.mpr fun x => continuousAt_ofReal_cpow_const x y (Or.inl hs)
#align complex.continuous_of_real_cpow_const Complex.continuous_ofReal_cpow_const

end Complex

end CpowLimits2

/-! ## Limits and continuity for `ℝ≥0` powers -/


namespace NNReal

theorem continuousAt_rpow {x : ℝ≥0} {y : ℝ} (h : x ≠ 0 ∨ 0 < y) :
    ContinuousAt (fun p : ℝ≥0 × ℝ => p.1 ^ p.2) (x, y) := by
  have :
    (fun p : ℝ≥0 × ℝ => p.1 ^ p.2) =
      Real.toNNReal ∘ (fun p : ℝ × ℝ => p.1 ^ p.2) ∘ fun p : ℝ≥0 × ℝ => (p.1.1, p.2) := by
    ext p
    erw [coe_rpow, Real.coe_toNNReal _ (Real.rpow_nonneg_of_nonneg p.1.2 _)]
    rfl
  rw [this]
  refine' continuous_real_toNNReal.continuousAt.comp (ContinuousAt.comp _ _)
  · apply Real.continuousAt_rpow
    simp only [Ne.def] at h
    rw [← NNReal.coe_eq_zero x] at h
    exact h
  · exact ((continuous_subtype_val.comp continuous_fst).prod_mk continuous_snd).continuousAt
#align nnreal.continuous_at_rpow NNReal.continuousAt_rpow

theorem eventually_pow_one_div_le (x : ℝ≥0) {y : ℝ≥0} (hy : 1 < y) :
    ∀ᶠ n : ℕ in atTop, x ^ (1 / n : ℝ) ≤ y := by
  obtain ⟨m, hm⟩ := add_one_pow_unbounded_of_pos x (tsub_pos_of_lt hy)
  rw [tsub_add_cancel_of_le hy.le] at hm
  refine' eventually_atTop.2 ⟨m + 1, fun n hn => _⟩
  simpa only [NNReal.rpow_one_div_le_iff (Nat.cast_pos.2 <| m.succ_pos.trans_le hn),
    NNReal.rpow_nat_cast] using hm.le.trans (pow_le_pow hy.le (m.le_succ.trans hn))
#align nnreal.eventually_pow_one_div_le NNReal.eventually_pow_one_div_le

end NNReal

open Filter

theorem Filter.Tendsto.nnrpow {α : Type*} {f : Filter α} {u : α → ℝ≥0} {v : α → ℝ} {x : ℝ≥0}
    {y : ℝ} (hx : Tendsto u f (𝓝 x)) (hy : Tendsto v f (𝓝 y)) (h : x ≠ 0 ∨ 0 < y) :
    Tendsto (fun a => u a ^ v a) f (𝓝 (x ^ y)) :=
  Tendsto.comp (NNReal.continuousAt_rpow h) (hx.prod_mk_nhds hy)
#align filter.tendsto.nnrpow Filter.Tendsto.nnrpow

namespace NNReal

theorem continuousAt_rpow_const {x : ℝ≥0} {y : ℝ} (h : x ≠ 0 ∨ 0 ≤ y) :
    ContinuousAt (fun z => z ^ y) x :=
  h.elim (fun h => tendsto_id.nnrpow tendsto_const_nhds (Or.inl h)) fun h =>
    h.eq_or_lt.elim (fun h => h ▸ by simp only [rpow_zero, continuousAt_const]) fun h =>
      tendsto_id.nnrpow tendsto_const_nhds (Or.inr h)
#align nnreal.continuous_at_rpow_const NNReal.continuousAt_rpow_const

theorem continuous_rpow_const {y : ℝ} (h : 0 ≤ y) : Continuous fun x : ℝ≥0 => x ^ y :=
  continuous_iff_continuousAt.2 fun _ => continuousAt_rpow_const (Or.inr h)
#align nnreal.continuous_rpow_const NNReal.continuous_rpow_const

end NNReal

/-! ## Continuity for `ℝ≥0∞` powers -/


namespace ENNReal

theorem eventually_pow_one_div_le {x : ℝ≥0∞} (hx : x ≠ ∞) {y : ℝ≥0∞} (hy : 1 < y) :
    ∀ᶠ n : ℕ in atTop, x ^ (1 / n : ℝ) ≤ y := by
  lift x to ℝ≥0 using hx
  by_cases y = ∞
  · exact eventually_of_forall fun n => h.symm ▸ le_top
  · lift y to ℝ≥0 using h
    have := NNReal.eventually_pow_one_div_le x (by exact_mod_cast hy : 1 < y)
    refine' this.congr (eventually_of_forall fun n => _)
    rw [coe_rpow_of_nonneg x (by positivity : 0 ≤ (1 / n : ℝ)), coe_le_coe]
#align ennreal.eventually_pow_one_div_le ENNReal.eventually_pow_one_div_le

private theorem continuousAt_rpow_const_of_pos {x : ℝ≥0∞} {y : ℝ} (h : 0 < y) :
    ContinuousAt (fun a : ℝ≥0∞ => a ^ y) x := by
  by_cases hx : x = ⊤
  · rw [hx, ContinuousAt]
    convert ENNReal.tendsto_rpow_at_top h
    simp [h]
  lift x to ℝ≥0 using hx
  rw [continuousAt_coe_iff]
  convert continuous_coe.continuousAt.comp (NNReal.continuousAt_rpow_const (Or.inr h.le)) using 1
  ext1 x
  simp [coe_rpow_of_nonneg _ h.le]

@[continuity]
theorem continuous_rpow_const {y : ℝ} : Continuous fun a : ℝ≥0∞ => a ^ y := by
  refine continuous_iff_continuousAt.2 fun x => ?_
  rcases lt_trichotomy (0 : ℝ) y with (hy | rfl | hy)
  · exact continuousAt_rpow_const_of_pos hy
  · simp only [rpow_zero]
    exact continuousAt_const
  · obtain ⟨z, hz⟩ : ∃ z, y = -z := ⟨-y, (neg_neg _).symm⟩
    have z_pos : 0 < z := by simpa [hz] using hy
    simp_rw [hz, rpow_neg]
    exact continuous_inv.continuousAt.comp (continuousAt_rpow_const_of_pos z_pos)
#align ennreal.continuous_rpow_const ENNReal.continuous_rpow_const

theorem tendsto_const_mul_rpow_nhds_zero_of_pos {c : ℝ≥0∞} (hc : c ≠ ∞) {y : ℝ} (hy : 0 < y) :
    Tendsto (fun x : ℝ≥0∞ => c * x ^ y) (𝓝 0) (𝓝 0) := by
  convert ENNReal.Tendsto.const_mul (ENNReal.continuous_rpow_const.tendsto 0) _
  · simp [hy]
  · exact Or.inr hc
#align ennreal.tendsto_const_mul_rpow_nhds_zero_of_pos ENNReal.tendsto_const_mul_rpow_nhds_zero_of_pos

end ENNReal

theorem Filter.Tendsto.ennrpow_const {α : Type*} {f : Filter α} {m : α → ℝ≥0∞} {a : ℝ≥0∞} (r : ℝ)
    (hm : Tendsto m f (𝓝 a)) : Tendsto (fun x => m x ^ r) f (𝓝 (a ^ r)) :=
  (ENNReal.continuous_rpow_const.tendsto a).comp hm
#align filter.tendsto.ennrpow_const Filter.Tendsto.ennrpow_const
