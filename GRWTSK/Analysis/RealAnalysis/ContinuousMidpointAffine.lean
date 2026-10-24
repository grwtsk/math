/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Complex.Basic
import Mathlib.Topology.Order.Compact
import Mathlib.Tactic

/-! # Continuous midpoint identities determine complex affine interpolation -/
set_option autoImplicit false
noncomputable section
open Set
namespace GRWTSK.Analysis.RealAnalysis.ContinuousMidpointAffine

theorem eq_zero_of_midpoint (f : ℝ → ℂ) (a b : ℝ) (hab : a < b)
    (hc : ContinuousOn f (Icc a b)) (ha : f a = 0) (hb : f b = 0)
    (hm : ∀ u ∈ Icc a b, ∀ v ∈ Icc a b, u < v →
      f ((u + v) / 2) = (f u + f v) / 2) :
    ∀ x ∈ Icc a b, f x = 0 := by
  obtain ⟨z, hz, hmax⟩ := isCompact_Icc.exists_isMaxOn (nonempty_Icc.mpr hab.le) hc.norm
  have hz0 : ‖f z‖ = 0 := by
    by_cases hza : z = a
    · simp [hza, ha]
    by_cases hzb : z = b
    · simp [hzb, hb]
    have haz : a < z := lt_of_le_of_ne hz.1 (Ne.symm hza)
    have hzb' : z < b := lt_of_le_of_ne hz.2 hzb
    by_cases hleft : z ≤ (a + b) / 2
    · have hv : 2 * z - a ∈ Icc a b := ⟨by linarith, by linarith⟩
      have he := hm a ⟨le_refl _, hab.le⟩ (2 * z - a) hv (by linarith)
      rw [show (a + (2 * z - a)) / 2 = z by ring, ha, zero_add] at he
      have hn := congrArg norm he
      norm_num only [norm_div, Complex.norm_ofNat] at hn
      have hbound := hmax hv
      change ‖f (2 * z - a)‖ ≤ ‖f z‖ at hbound
      nlinarith [norm_nonneg (f z)]
    · have hu : 2 * z - b ∈ Icc a b := ⟨by linarith, by linarith⟩
      have he := hm (2 * z - b) hu b ⟨hab.le, le_refl _⟩ (by linarith)
      rw [show (2 * z - b + b) / 2 = z by ring, hb, add_zero] at he
      have hn := congrArg norm he
      norm_num only [norm_div, Complex.norm_ofNat] at hn
      have hbound := hmax hu
      change ‖f (2 * z - b)‖ ≤ ‖f z‖ at hbound
      nlinarith [norm_nonneg (f z)]
  intro x hx
  have hbound : ‖f x‖ ≤ ‖f z‖ := hmax hx
  exact norm_eq_zero.mp (le_antisymm (hbound.trans_eq hz0) (norm_nonneg _))

theorem chord_identity (f : ℝ → ℂ) (a b : ℝ) (hab : a < b)
    (hc : ContinuousOn f (Icc a b))
    (hm : ∀ u ∈ Icc a b, ∀ v ∈ Icc a b, u < v →
      f ((u + v) / 2) = (f u + f v) / 2)
    (x : ℝ) (hx : x ∈ Icc a b) :
    ((b - a : ℝ) : ℂ) * (f x - f a) = ((x - a : ℝ) : ℂ) * (f b - f a) := by
  have hd : ((b - a : ℝ) : ℂ) ≠ 0 := by exact_mod_cast (ne_of_gt (sub_pos.mpr hab))
  push_cast at hd
  let L : ℝ → ℂ := fun t => f a + ((t - a : ℝ) : ℂ) / ((b - a : ℝ) : ℂ) * (f b - f a)
  have hLc : Continuous L := by dsimp [L]; fun_prop
  have hLa : f a - L a = 0 := by simp [L]
  have hLb : f b - L b = 0 := by simp [L, hd]
  have hzero := eq_zero_of_midpoint (fun t => f t - L t) a b hab
    (hc.sub hLc.continuousOn) hLa hLb (by
      intro u hu v hv huv
      rw [hm u hu v hv huv]
      dsimp [L]
      push_cast
      ring) x hx
  dsimp [L] at hzero
  field_simp [hd] at hzero
  linear_combination hzero

/-- Two points at distance one fix the same affine map on the whole interval. -/
theorem affine_from_two (f : ℝ → ℂ) (a b : ℝ) (hab : a < b)
    (hc : ContinuousOn f (Icc a b))
    (hm : ∀ u ∈ Icc a b, ∀ v ∈ Icc a b, u < v →
      f ((u + v) / 2) = (f u + f v) / 2)
    (hu : (2 : ℝ) ∈ Icc a b) (hv : (3 : ℝ) ∈ Icc a b)
    (x : ℝ) (hx : x ∈ Icc a b) :
    f x = f 2 + ((x - 2 : ℝ) : ℂ) * (f 3 - f 2) := by
  have h2 := chord_identity f a b hab hc hm 2 hu
  have h3 := chord_identity f a b hab hc hm 3 hv
  have hxx := chord_identity f a b hab hc hm x hx
  have hd : ((b - a : ℝ) : ℂ) ≠ 0 := by exact_mod_cast (ne_of_gt (sub_pos.mpr hab))
  have he : ((b - a : ℝ) : ℂ) *
      (f x - f 2 - ((x - 2 : ℝ) : ℂ) * (f 3 - f 2)) = 0 := by
    push_cast at h2 h3 hxx ⊢
    linear_combination hxx + ((x : ℂ) - 3) * h2 - ((x : ℂ) - 2) * h3
  have hz := (mul_eq_zero.mp he).resolve_left hd
  linear_combination hz
end GRWTSK.Analysis.RealAnalysis.ContinuousMidpointAffine
