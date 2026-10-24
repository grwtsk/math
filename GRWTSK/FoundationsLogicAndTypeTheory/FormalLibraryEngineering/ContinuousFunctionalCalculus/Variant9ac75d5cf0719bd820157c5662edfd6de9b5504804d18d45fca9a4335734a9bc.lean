-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variantf29c24c094fac212a5aaceffdf864f583ccf07163ecc38f49e80a4811d90dcd4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f29c24c094fac212a5aaceffdf864f583ccf07163ecc38f49e80a4811d90dcd4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Core.Variantf29c24c094fac212a5aaceffdf864f583ccf07163ecc38f49e80a4811d90dcd4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f29c24c094fac212a5aaceffdf864f583ccf07163ecc38f49e80a4811d90dcd4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/ContinuousFunctionalCalculus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/

import Mathlib.Tactic.Core
import Mathlib.Tactic.FunProp
import Aesop

/-!

# Tactics for the continuous functional calculus

At the moment, these tactics are just wrappers, but potentially they could be more sophisticated.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variantf29c24c094fac212a5aaceffdf864f583ccf07163ecc38f49e80a4811d90dcd4

declare_aesop_rule_sets [CStarAlgebra]

/-- A tactic used to automatically discharge goals relating to the continuous functional calculus,
specifically whether the element satisfies the predicate. -/
syntax (name := cfcTac) "cfc_tac" : tactic
macro_rules
  | `(tactic| cfc_tac) => `(tactic|
         try (first |
              assumption |
              infer_instance |
              aesop (rule_sets := [$(Lean.mkIdent `CStarAlgebra):ident])))

-- we may want to try using `fun_prop` directly in the future.
/-- A tactic used to automatically discharge goals relating to the continuous functional calculus,
specifically concerning continuity of the functions involved. -/
syntax (name := cfcContTac) "cfc_cont_tac" : tactic
macro_rules
  | `(tactic| cfc_cont_tac) =>
    `(tactic| try (first
      | fun_prop (disch := aesop (config := {warnOnNonterminal := false})
          (rule_sets := [$(Lean.mkIdent `CStarAlgebra):ident]))
      | assumption))

/-- A tactic used to automatically discharge goals relating to the non-unital continuous functional
calculus, specifically concerning whether `f 0 = 0`. -/
syntax (name := cfcZeroTac) "cfc_zero_tac" : tactic
macro_rules
  | `(tactic| cfc_zero_tac) =>
      `(tactic| try
          (first | aesop (rule_sets := [$(Lean.mkIdent `CStarAlgebra):ident]) | assumption))
