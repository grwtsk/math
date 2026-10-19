-- corpus-organization-transform:v1
-- Mathematical subject: Foundations.NumbersAndBasicStructures
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.CsizeEq.Variantd1ebc7091d563ded1ed85f81c454520ae38130b0baeef6acf81b55d88889beb5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d1ebc7091d563ded1ed85f81c454520ae38130b0baeef6acf81b55d88889beb5","provenance":{"attribution":"Organization assisted by OpenAI Codex under R.A. Jacob Martone direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.CsizeEq.Variantd1ebc7091d563ded1ed85f81c454520ae38130b0baeef6acf81b55d88889beb5","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"d1ebc7091d563ded1ed85f81c454520ae38130b0baeef6acf81b55d88889beb5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/think/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - Robert\u2019s MacBook Pro/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Data/Char.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Std.Tactic.RCases


namespace FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.CsizeEq.Variantd1ebc7091d563ded1ed85f81c454520ae38130b0baeef6acf81b55d88889beb5

namespace String

private theorem csize_eq (c) :
    csize c = 1 ∨ csize c = 2 ∨ csize c = 3 ∨
    csize c = 4 := by
  simp only [csize, Char.utf8Size]
  repeat (first | split | (solve | simp (config := {decide := true})))

theorem csize_pos (c) : 0 < csize c := by
  rcases csize_eq c with _|_|_|_ <;> simp_all (config := {decide := true})

theorem csize_le_4 (c) : csize c ≤ 4 := by
  rcases csize_eq c with _|_|_|_ <;> simp_all (config := {decide := true})

end String
