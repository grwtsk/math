# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subobject.Variantb24a2ab61ed97d67ddd5bddc16f049dbdc861ee816c92761b56d426135ffbca2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f337e24ab0371786657b25cd5347ebae502770bf` · SHA-256 `b24a2ab61ed97d67ddd5bddc16f049dbdc861ee816c92761b56d426135ffbca2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
