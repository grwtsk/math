-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant300ea66acbbeafa6901e0bbbb187e7fad06728e23d7f4fdbe46dd8277d21c241","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"300ea66acbbeafa6901e0bbbb187e7fad06728e23d7f4fdbe46dd8277d21c241","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.State.Variant300ea66acbbeafa6901e0bbbb187e7fad06728e23d7f4fdbe46dd8277d21c241","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"300ea66acbbeafa6901e0bbbb187e7fad06728e23d7f4fdbe46dd8277d21c241","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/IR/EmitUtil.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.InitAttr
public import Lean.Compiler.IR.CompilerM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant300ea66acbbeafa6901e0bbbb187e7fad06728e23d7f4fdbe46dd8277d21c241

public section

/-! # Helper functions for backend code generators -/

namespace Lean.IR
/-- Return true iff `b` is of the form `let x := g ys; ret x` -/
def isTailCallTo (g : Name) (b : FnBody) : Bool :=
  match b with
  | FnBody.vdecl x _ (Expr.fap f _) (FnBody.ret (.var y)) => x == y && f == g
  | _  => false

def usesModuleFrom (env : Environment) (modulePrefix : Name) : Bool :=
  env.header.modules.any fun mod => mod.irPhases != .comptime && modulePrefix.isPrefixOf mod.module

namespace CollectUsedDecls

structure State where
  set : NameSet := {}
  order : Array Name := #[]

abbrev M := ReaderT Environment (StateM State)

@[inline] def collect (f : FunId) : M Unit :=
  modify fun { set, order } =>
    let (contained, set) := set.containsThenInsert f
    if !contained then
      { set, order := order.push f }
    else
      { set, order }

partial def collectFnBody : FnBody → M Unit
  | .vdecl _ _ v b   =>
    match v with
    | .fap f _ => collect f *> collectFnBody b
    | .pap f _ => collect f *> collectFnBody b
    | _        => collectFnBody b
  | .jdecl _ _ v b   => collectFnBody v *> collectFnBody b
  | .case _ _ _ alts => alts.forM fun alt => collectFnBody alt.body
  | e => do unless e.isTerminal do collectFnBody e.body

def collectInitDecl (fn : Name) : M Unit := do
  let env ← read
  match getInitFnNameFor? env fn with
  | some initFn => collect initFn
  | _           => pure ()

def collectDecl : Decl → M Unit
  | .fdecl (f := f) (body := b) .. => collectInitDecl f *> CollectUsedDecls.collectFnBody b
  | .extern (f := f) .. => collectInitDecl f

def collectDeclLoop (decls : List Decl) : M Unit := do
  decls.forM fun decl => do
    collectDecl decl
    collect decl.name

end CollectUsedDecls

def collectUsedDecls (env : Environment) (decls : List Decl) : Array Name :=
  (CollectUsedDecls.collectDeclLoop decls env).run {} |>.snd.order

abbrev VarTypeMap  := Std.HashMap VarId IRType
abbrev JPParamsMap := Std.HashMap JoinPointId (Array Param)

namespace CollectMaps
abbrev Collector := (VarTypeMap × JPParamsMap) → (VarTypeMap × JPParamsMap)
@[inline] def collectVar (x : VarId) (t : IRType) : Collector
  | (vs, js) => (vs.insert x t, js)
def collectParams (ps : Array Param) : Collector :=
  fun s => ps.foldl (fun s p => collectVar p.x p.ty s) s
@[inline] def collectJP (j : JoinPointId) (xs : Array Param) : Collector
  | (vs, js) => (vs, js.insert j xs)

/-- `collectFnBody` assumes the variables in -/
partial def collectFnBody : FnBody → Collector
  | .vdecl x t _ b    => collectVar x t ∘ collectFnBody b
  | .jdecl j xs v b   => collectJP j xs ∘ collectParams xs ∘ collectFnBody v ∘ collectFnBody b
  | .case _ _ _ alts  => fun s => alts.foldl (fun s alt => collectFnBody alt.body s) s
  | e                 => if e.isTerminal then id else collectFnBody e.body

def collectDecl : Decl → Collector
  | .fdecl (xs := xs) (body := b) .. => collectParams xs ∘ collectFnBody b
  | _ => id

end CollectMaps

/-- Return a pair `(v, j)`, where `v` is a mapping from variable/parameter to type,
   and `j` is a mapping from join point to parameters.
   This function assumes `d` has normalized indexes (see `normids.lean`). -/
def mkVarJPMaps (d : Decl) : VarTypeMap × JPParamsMap :=
  CollectMaps.collectDecl d ({}, {})

end IR
end Lean
