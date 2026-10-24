# Complete source: GRWTSK.Algebra.LinearAlgebra.Submodule.Variantf2e69aa5a46e25f2a31555645d86ca0aca115bfaa55c31d6f4e4625fe548897b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a05766ac4abda78b223c660fef9b9d0d5926038b` · SHA-256 `f2e69aa5a46e25f2a31555645d86ca0aca115bfaa55c31d6f4e4625fe548897b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
module

public import Mathlib.Algebra.Category.ModuleCat.Presheaf.Submodule
public import Mathlib.Algebra.Category.Grp.ForgetCorepresentable
public import Mathlib.Algebra.Category.ModuleCat.Sheaf
public import Mathlib.CategoryTheory.Sites.Subsheaf
public import Mathlib.CategoryTheory.Sites.Whiskering

/-!
# Submodules of sheaves of modules

Given a sheaf of modules `M`, a `SheafOfModules.Submodule M` is a submodule `N` of its underlying
presheaf of modules whose membership condition is local.

## Main definitions

- `SheafOfModules.Submodule`: a submodule of (the underlying presheaf of modules of) a sheaf of
  modules whose membership is local.
- `SheafOfModules.Submodule.toSheafOfModules`: the associated sheaf of modules.
-/

@[expose] public section

universe v v₁ u₁ u

open CategoryTheory Opposite

namespace SheafOfModules

open PresheafOfModules

variable {C : Type u₁} [Category.{v₁} C] {J : GrothendieckTopology C}
  {R : Sheaf J RingCat.{u}}

/-- A submodule of a sheaf of modules `M`: a submodule `N` of the underlying presheaf of modules
whose membership condition is local. -/
structure Submodule (M : SheafOfModules.{v} R) extends M.val.Submodule where
  isSheaf ⦃X : Cᵒᵖ⦄ (s : M.val.obj X) :
    toSubmodule.toSubfunctor.sieveOfSection s ∈ J X.unop → s ∈ toSubmodule.obj X

namespace Submodule

variable {M : SheafOfModules.{v} R} (N : M.Submodule)

@[ext]
lemma ext {N₁ N₂ : M.Submodule} (h : N₁.toSubmodule = N₂.toSubmodule) : N₁ = N₂ := by
  cases N₁
  cases N₂
  subst h
  rfl

/-- The sheaf of modules associated to a submodule of a sheaf of modules. -/
noncomputable def toSheafOfModules : SheafOfModules.{v} R where
  val := N.toPresheafOfModules
  isSheaf := by
    suffices Presieve.IsSheaf J N.toSubfunctor.toFunctor by
      apply Presheaf.isSheaf_of_isSheaf_comp J (s := CategoryTheory.forget AddCommGrpCat)
      rwa [isSheaf_iff_isSheaf_of_type]
    rw [N.toSubfunctor.isSheaf_iff]
    · exact N.isSheaf
    · rw [← isSheaf_iff_isSheaf_of_type]
      exact GrothendieckTopology.HasSheafCompose.isSheaf _ M.isSheaf

/-- The inclusion of the sheaf of modules associated to a submodule `N` into `M`. -/
noncomputable def ι : N.toSheafOfModules ⟶ M :=
  ⟨N.toSubmodule.ι⟩

@[simp]
lemma ι_val : N.ι.val = N.toSubmodule.ι := rfl

instance : Mono N.ι :=
  (forget R).mono_of_mono_map <| inferInstanceAs (Mono N.toSubmodule.ι)

instance : PartialOrder M.Submodule :=
  PartialOrder.lift toSubmodule fun _ _ ↦ ext

lemma le_iff {N₁ N₂ : M.Submodule} : N₁ ≤ N₂ ↔ N₁.toSubmodule ≤ N₂.toSubmodule := .rfl

instance : InfSet M.Submodule where
  sInf s :=
    { toSubmodule := sInf ((·.toSubmodule) '' s)
      isSheaf X x hx := by
        simp only [PresheafOfModules.Submodule.sInf_obj, Submodule.mem_iInf]
        rintro _ ⟨N', hN', rfl⟩
        refine N'.isSheaf x (J.superset_covering (fun V f hf ↦ ?_) hx)
        exact (sInf_le (Set.mem_image_of_mem (·.toSubmodule) hN')) (op V) hf }

instance : Min M.Submodule where
  min N₁ N₂ :=
    { toSubmodule := N₁.toSubmodule ⊓ N₂.toSubmodule
      isSheaf := by
        rw [← sInf_pair, ← Set.image_pair (·.toSubmodule) N₁ N₂]
        exact (sInf {N₁, N₂}).isSheaf }

noncomputable instance : CompleteLattice M.Submodule where
  __ := completeLatticeOfInf M.Submodule fun s ↦
    ⟨fun _ hN ↦ le_iff.mpr (sInf_le (Set.mem_image_of_mem _ hN)),
      fun _ hb ↦ le_iff.mpr <| le_sInf <| by
        rintro _ ⟨N', hN', rfl⟩
        exact le_iff.mp (hb hN')⟩
  inf := (· ⊓ ·)
  inf_le_left := fun _ _ ↦ le_iff.mpr inf_le_left
  inf_le_right := fun _ _ ↦ le_iff.mpr inf_le_right
  le_inf := fun _ _ _ h₁ h₂ ↦ le_iff.mpr (le_inf (le_iff.mp h₁) (le_iff.mp h₂))

@[simp]
lemma toSubmodule_sInf (s : Set M.Submodule) :
    (sInf s).toSubmodule = sInf ((·.toSubmodule) '' s) :=
  rfl

@[simp]
lemma toSubmodule_iInf {ι : Sort*} (N : ι → M.Submodule) :
    (⨅ i, N i).toSubmodule = ⨅ i, (N i).toSubmodule := by
  rw [iInf, toSubmodule_sInf, ← Set.range_comp, iInf, Function.comp_def]

@[simp]
lemma toSubmodule_inf (N₁ N₂ : M.Submodule) :
    (N₁ ⊓ N₂).toSubmodule = N₁.toSubmodule ⊓ N₂.toSubmodule :=
  rfl

end Submodule

end SheafOfModules
```
