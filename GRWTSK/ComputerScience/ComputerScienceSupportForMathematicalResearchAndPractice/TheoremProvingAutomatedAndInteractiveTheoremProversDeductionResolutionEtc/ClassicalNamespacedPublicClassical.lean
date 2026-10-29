-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Classical.Variant4f8349eeb64c77347235883eda610324eeb76d40acac524b0500c4fde775db5a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4f8349eeb64c77347235883eda610324eeb76d40acac524b0500c4fde775db5a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Classical.Variant4f8349eeb64c77347235883eda610324eeb76d40acac524b0500c4fde775db5a","mathematical_subject":"Logic.Foundations","original_sha256":"4f8349eeb64c77347235883eda610324eeb76d40acac524b0500c4fde775db5a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Classical.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Kim Morrison
-/
module

prelude
public import Lean.Elab.Tactic.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Classical.Variant4f8349eeb64c77347235883eda610324eeb76d40acac524b0500c4fde775db5a

public section

/-! # `classical` tactic -/

namespace Lean.Elab.Tactic
open Lean Meta Elab.Tactic

/--
`classical t` runs `t` in a scope where `Classical.propDecidable` is a low priority
local instance.
-/
def classical [Monad m] [MonadEnv m] [MonadFinally m] [MonadLiftT MetaM m] (t : m α) :
    m α := do
  modifyEnv Meta.instanceExtension.pushScope
  Meta.addInstance ``Classical.propDecidable .local 10
  try
    t
  finally
    modifyEnv Meta.instanceExtension.popScope

@[builtin_tactic Lean.Parser.Tactic.classical, builtin_incremental]
def evalClassical : Tactic := fun stx =>
  classical <| withSaveInfoContext <|
    Term.withNarrowedArgTacticReuse (argIdx := 1) Elab.Tactic.evalTactic stx

end Lean.Elab.Tactic
