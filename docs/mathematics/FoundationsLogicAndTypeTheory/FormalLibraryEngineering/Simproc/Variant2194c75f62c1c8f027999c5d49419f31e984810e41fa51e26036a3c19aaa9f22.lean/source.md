# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simproc.Variant2194c75f62c1c8f027999c5d49419f31e984810e41fa51e26036a3c19aaa9f22

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `835bc5bdba42c6903aa89826ae5bd31a773ba543` · SHA-256 `0ba752353e336ff7f7f4261be344c3159e41a2a1b71cb12131dd22578904c358`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabSimprocPattern.Varianta7ff8ab59c5fcdc7e54b2ab2d28ab76ad4f19305594beae09f04f1f4012141ec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a7ff8ab59c5fcdc7e54b2ab2d28ab76ad4f19305594beae09f04f1f4012141ec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabSimprocPattern.Varianta7ff8ab59c5fcdc7e54b2ab2d28ab76ad4f19305594beae09f04f1f4012141ec","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a7ff8ab59c5fcdc7e54b2ab2d28ab76ad4f19305594beae09f04f1f4012141ec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Simproc.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Simproc
public import Lean.Meta.Tactic.Simp.Simproc
public import Lean.Elab.Command


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabSimprocPattern.Varianta7ff8ab59c5fcdc7e54b2ab2d28ab76ad4f19305594beae09f04f1f4012141ec

public section

namespace Lean.Elab

open Lean Meta Simp

def elabSimprocPattern (stx : Syntax) : MetaM Expr := do
  let go : TermElabM Expr := do
    let pattern ← Term.elabTerm stx none
    Term.synthesizeSyntheticMVars
    return pattern
  go.run'

def elabSimprocKeys (stx : Syntax) : MetaM (Array Meta.SimpTheoremKey) := do
  let pattern ← elabSimprocPattern stx
  withSimpGlobalConfig <| DiscrTree.mkPath pattern

def checkSimprocType (declName : Name) : CoreM Bool := do
  let decl ← getConstInfo declName
  match decl.type with
  | .const ``Simproc _ => pure false
  | .const ``DSimproc _ => pure true
  | _ => throwError "Unexpected type for simproc pattern: Expected `{.ofConstName ``Simproc}` or \
          `{.ofConstName ``DSimproc}`, but `{declName}` has type{indentExpr decl.type}"

namespace Command

@[builtin_command_elab Lean.Parser.simprocPattern] def elabSimprocPattern : CommandElab := fun stx => do
  let `(simproc_pattern% $pattern => $declName) := stx | throwUnsupportedSyntax
  liftTermElabM do
    let declName ← realizeGlobalConstNoOverload declName
    discard <| checkSimprocType declName
    let keys ← elabSimprocKeys pattern
    registerSimproc declName keys

@[builtin_command_elab Lean.Parser.simprocPatternBuiltin] def elabSimprocPatternBuiltin : CommandElab := fun stx => do
  let `(builtin_simproc_pattern% $pattern => $declName) := stx | throwUnsupportedSyntax
  liftTermElabM do
    let declName ← realizeGlobalConstNoOverload declName
    let dsimp ← checkSimprocType declName
    let keys ← elabSimprocKeys pattern
    let registerProcName := if dsimp then ``registerBuiltinDSimproc else ``registerBuiltinSimproc
    let val := mkAppN (mkConst registerProcName) #[toExpr declName, toExpr keys, mkConst declName]
    let initDeclName ← mkFreshUserName (declName ++ `declare)
    declareBuiltin initDeclName val

end Command

end Lean.Elab
```
