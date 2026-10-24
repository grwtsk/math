# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Content.Variant7b4c00e72dca6cbadd0218527b9acdcbe34fa977d72295d9a1fbf4d61b4fcab4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ec6d136dd8eee0766605dd1f234af59f360de5e` · SHA-256 `49ff86c3444b5dc328c66a6f4d4517eb7304ef7061559db6a41caa4cfb316b59`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Content.Variant7b5acbd81b6bc8822876adc835587fba237136849a4bfa8cf0aa0d4cf9288555","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7b5acbd81b6bc8822876adc835587fba237136849a4bfa8cf0aa0d4cf9288555","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Content.Variant7b5acbd81b6bc8822876adc835587fba237136849a4bfa8cf0aa0d4cf9288555","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"7b5acbd81b6bc8822876adc835587fba237136849a4bfa8cf0aa0d4cf9288555","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Sheaf/Content.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Content.Variant7b5acbd81b6bc8822876adc835587fba237136849a4bfa8cf0aa0d4cf9288555

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
