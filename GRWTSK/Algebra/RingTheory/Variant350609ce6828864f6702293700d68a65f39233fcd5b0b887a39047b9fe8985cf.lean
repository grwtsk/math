-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Small.Variant14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Small.Variant14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Small/Ring.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Logic.Small.Defs
import Mathlib.Algebra.Equiv.TransferInstance

/-!
# Transfer ring structures from `α` to `Shrink α`.
-/


namespace GRWTSK.Algebra.Small.Variant14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714

noncomputable section

variable {α : Type*}

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
