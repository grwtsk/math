# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RestrictionNaturality.Variante0575b401903eb7904699bc61fc12760f66d6c95ba7b650cb0a87589ca0d4110

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4730f587caf2b004a6af5e2cb6d7d20d71f5c9d` · SHA-256 `8ed39f624ce372a7b7cbd75f4bae68762819b703c55a0547beeadd33e4690d36`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ContentByteLengthNatural.Variantce03e14459723cb4fdb569a3d01ff32bcc6fda62d3905b9bc566f96ddbfa9901","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ce03e14459723cb4fdb569a3d01ff32bcc6fda62d3905b9bc566f96ddbfa9901","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ContentByteLengthNatural.Variantce03e14459723cb4fdb569a3d01ff32bcc6fda62d3905b9bc566f96ddbfa9901","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ce03e14459723cb4fdb569a3d01ff32bcc6fda62d3905b9bc566f96ddbfa9901","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Sheaf/RestrictionNaturality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ContentByteLengthNatural.Variantce03e14459723cb4fdb569a3d01ff32bcc6fda62d3905b9bc566f96ddbfa9901

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
