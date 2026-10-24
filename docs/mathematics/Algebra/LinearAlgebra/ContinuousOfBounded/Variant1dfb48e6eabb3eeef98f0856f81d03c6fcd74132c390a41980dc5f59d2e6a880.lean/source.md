# Complete source: GRWTSK.Algebra.LinearAlgebra.ContinuousOfBounded.Variant1dfb48e6eabb3eeef98f0856f81d03c6fcd74132c390a41980dc5f59d2e6a880

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad8917fcfb6cfead1fd0e2a4664dc362f1d60ce2` · SHA-256 `1dfb48e6eabb3eeef98f0856f81d03c6fcd74132c390a41980dc5f59d2e6a880`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Anatole Dedecker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll
-/
import Mathlib.Analysis.LocallyConvex.Bounded
import Mathlib.Data.IsROrC.Basic

#align_import analysis.locally_convex.continuous_of_bounded from "leanprover-community/mathlib"@"3f655f5297b030a87d641ad4e825af8d9679eb0b"

/-!
# Continuity and Von Neumann boundedness

This files proves that for `E` and `F` two topological vector spaces over `ℝ` or `ℂ`,
if `E` is first countable, then every locally bounded linear map `E →ₛₗ[σ] F` is continuous
(this is `LinearMap.continuous_of_locally_bounded`).

We keep this file separate from `Analysis/LocallyConvex/Bounded` in order not to import
`Analysis/NormedSpace/IsROrC` there, because defining the strong topology on the space of
continuous linear maps will require importing `Analysis/LocallyConvex/Bounded` in
`Analysis/NormedSpace/OperatorNorm`.

## References

* [Bourbaki, *Topological Vector Spaces*][bourbaki1987]

-/


open TopologicalSpace Bornology Filter Topology Pointwise

variable {𝕜 𝕜' E F : Type*}

variable [AddCommGroup E] [UniformSpace E] [UniformAddGroup E]

variable [AddCommGroup F] [UniformSpace F]

section NontriviallyNormedField

variable [UniformAddGroup F]

variable [NontriviallyNormedField 𝕜] [Module 𝕜 E] [Module 𝕜 F] [ContinuousSMul 𝕜 E]

/-- Construct a continuous linear map from a linear map `f : E →ₗ[𝕜] F` and the existence of a
neighborhood of zero that gets mapped into a bounded set in `F`. -/
def LinearMap.clmOfExistsBoundedImage (f : E →ₗ[𝕜] F)
    (h : ∃ (V : Set E) (_ : V ∈ 𝓝 (0 : E)), Bornology.IsVonNBounded 𝕜 (f '' V)) : E →L[𝕜] F :=
  ⟨f, by
    -- It suffices to show that `f` is continuous at `0`.
    refine' continuous_of_continuousAt_zero f _
    rw [continuousAt_def, f.map_zero]
    intro U hU
    -- Continuity means that `U ∈ 𝓝 0` implies that `f ⁻¹' U ∈ 𝓝 0`.
    rcases h with ⟨V, hV, h⟩
    rcases h hU with ⟨r, hr, h⟩
    rcases NormedField.exists_lt_norm 𝕜 r with ⟨x, hx⟩
    specialize h x hx.le
    -- After unfolding all the definitions, we know that `f '' V ⊆ x • U`. We use this to show the
    -- inclusion `x⁻¹ • V ⊆ f⁻¹' U`.
    have x_ne := norm_pos_iff.mp (hr.trans hx)
    have : x⁻¹ • V ⊆ f ⁻¹' U :=
      calc
        x⁻¹ • V ⊆ x⁻¹ • f ⁻¹' (f '' V) := Set.smul_set_mono (Set.subset_preimage_image (⇑f) V)
        _ ⊆ x⁻¹ • f ⁻¹' (x • U) := (Set.smul_set_mono (Set.preimage_mono h))
        _ = f ⁻¹' (x⁻¹ • x • U) := by
          ext
          simp only [Set.mem_inv_smul_set_iff₀ x_ne, Set.mem_preimage, LinearMap.map_smul]
        _ ⊆ f ⁻¹' U := by rw [inv_smul_smul₀ x_ne _]
    -- Using this inclusion, it suffices to show that `x⁻¹ • V` is in `𝓝 0`, which is trivial.
    refine' mem_of_superset _ this
    convert set_smul_mem_nhds_smul hV (inv_ne_zero x_ne)
    exact (smul_zero _).symm⟩
