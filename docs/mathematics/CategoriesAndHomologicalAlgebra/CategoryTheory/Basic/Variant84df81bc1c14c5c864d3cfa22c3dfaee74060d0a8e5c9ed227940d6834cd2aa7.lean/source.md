# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant84df81bc1c14c5c864d3cfa22c3dfaee74060d0a8e5c9ed227940d6834cd2aa7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4776148a7ccd3ef9f2b4b3286e29914155818eef` · SHA-256 `84df81bc1c14c5c864d3cfa22c3dfaee74060d0a8e5c9ed227940d6834cd2aa7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Site.Cover

/-!
# Folder.Sheaf.Basic

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: sheaf.basic
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Sheaf

open CategoryTheory Opposite

universe u v w

structure Presheaf (C : Type u) [Category.{v} C] where
  F : Cᵒᵖ ⥤ Type w

namespace Presheaf

def restrict
    {C : Type u} [Category.{v} C]
    (P : Presheaf C)
    {U V : C}
    (f : U ⟶ V)
    (s : P.F.obj (op V)) :
    P.F.obj (op U) :=
  P.F.map f.op s

end Presheaf

structure IsSheaf
    {C : Type u} [Category.{v} C]
    (P : Presheaf C) where
  locality :
    ∀ {U : C} (_S : Site.Cover C U),
      Prop
  gluing :
    ∀ {U : C} (_S : Site.Cover C U),
      Prop

end Sheaf
end Folder
```
