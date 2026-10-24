# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variant6603e897929c0c47727e4658042f28f6a04cd184a1f6fcf786f74ddea0088232

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e953a598c0df7f94fbe9e17ea3bccd7044084970` · SHA-256 `6603e897929c0c47727e4658042f28f6a04cd184a1f6fcf786f74ddea0088232`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jakob von Raumer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob von Raumer
-/
import Mathlib.CategoryTheory.Comma.StructuredArrow.Basic
import Mathlib.CategoryTheory.Grothendieck

/-!
# Structured Arrow Categories as strict functor to Cat

Forming a structured arrow category `StructuredArrow d T` with `d : D` and `T : C ⥤ D` is strictly
functorial in `S`, inducing a functor `Dᵒᵖ ⥤ Cat`. This file constructs said functor and proves
that, in the dual case, we can precompose it with another functor `L : E ⥤ D` to obtain a category
equivalent to `Comma L T`.
-/

namespace CategoryTheory

universe v₁ v₂ v₃ v₄ u₁ u₂ u₃ u₄

variable {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D]

namespace StructuredArrow

/-- The structured arrow category `StructuredArrow d T` depends on the chosen domain `d : D` in a
functorial way, inducing a functor `Dᵒᵖ ⥤ Cat`. -/
@[simps]
def functor (T : C ⥤ D) : Dᵒᵖ ⥤ Cat where
  obj d := .of <| StructuredArrow d.unop T
  map f := map f.unop
  map_id d := Functor.ext (fun ⟨_, _, _⟩ => by simp [CostructuredArrow.map, Comma.mapRight])
  map_comp f g := Functor.ext (fun _ => by simp [CostructuredArrow.map, Comma.mapRight])

end StructuredArrow

namespace CostructuredArrow

/-- The costructured arrow category `CostructuredArrow T d` depends on the chosen codomain `d : D`
in a functorial way, inducing a functor `D ⥤ Cat`. -/
@[simps]
def functor (T : C ⥤ D) : D ⥤ Cat where
  obj d := .of <| CostructuredArrow T d
  map f := CostructuredArrow.map f
  map_id d := Functor.ext (fun ⟨_, _, _⟩ => by simp [CostructuredArrow.map, Comma.mapRight])
  map_comp f g := Functor.ext (fun _ => by simp [CostructuredArrow.map, Comma.mapRight])

variable {E : Type u₃} [Category.{v₃} E]
variable (L : C ⥤ D) (R : E ⥤ D)

/-- The functor used to establish the equivalence `grothendieckPrecompFunctorEquivalence` between
the Grothendieck construction on `CostructuredArrow.functor` and the comma category. -/
@[simps]
def grothendieckPrecompFunctorToComma : Grothendieck (R ⋙ functor L) ⥤ Comma L R where
  obj P := ⟨P.fiber.left, P.base, P.fiber.hom⟩
  map f := ⟨f.fiber.left, f.base, by simp⟩

/-- Fibers of `grothendieckPrecompFunctorToComma L R`, composed with `Comma.fst L R`, are isomorphic
to the projection `proj L (R.obj X)`. -/
@[simps!]
def ιCompGrothendieckPrecompFunctorToCommaCompFst (X : E) :
    Grothendieck.ι (R ⋙ functor L) X ⋙ grothendieckPrecompFunctorToComma L R ⋙ Comma.fst _ _ ≅
    proj L (R.obj X) :=
  NatIso.ofComponents (fun X => Iso.refl _) (fun _ => by simp)

/-- The inverse functor used to establish the equivalence `grothendieckPrecompFunctorEquivalence`
between the Grothendieck construction on `CostructuredArrow.functor` and the comma category. -/
@[simps]
def commaToGrothendieckPrecompFunctor : Comma L R ⥤ Grothendieck (R ⋙ functor L) where
  obj X := ⟨X.right, mk X.hom⟩
  map f := ⟨f.right, homMk f.left⟩
  map_id X := Grothendieck.ext _ _ rfl (by simp)
  map_comp f g := Grothendieck.ext _ _ rfl (by simp)

/-- For `L : C ⥤ D`, taking the Grothendieck construction of `CostructuredArrow.functor L`
precomposed with another functor `R : E ⥤ D` results in a category which is equivalent to
the comma category `Comma L R`. -/
@[simps]
def grothendieckPrecompFunctorEquivalence : Grothendieck (R ⋙ functor L) ≌ Comma L R where
  functor := grothendieckPrecompFunctorToComma _ _
  inverse := commaToGrothendieckPrecompFunctor _ _
  unitIso := NatIso.ofComponents (fun _ => Iso.refl _)
  counitIso := NatIso.ofComponents (fun _ => Iso.refl _)

/-- The functor projecting out the domain of arrows from the Grothendieck construction on
costructured arrows. -/
@[simps!]
def grothendieckProj : Grothendieck (functor L) ⥤ C :=
  grothendieckPrecompFunctorToComma L (𝟭 _) ⋙ Comma.fst _ _

/-- Fibers of `grothendieckProj L` are isomorphic to the projection `proj L X`. -/
@[simps!]
def ιCompGrothendieckProj (X : D) :
    Grothendieck.ι (functor L) X ⋙ grothendieckProj L ≅ proj L X :=
  ιCompGrothendieckPrecompFunctorToCommaCompFst L (𝟭 _) X

/-- Functors between costructured arrow categories induced by morphisms in the base category
composed with fibers of `grothendieckProj L` are isomorphic to the projection `proj L X`. -/
@[simps!]
def mapCompιCompGrothendieckProj {X Y : D} (f : X ⟶ Y) :
    CostructuredArrow.map f ⋙ Grothendieck.ι (functor L) Y ⋙ grothendieckProj L ≅ proj L X :=
  isoWhiskerLeft (CostructuredArrow.map f) (ιCompGrothendieckPrecompFunctorToCommaCompFst L (𝟭 _) Y)

/-- The functor `CostructuredArrow.pre` induces a natural transformation
`CostructuredArrow.functor (S ⋙ T) ⟶ CostructuredArrow.functor T` for `S : C ⥤ D` and
`T : D ⥤ E`. -/
@[simps]
def preFunctor {D : Type u₁} [Category.{v₁} D] (S : C ⥤ D) (T : D ⥤ E) :
    functor (S ⋙ T) ⟶ functor T where
  app e := pre S T e

end CostructuredArrow

end CategoryTheory
```
