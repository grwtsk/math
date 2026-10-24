# Complete source: GRWTSK.Algebra.LinearAlgebra.Valuation.Variant170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ccc98b1d35dcb719e9b9b1bc57a1288ded4c0ee0` · SHA-256 `170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot
-/
import Mathlib.Topology.Algebra.Nonarchimedean.Bases
import Mathlib.Topology.Algebra.UniformFilterBasis
import Mathlib.RingTheory.Valuation.Basic

#align_import topology.algebra.valuation from "leanprover-community/mathlib"@"f2ce6086713c78a7f880485f7917ea547a215982"

/-!
# The topology on a valued ring

In this file, we define the non archimedean topology induced by a valuation on a ring.
The main definition is a `Valued` type class which equips a ring with a valuation taking
values in a group with zero. Other instances are then deduced from this.
-/


open Classical Topology uniformity

open Set Valuation

noncomputable section

universe v u

variable {R : Type u} [Ring R] {Γ₀ : Type v} [LinearOrderedCommGroupWithZero Γ₀]

namespace Valuation

variable (v : Valuation R Γ₀)

/-- The basis of open subgroups for the topology on a ring determined by a valuation. -/
theorem subgroups_basis : RingSubgroupsBasis fun γ : Γ₀ˣ => (v.ltAddSubgroup γ : AddSubgroup R) :=
  { inter := by
      rintro γ₀ γ₁
      use min γ₀ γ₁
      simp [Valuation.ltAddSubgroup]
      tauto
    mul := by
      rintro γ
      cases' exists_square_le γ with γ₀ h
      use γ₀
      rintro - ⟨r, s, r_in, s_in, rfl⟩
      calc
        (v (r * s) : Γ₀) = v r * v s := Valuation.map_mul _ _ _
        _ < γ₀ * γ₀ := (mul_lt_mul₀ r_in s_in)
        _ ≤ γ := by exact_mod_cast h
    leftMul := by
      rintro x γ
      rcases GroupWithZero.eq_zero_or_unit (v x) with (Hx | ⟨γx, Hx⟩)
      · use (1 : Γ₀ˣ)
        rintro y _
        change v (x * y) < _
        rw [Valuation.map_mul, Hx, zero_mul]
        exact Units.zero_lt γ
      · use γx⁻¹ * γ
        rintro y (vy_lt : v y < ↑(γx⁻¹ * γ))
        change (v (x * y) : Γ₀) < γ
        rw [Valuation.map_mul, Hx, mul_comm]
        rw [Units.val_mul, mul_comm] at vy_lt
        simpa using mul_inv_lt_of_lt_mul₀ vy_lt
    rightMul := by
      rintro x γ
      rcases GroupWithZero.eq_zero_or_unit (v x) with (Hx | ⟨γx, Hx⟩)
      · use 1
        rintro y _
        change v (y * x) < _
        rw [Valuation.map_mul, Hx, mul_zero]
        exact Units.zero_lt γ
      · use γx⁻¹ * γ
        rintro y (vy_lt : v y < ↑(γx⁻¹ * γ))
        change (v (y * x) : Γ₀) < γ
        rw [Valuation.map_mul, Hx]
        rw [Units.val_mul, mul_comm] at vy_lt
        simpa using mul_inv_lt_of_lt_mul₀ vy_lt }
#align valuation.subgroups_basis Valuation.subgroups_basis

end Valuation

/-- A valued ring is a ring that comes equipped with a distinguished valuation. The class `Valued`
is designed for the situation that there is a canonical valuation on the ring.

TODO: show that there always exists an equivalent valuation taking values in a type belonging to
the same universe as the ring.

See Note [forgetful inheritance] for why we extend `UniformSpace`, `UniformAddGroup`. -/
class Valued (R : Type u) [Ring R] (Γ₀ : outParam (Type v))
  [LinearOrderedCommGroupWithZero Γ₀] extends UniformSpace R, UniformAddGroup R where
  v : Valuation R Γ₀
  is_topological_valuation : ∀ s, s ∈ 𝓝 (0 : R) ↔ ∃ γ : Γ₀ˣ, { x : R | v x < γ } ⊆ s
#align valued Valued

-- Porting note: removed
--attribute [nolint dangerous_instance] Valued.toUniformSpace

namespace Valued

