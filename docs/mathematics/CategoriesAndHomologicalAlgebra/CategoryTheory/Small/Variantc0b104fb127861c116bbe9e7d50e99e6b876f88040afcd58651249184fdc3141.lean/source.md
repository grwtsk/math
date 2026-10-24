# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Small.Variantc0b104fb127861c116bbe9e7d50e99e6b876f88040afcd58651249184fdc3141

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a31121a52e88ae33a1508b4d89c1ab8697540245` · SHA-256 `c0b104fb127861c116bbe9e7d50e99e6b876f88040afcd58651249184fdc3141`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Comma.StructuredArrow.Basic
import Mathlib.CategoryTheory.EssentiallySmall
import Mathlib.Logic.Small.Set

/-!
# Small sets in the category of structured arrows

Here we prove a technical result about small sets in the category of structured arrows that will
be used in the proof of the Special Adjoint Functor Theorem.
-/

namespace CategoryTheory

-- morphism levels before object levels. See note [CategoryTheory universes].
universe v₁ v₂ u₁ u₂

variable {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D]

namespace StructuredArrow

variable {S : D} {T : C ⥤ D}

instance small_proj_preimage_of_locallySmall {𝒢 : Set C} [Small.{v₁} 𝒢] [LocallySmall.{v₁} D] :
    Small.{v₁} ((proj S T).obj ⁻¹' 𝒢) := by
  suffices (proj S T).obj ⁻¹' 𝒢 = Set.range fun f : ΣG : 𝒢, S ⟶ T.obj G => mk f.2 by
    rw [this]
    infer_instance
  exact Set.ext fun X => ⟨fun h => ⟨⟨⟨_, h⟩, X.hom⟩, (eq_mk _).symm⟩, by aesop_cat⟩

end StructuredArrow

namespace CostructuredArrow

variable {S : C ⥤ D} {T : D}

instance small_proj_preimage_of_locallySmall {𝒢 : Set C} [Small.{v₁} 𝒢] [LocallySmall.{v₁} D] :
    Small.{v₁} ((proj S T).obj ⁻¹' 𝒢) := by
  suffices (proj S T).obj ⁻¹' 𝒢 = Set.range fun f : ΣG : 𝒢, S.obj G ⟶ T => mk f.2 by
    rw [this]
    infer_instance
  exact Set.ext fun X => ⟨fun h => ⟨⟨⟨_, h⟩, X.hom⟩, (eq_mk _).symm⟩, by aesop_cat⟩

end CostructuredArrow

end CategoryTheory
```