#align linear_map.clm_of_exists_bounded_image LinearMap.clmOfExistsBoundedImage

theorem LinearMap.clmOfExistsBoundedImage_coe {f : E →ₗ[𝕜] F}
    {h : ∃ (V : Set E) (_ : V ∈ 𝓝 (0 : E)), Bornology.IsVonNBounded 𝕜 (f '' V)} :
    (f.clmOfExistsBoundedImage h : E →ₗ[𝕜] F) = f :=
  rfl
#align linear_map.clm_of_exists_bounded_image_coe LinearMap.clmOfExistsBoundedImage_coe

@[simp]
theorem LinearMap.clmOfExistsBoundedImage_apply {f : E →ₗ[𝕜] F}
    {h : ∃ (V : Set E) (_ : V ∈ 𝓝 (0 : E)), Bornology.IsVonNBounded 𝕜 (f '' V)} {x : E} :
    f.clmOfExistsBoundedImage h x = f x :=
  rfl
#align linear_map.clm_of_exists_bounded_image_apply LinearMap.clmOfExistsBoundedImage_apply

end NontriviallyNormedField

section IsROrC

open TopologicalSpace Bornology

variable [FirstCountableTopology E]

variable [IsROrC 𝕜] [Module 𝕜 E] [ContinuousSMul 𝕜 E]

