# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preview.Variant6d866dc495b95c2b8cc04120616f70e523d9cd25b52b67bec693f75cb9c93bc0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1811e5706a26e0a2698d5998a4df1f0838ae338d` · SHA-256 `6d866dc495b95c2b8cc04120616f70e523d9cd25b52b67bec693f75cb9c93bc0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Sheaf.Observable

/-!
# Folder.Sheaf.Preview

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: sheaf.preview
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Sheaf

open CategoryTheory

universe u v w

structure Preview (C : Type u) [Category.{v} C] where
  presheaf : Presheaf.{u, v, w} C
  previewText : ObservableField presheaf.F String

end Sheaf
end Folder
```
