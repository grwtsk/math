-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WhereFinallyView.Variantd60425c2b1decc511b16be1c2bf2c274a79d640f8be7864a39c0aebe85d5cf7c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d60425c2b1decc511b16be1c2bf2c274a79d640f8be7864a39c0aebe85d5cf7c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.WhereFinallyView.Variantd60425c2b1decc511b16be1c2bf2c274a79d640f8be7864a39c0aebe85d5cf7c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d60425c2b1decc511b16be1c2bf2c274a79d640f8be7864a39c0aebe85d5cf7c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/WhereFinally.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Lean.Parser.Term


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WhereFinallyView.Variantd60425c2b1decc511b16be1c2bf2c274a79d640f8be7864a39c0aebe85d5cf7c

public section

namespace Lean.Elab

structure WhereFinallyView where
  ref       : Syntax
  tactic    : TSyntax ``Lean.Parser.Tactic.tacticSeq
  deriving Inhabited

def WhereFinallyView.none : WhereFinallyView := { ref := .missing, tactic := ⟨.missing⟩ }

def WhereFinallyView.isNone (o : WhereFinallyView) : Bool := o.ref.isMissing && o.tactic.raw.isMissing

/-- Creates a view of the `finally` section of a `whereDecls` syntax object -/
def mkWhereFinallyView {m} [Monad m] [MonadError m] (stx : TSyntax ``Parser.Term.whereDecls) : m WhereFinallyView := do
  -- Fail gracefully upon partial parses/missing where or finally sections
  let whereFinally := stx.raw[2][0]
  if whereFinally.isMissing then
    return { ref := stx, tactic := ⟨.missing⟩ }
  if !whereFinally[2][0].isMissing then
    throwErrorAt stx "`where ... finally` does not currently support any named sub-sections `| sectionName => ...`"
  let tactic := ⟨whereFinally[1]⟩
  return { ref := whereFinally, tactic }
