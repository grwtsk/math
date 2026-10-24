# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Permission.Variant4d688b52d0db1c209d6a7330d647fec33bf04fe4d475e945119a60484cbc8325

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b453a9881fd0a150395e7396de260d1267942ff9` · SHA-256 `4d688b52d0db1c209d6a7330d647fec33bf04fe4d475e945119a60484cbc8325`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Sheaf.Observable

/-!
# Folder.Sheaf.Permission

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: sheaf.permission
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Sheaf

open CategoryTheory

universe u v w

structure Permission (C : Type u) [Category.{v} C] where
  presheaf : Presheaf.{u, v, w} C
  level : ObservableField presheaf.F Nat

end Sheaf
end Folder
```
