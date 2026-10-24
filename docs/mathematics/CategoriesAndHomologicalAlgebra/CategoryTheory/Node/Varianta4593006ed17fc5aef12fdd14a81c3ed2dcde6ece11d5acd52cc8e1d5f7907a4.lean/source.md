# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Node.Varianta4593006ed17fc5aef12fdd14a81c3ed2dcde6ece11d5acd52cc8e1d5f7907a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5346bfec2a204fa2a7bf2e6e60bf191f301f564` · SHA-256 `a4593006ed17fc5aef12fdd14a81c3ed2dcde6ece11d5acd52cc8e1d5f7907a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Sheaf.Observable

/-!
# Folder.Sheaf.Node

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: sheaf.node
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Sheaf

open CategoryTheory

universe u v w

structure Node (C : Type u) [Category.{v} C] where
  presheaf : Presheaf.{u, v, w} C
  nodeKind : ObservableField presheaf.F String

end Sheaf
end Folder
```
