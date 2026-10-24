# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Diagnostic.Variante1db1c0ec010a52a4bb032d843aea1c577899c0d493895f4e8c79a7c66550576

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2d62c81a7d6125f9a29c418349dfda57fd24ffa` · SHA-256 `f6bffebc5cc85a24b07dfc03f2f657d554879751c56a29f68120180e70c27c9d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Diagnostic.Variantbb6239326bfbfa14dab78c414dfbbd13e6200de1e2aae1c83c0e510d488f55f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb6239326bfbfa14dab78c414dfbbd13e6200de1e2aae1c83c0e510d488f55f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Diagnostic.Variantbb6239326bfbfa14dab78c414dfbbd13e6200de1e2aae1c83c0e510d488f55f8","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"bb6239326bfbfa14dab78c414dfbbd13e6200de1e2aae1c83c0e510d488f55f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Sheaf/Diagnostic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Diagnostic.Variantbb6239326bfbfa14dab78c414dfbbd13e6200de1e2aae1c83c0e510d488f55f8

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
