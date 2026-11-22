/-
Copyright (c) 2026 grwtsk contributors. MIT.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimitiveDirichletZeroWindowReflection

/-!
# Multiplicity split of a primitive Dirichlet height window

Reflection pairs the open half-strips within the original character. The
critical-line contribution remains separate, including zeros on the real axis.
-/

noncomputable section

namespace GRWTSK.NumberTheory.PrimitiveDirichletSource

open GRWTSK.NumberTheory.WeilNegativeWitness
open scoped BigOperators

variable {q : ℕ} [NeZero q]

/-- Multiplicity mass in the strict height window restricted by real part. -/
def heightCountRestricted (source : PrimitiveDirichletSource q) (H : ℝ)
    (P : ℝ → Prop) : ℕ := by
  classical
  exact ∑ rho ∈ (heightWindow source.character source.isPrimitive H).filter
    (fun rho => P rho.1.re), zeroMultiplicity source.character rho

theorem heightCount_left_eq_right (source : PrimitiveDirichletSource q) (H : ℝ) :
    source.heightCountRestricted H (· < 1 / 2) =
      source.heightCountRestricted H (1 / 2 < ·) := by
  classical
  let W := heightWindow source.character source.isPrimitive H
  have hmap : (W.filter (fun rho => rho.1.re < 1 / 2)).map
      source.criticalReflectZero.toEmbedding = W.filter (fun rho => 1 / 2 < rho.1.re) := by
    ext sigma
    obtain ⟨rho, rfl⟩ := source.criticalReflectZero.surjective sigma
    have hr : 1 / 2 < (source.criticalReflectZero rho).1.re ↔ rho.1.re < 1 / 2 := by
      rw [source.criticalReflectZero_re]
      constructor <;> intro h <;> linarith
    simp only [Finset.mem_map_equiv, Equiv.symm_apply_apply, Finset.mem_filter, W,
      source.criticalReflectZero_mem_heightWindow_iff, hr]
  unfold heightCountRestricted
  change (∑ rho ∈ W.filter (fun rho => rho.1.re < 1 / 2),
    zeroMultiplicity source.character rho) =
    ∑ rho ∈ W.filter (fun rho => 1 / 2 < rho.1.re), zeroMultiplicity source.character rho
  rw [← hmap, Finset.sum_map]
  exact Finset.sum_congr rfl (fun rho _ => (source.zeroMultiplicity_criticalReflectZero rho).symm)

/-- Off-line zeros contribute in pairs of equal analytic multiplicity. -/
theorem heightCount_eq_line_add_twice_right (source : PrimitiveDirichletSource q) (H : ℝ) :
    heightCount source.character source.isPrimitive H =
      source.heightCountRestricted H (· = 1 / 2) +
        2 * source.heightCountRestricted H (1 / 2 < ·) := by
  classical
  have hsplit : heightCount source.character source.isPrimitive H =
      source.heightCountRestricted H (· = 1 / 2) +
        source.heightCountRestricted H (· < 1 / 2) +
        source.heightCountRestricted H (1 / 2 < ·) := by
    simp only [heightCount, heightCountRestricted, Finset.sum_filter, ← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro rho _
    rcases lt_trichotomy rho.1.re (1 / 2 : ℝ) with h | h | h
    · simp only [h, h.ne, h.not_gt, ite_true, ite_false, zero_add, add_zero]
    · simp [h]
    · simp only [h, h.ne', h.not_gt, ite_true, ite_false, zero_add, add_zero]
  rw [hsplit, source.heightCount_left_eq_right H]
  omega

/-- The strict window of height zero is empty even when the character
has a real zero. -/
theorem heightCountRestricted_of_nonpos (source : PrimitiveDirichletSource q)
    {H : ℝ} (hH : H ≤ 0) (P : ℝ → Prop) :
    source.heightCountRestricted H P = 0 := by
  classical
  have he : heightWindow source.character source.isPrimitive H = ∅ := by
    apply Finset.eq_empty_iff_forall_notMem.mpr
    intro rho h
    have hr := (mem_heightWindow source.character source.isPrimitive H rho).mp h
    exact (not_lt_of_ge ((abs_nonneg _).trans' hH)) hr
  simp [heightCountRestricted, he]

/-- Even a single right-hand zero forces two occurrences of its entire
analytic order in the original count. -/
theorem twice_multiplicity_le_heightCount_of_right (source : PrimitiveDirichletSource q)
    {H : ℝ} {rho : CriticalStripZero source.character}
    (hmem : rho ∈ heightWindow source.character source.isPrimitive H)
    (hr : 1 / 2 < rho.1.re) :
    2 * zeroMultiplicity source.character rho ≤
      heightCount source.character source.isPrimitive H := by
  classical
  have h : zeroMultiplicity source.character rho ≤
      source.heightCountRestricted H (1 / 2 < ·) := by
    unfold heightCountRestricted
    exact Finset.single_le_sum (fun z _ => Nat.zero_le (zeroMultiplicity source.character z))
      (Finset.mem_filter.mpr ⟨hmem, hr⟩)
  rw [source.heightCount_eq_line_add_twice_right]
  omega

end GRWTSK.NumberTheory.PrimitiveDirichletSource
