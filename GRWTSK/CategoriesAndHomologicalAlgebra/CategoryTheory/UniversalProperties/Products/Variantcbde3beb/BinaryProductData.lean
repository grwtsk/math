/-
Binary categorical product data with its universal-property premises
ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas/direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
Source original SHA-256: cbde3beb4437cae92629092d7ada85852ffa10296f58c5cffd80289f2f141c6e
Manual conceptual split; uncompiled and not mathematically admitted.
These provisional roles and computational characterizations are user-supplied.
Existing source attribution, source identities and notices remain preserved in the immutable source archive.
This is an interface with required projection/lift/uniqueness fields, not a construction of products in an arbitrary category.
The absent legacy Folder.Basic import is replaced by an explicit CategoryTheory foundation import; contextual equivalence remains unreplayed.
-/
import Mathlib.CategoryTheory.Category.Basic

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.UniversalProperties.Products.Variantcbde3beb

open CategoryTheory

universe u v

structure BinaryProduct
    (C : Type u) [CategoryTheory.Category.{v} C]
    (A B : C) where
  obj : C
  fst : obj ⟶ A
  snd : obj ⟶ B
  lift : {X : C} → (X ⟶ A) → (X ⟶ B) → (X ⟶ obj)
  lift_fst : {X : C} → (f : X ⟶ A) → (g : X ⟶ B) → lift f g ≫ fst = f
  lift_snd : {X : C} → (f : X ⟶ A) → (g : X ⟶ B) → lift f g ≫ snd = g
  lift_unique :
    {X : C} → (h : X ⟶ obj) → (f : X ⟶ A) → (g : X ⟶ B) →
      h ≫ fst = f →
      h ≫ snd = g →
      h = lift f g


end GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.UniversalProperties.Products.Variantcbde3beb
