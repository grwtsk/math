# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommGrp.Variant6e4841720b0810b3fe3973a78e12cb01131ac4e0b1c4b22ed361768381ea2899

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be4c7b618cbfa9a3c193cfa7be8c0531d2702903` · SHA-256 `4f3500e425c0b36871d5d0ab6714bb2d889d53e47f38f344d1a4cf4ac517d4c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Abbrev.Variant1463511b2da9d15a6cea6bc6961a18b3d53cddb020965690ff1b3d1e359ad0f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1463511b2da9d15a6cea6bc6961a18b3d53cddb020965690ff1b3d1e359ad0f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Abbrev.Variant1463511b2da9d15a6cea6bc6961a18b3d53cddb020965690ff1b3d1e359ad0f1","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"1463511b2da9d15a6cea6bc6961a18b3d53cddb020965690ff1b3d1e359ad0f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Monoidal/Cartesian/CommGrp_.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.CategoryTheory.Monoidal.Cartesian.CommMon_
import Mathlib.CategoryTheory.Monoidal.Cartesian.Grp_

/-!
# Yoneda embedding of `CommGrp_ C`
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Abbrev.Variant1463511b2da9d15a6cea6bc6961a18b3d53cddb020965690ff1b3d1e359ad0f1

open CategoryTheory MonoidalCategory Limits Opposite CartesianMonoidalCategory Mon_Class

universe w v u
variable {C : Type u} [Category.{v} C] [CartesianMonoidalCategory C] [BraidedCategory C] {X : C}

variable (X) in
/-- Abbreviation for an unbundled commutative group object. It is a group object that is a
commutative monoid object. -/
class abbrev CommGrp_Class := Grp_Class X, IsCommMon X

section CommGrp_

variable (X) in
/-- If `X` represents a presheaf of commutative groups, then `X` is a commutative group object. -/
def CommGrp_Class.ofRepresentableBy (F : Cᵒᵖ ⥤ CommGrp.{w})
    (α : (F ⋙ forget _).RepresentableBy X) : CommGrp_Class X where
  __ := Grp_Class.ofRepresentableBy X (F ⋙ forget₂ CommGrp Grp) α
  __ := IsCommMon.ofRepresentableBy X (F ⋙ forget₂ CommGrp CommMonCat) α

end CommGrp_
```
