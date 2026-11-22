/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimitiveDirichletZeroWindowReflection

/-!
# Signed height counts of the primitive Dirichlet source

Dual conjugation changes the sign of the ordinate and preserves multiplicity.
The decomposition into nonnegative and negative heights assigns the real
axis to exactly one summand, including at conductor one.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.PrimitiveDirichletSource

open GRWTSK.NumberTheory.WeilNegativeWitness

variable {q : ℕ} [NeZero q]

def signedHeightCount (source : PrimitiveDirichletSource q) (H : ℝ) (P : ℝ → Prop) : ℕ := by
  classical
  exact ∑ rho ∈ (heightWindow source.character source.isPrimitive H).filter
    (fun rho => P rho.1.im), zeroMultiplicity source.character rho

/-- An arbitrary signed ordinate filter reflects under dual conjugation. -/
theorem signedHeightCount_dual (source : PrimitiveDirichletSource q) (H : ℝ) (P : ℝ → Prop) :
    source.dual.signedHeightCount H P = source.signedHeightCount H (fun t => P (-t)) := by
  classical
  let e := source.dualConjugateZero
  have hmap :
      ((heightWindow source.character source.isPrimitive H).filter
        (fun rho => P (-rho.1.im))).map e.toEmbedding =
      (heightWindow source.dual.character source.dual.isPrimitive H).filter
        (fun rho => P rho.1.im) := by
    ext sigma
    obtain ⟨rho, rfl⟩ := e.surjective sigma
    simp only [Finset.mem_map_equiv, Equiv.symm_apply_apply, Finset.mem_filter, e,
      mem_heightWindow, dualConjugateZero_val, Complex.conj_im, abs_neg]
  unfold signedHeightCount
  rw [← hmap, Finset.sum_map]
  exact Finset.sum_congr rfl (fun rho _ => source.zeroMultiplicity_dualConjugateZero rho)

theorem heightCount_eq_nonneg_add_dual_pos (source : PrimitiveDirichletSource q) (H : ℝ) :
    heightCount source.character source.isPrimitive H =
      source.signedHeightCount H (0 ≤ ·) + source.dual.signedHeightCount H (0 < ·) := by
  classical
  rw [source.signedHeightCount_dual H]
  unfold heightCount signedHeightCount
  rw [← Finset.sum_filter_add_sum_filter_not
    (s := heightWindow source.character source.isPrimitive H)
    (p := fun rho => 0 ≤ rho.1.im) (f := zeroMultiplicity source.character)]
  congr 1
  congr 1
  ext rho
  simp

/-- Including the real axis on both sides counts its multiplicity twice.
The difference is precisely the mass of the actual real zeros. -/
theorem nonneg_add_dual_nonneg_eq_total_add_real (source : PrimitiveDirichletSource q) (H : ℝ) :
    source.signedHeightCount H (0 ≤ ·) + source.dual.signedHeightCount H (0 ≤ ·) =
      heightCount source.character source.isPrimitive H +
        source.signedHeightCount H (· = 0) := by
  classical
  rw [source.signedHeightCount_dual H]
  simp only [signedHeightCount, heightCount, Finset.sum_filter, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro rho _
  rcases lt_trichotomy rho.1.im 0 with h | h | h
  · simp [h.not_ge, h.ne, h.le]
  · simp [h]
  · simp [h.le, h.ne', h.not_ge]

/-- The conductor-one source is its own dual. -/
theorem zeta_heightCount_eq_nonneg_add_pos (H : ℝ) :
    heightCount zeta.character zeta.isPrimitive H =
      zeta.signedHeightCount H (0 ≤ ·) + zeta.signedHeightCount H (0 < ·) := by
  have h : zeta.dual = zeta := by
    change ({ character := (1 : DirichletCharacter ℂ 1)⁻¹, isPrimitive := _ } :
      PrimitiveDirichletSource 1) = zeta
    simp [zeta]
  simpa only [h] using zeta.heightCount_eq_nonneg_add_dual_pos H

end GRWTSK.NumberTheory.PrimitiveDirichletSource
