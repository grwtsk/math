# Complete source: GRWTSK.Topology.GeneralTopology.AddTorsor.Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db3a19c733c15488d63d331280549defce5d16b8` · SHA-256 `22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Joseph Myers. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joseph Myers, Yury Kudryashov
-/
import Mathlib.Analysis.NormedSpace.Basic
import Mathlib.Analysis.Normed.Group.AddTorsor
import Mathlib.LinearAlgebra.AffineSpace.MidpointZero
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace
import Mathlib.Topology.Instances.RealVectorSpace

#align_import analysis.normed_space.add_torsor from "leanprover-community/mathlib"@"837f72de63ad6cd96519cde5f1ffd5ed8d280ad0"

/-!
# Torsors of normed space actions.

This file contains lemmas about normed additive torsors over normed spaces.
-/


noncomputable section

open NNReal Topology

open Filter

variable {α V P W Q : Type _} [SeminormedAddCommGroup V] [PseudoMetricSpace P] [NormedAddTorsor V P]
  [NormedAddCommGroup W] [MetricSpace Q] [NormedAddTorsor W Q]

section NormedSpace

variable {𝕜 : Type _} [NormedField 𝕜] [NormedSpace 𝕜 V] [NormedSpace 𝕜 W]

open AffineMap

theorem AffineSubspace.isClosed_direction_iff (s : AffineSubspace 𝕜 Q) :
    IsClosed (s.direction : Set W) ↔ IsClosed (s : Set Q) := by
  rcases s.eq_bot_or_nonempty with (rfl | ⟨x, hx⟩); · simp [isClosed_singleton]
  rw [← (IsometryEquiv.vaddConst x).toHomeomorph.symm.isClosed_image,
    AffineSubspace.coe_direction_eq_vsub_set_right hx]
  rfl
#align affine_subspace.is_closed_direction_iff AffineSubspace.isClosed_direction_iff

@[simp]
theorem dist_center_homothety (p₁ p₂ : P) (c : 𝕜) :
    dist p₁ (homothety p₁ c p₂) = ‖c‖ * dist p₁ p₂ := by
  -- Porting note: was `simp [homothety_def, norm_smul, ← dist_eq_norm_vsub, dist_comm]`
  rw [homothety_def, dist_eq_norm_vsub V]
  simp [norm_smul, ← dist_eq_norm_vsub V, dist_comm]
#align dist_center_homothety dist_center_homothety

@[simp]
theorem nndist_center_homothety (p₁ p₂ : P) (c : 𝕜) :
    nndist p₁ (homothety p₁ c p₂) = ‖c‖₊ * nndist p₁ p₂ :=
  NNReal.eq <| dist_center_homothety _ _ _
#align nndist_center_homothety nndist_center_homothety

@[simp]
theorem dist_homothety_center (p₁ p₂ : P) (c : 𝕜) :
    dist (homothety p₁ c p₂) p₁ = ‖c‖ * dist p₁ p₂ := by rw [dist_comm, dist_center_homothety]
#align dist_homothety_center dist_homothety_center

@[simp]
theorem nndist_homothety_center (p₁ p₂ : P) (c : 𝕜) :
    nndist (homothety p₁ c p₂) p₁ = ‖c‖₊ * nndist p₁ p₂ :=
  NNReal.eq <| dist_homothety_center _ _ _
#align nndist_homothety_center nndist_homothety_center

@[simp]
theorem dist_lineMap_lineMap (p₁ p₂ : P) (c₁ c₂ : 𝕜) :
    dist (lineMap p₁ p₂ c₁) (lineMap p₁ p₂ c₂) = dist c₁ c₂ * dist p₁ p₂ := by
  rw [dist_comm p₁ p₂]
  -- Porting note: was `simp only [lineMap_apply, dist_eq_norm_vsub, vadd_vsub_vadd_cancel_right,`
  -- `← sub_smul, norm_smul, vsub_eq_sub]`
  rw [lineMap_apply, lineMap_apply, dist_eq_norm_vsub V, vadd_vsub_vadd_cancel_right,
    ← sub_smul, norm_smul, ← vsub_eq_sub, ← dist_eq_norm_vsub V, ← dist_eq_norm_vsub 𝕜]
