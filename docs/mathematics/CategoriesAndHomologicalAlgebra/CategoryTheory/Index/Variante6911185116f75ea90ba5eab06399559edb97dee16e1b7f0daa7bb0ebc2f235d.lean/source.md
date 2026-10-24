# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Index.Variante6911185116f75ea90ba5eab06399559edb97dee16e1b7f0daa7bb0ebc2f235d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e3b990f9dead4f1067e52642ba27c0174c45454` · SHA-256 `e6911185116f75ea90ba5eab06399559edb97dee16e1b7f0daa7bb0ebc2f235d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Sheaf.Observable

/-!
# Folder.Sheaf.Index

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: sheaf.index
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Sheaf

open CategoryTheory

universe u v w

structure Index (C : Type u) [Category.{v} C] where
  presheaf : Presheaf.{u, v, w} C
  keyCount : ObservableField presheaf.F Nat

end Sheaf
end Folder
```
