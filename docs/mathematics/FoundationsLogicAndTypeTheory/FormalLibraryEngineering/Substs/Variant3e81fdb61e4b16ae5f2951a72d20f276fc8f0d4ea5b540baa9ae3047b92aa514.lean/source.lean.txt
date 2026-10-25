-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant66403f5dabe8fb36b2bc6f37a421b049939fa910381cf9abbd3d099456cab2c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"66403f5dabe8fb36b2bc6f37a421b049939fa910381cf9abbd3d099456cab2c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SourceUnit.Variant66403f5dabe8fb36b2bc6f37a421b049939fa910381cf9abbd3d099456cab2c6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"66403f5dabe8fb36b2bc6f37a421b049939fa910381cf9abbd3d099456cab2c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Substs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","scope_end_name_mismatch","scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Evan Lohn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Evan Lohn, Mario Carneiro
-/
import Mathlib.Init

/-!
# The `substs` macro

The `substs` macro applies the `subst` tactic to a list of hypothesis, in left to right order.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant66403f5dabe8fb36b2bc6f37a421b049939fa910381cf9abbd3d099456cab2c6

namespace Mathlib.Tactic.Substs


/--
Applies the `subst` tactic to all given hypotheses from left to right.
-/
syntax (name := substs) "substs" (colGt ppSpace ident)* : tactic

macro_rules
| `(tactic| substs $xs:ident*) => `(tactic| ($[subst $xs]*))

end Substs

end Mathlib.Tactic
