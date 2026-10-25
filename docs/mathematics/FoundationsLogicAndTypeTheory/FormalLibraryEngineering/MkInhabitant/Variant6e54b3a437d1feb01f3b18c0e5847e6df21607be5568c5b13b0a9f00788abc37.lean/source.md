# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkInhabitant.Variant6e54b3a437d1feb01f3b18c0e5847e6df21607be5568c5b13b0a9f00788abc37

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a994c53e9c587c591551771eb3cc7ad3ce79e30d` · SHA-256 `d998f9ffab738daa2b7b31379fbb72b5fd1d4b05d0365d523b21eb8dcc96864c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithInhabitedInstances.Variantd3fb8e182756708cc3547c57813cdc9d274013f7dcbecd73a7b1a99ebc873b98","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d3fb8e182756708cc3547c57813cdc9d274013f7dcbecd73a7b1a99ebc873b98","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.WithInhabitedInstances.Variantd3fb8e182756708cc3547c57813cdc9d274013f7dcbecd73a7b1a99ebc873b98","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d3fb8e182756708cc3547c57813cdc9d274013f7dcbecd73a7b1a99ebc873b98","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/PreDefinition/MkInhabitant.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.AppBuilder
public import Lean.PrettyPrinter
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithInhabitedInstances.Variantd3fb8e182756708cc3547c57813cdc9d274013f7dcbecd73a7b1a99ebc873b98

public section
namespace Lean.Elab
open Meta

private def withInhabitedInstances (xs : Array Expr) (k : Array Expr → MetaM α) : MetaM α := do
  let rec go (i : Nat) (insts : Array Expr) : MetaM α := do
    if h : i < xs.size then
      let x := xs[i]
      let xTy ← inferType x
      let u ← getLevel xTy
      let instTy := mkApp (.const ``Inhabited [u]) xTy
      let instVal := mkApp2 (.const ``Inhabited.mk [u]) xTy x
      withLetDecl `inst instTy instVal fun inst =>
        go (i + 1) (insts.push inst)
    else
      k insts
  go 0 #[]

private def mkInhabitant? (type : Expr) (useOfNonempty : Bool) : MetaM (Option Expr) := do
  try
    if useOfNonempty then
      return some (← mkOfNonempty type)
    else
      return some (← mkDefault type)
  catch _ =>
    return none

/--
Find an inhabitant while doing delta unfolding.
-/
private partial def mkInhabitantForAux? (xs insts : Array Expr) (type : Expr) (useOfNonempty : Bool) : MetaM (Option Expr) := withIncRecDepth do
  if let some val ← mkInhabitant? type useOfNonempty then
    mkLambdaFVars xs (← mkLetFVars (usedLetOnly := true) insts val)
  else
    let type ← whnfCore type
    if type.isForall then
      forallTelescope type fun xs' type' =>
        withInhabitedInstances xs' fun insts' =>
          mkInhabitantForAux? (xs ++ xs') (insts ++ insts') type' useOfNonempty
    else if let some type' ← unfoldDefinition? type then
      mkInhabitantForAux? xs insts type' useOfNonempty
    else
      return none

/- TODO: add a global IO.Ref to let users customize/extend this procedure -/
def mkInhabitantFor (failedToMessage : MessageData) (xs : Array Expr) (type : Expr) : MetaM Expr :=
  withInhabitedInstances xs fun insts => do
    if let some val ← mkInhabitantForAux? xs insts type false <||> mkInhabitantForAux? xs insts type true then
      return val
    else
      throwError "\
        {failedToMessage}, could not prove that the type\
        {indentExpr (← mkForallFVars xs type)}\n\
        is nonempty.\n\
        \n\
        This process uses multiple strategies:\n\
        - It looks for a parameter that matches the return type.\n\
        - It tries synthesizing '{.ofConstName ``Inhabited}' and '{.ofConstName ``Nonempty}' \
          instances for the return type, while making every parameter into a local '{.ofConstName ``Inhabited}' instance.\n\
        - It tries unfolding the return type.\n\
        \n\
        If the return type is defined using the 'structure' or 'inductive' command, \
        you can try adding a 'deriving Nonempty' clause to it."

end Lean.Elab
```
