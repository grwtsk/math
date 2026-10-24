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
