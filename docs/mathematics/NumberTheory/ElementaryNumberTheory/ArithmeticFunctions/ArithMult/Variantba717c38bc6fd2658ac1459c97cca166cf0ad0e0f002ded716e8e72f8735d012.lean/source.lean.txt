-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Tactic.Variant6520237c47e4641a3d9be55a39e3fb8a9c1c1e5ffed40f9a5bdd8691d5a8004b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6520237c47e4641a3d9be55a39e3fb8a9c1c1e5ffed40f9a5bdd8691d5a8004b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.Tactic.Variant6520237c47e4641a3d9be55a39e3fb8a9c1c1e5ffed40f9a5bdd8691d5a8004b","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"6520237c47e4641a3d9be55a39e3fb8a9c1c1e5ffed40f9a5bdd8691d5a8004b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/ArithMult.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Arend Mellendijk. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arend Mellendijk
-/

import Mathlib.Tactic.Basic
import Mathlib.Tactic.ArithMult.Init

/-!
# Multiplicativity

We define the arith_mult tactic using aesop

-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Tactic.Variant6520237c47e4641a3d9be55a39e3fb8a9c1c1e5ffed40f9a5bdd8691d5a8004b

namespace ArithmeticFunction

/--
The `arith_mult` attribute used to tag `IsMultiplicative` statements for the
`arith_mult` tactic. -/
macro "arith_mult" : attr =>
  `(attr|aesop safe apply (rule_sets := [$(Lean.mkIdent `IsMultiplicative):ident]))

/--
`arith_mult` solves goals of the form `IsMultiplicative f` for `f : ArithmeticFunction R`
by applying lemmas tagged with the user attribute `arith_mult`. -/
macro (name := arith_mult) "arith_mult" c:Aesop.tactic_clause* : tactic =>
`(tactic|
  { aesop $c* (config :=
    { destructProductsTransparency := .reducible,
      applyHypsTransparency := .default,
      introsTransparency? := some .reducible,
      enableSimp := false } )
  (rule_sets := [$(Lean.mkIdent `IsMultiplicative):ident])})

/--
`arith_mult` solves goals of the form `IsMultiplicative f` for `f : ArithmeticFunction R`
by applying lemmas tagged with the user attribute `arith_mult`, and prints out the generated
proof term. -/
macro (name := arith_mult?) "arith_mult?" c:Aesop.tactic_clause* : tactic =>
`(tactic|
  { show_term { arith_mult $c* } })

end ArithmeticFunction
