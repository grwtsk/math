-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Small.Variant07c18bd1de5a379dc6b8abd9cd29e653b87e091a35bbb381049b44723dccf827","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"07c18bd1de5a379dc6b8abd9cd29e653b87e091a35bbb381049b44723dccf827","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Small.Variant07c18bd1de5a379dc6b8abd9cd29e653b87e091a35bbb381049b44723dccf827","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"07c18bd1de5a379dc6b8abd9cd29e653b87e091a35bbb381049b44723dccf827","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Logic/Small/Ring.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.Logic.Small.Basic
import Mathlib.Logic.Equiv.TransferInstance

/-!
# Transfer ring structures from `α` to `Shrink α`.
-/


namespace GRWTSK.Algebra.Small.Variant07c18bd1de5a379dc6b8abd9cd29e653b87e091a35bbb381049b44723dccf827

set_option autoImplicit true

noncomputable section

instance [NonUnitalNonAssocSemiring α] [Small α] : NonUnitalNonAssocSemiring (Shrink α) :=
  (equivShrink _).symm.nonUnitalNonAssocSemiring

instance [NonUnitalSemiring α] [Small α] : NonUnitalSemiring (Shrink α) :=
  (equivShrink _).symm.nonUnitalSemiring

instance [AddMonoidWithOne α] [Small α] : AddMonoidWithOne (Shrink α) :=
  (equivShrink _).symm.addMonoidWithOne

instance [AddGroupWithOne α] [Small α] : AddGroupWithOne (Shrink α) :=
  (equivShrink _).symm.addGroupWithOne

instance [NonAssocSemiring α] [Small α] : NonAssocSemiring (Shrink α) :=
  (equivShrink _).symm.nonAssocSemiring

instance [Semiring α] [Small α] : Semiring (Shrink α) :=
  (equivShrink _).symm.semiring

instance [NonUnitalCommSemiring α] [Small α] : NonUnitalCommSemiring (Shrink α) :=
  (equivShrink _).symm.nonUnitalCommSemiring

instance [CommSemiring α] [Small α] : CommSemiring (Shrink α) :=
  (equivShrink _).symm.commSemiring

instance [NonUnitalNonAssocRing α] [Small α] : NonUnitalNonAssocRing (Shrink α) :=
  (equivShrink _).symm.nonUnitalNonAssocRing

instance [NonUnitalRing α] [Small α] : NonUnitalRing (Shrink α) :=
  (equivShrink _).symm.nonUnitalRing

instance [Ring α] [Small α] : Ring (Shrink α) :=
  (equivShrink _).symm.ring

instance [NonUnitalCommRing α] [Small α] : NonUnitalCommRing (Shrink α) :=
  (equivShrink _).symm.nonUnitalCommRing

instance [CommRing α] [Small α] : CommRing (Shrink α) :=
  (equivShrink _).symm.commRing

instance [Nontrivial α] [Small α] : Nontrivial (Shrink α) :=
  (equivShrink _).symm.nontrivial

instance [DivisionRing α] [Small α] : DivisionRing (Shrink α) :=
  (equivShrink _).symm.divisionRing

instance [Field α] [Small α] : Field (Shrink α) :=
  (equivShrink _).symm.field