variable [IsROrC 𝕜'] [Module 𝕜' F] [ContinuousSMul 𝕜' F]

variable {σ : 𝕜 →+* 𝕜'}

theorem LinearMap.continuousAt_zero_of_locally_bounded (f : E →ₛₗ[σ] F)
    (hf : ∀ (s : Set E) (_ : IsVonNBounded 𝕜 s), IsVonNBounded 𝕜' (f '' s)) : ContinuousAt f 0 := by
  -- Assume that f is not continuous at 0
  by_contra h
  -- We use a decreasing balanced basis for 0 : E and a balanced basis for 0 : F
  -- and reformulate non-continuity in terms of these bases
  rcases(nhds_basis_balanced 𝕜 E).exists_antitone_subbasis with ⟨b, bE1, bE⟩
  simp only [id.def] at bE
  have bE' : (𝓝 (0 : E)).HasBasis (fun x : ℕ => x ≠ 0) fun n : ℕ => (n : 𝕜)⁻¹ • b n := by
    refine' bE.1.to_hasBasis _ _
    · intro n _
      use n + 1
      simp only [Ne.def, Nat.succ_ne_zero, not_false_iff, Nat.cast_add, Nat.cast_one, true_and_iff]
      -- `b (n + 1) ⊆ b n` follows from `Antitone`.
      have h : b (n + 1) ⊆ b n := bE.2 (by simp)
      refine' _root_.trans _ h
      rintro y ⟨x, hx, hy⟩
      -- Since `b (n + 1)` is balanced `(n+1)⁻¹ b (n + 1) ⊆ b (n + 1)`
      rw [← hy]
      refine' (bE1 (n + 1)).2.smul_mem _ hx
      have h' : 0 < (n : ℝ) + 1 := n.cast_add_one_pos
      rw [norm_inv, ← Nat.cast_one, ← Nat.cast_add, IsROrC.norm_natCast, Nat.cast_add, Nat.cast_one,
        inv_le h' zero_lt_one]
      simp
    intro n hn
    -- The converse direction follows from continuity of the scalar multiplication
    have hcont : ContinuousAt (fun x : E => (n : 𝕜) • x) 0 :=
      (continuous_const_smul (n : 𝕜)).continuousAt
    simp only [ContinuousAt, map_zero, smul_zero] at hcont
    rw [bE.1.tendsto_left_iff] at hcont
    rcases hcont (b n) (bE1 n).1 with ⟨i, _, hi⟩
    refine' ⟨i, trivial, fun x hx => ⟨(n : 𝕜) • x, hi hx, _⟩⟩
    simp [← mul_smul, hn]
  rw [ContinuousAt, map_zero, bE'.tendsto_iff (nhds_basis_balanced 𝕜' F)] at h
  push_neg at h
  rcases h with ⟨V, ⟨hV, -⟩, h⟩
  simp only [id.def, forall_true_left] at h
  -- There exists `u : ℕ → E` such that for all `n : ℕ` we have `u n ∈ n⁻¹ • b n` and `f (u n) ∉ V`
  choose! u hu hu' using h
  -- The sequence `(fun n ↦ n • u n)` converges to `0`
  have h_tendsto : Tendsto (fun n : ℕ => (n : 𝕜) • u n) atTop (𝓝 (0 : E)) := by
    apply bE.tendsto
    intro n
    by_cases h : n = 0
    · rw [h, Nat.cast_zero, zero_smul]
      refine' mem_of_mem_nhds (bE.1.mem_of_mem <| by triv)
    rcases hu n h with ⟨y, hy, hu1⟩
    convert hy
    rw [← hu1, ← mul_smul]
    simp only [h, mul_inv_cancel, Ne.def, Nat.cast_eq_zero, not_false_iff, one_smul]
  -- The image `(fun n ↦ n • u n)` is von Neumann bounded:
  have h_bounded : IsVonNBounded 𝕜 (Set.range fun n : ℕ => (n : 𝕜) • u n) :=
    h_tendsto.cauchySeq.totallyBounded_range.isVonNBounded 𝕜
  -- Since `range u` is bounded it absorbs `V`
  rcases hf _ h_bounded hV with ⟨r, hr, h'⟩
  cases' exists_nat_gt r with n hn
  -- We now find a contradiction between `f (u n) ∉ V` and the absorbing property
  have h1 : r ≤ ‖(n : 𝕜')‖ := by
    rw [IsROrC.norm_natCast]
    exact hn.le
  have hn' : 0 < ‖(n : 𝕜')‖ := lt_of_lt_of_le hr h1
  rw [norm_pos_iff, Ne.def, Nat.cast_eq_zero] at hn'
  have h'' : f (u n) ∈ V := by
    simp only [Set.image_subset_iff] at h'
    specialize h' (n : 𝕜') h1 (Set.mem_range_self n)
    simp only [Set.mem_preimage, LinearMap.map_smulₛₗ, map_natCast] at h'
    rcases h' with ⟨y, hy, h'⟩
    apply_fun fun y : F => (n : 𝕜')⁻¹ • y at h'
    simp only [hn', inv_smul_smul₀, Ne.def, Nat.cast_eq_zero, not_false_iff] at h'
    rwa [← h']
  exact hu' n hn' h''
#align linear_map.continuous_at_zero_of_locally_bounded LinearMap.continuousAt_zero_of_locally_bounded

/-- If `E` is first countable, then every locally bounded linear map `E →ₛₗ[σ] F` is continuous. -/
theorem LinearMap.continuous_of_locally_bounded [UniformAddGroup F] (f : E →ₛₗ[σ] F)
    (hf : ∀ (s : Set E) (_ : IsVonNBounded 𝕜 s), IsVonNBounded 𝕜' (f '' s)) : Continuous f :=
  (uniformContinuous_of_continuousAt_zero f <| f.continuousAt_zero_of_locally_bounded hf).continuous
#align linear_map.continuous_of_locally_bounded LinearMap.continuous_of_locally_bounded

end IsROrC
```
