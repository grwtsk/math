-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DocString.Variant259b86c0a4d9bcfce30c4ba8179fca48b07b63d3f610cd49a9f2bf7219047665","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"259b86c0a4d9bcfce30c4ba8179fca48b07b63d3f610cd49a9f2bf7219047665","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DocString.Variant259b86c0a4d9bcfce30c4ba8179fca48b07b63d3f610cd49a9f2bf7219047665","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"259b86c0a4d9bcfce30c4ba8179fca48b07b63d3f610cd49a9f2bf7219047665","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Tactic/NoMatch.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public meta import Lean.DocString
public meta import Lean.Elab.Tactic.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DocString.Variant259b86c0a4d9bcfce30c4ba8179fca48b07b63d3f610cd49a9f2bf7219047665

public meta section

/-!
Deprecation warnings for `match ⋯ with.`, `fun.`, `λ.`, and `intro.`.
-/
namespace Batteries.Tactic
open Lean Elab Term Tactic Parser.Term

/--
The syntax `match ⋯ with.` has been deprecated in favor of `nomatch ⋯`.

Both now support multiple discriminants.
-/
elab (name := matchWithDot) (priority := low)
    tk:"match " t:term,* " with" "." : term <= expectedType? => do
  logWarningAt tk (← findDocString? (← getEnv) ``matchWithDot).get!
  elabTerm (← `(nomatch%$tk $[$t],*)) expectedType?

/-- The syntax `fun.` has been deprecated in favor of `nofun`. -/
elab (name := funDot) (priority := low) tk:"fun" "." : term <= expectedType? => do
  logWarningAt tk (← findDocString? (← getEnv) ``funDot).get!
  elabTerm (← `(nofun)) expectedType?

/-- The syntax `λ.` has been deprecated in favor of `nofun`. -/
elab (name := lambdaDot) (priority := low) tk:"λ" "." : term <= expectedType? => do
  logWarningAt tk (← findDocString? (← getEnv) ``lambdaDot).get!
  elabTerm (← `(nofun)) expectedType?

@[inherit_doc matchWithDot]
macro (priority := low) "match " discrs:term,* " with" "." : tactic =>
  `(tactic| exact match $discrs,* with.)

/--
The syntax `intro.` is deprecated in favor of `nofun`.
-/
elab (name := introDot) tk:"intro" "." : tactic => do
  logWarningAt tk (← findDocString? (← getEnv) ``introDot).get!
  evalTactic (← `(tactic| nofun))
