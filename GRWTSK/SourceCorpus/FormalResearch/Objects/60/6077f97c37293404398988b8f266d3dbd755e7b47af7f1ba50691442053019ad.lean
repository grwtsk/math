-- corpus-organization-transform:v1
-- Mathematical subject: Foundations.Unclassified
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"FormalResearch.Foundations.Unclassified.SourceCorpus.Xor.Variantb0ea6b33d41a14377ae0be6916acb0152c14290b54810655e5a257a2b243238a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b0ea6b33d41a14377ae0be6916acb0152c14290b54810655e5a257a2b243238a","provenance":{"attribution":"Organization assisted by OpenAI Codex under R.A. Jacob Martone direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Xor.Variantb0ea6b33d41a14377ae0be6916acb0152c14290b54810655e5a257a2b243238a","mathematical_subject":"Foundations.Unclassified","original_sha256":"b0ea6b33d41a14377ae0be6916acb0152c14290b54810655e5a257a2b243238a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/think/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - Robert\u2019s MacBook Pro/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Init/Data/Bool/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
import Mathlib.Mathport.Rename

/-!
# Boolean operations

In Lean 3 this file also contained the definitions of `cond`, `bor`, `band` and `bnot`,
the boolean functions. These are in Lean 4 core (as `cond`, `or`, `and` and `not`), but
apparently `xor` didn't make the cut.

-/


namespace FormalResearch.Foundations.Unclassified.SourceCorpus.Xor.Variantb0ea6b33d41a14377ae0be6916acb0152c14290b54810655e5a257a2b243238a

#align bor or
#align band and
#align bnot not

/-- Boolean XOR -/
@[inline]
def xor : Bool → Bool → Bool
  | true, false => true
  | false, true => true
  | _, _ => false
#align bxor xor
