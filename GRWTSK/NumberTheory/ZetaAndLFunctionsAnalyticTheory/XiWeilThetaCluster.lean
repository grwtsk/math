/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.Complex.Basic
import Mathlib.LinearAlgebra.Dimension.Constructions
import Mathlib.Tactic

/-! Residual estimates and a lower bound on the dimension of a spectral cluster, expressed
in a finite orthonormal eigenbasis of a self-adjoint operator. The scalar field can be real
or complex. The index counts eigenvalues with their multiplicities. -/

namespace GRWTSK.XiWeilThetaCluster

open Finset

variable {ι 𝕜 : Type*} [Fintype ι] [RCLike 𝕜]

/-- Coordinate restriction to a closed spectral interval of radius η about zero. -/
noncomputable def clusterRestriction (e : ι → ℝ) (η : ℝ) (W : Submodule 𝕜 (ι → 𝕜)) :
    W →ₗ[𝕜] ((univ.filter fun i => |e i| ≤ η) → 𝕜) where
  toFun x i := x.val i.val
  map_add' _ _ := rfl
  map_smul' _ _ := rfl

/-- The residual controls the entire squared mass outside the interval, for every vector. -/
theorem outside_mass_bound (e : ι → ℝ) (x : ι → 𝕜) {η : ℝ} (hη : 0 ≤ η) :
    η ^ 2 * (∑ i ∈ univ.filter (fun i => η < |e i|), ‖x i‖ ^ 2) ≤
      ∑ i, ‖(e i : 𝕜) * x i‖ ^ 2 := by
  rw [sum_filter, mul_sum]
  apply sum_le_sum
  intro i _
  rw [norm_mul, RCLike.norm_ofReal, mul_pow]
  by_cases hi : η < |e i|
  · simp only [hi, ↓reduceIte]
    exact mul_le_mul_of_nonneg_right (pow_le_pow_left₀ hη hi.le 2) (sq_nonneg _)
  · simp only [hi, ↓reduceIte, mul_zero]
    positivity

/-- If a whole trial space has a residual bound strictly smaller than the interval radius,
restriction to the cluster is injective on that space. -/
theorem clusterRestriction_injective (e : ι → ℝ) {ε η : ℝ} (hε : 0 ≤ ε) (hgap : ε < η)
    (W : Submodule 𝕜 (ι → 𝕜))
    (hres : ∀ x : W, (∑ i, ‖(e i : 𝕜) * x.val i‖ ^ 2) ≤ ε ^ 2 * ∑ i, ‖x.val i‖ ^ 2) :
    Function.Injective (clusterRestriction e η W) := by
  classical
  apply LinearMap.ker_eq_bot.mp
  apply LinearMap.ker_eq_bot'.mpr
  intro x hx
  by_contra hne
  have exists_coord : ∃ i, x.val i ≠ 0 := by
    by_contra! hzero
    exact hne (Subtype.ext (funext hzero))
  obtain ⟨i, hi⟩ := exists_coord
  have mass_pos : 0 < ∑ j, ‖x.val j‖ ^ 2 :=
    sum_pos' (fun j _ => sq_nonneg _) ⟨i, mem_univ _, pow_pos (norm_pos_iff.mpr hi) 2⟩
  have outside_eq : (∑ j ∈ univ.filter (fun j => η < |e j|), ‖x.val j‖ ^ 2) =
      ∑ j, ‖x.val j‖ ^ 2 := by
    rw [sum_filter]
    apply sum_congr rfl
    intro j _
    by_cases hj : η < |e j|
    · simp [hj]
    · have hj_mem : j ∈ univ.filter (fun k => |e k| ≤ η) :=
        mem_filter.mpr ⟨mem_univ _, le_of_not_gt hj⟩
      have vanishes : x.val j = 0 := congrFun hx ⟨j, hj_mem⟩
      simp [hj, vanishes]
  have h := outside_mass_bound e x.val (hε.trans hgap.le)
  rw [outside_eq] at h
  exact (not_lt_of_ge (h.trans (hres x)))
    (mul_lt_mul_of_pos_right (pow_lt_pow_left₀ hgap hε (by decide : 2 ≠ 0)) mass_pos)

/-- The number of eigenvalues in the closed interval, counted with multiplicity, bounds
the dimension of any trial subspace satisfying the uniform residual estimate. -/
theorem finrank_le_cluster_card (e : ι → ℝ) {ε η : ℝ} (hε : 0 ≤ ε) (hgap : ε < η)
    (W : Submodule 𝕜 (ι → 𝕜))
    (hres : ∀ x : W, (∑ i, ‖(e i : 𝕜) * x.val i‖ ^ 2) ≤ ε ^ 2 * ∑ i, ‖x.val i‖ ^ 2) :
    Module.finrank 𝕜 W ≤ (univ.filter fun i => |e i| ≤ η).card := by
  simpa only [Module.finrank_pi, Fintype.card_coe] using
    LinearMap.finrank_le_finrank_of_injective (clusterRestriction_injective e hε hgap W hres)

end GRWTSK.XiWeilThetaCluster
