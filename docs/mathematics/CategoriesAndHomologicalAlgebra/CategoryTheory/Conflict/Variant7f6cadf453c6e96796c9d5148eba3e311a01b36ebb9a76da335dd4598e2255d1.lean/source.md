# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Conflict.Variant7f6cadf453c6e96796c9d5148eba3e311a01b36ebb9a76da335dd4598e2255d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9fe44cdb07ad3c06577d3648937e9c30f00291da` · SHA-256 `7f6cadf453c6e96796c9d5148eba3e311a01b36ebb9a76da335dd4598e2255d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Sheaf.Observable

/-!
# Folder.Sheaf.Conflict

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: sheaf.conflict
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Sheaf

open CategoryTheory

universe u v w

structure Conflict (C : Type u) [Category.{v} C] where
  presheaf : Presheaf.{u, v, w} C
  status : ObservableField presheaf.F String

end Sheaf
end Folder
```
