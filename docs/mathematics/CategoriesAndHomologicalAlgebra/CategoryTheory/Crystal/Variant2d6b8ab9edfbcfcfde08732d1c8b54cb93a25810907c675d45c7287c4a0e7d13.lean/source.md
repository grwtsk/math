# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Crystal.Variant2d6b8ab9edfbcfcfde08732d1c8b54cb93a25810907c675d45c7287c4a0e7d13

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `756a15724ca9008fa05e5fae8be31cdcc2fa52ed` · SHA-256 `bc80771e6c39e52c0d61fba2eadc1855b73688f63a1c6d0b44e867d0d8ead085`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Crystal.Variantb8dd203a313ee4a102f6a8bcc8e7e101e53aed4247e5c657099d4a777f3e121c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b8dd203a313ee4a102f6a8bcc8e7e101e53aed4247e5c657099d4a777f3e121c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Crystal.Variantb8dd203a313ee4a102f6a8bcc8e7e101e53aed4247e5c657099d4a777f3e121c","mathematical_subject":"Foundations.Unclassified","original_sha256":"b8dd203a313ee4a102f6a8bcc8e7e101e53aed4247e5c657099d4a777f3e121c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CrystallineTensor/Crystal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineTensor.CrystallineSite
import Folder.AdelicInfinityTopos.SpectrumObject

/-!
# Folder.CrystallineTensor.Crystal

Radiation role: research-boundary
BinaryMatrix spine: This module records crystal-style section compatibility, not a BinaryMatrix carrier.
Ontology: crystalline.crystal
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-tensor
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Crystal.Variantb8dd203a313ee4a102f6a8bcc8e7e101e53aed4247e5c657099d4a777f3e121c

namespace Folder
namespace CrystallineTensor

/--
Contract-level crystal data over an abstract crystalline-site boundary.

The compatibility and rigidity facts are supplied as certificates; this module
does not formalize crystalline cohomology.
-/
structure Crystal
    (C : CrystallineSite) where
  Section : C.Site.Obj → Type _
  restriction :
    ∀ {X Y : C.Site.Obj},
      C.Site.Hom Y X → Section X → Section Y
  crystalCompatibility : Prop
  crystalCompatibility_certified : crystalCompatibility
  infinitesimalRigidity : Prop
  infinitesimalRigidity_certified : infinitesimalRigidity
  label : String

theorem crystal_has_compatibility
    {C : CrystallineSite}
    (F : Crystal C) :
    F.crystalCompatibility :=
  F.crystalCompatibility_certified

theorem crystal_has_infinitesimal_rigidity
    {C : CrystallineSite}
    (F : Crystal C) :
    F.infinitesimalRigidity :=
  F.infinitesimalRigidity_certified

end CrystallineTensor
end Folder
```
