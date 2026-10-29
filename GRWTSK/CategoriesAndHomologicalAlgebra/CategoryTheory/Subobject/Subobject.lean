import Folder.Basic

/-!
# Folder.Category.Subobject

Radiation role: category-interface
BinaryMatrix spine: This module supplies categorical interfaces used by sheaf and monodromy layers around the BinaryMatrix spine.
Ontology: category.subobject
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Category

open CategoryTheory Opposite

universe u v w

structure Subobject
    {C : Type u} [Category.{v} C]
    (F : Cᵒᵖ ⥤ Type w) where
  contains : ∀ U : C, F.obj (op U) → Prop
  restrict :
    ∀ {U V : C} (f : U ⟶ V) {s : F.obj (op V)},
      contains V s →
      contains U (F.map f.op s)

end Category
end Folder
