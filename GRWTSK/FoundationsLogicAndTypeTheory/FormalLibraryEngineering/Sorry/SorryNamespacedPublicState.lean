-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variantb1f06b9981c52f163579a44c16d411423572c6bd674eacd9fe13b73cb641b8b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b1f06b9981c52f163579a44c16d411423572c6bd674eacd9fe13b73cb641b8b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.State.Variantb1f06b9981c52f163579a44c16d411423572c6bd674eacd9fe13b73cb641b8b4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b1f06b9981c52f163579a44c16d411423572c6bd674eacd9fe13b73cb641b8b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/IR/Sorry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.IR.CompilerM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variantb1f06b9981c52f163579a44c16d411423572c6bd674eacd9fe13b73cb641b8b4

public section

namespace Lean.IR
namespace Sorry

structure State where
  localSorryMap : NameMap Name := {}
  modified : Bool := false

abbrev M := StateT State CompilerM

def visitExpr : Expr → ExceptT Name M Unit
  | Expr.fap f _  => getSorryDepFor? f
  | Expr.pap f _  => getSorryDepFor? f
  | _             => return ()
where
  getSorryDepFor? (f : Name) : ExceptT Name M Unit := do
    let found (g : Name) :=
      if g == ``sorryAx then
        throwThe Name f
      else
        throwThe Name g
    if f == ``sorryAx then
      throwThe Name f
    else if let some g := (← get).localSorryMap.find? f then
      found g
    else match (← findDecl f) with
      | some (.fdecl (info := { sorryDep? := some g, .. }) ..) => found g
      | _ => return ()

partial def visitFnBody (b : FnBody) : ExceptT Name M Unit := do
  match b with
  | .vdecl _ _ v b   => visitExpr v; visitFnBody b
  | .jdecl _ _ v b   => visitFnBody v; visitFnBody b
  | .case _ _ _ alts => alts.forM fun alt => visitFnBody alt.body
  | _ =>
    unless b.isTerminal do
      visitFnBody b.body

def visitDecl (d : Decl) : M Unit := do
  match d with
  | .fdecl (f := f) (body := b) .. =>
    match (← get).localSorryMap.find? f with
    | some _ => return ()
    | none =>
      match (← visitFnBody b |>.run) with
      | .ok _    => return ()
      | .error g =>
        modify fun s => {
          localSorryMap := s.localSorryMap.insert f g
          modified      := true
        }
  | _ => return ()

partial def collect (decls : Array Decl) : M Unit := do
  modify fun s => { s with modified := false }
  decls.forM visitDecl
  if (← get).modified then
    collect decls

end Sorry

def updateSorryDep (decls : Array Decl) : CompilerM (Array Decl) := do
  let (_, s) ← Sorry.collect decls |>.run {}
  return decls.map fun decl =>
    match decl with
    | Decl.fdecl f xs t b _    =>
      match s.localSorryMap.find? f with
      | some g => Decl.fdecl f xs t b { sorryDep? := some g }
      | _ => decl
    | _ => decl

end Lean.IR
