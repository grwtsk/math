-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabRules.Variantdb6e71707634b23a841107d46b02dbd27aedd0b45b494e5256f7fecacc575b61","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"db6e71707634b23a841107d46b02dbd27aedd0b45b494e5256f7fecacc575b61","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ElabRules.Variantdb6e71707634b23a841107d46b02dbd27aedd0b45b494e5256f7fecacc575b61","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"db6e71707634b23a841107d46b02dbd27aedd0b45b494e5256f7fecacc575b61","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Tactic/HaveI.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
import Lean.Elab.ElabRules

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabRules.Variantdb6e71707634b23a841107d46b02dbd27aedd0b45b494e5256f7fecacc575b61

open Lean Elab Parser Term Meta Macro

/-!
Defines variants of `have` and `let` syntax which do not produce `let_fun` or `let` bindings,
but instead inline the value instead.

This is useful to declare local instances and proofs in theorem statements
and subgoals, where the extra binding is inconvenient.
-/

namespace Std.Tactic

/-- `haveI` behaves like `have`, but inlines the value instead of producing a `let_fun` term. -/
@[term_parser] def «haveI» := leading_parser
  withPosition ("haveI " >> haveDecl) >> optSemicolon termParser
/-- `letI` behaves like `let`, but inlines the value instead of producing a `let_fun` term. -/
@[term_parser] def «letI» := leading_parser
  withPosition ("letI " >> haveDecl) >> optSemicolon termParser

macro_rules
  | `(haveI $hy:hygieneInfo $bs* $[: $ty]? := $val; $body) =>
    `(haveI $(HygieneInfo.mkIdent hy `this (canonical := true)) $bs* $[: $ty]? := $val; $body)
  | `(haveI _ $bs* := $val; $body) => `(haveI x $bs* : _ := $val; $body)
  | `(haveI _ $bs* : $ty := $val; $body) => `(haveI x $bs* : $ty := $val; $body)
  | `(haveI $x:ident $bs* := $val; $body) => `(haveI $x $bs* : _ := $val; $body)
  | `(haveI $_:ident $_* : $_ := $_; $_) => throwUnsupported -- handled by elab

macro_rules
  | `(letI $hy:hygieneInfo $bs* $[: $ty]? := $val; $body) =>
    `(letI $(HygieneInfo.mkIdent hy `this (canonical := true)) $bs* $[: $ty]? := $val; $body)
  | `(letI _ $bs* := $val; $body) => `(letI x $bs* : _ := $val; $body)
  | `(letI _ $bs* : $ty := $val; $body) => `(letI x $bs* : $ty := $val; $body)
  | `(letI $x:ident $bs* := $val; $body) => `(letI $x $bs* : _ := $val; $body)
  | `(letI $_:ident $_* : $_ := $_; $_) => throwUnsupported -- handled by elab

elab_rules <= expectedType
  | `(haveI $x:ident $bs* : $ty := $val; $body) => do
    let (ty, val) ← elabBinders bs fun bs => do
      let ty ← elabType ty
      let val ← elabTermEnsuringType val ty
      pure (← mkForallFVars bs ty, ← mkLambdaFVars bs val)
    withLocalDeclD x.getId ty fun x => do
      return (← (← elabTerm body expectedType).abstractM #[x]).instantiate #[val]

elab_rules <= expectedType
  | `(letI $x:ident $bs* : $ty := $val; $body) => do
    let (ty, val) ← elabBinders bs fun bs => do
      let ty ← elabType ty
      let val ← elabTermEnsuringType val ty
      pure (← mkForallFVars bs ty, ← mkLambdaFVars bs val)
    withLetDecl x.getId ty val fun x => do
      return (← (← elabTerm body expectedType).abstractM #[x]).instantiate #[val]

/-- `haveI` behaves like `have`, but inlines the value instead of producing a `let_fun` term. -/
macro "haveI" d:haveDecl : tactic => `(tactic| refine_lift haveI $d:haveDecl; ?_)
/-- `letI` behaves like `let`, but inlines the value instead of producing a `let_fun` term. -/
macro "letI" d:haveDecl : tactic => `(tactic| refine_lift letI $d:haveDecl; ?_)
