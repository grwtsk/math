# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Observable.Variantbc3f8c08a0b443dce4d13a95103626b97be99561ba29e301a220cc409719c98b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c54df01151adccb40f853d78506f92ae08f2f59` · SHA-256 `bc3f8c08a0b443dce4d13a95103626b97be99561ba29e301a220cc409719c98b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Sheaf.Basic

/-!
# Folder.Sheaf.Observable

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: sheaf.observable
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Sheaf

open CategoryTheory Opposite

universe u v w x

structure ObservableField
    {C : Type u} [Category.{v} C]
    (F : Cᵒᵖ ⥤ Type w)
    (α : Type x) where
  value : ∀ U : C, F.obj (op U) → α
  naturality :
    ∀ {U V : C} (f : U ⟶ V) (s : F.obj (op V)),
      value U (F.map f.op s) = value V s

end Sheaf
end Folder
```
