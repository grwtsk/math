# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Descent.Variantfff126061697f819e967bb07aeb752041679a0e37d88b6f0be660ee4f3620281

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74f58c4b7d25e0b79501e1b4ffa37a7baabcd86e` · SHA-256 `fff126061697f819e967bb07aeb752041679a0e37d88b6f0be660ee4f3620281`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Sheaf.Basic

/-!
# Folder.Morphism.Descent

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: morphism.descent
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Morphism

open CategoryTheory

universe u v w

structure Descent (C : Type u) [Category.{v} C] where
  source : Sheaf.Presheaf.{u, v, w} C
  target : Sheaf.Presheaf.{u, v, w} C
  localAgreement : Prop
  glues : localAgreement → Prop

end Morphism
end Folder
```
