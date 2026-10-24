# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.File.Variant01765ae2ad4548fe70311d8d7caf92b95738d1ac0a666c40ec68eeb50cd4f10e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93acdca1ec3015ef69682d04ed48c1c237332ae8` · SHA-256 `01765ae2ad4548fe70311d8d7caf92b95738d1ac0a666c40ec68eeb50cd4f10e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Sheaf.Observable

/-!
# Folder.Sheaf.File

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: sheaf.file
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Sheaf

open CategoryTheory Opposite

universe u v w

structure File (C : Type u) [Category.{v} C] where
  presheaf : Presheaf.{u, v, w} C
  path : ObservableField presheaf.F String
  byteLength : ObservableField presheaf.F Nat

namespace File

def restrict {C : Type u} [Category.{v} C]
    (X : File.{u, v, w} C) {U V : C} (f : U ⟶ V)
    (s : X.presheaf.F.obj (op V)) :
    X.presheaf.F.obj (op U) :=
  X.presheaf.restrict f s

theorem path_natural
    {C : Type u} [Category.{v} C]
    (X : File.{u, v, w} C)
    {U V : C} (f : U ⟶ V)
    (s : X.presheaf.F.obj (op V)) :
    X.path.value U (X.restrict f s) =
      X.path.value V s :=
  X.path.naturality f s

end File
end Sheaf
end Folder
```
