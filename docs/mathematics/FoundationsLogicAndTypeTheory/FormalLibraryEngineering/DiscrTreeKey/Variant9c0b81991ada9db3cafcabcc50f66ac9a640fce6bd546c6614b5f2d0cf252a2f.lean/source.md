# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DiscrTreeKey.Variant9c0b81991ada9db3cafcabcc50f66ac9a640fce6bd546c6614b5f2d0cf252a2f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce24c2684b0a6fd7c14e1666452bbcc0395ec2a7` · SHA-256 `2154062b43be74beac5fc12c765e075239f3cf27fa1547eeb5344a003945e06e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkKey.Variantdbd9c6dfbf6daeb3e6159514df1e68f073cd0baedc7de8cd7feded46c97707f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dbd9c6dfbf6daeb3e6159514df1e68f073cd0baedc7de8cd7feded46c97707f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkKey.Variantdbd9c6dfbf6daeb3e6159514df1e68f073cd0baedc7de8cd7feded46c97707f8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"dbd9c6dfbf6daeb3e6159514df1e68f073cd0baedc7de8cd7feded46c97707f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/DiscrTreeKey.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Matthew Robert Ballard. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Tomas Skrivan, Matthew Robert Ballard
-/
module

prelude
public import Lean.Elab.Command
public import Lean.Meta.Tactic.Simp.SimpTheorems


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkKey.Variantdbd9c6dfbf6daeb3e6159514df1e68f073cd0baedc7de8cd7feded46c97707f8

public section

namespace Lean.Elab.Tactic.DiscrTreeKey

open Lean.Meta DiscrTree
open Lean.Elab.Tactic
open Lean.Elab.Command

private def mkKey (e : Expr) (simp : Bool) : MetaM (Array Key) := do
  let (_, _, type) ← withReducible <| forallMetaTelescopeReducing e
  let type ← whnfR type
  if simp then
    withSimpGlobalConfig do
      if let some (_, lhs, _) := type.eq? then
        mkPath lhs
      else if let some (lhs, _) := type.iff? then
        mkPath lhs
      else if let some (_, lhs, rhs) := type.ne? then
        mkPath (← mkEq lhs rhs)
      else if let some p := type.not? then
        mkPath p
      else
        mkPath type
  else
    mkPath type

private def getType (t : TSyntax `term) : TermElabM Expr := do
  if let `($id:ident) := t then
    if let some ldecl := (← getLCtx).findFromUserName? id.getId then
      return ldecl.type
    else
      let info ← getConstInfo (← realizeGlobalConstNoOverloadWithInfo id)
      return info.type
  else
    Term.elabTerm t none

@[builtin_command_elab Lean.Parser.discrTreeKeyCmd]
def evalDiscrTreeKeyCmd : CommandElab := fun stx => do
  Command.liftTermElabM <| do
    match stx with
    | `(command| #discr_tree_key $t:term) => do
      let type ← getType t
      logInfo (← keysAsPattern <| ← mkKey type false)
    | _                        => Elab.throwUnsupportedSyntax

@[builtin_command_elab Lean.Parser.discrTreeSimpKeyCmd]
def evalDiscrTreeSimpKeyCmd : CommandElab := fun stx => do
  Command.liftTermElabM <| do
    match stx with
    | `(command| #discr_tree_simp_key $t:term) => do
      let type ← getType t
      logInfo (← keysAsPattern <| ← mkKey type true)
    | _                        => Elab.throwUnsupportedSyntax

end Lean.Elab.Tactic.DiscrTreeKey
```
