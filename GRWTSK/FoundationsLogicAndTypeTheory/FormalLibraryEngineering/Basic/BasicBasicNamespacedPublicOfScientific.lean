-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfScientific.Variant6dfd49a898dfccd432361c802cdeeae6fbe4cec3dc86eb94e46839ebb990e367","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6dfd49a898dfccd432361c802cdeeae6fbe4cec3dc86eb94e46839ebb990e367","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.OfScientific.Variant6dfd49a898dfccd432361c802cdeeae6fbe4cec3dc86eb94e46839ebb990e367","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"6dfd49a898dfccd432361c802cdeeae6fbe4cec3dc86eb94e46839ebb990e367","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/OfScientific/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Prelude


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfScientific.Variant6dfd49a898dfccd432361c802cdeeae6fbe4cec3dc86eb94e46839ebb990e367

public section

/-- For decimal and scientific numbers (e.g., `1.23`, `3.12e10`).
   Examples:
   - `1.23` is syntax for `OfScientific.ofScientific (nat_lit 123) true (nat_lit 2)`
   - `121e100` is syntax for `OfScientific.ofScientific (nat_lit 121) false (nat_lit 100)`

   Note the use of `nat_lit`; there is no wrapping `OfNat.ofNat` in the resulting term.
-/
class OfScientific (α : Type u) where
  /--
  Produces a value from the given mantissa, exponent sign, and decimal exponent. For the exponent
  sign, `true` indicates a negative exponent.

   Examples:
   - `1.23` is syntax for `OfScientific.ofScientific (nat_lit 123) true (nat_lit 2)`
   - `121e100` is syntax for `OfScientific.ofScientific (nat_lit 121) false (nat_lit 100)`

   Note the use of `nat_lit`; there is no wrapping `OfNat.ofNat` in the resulting term.
  -/
  ofScientific (mantissa : Nat) (exponentSign : Bool) (decimalExponent : Nat) : α
