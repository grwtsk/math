# Complete source: GRWTSK.Algebra.LinearAlgebra.Dimension.Variant3bc38c2349fb033739c023c4482bebd3377a3cf71031531fec494696fae3b693

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e0e77f4b56862ec05ec5170ca08d3dc22f31bbf` · SHA-256 `5e666920159cf302fa8345eebf9b2eea4bd10c6b7b1266887ac44a1d568aef9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Dim.Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Dim.Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"dcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/AffineSpace/Dimension.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Vlad Tsyrklevich. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Xavier Allamigeon, Arne Kuhrs, Louis Theran, Vlad Tsyrklevich, Juni Vogt
-/
module

public import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
public import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas

/-!
## (Finite) Dimension of an affine subspace

This file defines the dimension of an affine subspace to be `⊥` for the empty subspace,
and otherwise equal to the `Module.rank` of the direction of the subspace. The finite dimension
is similary defined using `Module.finrank`.

## Main definitions

* `AffineSubspace.dim`: Dimension expressed as `WithBot Cardinal`
* `AffineSubspace.finDim`: Dimension expressed as `WithBot ℕ` with a junk value of 0 for infinite
  dimensional spaces.
-/


namespace GRWTSK.Algebra.LinearAlgebra.Dim.Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8

public section

open Cardinal

namespace AffineSubspace

universe u v v' a a'