#align dist_line_map_line_map dist_lineMap_lineMap

@[simp]
theorem nndist_lineMap_lineMap (p₁ p₂ : P) (c₁ c₂ : 𝕜) :
    nndist (lineMap p₁ p₂ c₁) (lineMap p₁ p₂ c₂) = nndist c₁ c₂ * nndist p₁ p₂ :=
  NNReal.eq <| dist_lineMap_lineMap _ _ _ _
#align nndist_line_map_line_map nndist_lineMap_lineMap

theorem lipschitzWith_lineMap (p₁ p₂ : P) : LipschitzWith (nndist p₁ p₂) (lineMap p₁ p₂ : 𝕜 → P) :=
  LipschitzWith.of_dist_le_mul fun c₁ c₂ =>
    ((dist_lineMap_lineMap p₁ p₂ c₁ c₂).trans (mul_comm _ _)).le
#align lipschitz_with_line_map lipschitzWith_lineMap

@[simp]
theorem dist_lineMap_left (p₁ p₂ : P) (c : 𝕜) : dist (lineMap p₁ p₂ c) p₁ = ‖c‖ * dist p₁ p₂ := by
  -- Porting note: was
  -- simpa only [lineMap_apply_zero, dist_zero_right] using dist_lineMap_lineMap p₁ p₂ c 0
  rw [← dist_zero_right, ← dist_lineMap_lineMap, lineMap_apply_zero]
#align dist_line_map_left dist_lineMap_left

@[simp]
theorem nndist_lineMap_left (p₁ p₂ : P) (c : 𝕜) :
    nndist (lineMap p₁ p₂ c) p₁ = ‖c‖₊ * nndist p₁ p₂ :=
  NNReal.eq <| dist_lineMap_left _ _ _
#align nndist_line_map_left nndist_lineMap_left

@[simp]
theorem dist_left_lineMap (p₁ p₂ : P) (c : 𝕜) : dist p₁ (lineMap p₁ p₂ c) = ‖c‖ * dist p₁ p₂ :=
  (dist_comm _ _).trans (dist_lineMap_left _ _ _)
#align dist_left_line_map dist_left_lineMap

@[simp]
theorem nndist_left_lineMap (p₁ p₂ : P) (c : 𝕜) :
    nndist p₁ (lineMap p₁ p₂ c) = ‖c‖₊ * nndist p₁ p₂ :=
  NNReal.eq <| dist_left_lineMap _ _ _
#align nndist_left_line_map nndist_left_lineMap

