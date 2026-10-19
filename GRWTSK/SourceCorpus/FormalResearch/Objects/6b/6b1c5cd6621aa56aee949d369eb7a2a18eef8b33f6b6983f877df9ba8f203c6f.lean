-- corpus-organization-transform:v1
-- Mathematical subject: Foundations.NumbersAndBasicStructures
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.LawfulOfScientific.Variant5e13f7548ef5ed09958690c210e6ce0e3c03634e3ee9d68721c01af0f8c07799","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5e13f7548ef5ed09958690c210e6ce0e3c03634e3ee9d68721c01af0f8c07799","provenance":{"attribution":"Organization assisted by OpenAI Codex under R.A. Jacob Martone direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.LawfulOfScientific.Variant5e13f7548ef5ed09958690c210e6ce0e3c03634e3ee9d68721c01af0f8c07799","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"5e13f7548ef5ed09958690c210e6ce0e3c03634e3ee9d68721c01af0f8c07799","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/think/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Grind/Ring/OfScientific.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Init.Grind.Ring.Field
public import Init.Data.OfScientific.Basic


namespace FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.LawfulOfScientific.Variant5e13f7548ef5ed09958690c210e6ce0e3c03634e3ee9d68721c01af0f8c07799

public section

namespace Lean.Grind

attribute [local instance] Semiring.natCast

/--
A type class that ensures that `OfScientific.ofScientific` is properly defined with respect to
the field structure.
-/
class LawfulOfScientific (α : Type u) [Field α] [OfScientific α] : Prop where
  /--
  `OfScientific.ofScientific` is properly defined with respect to the field structure.
  -/
  ofScientific_def :
    OfScientific.ofScientific m s e = if s then (Nat.cast m : α) / 10^e else (Nat.cast m : α) * 10^e

end Lean.Grind
