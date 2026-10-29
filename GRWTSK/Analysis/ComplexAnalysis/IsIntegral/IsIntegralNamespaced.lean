-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.IsIntegralIntI.Variant4b9f776987df961b108c4a56c9dfe2c286cb3b8c332be0eb040a73a8d4817992","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4b9f776987df961b108c4a56c9dfe2c286cb3b8c332be0eb040a73a8d4817992","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.IsIntegralIntI.Variant4b9f776987df961b108c4a56c9dfe2c286cb3b8c332be0eb040a73a8d4817992","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"4b9f776987df961b108c4a56c9dfe2c286cb3b8c332be0eb040a73a8d4817992","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Complex/IsIntegral.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yuyang Zhao. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yuyang Zhao
-/

import Mathlib.Analysis.Complex.Basic
import Mathlib.RingTheory.IntegralClosure.IsIntegral.Basic

/-!
# Integral elements of ℂ

This file proves that `Complex.I` is integral over ℤ and ℚ.
-/


namespace GRWTSK.Analysis.ComplexAnalysis.IsIntegralIntI.Variant4b9f776987df961b108c4a56c9dfe2c286cb3b8c332be0eb040a73a8d4817992

open Polynomial

namespace Complex

theorem isIntegral_int_I : IsIntegral ℤ I := by
  refine ⟨X ^ 2 + C 1, monic_X_pow_add_C _ two_ne_zero, ?_⟩
  rw [eval₂_add, eval₂_X_pow, eval₂_C, I_sq, eq_intCast, Int.cast_one, neg_add_cancel]

theorem isIntegral_rat_I : IsIntegral ℚ I :=
  isIntegral_int_I.tower_top

end Complex