@[simp]
theorem dist_lineMap_right (p₁ p₂ : P) (c : 𝕜) :
    dist (lineMap p₁ p₂ c) p₂ = ‖1 - c‖ * dist p₁ p₂ := by
  -- Porting note: was
  -- `simpa only [lineMap_apply_one, dist_eq_norm'] using dist_lineMap_lineMap p₁ p₂ c 1`
  rw [← dist_eq_norm', ← dist_lineMap_lineMap, lineMap_apply_one]
#align dist_line_map_right dist_lineMap_right

@[simp]
theorem nndist_lineMap_right (p₁ p₂ : P) (c : 𝕜) :
    nndist (lineMap p₁ p₂ c) p₂ = ‖1 - c‖₊ * nndist p₁ p₂ :=
  NNReal.eq <| dist_lineMap_right _ _ _
#align nndist_line_map_right nndist_lineMap_right

@[simp]
theorem dist_right_lineMap (p₁ p₂ : P) (c : 𝕜) : dist p₂ (lineMap p₁ p₂ c) = ‖1 - c‖ * dist p₁ p₂ :=
  (dist_comm _ _).trans (dist_lineMap_right _ _ _)
#align dist_right_line_map dist_right_lineMap

@[simp]
theorem nndist_right_lineMap (p₁ p₂ : P) (c : 𝕜) :
    nndist p₂ (lineMap p₁ p₂ c) = ‖1 - c‖₊ * nndist p₁ p₂ :=
  NNReal.eq <| dist_right_lineMap _ _ _
#align nndist_right_line_map nndist_right_lineMap

@[simp]
theorem dist_homothety_self (p₁ p₂ : P) (c : 𝕜) :
    dist (homothety p₁ c p₂) p₂ = ‖1 - c‖ * dist p₁ p₂ := by
  rw [homothety_eq_lineMap, dist_lineMap_right]
#align dist_homothety_self dist_homothety_self

@[simp]
theorem nndist_homothety_self (p₁ p₂ : P) (c : 𝕜) :
    nndist (homothety p₁ c p₂) p₂ = ‖1 - c‖₊ * nndist p₁ p₂ :=
  NNReal.eq <| dist_homothety_self _ _ _
#align nndist_homothety_self nndist_homothety_self

@[simp]
theorem dist_self_homothety (p₁ p₂ : P) (c : 𝕜) :
    dist p₂ (homothety p₁ c p₂) = ‖1 - c‖ * dist p₁ p₂ := by rw [dist_comm, dist_homothety_self]
#align dist_self_homothety dist_self_homothety

@[simp]
theorem nndist_self_homothety (p₁ p₂ : P) (c : 𝕜) :
    nndist p₂ (homothety p₁ c p₂) = ‖1 - c‖₊ * nndist p₁ p₂ :=
  NNReal.eq <| dist_self_homothety _ _ _
#align nndist_self_homothety nndist_self_homothety

section invertibleTwo

variable [Invertible (2 : 𝕜)]

@[simp]
theorem dist_left_midpoint (p₁ p₂ : P) : dist p₁ (midpoint 𝕜 p₁ p₂) = ‖(2 : 𝕜)‖⁻¹ * dist p₁ p₂ := by
  rw [midpoint, dist_comm, dist_lineMap_left, invOf_eq_inv, ← norm_inv]
#align dist_left_midpoint dist_left_midpoint

@[simp]
theorem nndist_left_midpoint (p₁ p₂ : P) :
    nndist p₁ (midpoint 𝕜 p₁ p₂) = ‖(2 : 𝕜)‖₊⁻¹ * nndist p₁ p₂ :=
  NNReal.eq <| dist_left_midpoint _ _
#align nndist_left_midpoint nndist_left_midpoint

@[simp]
theorem dist_midpoint_left (p₁ p₂ : P) : dist (midpoint 𝕜 p₁ p₂) p₁ = ‖(2 : 𝕜)‖⁻¹ * dist p₁ p₂ := by
  rw [dist_comm, dist_left_midpoint]
#align dist_midpoint_left dist_midpoint_left

@[simp]
theorem nndist_midpoint_left (p₁ p₂ : P) :
    nndist (midpoint 𝕜 p₁ p₂) p₁ = ‖(2 : 𝕜)‖₊⁻¹ * nndist p₁ p₂ :=
  NNReal.eq <| dist_midpoint_left _ _
#align nndist_midpoint_left nndist_midpoint_left

@[simp]
theorem dist_midpoint_right (p₁ p₂ : P) :
    dist (midpoint 𝕜 p₁ p₂) p₂ = ‖(2 : 𝕜)‖⁻¹ * dist p₁ p₂ := by
  rw [midpoint_comm, dist_midpoint_left, dist_comm]
#align dist_midpoint_right dist_midpoint_right

@[simp]
theorem nndist_midpoint_right (p₁ p₂ : P) :
    nndist (midpoint 𝕜 p₁ p₂) p₂ = ‖(2 : 𝕜)‖₊⁻¹ * nndist p₁ p₂ :=
  NNReal.eq <| dist_midpoint_right _ _
#align nndist_midpoint_right nndist_midpoint_right

@[simp]
theorem dist_right_midpoint (p₁ p₂ : P) :
    dist p₂ (midpoint 𝕜 p₁ p₂) = ‖(2 : 𝕜)‖⁻¹ * dist p₁ p₂ := by
  rw [dist_comm, dist_midpoint_right]
#align dist_right_midpoint dist_right_midpoint

@[simp]
theorem nndist_right_midpoint (p₁ p₂ : P) :
    nndist p₂ (midpoint 𝕜 p₁ p₂) = ‖(2 : 𝕜)‖₊⁻¹ * nndist p₁ p₂ :=
  NNReal.eq <| dist_right_midpoint _ _
#align nndist_right_midpoint nndist_right_midpoint

theorem dist_midpoint_midpoint_le' (p₁ p₂ p₃ p₄ : P) :
    dist (midpoint 𝕜 p₁ p₂) (midpoint 𝕜 p₃ p₄) ≤ (dist p₁ p₃ + dist p₂ p₄) / ‖(2 : 𝕜)‖ := by
  rw [dist_eq_norm_vsub V, dist_eq_norm_vsub V, dist_eq_norm_vsub V, midpoint_vsub_midpoint]
  try infer_instance
  rw [midpoint_eq_smul_add, norm_smul, invOf_eq_inv, norm_inv, ← div_eq_inv_mul]
  exact div_le_div_of_le_of_nonneg (norm_add_le _ _) (norm_nonneg _)
#align dist_midpoint_midpoint_le' dist_midpoint_midpoint_le'

theorem nndist_midpoint_midpoint_le' (p₁ p₂ p₃ p₄ : P) :
    nndist (midpoint 𝕜 p₁ p₂) (midpoint 𝕜 p₃ p₄) ≤ (nndist p₁ p₃ + nndist p₂ p₄) / ‖(2 : 𝕜)‖₊ :=
  dist_midpoint_midpoint_le' _ _ _ _
#align nndist_midpoint_midpoint_le' nndist_midpoint_midpoint_le'

end invertibleTwo

@[simp] theorem dist_pointReflection_left (p q : P) :
    dist (Equiv.pointReflection p q) p = dist p q := by
  simp [dist_eq_norm_vsub V, Equiv.pointReflection_vsub_left (G := V)]

@[simp] theorem dist_left_pointReflection (p q : P) :
    dist p (Equiv.pointReflection p q) = dist p q :=
  (dist_comm _ _).trans (dist_pointReflection_left _ _)

@[simp] theorem dist_pointReflection_right (p q : P) :
    dist (Equiv.pointReflection p q) q = ‖(2 : 𝕜)‖ * dist p q := by
  simp [dist_eq_norm_vsub V, Equiv.pointReflection_vsub_right (G := V),
    nsmul_eq_smul_cast 𝕜, norm_smul]

@[simp] theorem dist_right_pointReflection (p q : P) :
    dist q (Equiv.pointReflection p q) = ‖(2 : 𝕜)‖ * dist p q :=
  (dist_comm _ _).trans (dist_pointReflection_right _ _)

theorem antilipschitzWith_lineMap {p₁ p₂ : Q} (h : p₁ ≠ p₂) :
    AntilipschitzWith (nndist p₁ p₂)⁻¹ (lineMap p₁ p₂ : 𝕜 → Q) :=
  AntilipschitzWith.of_le_mul_dist fun c₁ c₂ => by
    rw [dist_lineMap_lineMap, NNReal.coe_inv, ← dist_nndist, mul_left_comm,
      inv_mul_cancel (dist_ne_zero.2 h), mul_one]
#align antilipschitz_with_line_map antilipschitzWith_lineMap

variable (𝕜)

theorem eventually_homothety_mem_of_mem_interior (x : Q) {s : Set Q} {y : Q} (hy : y ∈ interior s) :
    ∀ᶠ δ in 𝓝 (1 : 𝕜), homothety x δ y ∈ s := by
  rw [(NormedAddCommGroup.nhds_basis_norm_lt (1 : 𝕜)).eventually_iff]
  cases' eq_or_ne y x with h h
  · use 1
    simp [h.symm, interior_subset hy]
  have hxy : 0 < ‖y -ᵥ x‖ := by rwa [norm_pos_iff, vsub_ne_zero]
  obtain ⟨u, hu₁, hu₂, hu₃⟩ := mem_interior.mp hy
  obtain ⟨ε, hε, hyε⟩ := Metric.isOpen_iff.mp hu₂ y hu₃
  refine' ⟨ε / ‖y -ᵥ x‖, div_pos hε hxy, fun δ (hδ : ‖δ - 1‖ < ε / ‖y -ᵥ x‖) => hu₁ (hyε _)⟩
  rw [lt_div_iff hxy, ← norm_smul, sub_smul, one_smul] at hδ
  rwa [homothety_apply, Metric.mem_ball, dist_eq_norm_vsub W, vadd_vsub_eq_sub_vsub]
#align eventually_homothety_mem_of_mem_interior eventually_homothety_mem_of_mem_interior

theorem eventually_homothety_image_subset_of_finite_subset_interior (x : Q) {s : Set Q} {t : Set Q}
    (ht : t.Finite) (h : t ⊆ interior s) : ∀ᶠ δ in 𝓝 (1 : 𝕜), homothety x δ '' t ⊆ s := by
  suffices ∀ y ∈ t, ∀ᶠ δ in 𝓝 (1 : 𝕜), homothety x δ y ∈ s by
    simp_rw [Set.image_subset_iff]
    exact (Filter.eventually_all_finite ht).mpr this
  intro y hy
  exact eventually_homothety_mem_of_mem_interior 𝕜 x (h hy)
#align eventually_homothety_image_subset_of_finite_subset_interior eventually_homothety_image_subset_of_finite_subset_interior

end NormedSpace

variable [NormedSpace ℝ V] [NormedSpace ℝ W]

theorem dist_midpoint_midpoint_le (p₁ p₂ p₃ p₄ : V) :
    dist (midpoint ℝ p₁ p₂) (midpoint ℝ p₃ p₄) ≤ (dist p₁ p₃ + dist p₂ p₄) / 2 := by
  -- Porting note: was `simpa using dist_midpoint_midpoint_le' p₁ p₂ p₃ p₄`
  have := dist_midpoint_midpoint_le' (𝕜 := ℝ) p₁ p₂ p₃ p₄
  rw [Real.norm_eq_abs, abs_two] at this
  exact this
#align dist_midpoint_midpoint_le dist_midpoint_midpoint_le

theorem nndist_midpoint_midpoint_le (p₁ p₂ p₃ p₄ : V) :
    nndist (midpoint ℝ p₁ p₂) (midpoint ℝ p₃ p₄) ≤ (nndist p₁ p₃ + nndist p₂ p₄) / 2 :=
  dist_midpoint_midpoint_le _ _ _ _
#align nndist_midpoint_midpoint_le nndist_midpoint_midpoint_le

/-- A continuous map between two normed affine spaces is an affine map provided that
it sends midpoints to midpoints. -/
def AffineMap.ofMapMidpoint (f : P → Q) (h : ∀ x y, f (midpoint ℝ x y) = midpoint ℝ (f x) (f y))
    (hfc : Continuous f) : P →ᵃ[ℝ] Q :=
  let c := Classical.arbitrary P
  AffineMap.mk' f (↑((AddMonoidHom.ofMapMidpoint ℝ ℝ
    ((AffineEquiv.vaddConst ℝ (f <| c)).symm ∘ f ∘ AffineEquiv.vaddConst ℝ c) (by simp)
    fun x y => by -- Porting note: was `by simp [h]`
      simp
      conv_lhs => rw [(midpoint_self ℝ (Classical.arbitrary P)).symm, midpoint_vadd_midpoint, h, h,
          midpoint_vsub_midpoint]).toRealLinearMap <| by
        apply_rules [Continuous.vadd, Continuous.vsub, continuous_const, hfc.comp, continuous_id]))
    c fun p => by simp
#align affine_map.of_map_midpoint AffineMap.ofMapMidpoint
```
