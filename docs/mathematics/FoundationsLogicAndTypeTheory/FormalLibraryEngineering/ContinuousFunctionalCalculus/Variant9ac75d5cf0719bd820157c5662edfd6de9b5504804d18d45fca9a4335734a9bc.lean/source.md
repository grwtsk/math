# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ContinuousFunctionalCalculus.Variant9ac75d5cf0719bd820157c5662edfd6de9b5504804d18d45fca9a4335734a9bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5d2eb6a8e2ceeac69408c39dd3bcac7d7642b7e` · SHA-256 `b797b57a7889a57e56f807aef6990ab03fbd0ed0c06dc048838d241f85e0c16c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
