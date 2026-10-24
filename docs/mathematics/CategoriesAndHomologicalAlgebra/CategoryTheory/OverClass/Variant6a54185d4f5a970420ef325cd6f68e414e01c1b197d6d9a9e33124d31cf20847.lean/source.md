# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OverClass.Variant6a54185d4f5a970420ef325cd6f68e414e01c1b197d6d9a9e33124d31cf20847

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5abe33e03bc42046e5deed80ab1ddd1357d07ba` · SHA-256 `6a54185d4f5a970420ef325cd6f68e414e01c1b197d6d9a9e33124d31cf20847`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.Tactic.CategoryTheory.Reassoc
import Mathlib.CategoryTheory.Comma.Over.Basic

/-!
# Typeclasses for `S`-objects and `S`-morphisms

**Warning**: This is not usually how typeclasses should be used.
This is only a sensible approach when the morphism is considered as a structure on `X`,
typically in algebraic geometry.

This is analogous to to how we view ringhoms as structures via the `Algebra` typeclass.

For other applications use unbundled arrows or `CategoryTheory.Over`.

## Main definition
- `CategoryTheory.OverClass`: `OverClass X S` equips `X` with a morphism into `S`.
  `X ↘ S : X ⟶ S` is the structure morphism.
- `CategoryTheory.HomIsOver`:
  `HomIsOver f S` asserts that `f` commutes with the structure morphisms.

-/

namespace CategoryTheory

universe v u

variable {C : Type u} [Category.{v} C]

variable {X Y Z : C} (f : X ⟶ Y) (S S' : C)

/--
`OverClass X S` is the typeclass containing the data of a structure morphism `X ↘ S : X ⟶ S`.
-/
class OverClass (X S : C) : Type v where
  ofHom ::
  /-- The structure morphism. Use `X ↘ S` instead. -/
  hom : X ⟶ S

/--
The structure morphism `X ↘ S : X ⟶ S` given `OverClass X S`.
The instance argument is an `optParam` instead so that it appears in the discrimination tree.
-/
def over (X S : C) (_ : OverClass X S := by infer_instance) : X ⟶ S := OverClass.hom

/-- The structure morphism `X ↘ S : X ⟶ S` given `OverClass X S`. -/
notation:90 X:90 " ↘ " S:90 => CategoryTheory.over X S inferInstance

/-- See Note [custom simps projection] -/
def OverClass.Simps.over (X S : C) [OverClass X S] : X ⟶ S := X ↘ S

initialize_simps_projections OverClass (hom → over)

/--
`X.CanonicallyOverClass S` is the typeclass containing the data of a
structure morphism `X ↘ S : X ⟶ S`,
and that `S` is (uniquely) inferable from the structure of `X`.
-/
class CanonicallyOverClass (X : C) (S : semiOutParam C) extends OverClass X S where

/-- See Note [custom simps projection] -/
def CanonicallyOverClass.Simps.over (X S : C) [CanonicallyOverClass X S] : X ⟶ S := X ↘ S

initialize_simps_projections CanonicallyOverClass (hom → over)

@[simps]
instance : OverClass X X := ⟨𝟙 _⟩

instance : IsIso (S ↘ S) := inferInstanceAs (IsIso (𝟙 S))

-- This cannot be a simp lemma be cause it loops with `comp_over`.
@[simps -isSimp]
instance (priority := 900) [CanonicallyOverClass X Y] [OverClass Y S] : OverClass X S :=
  ⟨X ↘ Y ≫ Y ↘ S⟩

/-- Given `OverClass X S` and `OverClass Y S` and `f : X ⟶ Y`,
`HomIsOver f S` is the typeclass asserting `f` commutes with the structure morphisms. -/
class HomIsOver (f : X ⟶ Y) (S : C) [OverClass X S] [OverClass Y S] : Prop where
  comp_over : f ≫ Y ↘ S = X ↘ S := by aesop

@[reassoc (attr := simp)]
lemma comp_over [OverClass X S] [OverClass Y S] [HomIsOver f S] :
    f ≫ Y ↘ S = X ↘ S :=
  HomIsOver.comp_over

instance [OverClass X S] : HomIsOver (𝟙 X) S where

instance [OverClass X S] [OverClass Y S] [OverClass Z S]
    (f : X ⟶ Y) (g : Y ⟶ Z) [HomIsOver f S] [HomIsOver g S] :
    HomIsOver (f ≫ g) S where

/-- `Scheme.IsOverTower X Y S` is the typeclass asserting that the structure morphisms
`X ↘ Y`, `Y ↘ S`, and `X ↘ S` commute. -/
abbrev IsOverTower (X Y S : C) [OverClass X S] [OverClass Y S] [OverClass X Y] :=
  HomIsOver (X ↘ Y) S

instance [OverClass X S] : IsOverTower X X S where
instance [OverClass X S] : IsOverTower X S S where

instance [CanonicallyOverClass X Y] [OverClass Y S] : IsOverTower X Y S :=
  ⟨rfl⟩

lemma homIsOver_of_isOverTower [OverClass X S] [OverClass X S'] [OverClass Y S]
    [OverClass Y S'] [OverClass S S']
    [IsOverTower X S S'] [IsOverTower Y S S'] [HomIsOver f S] : HomIsOver f S' := by
  constructor
  rw [← comp_over (Y ↘ S), comp_over_assoc f, comp_over]

instance [CanonicallyOverClass X S]
    [OverClass X S'] [OverClass Y S] [OverClass Y S'] [OverClass S S']
    [IsOverTower X S S'] [IsOverTower Y S S'] [HomIsOver f S] : HomIsOver f S' :=
  homIsOver_of_isOverTower f S S'

instance [OverClass X S]
    [OverClass X S'] [CanonicallyOverClass Y S] [OverClass Y S'] [OverClass S S']
    [IsOverTower X S S'] [IsOverTower Y S S'] [HomIsOver f S] : HomIsOver f S' :=
  homIsOver_of_isOverTower f S S'

variable (X) in
/-- Bundle `X` with an `OverClass X S` instance into `Over S`. -/
@[simps! hom left]
def OverClass.asOver [OverClass X S] : Over S := Over.mk (X ↘ S)

/-- Bundle a morphism `f : X ⟶ Y` with `HomIsOver f S` into a morphism in `Over S`. -/
@[simps! left]
def OverClass.asOverHom [OverClass X S] [OverClass Y S] (f : X ⟶ Y) [HomIsOver f S] :
    OverClass.asOver X S ⟶ OverClass.asOver Y S :=
  Over.homMk f (comp_over f S)

@[simps]
instance OverClass.fromOver {S : C} (X : Over S) : OverClass X.left S where
  hom := X.hom

instance {S : C} {X Y : Over S} (f : X ⟶ Y) : HomIsOver f.left S where
  comp_over := Over.w f

end CategoryTheory
```
