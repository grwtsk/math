# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RestrictionNaturality.Variantce03e14459723cb4fdb569a3d01ff32bcc6fda62d3905b9bc566f96ddbfa9901

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7931eeebbba45d9b81b481aba5edebb076b70edf` · SHA-256 `ce03e14459723cb4fdb569a3d01ff32bcc6fda62d3905b9bc566f96ddbfa9901`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Sheaf.Content
import Folder.Sheaf.Diagnostic
import Folder.Sheaf.File

/-!
# Folder.Theorem.Sheaf.RestrictionNaturality

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.sheaf.restriction_naturality
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace Sheaf

open CategoryTheory Opposite

universe u v

theorem content_byteLength_natural
    {C : Type u} [Category.{v} C]
    (X : Folder.Sheaf.Content C)
    {U V : C} (f : U ⟶ V)
    (s : X.presheaf.F.obj (op V)) :
    X.byteLength.value U (X.restrict f s) =
      X.byteLength.value V s :=
  Folder.Sheaf.Content.byteLength_natural X f s

theorem diagnostic_severity_natural
    {C : Type u} [Category.{v} C]
    (X : Folder.Sheaf.Diagnostic C)
    {U V : C} (f : U ⟶ V)
    (s : X.presheaf.F.obj (op V)) :
    X.severity.value U (X.restrict f s) =
      X.severity.value V s :=
  Folder.Sheaf.Diagnostic.severity_natural X f s

theorem file_path_natural
    {C : Type u} [Category.{v} C]
    (X : Folder.Sheaf.File C)
    {U V : C} (f : U ⟶ V)
    (s : X.presheaf.F.obj (op V)) :
    X.path.value U (X.restrict f s) =
      X.path.value V s :=
  Folder.Sheaf.File.path_natural X f s

end Sheaf
end Theorem
end Folder
```
