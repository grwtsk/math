-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.AddEquivToMultiplicative.Variantda174141678531f2baf7272e45c04355b026fd1956dae4d26d5695ae76b7c92b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da174141678531f2baf7272e45c04355b026fd1956dae4d26d5695ae76b7c92b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.AddEquivToMultiplicative.Variantda174141678531f2baf7272e45c04355b026fd1956dae4d26d5695ae76b7c92b","mathematical_subject":"Logic.Foundations","original_sha256":"da174141678531f2baf7272e45c04355b026fd1956dae4d26d5695ae76b7c92b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Hom/Equiv/TypeTags.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Callum Sutton, Yury Kudryashov
-/
import Mathlib.Algebra.Hom.Equiv.Basic
import Mathlib.Algebra.Group.TypeTags


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.AddEquivToMultiplicative.Variantda174141678531f2baf7272e45c04355b026fd1956dae4d26d5695ae76b7c92b

#align_import algebra.hom.equiv.type_tags from "leanprover-community/mathlib"@"3342d1b2178381196f818146ff79bc0e7ccd9e2d"

/-!
# Additive and multiplicative equivalences associated to `Multiplicative` and `Additive`.
-/


variable {G H : Type*}

/-- Reinterpret `G ≃+ H` as `Multiplicative G ≃* Multiplicative H`. -/
def AddEquiv.toMultiplicative [AddZeroClass G] [AddZeroClass H] :
    G ≃+ H ≃ (Multiplicative G ≃* Multiplicative H) where
  toFun f :=
    ⟨⟨AddMonoidHom.toMultiplicative f.toAddMonoidHom,
     AddMonoidHom.toMultiplicative f.symm.toAddMonoidHom, f.1.3, f.1.4⟩, f.2⟩
  invFun f := ⟨⟨f.toMonoidHom, f.symm.toMonoidHom, f.1.3, f.1.4⟩, f.2⟩
  left_inv x := by ext; rfl
  right_inv x := by ext; rfl
#align add_equiv.to_multiplicative AddEquiv.toMultiplicative

/-- Reinterpret `G ≃* H` as `Additive G ≃+ Additive H`. -/
def MulEquiv.toAdditive [MulOneClass G] [MulOneClass H] :
    G ≃* H ≃ (Additive G ≃+ Additive H) where
  toFun f := ⟨⟨MonoidHom.toAdditive f.toMonoidHom,
              MonoidHom.toAdditive f.symm.toMonoidHom, f.1.3, f.1.4⟩, f.2⟩
  invFun f := ⟨⟨f.toAddMonoidHom, f.symm.toAddMonoidHom, f.1.3, f.1.4⟩, f.2⟩
  left_inv x := by ext; rfl
  right_inv x := by ext; rfl
#align mul_equiv.to_additive MulEquiv.toAdditive

/-- Reinterpret `Additive G ≃+ H` as `G ≃* Multiplicative H`. -/
def AddEquiv.toMultiplicative' [MulOneClass G] [AddZeroClass H] :
    Additive G ≃+ H ≃ (G ≃* Multiplicative H) where
  toFun f :=
    ⟨⟨AddMonoidHom.toMultiplicative' f.toAddMonoidHom,
     AddMonoidHom.toMultiplicative'' f.symm.toAddMonoidHom, f.1.3, f.1.4⟩, f.2⟩
  invFun f := ⟨⟨f.toMonoidHom, f.symm.toMonoidHom, f.1.3, f.1.4⟩, f.2⟩
  left_inv x := by ext; rfl
  right_inv x := by ext; rfl
#align add_equiv.to_multiplicative' AddEquiv.toMultiplicative'

/-- Reinterpret `G ≃* Multiplicative H` as `Additive G ≃+ H` as. -/
def MulEquiv.toAdditive' [MulOneClass G] [AddZeroClass H] :
    G ≃* Multiplicative H ≃ (Additive G ≃+ H) :=
  AddEquiv.toMultiplicative'.symm
#align mul_equiv.to_additive' MulEquiv.toAdditive'

/-- Reinterpret `G ≃+ Additive H` as `Multiplicative G ≃* H`. -/
def AddEquiv.toMultiplicative'' [AddZeroClass G] [MulOneClass H] :
    G ≃+ Additive H ≃ (Multiplicative G ≃* H) where
  toFun f :=
    ⟨⟨AddMonoidHom.toMultiplicative'' f.toAddMonoidHom,
     AddMonoidHom.toMultiplicative' f.symm.toAddMonoidHom, f.1.3, f.1.4⟩, f.2⟩
  invFun f := ⟨⟨f.toMonoidHom, f.symm.toMonoidHom, f.1.3, f.1.4⟩, f.2⟩
  left_inv x := by ext; rfl
  right_inv x := by ext; rfl
#align add_equiv.to_multiplicative'' AddEquiv.toMultiplicative''

/-- Reinterpret `Multiplicative G ≃* H` as `G ≃+ Additive H` as. -/
def MulEquiv.toAdditive'' [AddZeroClass G] [MulOneClass H] :
    Multiplicative G ≃* H ≃ (G ≃+ Additive H) :=
  AddEquiv.toMultiplicative''.symm
#align mul_equiv.to_additive'' MulEquiv.toAdditive''

section

variable (G) (H)

/-- `Additive (Multiplicative G)` is just `G`. -/
def AddEquiv.additiveMultiplicative [AddZeroClass G] : Additive (Multiplicative G) ≃+ G :=
  MulEquiv.toAdditive' (MulEquiv.refl (Multiplicative G))
#align add_equiv.additive_multiplicative AddEquiv.additiveMultiplicative

/-- `Multiplicative (Additive H)` is just `H`. -/
def MulEquiv.multiplicativeAdditive [MulOneClass H] : Multiplicative (Additive H) ≃* H :=
  AddEquiv.toMultiplicative'' (AddEquiv.refl (Additive H))
#align mul_equiv.multiplicative_additive MulEquiv.multiplicativeAdditive

end
