# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HandleComplex.Variant71ad5b9f20bd2c76e24979ac4348d16cbbb7f1c745b8f211db69e0b046d90038

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac8cbe2782f5b0acd5c0c893e1c7579e27cc23e4` · SHA-256 `c3f9910e057b5d9ef029248839c3a1268482615db9e4c57a4317036d9ab65107`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HandleComplex.Variant656a7bf1d85f7ef9e53a15b6085210564b6507f8140e7907ac032520bf3913fc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"656a7bf1d85f7ef9e53a15b6085210564b6507f8140e7907ac032520bf3913fc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HandleComplex.Variant656a7bf1d85f7ef9e53a15b6085210564b6507f8140e7907ac032520bf3913fc","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"656a7bf1d85f7ef9e53a15b6085210564b6507f8140e7907ac032520bf3913fc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DerivedSheaf/HandleComplex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Sheaf.Handle
import Folder.DerivedSheaf.SectionComplex

/-!
# Folder.DerivedSheaf.HandleComplex

Radiation role: research-boundary
BinaryMatrix spine: This module connects sheaf handles to section complexes, not BinaryMatrix carriers.
Ontology: derived.handle_complex
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: derived-sheaf
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HandleComplex.Variant656a7bf1d85f7ef9e53a15b6085210564b6507f8140e7907ac032520bf3913fc

namespace Folder
namespace DerivedSheaf

open CategoryTheory

universe u v w

structure HandleComplex
    (C : Type u)
    [Category.{v} C] where
  handle : Degree → Sheaf.Handle.{u, v, w} C
  sectionComplex : SectionComplex
  sectionOfHandle :
    ∀ n : Degree, sectionComplex.Section n → Type w
  compatibleWithHandleIdentity : Prop
  compatibleWithHandleIdentity_certified : compatibleWithHandleIdentity

theorem handle_complex_has_section_complex
    {C : Type u}
    [Category.{v} C]
    (H : HandleComplex C) :
    ∃ S : SectionComplex, S = H.sectionComplex :=
  ⟨H.sectionComplex, rfl⟩

theorem handle_complex_identity_compatible
    {C : Type u}
    [Category.{v} C]
    (H : HandleComplex C) :
    H.compatibleWithHandleIdentity :=
  H.compatibleWithHandleIdentity_certified

end DerivedSheaf
end Folder
```
