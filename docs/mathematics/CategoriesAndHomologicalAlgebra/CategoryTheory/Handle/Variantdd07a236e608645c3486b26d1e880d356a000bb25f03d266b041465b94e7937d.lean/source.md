# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Handle.Variantdd07a236e608645c3486b26d1e880d356a000bb25f03d266b041465b94e7937d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0a1cef9412184a6aec3cf9b52c2ac604b5d40911` · SHA-256 `dd07a236e608645c3486b26d1e880d356a000bb25f03d266b041465b94e7937d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Sheaf.Observable

/-!
# Folder.Sheaf.Handle

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: sheaf.handle
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Sheaf

open CategoryTheory

universe u v w

structure Handle (C : Type u) [Category.{v} C] where
  presheaf : Presheaf.{u, v, w} C
  identity : ObservableField presheaf.F String

end Sheaf
end Folder
```
