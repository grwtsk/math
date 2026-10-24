# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Content.Variant7b5acbd81b6bc8822876adc835587fba237136849a4bfa8cf0aa0d4cf9288555

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef30db6dad7eabfdf8ca7092344e8ef103c42015` · SHA-256 `7b5acbd81b6bc8822876adc835587fba237136849a4bfa8cf0aa0d4cf9288555`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Sheaf.Observable

/-!
# Folder.Sheaf.Content

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: sheaf.content
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Sheaf

open CategoryTheory Opposite

universe u v w

structure Content (C : Type u) [Category.{v} C] where
  presheaf : Presheaf.{u, v, w} C
  byteLength : ObservableField presheaf.F Nat
  byteIdentity : ObservableField presheaf.F String

namespace Content

def restrict {C : Type u} [Category.{v} C]
    (X : Content.{u, v, w} C) {U V : C} (f : U ⟶ V)
    (s : X.presheaf.F.obj (op V)) :
    X.presheaf.F.obj (op U) :=
  X.presheaf.restrict f s

theorem byteLength_natural
    {C : Type u} [Category.{v} C]
    (X : Content.{u, v, w} C)
    {U V : C} (f : U ⟶ V)
    (s : X.presheaf.F.obj (op V)) :
    X.byteLength.value U (X.restrict f s) =
      X.byteLength.value V s :=
  X.byteLength.naturality f s

end Content
end Sheaf
end Folder
```
