-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Context.Variant6a09ed78bbb8181dc89a99a22e39c03c77ffe81d9395b04d3a0a8cf78ff8acff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a09ed78bbb8181dc89a99a22e39c03c77ffe81d9395b04d3a0a8cf78ff8acff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Context.Variant6a09ed78bbb8181dc89a99a22e39c03c77ffe81d9395b04d3a0a8cf78ff8acff","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6a09ed78bbb8181dc89a99a22e39c03c77ffe81d9395b04d3a0a8cf78ff8acff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/Closure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Util.ForEachExprWhere
public import Lean.Compiler.LCNF.CompilerM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Context.Variant6a09ed78bbb8181dc89a99a22e39c03c77ffe81d9395b04d3a0a8cf78ff8acff

public section

namespace Lean.Compiler.LCNF
namespace Closure

/-!
# Dependency collector for code specialization and lambda lifting.

During code specialization and lambda lifting, we have code `C` containing free variables. These free variables
are in a scope, and we say we are computing `C`'s closure.
This module is used to compute the closure.
-/

structure Context where
  /--
  `inScope x` returns `true` if `x` is a variable that is not in `C`.
  -/
  inScope : FVarId → Bool
  /--
  If `abstract x` returns `true`, we convert `x` into a closure parameter. Otherwise,
  we collect the dependencies in the `let`/`fun`-declaration too, and include the declaration in the closure.
  Remark: the lambda lifting pass abstracts all `let`/`fun`-declarations.
  -/
  abstract : FVarId → Bool

/--
State for the `ClosureM` monad.
-/
structure State where
  /--
  Set of already visited free variables.
  -/
  visited : FVarIdHashSet := {}
  /--
  Free variables that must become new parameters of the code being specialized.
  -/
  params  : Array (Param .pure) := #[]
  /--
  Let-declarations and local function declarations that are going to be "copied" to the code
  being processed. For example, when this module is used in the code specializer, the let-declarations
  often contain the instance values. In the current specialization heuristic all let-declarations are ground values
  (i.e., they do not contain free-variables).
  However, local function declarations may contain free variables.

  All customers of this module try to avoid work duplication. If a let-declaration is a ground value,
  it most likely will be computed during compilation time, and work duplication is not an issue.
  -/
  decls   : Array (CodeDecl .pure) := #[]

/--
Monad for implementing the dependency collector.
-/
abbrev ClosureM := ReaderT Context $ StateRefT State CompilerM

/--
Mark a free variable as already visited.
We perform a topological sort over the dependencies.
-/
def markVisited (fvarId : FVarId) : ClosureM Unit :=
  modify fun s => { s with visited := s.visited.insert fvarId }

mutual
 /--
  Collect dependencies in parameters. We need this because parameters may
  contain other type parameters.
  -/
  partial def collectParams (params : Array (Param .pure)) : ClosureM Unit :=
    params.forM (collectType ·.type)

  partial def collectArg (arg : Arg .pure) : ClosureM Unit :=
    match arg with
    | .erased => return ()
    | .type e => collectType e
    | .fvar fvarId => collectFVar fvarId

  partial def collectLetValue (e : LetValue .pure) : ClosureM Unit := do
    match e with
    | .erased | .lit .. => return ()
    | .proj _ _ fvarId => collectFVar fvarId
    | .const _ _ args => args.forM collectArg
    | .fvar fvarId args => collectFVar fvarId; args.forM collectArg

  /--
  Collect dependencies in the given code. We need this function to be able
  to collect dependencies in a local function declaration.
  -/
  partial def collectCode (c : Code .pure) : ClosureM Unit := do
    match c with
    | .let decl k =>
      collectType decl.type
      collectLetValue decl.value
      collectCode k
    | .fun decl k | .jp decl k => collectFunDecl decl; collectCode k
    | .cases c =>
      collectType c.resultType
      collectFVar c.discr
      c.alts.forM fun alt => do
        match alt with
        | .default k => collectCode k
        | .alt _ ps k => collectParams ps; collectCode k
    | .jmp _ args => args.forM collectArg
    | .unreach type => collectType type
    | .return fvarId => collectFVar fvarId

  /-- Collect dependencies of a local function declaration. -/
  partial def collectFunDecl (decl : FunDecl .pure) : ClosureM Unit := do
    collectType decl.type
    collectParams decl.params
    collectCode decl.value

  /--
  Process the given free variable.
  If it has not already been visited and is in scope, we collect its dependencies.
  -/
  partial def collectFVar (fvarId : FVarId) : ClosureM Unit := do
    unless (← get).visited.contains fvarId do
      markVisited fvarId
      let ctx ← read
      if ctx.inScope fvarId then
        /- We only collect the variables in the scope of the function application being specialized. -/
        if let some funDecl ← findFunDecl? fvarId then
          if ctx.abstract funDecl.fvarId then
            modify fun s => { s with params := s.params.push <| funDecl.toParam false }
          else
            collectFunDecl funDecl
            modify fun s => { s with decls := s.decls.push <| .fun funDecl }
        else if let some param ← findParam? fvarId then
          collectType param.type
          modify fun s => { s with params := s.params.push param }
        else if let some letDecl ← findLetDecl? fvarId then
          collectType letDecl.type
          if ctx.abstract letDecl.fvarId then
            modify fun s => { s with params := s.params.push <| { letDecl with borrow := false } }
          else
            collectLetValue letDecl.value
            modify fun s => { s with decls := s.decls.push <| .let letDecl }
        else
          unreachable!

  /-- Collect dependencies of the given expression. -/
  partial def collectType (type : Expr) : ClosureM Unit := do
    if type.hasFVar then
      type.forEachWhere Expr.isFVar fun e => collectFVar e.fvarId!

end

def run (x : ClosureM α) (inScope : FVarId → Bool) (abstract : FVarId → Bool := fun _ => true) :
    CompilerM (α × Array (Param .pure) × Array (CodeDecl .pure)) := do
  let (a, s) ← x { inScope, abstract } |>.run {}
  -- If we've abstracted an fvar into a param, exclude its definition. Note that this still allows
  -- for other decls the removed decl depends upon to be included, but they will be removed later
  -- for having no users.
  let mut paramFVars : FVarIdSet := {}
  for param in s.params do
    paramFVars := paramFVars.insert param.fvarId
  let filteredDecls := s.decls.filter fun decl => !(paramFVars.contains decl.fvarId)
  return (a, s.params, filteredDecls)

end Closure

end Lean.Compiler.LCNF