variable {R : Type u} {V : Type v} {V' : Type v'} {A A₁ : Type a} {A' : Type a'}
variable [AddCommGroup V] [AddTorsor V A] [AddTorsor V A₁] [AddCommGroup V'] [AddTorsor V' A']

section Ring

variable [Ring R] [Module R V] [Module R V']
variable {s t : AffineSubspace R A}

open Classical in
/-- The dimension of `s` is equal to `⊥` if `s = ⊥`, and otherwise it is equal to the dimension of
`s` interpreted as a linear space. -/
noncomputable def dim (s : AffineSubspace R A) : WithBot Cardinal :=
  if s = ⊥ then ⊥
  else Module.rank R s.direction

/-- The dimension of `s` is equal to `⊥` if `s = ⊥`, and otherwise it is equal to the finite
dimension of `s` interpreted as a linear space. Note that this inherits `Module.finrank`s junk
value: `AffineSubspace.finDim s = 0` for infinite dimensional subspaces. -/
noncomputable def finDim (s : AffineSubspace R A) : WithBot ℕ :=
  WithBot.map Cardinal.toNat (dim s)

@[simp]
theorem dim_bot : dim (⊥ : AffineSubspace R A) = ⊥ := by
  simp [dim]

@[simp]
theorem finDim_bot : finDim (⊥ : AffineSubspace R A) = ⊥ := by
  simp [finDim]

@[simp]
theorem dim_singleton [Nontrivial R] (x : A) : dim ({x} : AffineSubspace R A) = 0 := by
  unfold dim
  rw [direction_singleton]
  simp

@[simp]
theorem finDim_singleton [Nontrivial R] (x : A) : finDim ({x} : AffineSubspace R A) = 0 := by
  simp [finDim]

@[simp]
theorem dim_eq_bot_iff : dim s = ⊥ ↔ s = ⊥ := by
  simp [dim]

@[simp]
theorem finDim_eq_bot_iff : finDim s = ⊥ ↔ s = ⊥ := by
  simp [finDim]

theorem dim_ne_bot_iff : dim s ≠ ⊥ ↔ (s : Set A).Nonempty := by
  contrapose!
  simp

theorem finDim_ne_bot_iff : finDim s ≠ ⊥ ↔ (s : Set A).Nonempty := by
  contrapose!
  simp

theorem dim_eq_rank (h : s ≠ ⊥) : dim s = Module.rank R s.direction := by
  simpa [dim]

theorem finDim_eq_finrank (h : s ≠ ⊥) : finDim s = Module.finrank R s.direction := by
  simp [finDim, dim_eq_rank h]
  norm_cast

@[simp]
theorem finDim_eq_finrank_of_not_finite [Module.Free R s.direction] [StrongRankCondition R]
    (h : ¬Module.Finite R s.direction) : finDim s = 0 := by
  by_cases hs : s = ⊥
  · rw [hs, direction_bot] at h
    exact False.elim <| h <| Module.Finite.bot ..
  rw [finDim_eq_finrank hs, Nat.cast_eq_zero]
  exact Module.finrank_of_not_finite h

@[simp]
theorem dim_lt_aleph0 [StrongRankCondition R] (s : AffineSubspace R A)
    [Module.Finite R s.direction] : dim s < ℵ₀ := by
  dsimp [dim]
  split_ifs <;> simp [Module.rank_lt_aleph0]

theorem finite_iff_dim_lt_aleph0 [StrongRankCondition R] (s : AffineSubspace R A)
    [Module.Free R s.direction] : Module.Finite R s.direction ↔ dim s < ℵ₀ := by
  refine ⟨fun h ↦ dim_lt_aleph0 s, fun h ↦ ?_⟩
  rcases eq_or_ne s ⊥ with rfl | hs
  · rw [direction_bot]
    infer_instance
  · exact Module.rank_lt_aleph0_iff.mp (by simpa [dim_eq_rank hs] using h)

theorem finite_of_finDim_ne_zero [StrongRankCondition R] (s : AffineSubspace R A)
    [Module.Free R s.direction] (h : finDim s ≠ 0) : Module.Finite R s.direction := by
  rcases eq_or_ne s ⊥ with rfl | hs
  · rw [direction_bot]
    infer_instance
  exact Module.finite_of_finrank_pos <| Nat.pos_of_ne_zero (by simpa [finDim_eq_finrank hs] using h)

theorem finDim_eq_map_dim_toNat : finDim s = (dim s).map Cardinal.toNat := by
  simp [finDim]

theorem dim_eq_finDim_unbot (hs : s ≠ ⊥) [StrongRankCondition R] [Module.Finite R s.direction] :
    dim s = (finDim s).unbot (by simpa) := by
  simp only [dim_eq_rank hs, finDim, WithBot.map_coe, WithBot.unbot_coe]
  norm_cast
  exact Cardinal.cast_toNat_of_lt_aleph0 (Module.rank_lt_aleph0 _ _) |>.symm

@[gcongr]
theorem dim_mono (h : s ≤ t) : dim s ≤ dim t := by
  by_cases hs : s = ⊥
  · simp [hs]
  simp [dim_eq_rank hs, dim_eq_rank (ne_bot_of_le_ne_bot hs h),
    Submodule.rank_mono (direction_le h)]

@[gcongr]
theorem finDim_mono [StrongRankCondition R] [Module.Finite R t.direction] (h : s ≤ t) :
    finDim s ≤ finDim t := by
  by_cases hs : s = ⊥
  · simp [hs]
  simp [finDim_eq_finrank hs, finDim_eq_finrank (ne_bot_of_le_ne_bot hs h),
    Submodule.finrank_mono (direction_le h)]

theorem lift_dim_map_le (f : A →ᵃ[R] A') (s : AffineSubspace R A) :
    WithBot.map Cardinal.lift.{v} (map f s).dim ≤
      WithBot.map Cardinal.lift.{v'} s.dim := by
  by_cases hs : map f s = ⊥
  · simp [hs]
  rw [dim_eq_rank hs, dim_eq_rank (by simp_all), map_direction]
  simp [lift_rank_map_le]

theorem dim_map_le (f : A →ᵃ[R] A₁) (s : AffineSubspace R A) : (map f s).dim ≤ s.dim := by
  simpa using lift_dim_map_le f s

theorem finDim_map_le_finDim [StrongRankCondition R] (f : A →ᵃ[R] A') (s : AffineSubspace R A)
    [Module.Finite R s.direction] : (map f s).finDim ≤ s.finDim := by
  by_cases hs : (map f s) = ⊥
  · simp [hs]
  rw [finDim_eq_finrank hs, finDim_eq_finrank (by simp_all), map_direction]
  simp [Submodule.finrank_map_le]

theorem lift_dim_map_of_injective {f : A →ᵃ[R] A'} (hf : Function.Injective f)
    (s : AffineSubspace R A) :
    WithBot.map Cardinal.lift.{v} (map f s).dim =
      WithBot.map Cardinal.lift.{v'} s.dim := by
  by_cases hs : map f s = ⊥
  · simp_all
  rw [dim_eq_rank hs, dim_eq_rank (by simp_all), map_direction]
  simp only [WithBot.map_coe, WithBot.coe_inj]
  refine LinearEquiv.lift_rank_eq <| (Submodule.equivMapOfInjective _ ?_ _).symm
  exact f.linear_injective_iff.mpr hf

theorem dim_map_of_injective {f : A →ᵃ[R] A₁} (hf : Function.Injective f)
    (s : AffineSubspace R A) : (map f s).dim = s.dim := by
  simpa using lift_dim_map_of_injective hf s

theorem finDim_map_of_injective {f : A →ᵃ[R] A'} (hf : Function.Injective f)
    (s : AffineSubspace R A) : (map f s).finDim = s.finDim := by
  by_cases hs : map f s = ⊥
  · simp_all
  rw [finDim_eq_finrank hs, finDim_eq_finrank (by simp_all), map_direction]
  norm_cast
  refine LinearEquiv.finrank_eq <| (Submodule.equivMapOfInjective _ ?_ _).symm
  exact f.linear_injective_iff.mpr hf

@[simp]
theorem dim_le_zero_iff_subsingleton [IsDomain R] [Module.IsTorsionFree R s.direction] :
    dim s ≤ 0 ↔ (s : Set A).Subsingleton := by
  by_cases hs : s = ⊥
  · simp [hs]
  simp [dim_eq_rank, hs, rank_zero_iff, Submodule.subsingleton_iff_eq_bot]

@[simp]
theorem finDim_le_zero_iff_subsingleton [StrongRankCondition R] [IsDomain R]
    [Module.IsTorsionFree R s.direction] [Module.Finite R s.direction] :
    finDim s ≤ 0 ↔ (s : Set A).Subsingleton := by
  by_cases hs : s = ⊥
  · simp [hs]
  simp [finDim_eq_finrank, hs, Module.finrank_zero_iff, Submodule.subsingleton_iff_eq_bot]

end Ring

section DivisionRing

variable [DivisionRing R] [Module R V]
variable {s t : AffineSubspace R A}

@[gcongr]
theorem finDim_strictMono [Module.Finite R t.direction] (h : s < t) : finDim s < finDim t := by
  by_cases hs : s = ⊥
  · simp_all [bot_lt_iff_ne_bot]
  rw [finDim_eq_finrank hs, finDim_eq_finrank (ne_bot_of_gt h), Nat.cast_lt]
  refine Submodule.finrank_lt_finrank_of_lt (direction_lt_of_nonempty h ?_)
  exact (nonempty_iff_ne_bot _).mpr hs

end DivisionRing

end AffineSubspace
```