/-- Alternative `Valued` constructor for use when there is no preferred `UniformSpace` structure. -/
def mk' (v : Valuation R Γ₀) : Valued R Γ₀ :=
  { v
    toUniformSpace := @TopologicalAddGroup.toUniformSpace R _ v.subgroups_basis.topology _
    toUniformAddGroup := @comm_topologicalAddGroup_is_uniform _ _ v.subgroups_basis.topology _
    is_topological_valuation := by
      letI := @TopologicalAddGroup.toUniformSpace R _ v.subgroups_basis.topology _
      intro s
      rw [Filter.hasBasis_iff.mp v.subgroups_basis.hasBasis_nhds_zero s]
      exact exists_congr fun γ => by rw [true_and]; rfl }
#align valued.mk' Valued.mk'

variable (R Γ₀)
variable [_i : Valued R Γ₀]

theorem hasBasis_nhds_zero :
    (𝓝 (0 : R)).HasBasis (fun _ => True) fun γ : Γ₀ˣ => { x | v x < (γ : Γ₀) } := by
  simp [Filter.hasBasis_iff, is_topological_valuation]
#align valued.has_basis_nhds_zero Valued.hasBasis_nhds_zero

-- Porting note: Replaced `𝓤 R` with `uniformity R`
theorem hasBasis_uniformity : (uniformity R).HasBasis (fun _ => True)
    fun γ : Γ₀ˣ => { p : R × R | v (p.2 - p.1) < (γ : Γ₀) } := by
  rw [uniformity_eq_comap_nhds_zero]
  exact (hasBasis_nhds_zero R Γ₀).comap _
#align valued.has_basis_uniformity Valued.hasBasis_uniformity

theorem toUniformSpace_eq :
    toUniformSpace = @TopologicalAddGroup.toUniformSpace R _ v.subgroups_basis.topology _ :=
  UniformSpace.ext
    ((hasBasis_uniformity R Γ₀).eq_of_same_basis <| v.subgroups_basis.hasBasis_nhds_zero.comap _)
#align valued.to_uniform_space_eq Valued.toUniformSpace_eq

variable {R Γ₀}

theorem mem_nhds {s : Set R} {x : R} : s ∈ 𝓝 x ↔ ∃ γ : Γ₀ˣ, { y | (v (y - x) : Γ₀) < γ } ⊆ s := by
  simp only [← nhds_translation_add_neg x, ← sub_eq_add_neg, preimage_setOf_eq, true_and,
    ((hasBasis_nhds_zero R Γ₀).comap fun y => y - x).mem_iff]
#align valued.mem_nhds Valued.mem_nhds

theorem mem_nhds_zero {s : Set R} : s ∈ 𝓝 (0 : R) ↔ ∃ γ : Γ₀ˣ, { x | v x < (γ : Γ₀) } ⊆ s := by
  simp only [mem_nhds, sub_zero]
#align valued.mem_nhds_zero Valued.mem_nhds_zero

theorem loc_const {x : R} (h : (v x : Γ₀) ≠ 0) : { y : R | v y = v x } ∈ 𝓝 x := by
  rw [mem_nhds]
  rcases Units.exists_iff_ne_zero.mpr h with ⟨γ, hx⟩
  use γ
  rw [hx]
  intro y y_in
  exact Valuation.map_eq_of_sub_lt _ y_in
#align valued.loc_const Valued.loc_const

instance (priority := 100) : TopologicalRing R :=
  (toUniformSpace_eq R Γ₀).symm ▸ v.subgroups_basis.toRingFilterBasis.isTopologicalRing

theorem cauchy_iff {F : Filter R} : Cauchy F ↔
    F.NeBot ∧ ∀ γ : Γ₀ˣ, ∃ M ∈ F, ∀ (x) (_ : x ∈ M) (y) (_ : y ∈ M), (v (y - x) : Γ₀) < γ := by
  rw [toUniformSpace_eq, AddGroupFilterBasis.cauchy_iff]
  apply and_congr Iff.rfl
  simp_rw [Valued.v.subgroups_basis.mem_addGroupFilterBasis_iff]
  constructor
  · intro h γ
    exact h _ (Valued.v.subgroups_basis.mem_addGroupFilterBasis _)
  · rintro h - ⟨γ, rfl⟩
    exact h γ
#align valued.cauchy_iff Valued.cauchy_iff

end Valued
```
