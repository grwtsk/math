-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.ToIntPowOfSemiring.Variant9fa2ab96f23d47792eea8105f1dd7fd266b0e3b6797694fe23118b33ad48b55d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9fa2ab96f23d47792eea8105f1dd7fd266b0e3b6797694fe23118b33ad48b55d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.ToIntPowOfSemiring.Variant9fa2ab96f23d47792eea8105f1dd7fd266b0e3b6797694fe23118b33ad48b55d","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"9fa2ab96f23d47792eea8105f1dd7fd266b0e3b6797694fe23118b33ad48b55d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Grind/Ring/ToInt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Init.Grind.Ring.Basic
import Init.Conv
import Init.Data.Int.Pow


namespace GRWTSK.Algebra.ToIntPowOfSemiring.Variant9fa2ab96f23d47792eea8105f1dd7fd266b0e3b6797694fe23118b33ad48b55d

public section

namespace Lean.Grind

set_option linter.defProp false in
/-- A `ToInt` instance on a semiring preserves powers if it preserves numerals and multiplication. -/
@[instance_reducible]
def ToInt.pow_of_semiring [Semiring α] [ToInt α I] [ToInt.OfNat α I] [ToInt.Mul α I]
    (h₁ : I.isFinite) : ToInt.Pow α I where
  toInt_pow x n := by
    induction n with
    | zero =>
      rw [Semiring.pow_zero, ToInt.OfNat.toInt_ofNat, Int.pow_zero]
      rfl
    | succ n ih =>
      rw [Semiring.pow_succ, ToInt.Mul.toInt_mul]
      conv => lhs; rw [← ToInt.wrap_toInt I x]
      rw [ih, ← I.wrap_mul h₁, Int.pow_succ]

end Lean.Grind
