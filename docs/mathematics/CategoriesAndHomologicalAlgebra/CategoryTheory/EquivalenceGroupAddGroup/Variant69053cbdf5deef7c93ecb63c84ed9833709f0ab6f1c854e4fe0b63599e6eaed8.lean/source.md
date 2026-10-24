# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EquivalenceGroupAddGroup.Variant69053cbdf5deef7c93ecb63c84ed9833709f0ab6f1c854e4fe0b63599e6eaed8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c12e33f874da1f67f2f44eb0033b02b051d8681` · SHA-256 `0d050884872c50976a38edd194cc7a8add7792e423b7e69f770c05e94e05e66c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ToAddGrp.Variantfec26d111abb0afee4742868c40bd8575c948347b3b50cd60c14ff04378a02b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fec26d111abb0afee4742868c40bd8575c948347b3b50cd60c14ff04378a02b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ToAddGrp.Variantfec26d111abb0afee4742868c40bd8575c948347b3b50cd60c14ff04378a02b5","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"fec26d111abb0afee4742868c40bd8575c948347b3b50cd60c14ff04378a02b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/Grp/EquivalenceGroupAddGroup.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang
-/
import Mathlib.Algebra.Category.Grp.Basic

/-!
# Equivalence between `Group` and `AddGroup`

This file contains two equivalences:
* `groupAddGroupEquivalence` : the equivalence between `Grp` and `AddGrp` by sending
  `X : Grp` to `Additive X` and `Y : AddGrp` to `Multiplicative Y`.
* `commGroupAddCommGroupEquivalence` : the equivalence between `CommGrp` and `AddCommGrp`
  by sending `X : CommGrp` to `Additive X` and `Y : AddCommGrp` to `Multiplicative Y`.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ToAddGrp.Variantfec26d111abb0afee4742868c40bd8575c948347b3b50cd60c14ff04378a02b5

open CategoryTheory

namespace Grp

/-- The functor `Grp ⥤ AddGrp` by sending `X ↦ Additive X` and `f ↦ f`.
-/
@[simps]
def toAddGrp : Grp ⥤ AddGrp where
  obj X := AddGrp.of (Additive X)
  map {_} {_} f := AddGrp.ofHom f.hom.toAdditive

end Grp

namespace CommGrp

/-- The functor `CommGrp ⥤ AddCommGrp` by sending `X ↦ Additive X` and `f ↦ f`.
-/
@[simps]
def toAddCommGrp : CommGrp ⥤ AddCommGrp where
  obj X := AddCommGrp.of (Additive X)
  map {_} {_} f := AddCommGrp.ofHom f.hom.toAdditive

end CommGrp

namespace AddGrp

/-- The functor `AddGrp ⥤ Grp` by sending `X ↦ Multiplicative Y` and `f ↦ f`.
-/
@[simps]
def toGrp : AddGrp ⥤ Grp where
  obj X := Grp.of (Multiplicative X)
  map {_} {_} f := Grp.ofHom f.hom.toMultiplicative

end AddGrp

namespace AddCommGrp

/-- The functor `AddCommGrp ⥤ CommGrp` by sending `X ↦ Multiplicative Y` and `f ↦ f`.
-/
@[simps]
def toCommGrp : AddCommGrp ⥤ CommGrp where
  obj X := CommGrp.of (Multiplicative X)
  map {_} {_} f := CommGrp.ofHom f.hom.toMultiplicative

end AddCommGrp

/-- The equivalence of categories between `Grp` and `AddGrp`
-/
@[simps]
def groupAddGroupEquivalence : Grp ≌ AddGrp where
  functor := Grp.toAddGrp
  inverse := AddGrp.toGrp
  unitIso := Iso.refl _
  counitIso := Iso.refl _

/-- The equivalence of categories between `CommGrp` and `AddCommGrp`.
-/
@[simps]
def commGroupAddCommGroupEquivalence : CommGrp ≌ AddCommGrp where
  functor := CommGrp.toAddCommGrp
  inverse := AddCommGrp.toCommGrp
  unitIso := Iso.refl _
  counitIso := Iso.refl _
```
