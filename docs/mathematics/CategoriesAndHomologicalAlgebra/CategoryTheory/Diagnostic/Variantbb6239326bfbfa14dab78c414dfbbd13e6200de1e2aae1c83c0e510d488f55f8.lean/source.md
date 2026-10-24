# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Diagnostic.Variantbb6239326bfbfa14dab78c414dfbbd13e6200de1e2aae1c83c0e510d488f55f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7e8177131886b6ab97df576d7138ad40b7428094` · SHA-256 `bb6239326bfbfa14dab78c414dfbbd13e6200de1e2aae1c83c0e510d488f55f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Sheaf.Observable

/-!
# Folder.Sheaf.Diagnostic

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: sheaf.diagnostic
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Sheaf

open CategoryTheory Opposite

universe u v w

structure Diagnostic (C : Type u) [Category.{v} C] where
  presheaf : Presheaf.{u, v, w} C
  severity : ObservableField presheaf.F Nat
  status : ObservableField presheaf.F String

namespace Diagnostic

def restrict {C : Type u} [Category.{v} C]
    (X : Diagnostic.{u, v, w} C) {U V : C} (f : U ⟶ V)
    (s : X.presheaf.F.obj (op V)) :
    X.presheaf.F.obj (op U) :=
  X.presheaf.restrict f s

theorem severity_natural
    {C : Type u} [Category.{v} C]
    (X : Diagnostic.{u, v, w} C)
    {U V : C} (f : U ⟶ V)
    (s : X.presheaf.F.obj (op V)) :
    X.severity.value U (X.restrict f s) =
      X.severity.value V s :=
  X.severity.naturality f s

end Diagnostic
end Sheaf
end Folder
```
