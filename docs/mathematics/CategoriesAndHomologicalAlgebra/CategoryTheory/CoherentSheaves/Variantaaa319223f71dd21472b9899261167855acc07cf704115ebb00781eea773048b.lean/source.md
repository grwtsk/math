# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoherentSheaves.Variantaaa319223f71dd21472b9899261167855acc07cf704115ebb00781eea773048b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ebbc093655965e88df33a11755a1babd4f83620` · SHA-256 `aaa319223f71dd21472b9899261167855acc07cf704115ebb00781eea773048b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz
-/
import Mathlib.CategoryTheory.Sites.Canonical
import Mathlib.CategoryTheory.Sites.Coherent.Basic
import Mathlib.CategoryTheory.Sites.EffectiveEpimorphic
/-!

# Sheaves for the coherent topology

This file characterises sheaves for the coherent topology

## Main result

* `isSheaf_coherent`: a presheaf of types for the is a sheaf for the coherent topology if and only
  if it satisfies the sheaf condition with respect to every presieve consisting of a finite
  effective epimorphic family.
-/

namespace CategoryTheory

variable {C : Type*} [Category C] [Precoherent C]

universe w in
lemma isSheaf_coherent (P : Cᵒᵖ ⥤ Type w) :
    Presieve.IsSheaf (coherentTopology C) P ↔
    (∀ (B : C) (α : Type) [Finite α] (X : α → C) (π : (a : α) → (X a ⟶ B)),
      EffectiveEpiFamily X π → (Presieve.ofArrows X π).IsSheafFor P) := by
  constructor
  · intro hP B α _ X π h
    simp only [coherentTopology, Presieve.isSheaf_coverage] at hP
    apply hP
    exact ⟨α, inferInstance, X, π, rfl, h⟩
  · intro h
    simp only [coherentTopology, Presieve.isSheaf_coverage]
    rintro B S ⟨α, _, X, π, rfl, hS⟩
    exact h _ _ _ _ hS

namespace coherentTopology

/-- Every Yoneda-presheaf is a sheaf for the coherent topology. -/
theorem isSheaf_yoneda_obj (W : C) : Presieve.IsSheaf (coherentTopology C) (yoneda.obj W) := by
  rw [isSheaf_coherent]
  intro X α _ Y π H
  have h_colim := isColimitOfEffectiveEpiFamilyStruct Y π H.effectiveEpiFamily.some
  rw [← Sieve.generateFamily_eq] at h_colim
  intro x hx
  let x_ext := Presieve.FamilyOfElements.sieveExtend x
  have hx_ext := Presieve.FamilyOfElements.Compatible.sieveExtend hx
  let S := Sieve.generate (Presieve.ofArrows Y π)
  obtain ⟨t, t_amalg, t_uniq⟩ : ∃! t, x_ext.IsAmalgamation t :=
    (Sieve.forallYonedaIsSheaf_iff_colimit S).mpr ⟨h_colim⟩ W x_ext hx_ext
  refine ⟨t, ?_, ?_⟩
  · convert Presieve.isAmalgamation_restrict (Sieve.le_generate (Presieve.ofArrows Y π)) _ _ t_amalg
    exact (Presieve.restrict_extend hx).symm
  · exact fun y hy ↦ t_uniq y <| Presieve.isAmalgamation_sieveExtend x y hy

variable (C) in
/-- The coherent topology on a precoherent category is subcanonical. -/
instance subcanonical : (coherentTopology C).Subcanonical :=
  GrothendieckTopology.Subcanonical.of_isSheaf_yoneda_obj _ isSheaf_yoneda_obj

end coherentTopology

end CategoryTheory
```
