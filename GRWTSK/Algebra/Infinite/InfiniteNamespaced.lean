-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CharZero.Variant22c2fc42704f453448a200a541c1a331173347d507ec97c4db1e52c1d3c8342b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"22c2fc42704f453448a200a541c1a331173347d507ec97c4db1e52c1d3c8342b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.CharZero.Variant22c2fc42704f453448a200a541c1a331173347d507ec97c4db1e52c1d3c8342b","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"22c2fc42704f453448a200a541c1a331173347d507ec97c4db1e52c1d3c8342b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/CharZero/Infinite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Algebra.CharZero.Defs
import Mathlib.Data.Fintype.EquivFin

/-! # A characteristic-zero semiring is infinite -/



namespace GRWTSK.Algebra.CharZero.Variant22c2fc42704f453448a200a541c1a331173347d507ec97c4db1e52c1d3c8342b

open Set

variable (M : Type*) [AddMonoidWithOne M] [CharZero M]

-- see Note [lower instance priority]
instance (priority := 100) CharZero.infinite : Infinite M :=
  Infinite.of_injective Nat.cast Nat.cast_injective
