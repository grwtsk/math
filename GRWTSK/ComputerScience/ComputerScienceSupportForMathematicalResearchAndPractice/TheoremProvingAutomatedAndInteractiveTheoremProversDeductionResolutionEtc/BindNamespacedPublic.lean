-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadCodeBind.Variantd3b81dcd7b8d1b62a647eaad7472c638a58d5bd7565ee5ea8bfc7772e6150ea0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d3b81dcd7b8d1b62a647eaad7472c638a58d5bd7565ee5ea8bfc7772e6150ea0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MonadCodeBind.Variantd3b81dcd7b8d1b62a647eaad7472c638a58d5bd7565ee5ea8bfc7772e6150ea0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d3b81dcd7b8d1b62a647eaad7472c638a58d5bd7565ee5ea8bfc7772e6150ea0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/Bind.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.InferType


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadCodeBind.Variantd3b81dcd7b8d1b62a647eaad7472c638a58d5bd7565ee5ea8bfc7772e6150ea0

public section

namespace Lean.Compiler.LCNF

/-- Helper class for lifting `CompilerM.codeBind` -/
class MonadCodeBind (m : Type → Type) where
  codeBind : {pu : Purity} → (c : Code pu) → (f : FVarId → m (Code pu)) → m (Code pu)

/--
Return code that is equivalent to `c >>= f`. That is, executes `c`, and then `f x`, where
`x` is a variable that contains the result of `c`'s computation.

If `c` contains a jump to a join point `jp_i` not declared in `c`, we throw an exception because
an invalid block would be generated. It would be invalid because `f` would not
be applied to `jp_i`. Note that, we could have decided to create a copy of `jp_i` where we apply `f` to it,
by we decided to not do it to avoid code duplication.
-/
abbrev Code.bind [MonadCodeBind m] (c : Code pu) (f : FVarId → m (Code pu)) : m (Code pu) :=
  MonadCodeBind.codeBind c f

partial def CompilerM.codeBind (c : Code pu) (f : FVarId → CompilerM (Code pu)) :
    CompilerM (Code pu) := do
  go c |>.run {}
where
  go (c : Code pu) : ReaderT FVarIdSet CompilerM (Code pu) := do
    match c with
    | .let decl k => return .let decl (← go k)
    | .fun decl k _ => return .fun decl (← go k)
    | .jp decl k =>
      let value ← go decl.value
      let type ← value.inferParamType decl.params
      let decl ← decl.update' type value
      withReader (fun s => s.insert decl.fvarId) do
        return .jp decl (← go k)
    | .cases c =>
      let alts ← c.alts.mapM fun
        | .alt ctorName params k _ => return .alt ctorName params (← go k)
        | .default k => return .default (← go k)
        | .ctorAlt info k _ => return .ctorAlt info (← go k)
      if alts.isEmpty then
        throwError "`Code.bind` failed, empty `cases` found"
      let resultType ← mkCasesResultType alts
      return .cases ⟨c.typeName, resultType, c.discr, alts⟩
    | .return fvarId => f fvarId
    | .jmp fvarId .. =>
      unless (← read).contains fvarId do
        throwError "`Code.bind` failed, it contains a out of scope join point"
      return c
    | .unreach type =>
      /-
      Create an auxiliary parameter `aux : type` to compute the resulting type of `f aux`.
      This code is not very efficient, we could ask caller to provide the type of `c >>= f`,
      but this is more convenient, and this case is seldom reached.
      -/
      let auxParam ← mkAuxParam (pu := pu) type
      let k ← f auxParam.fvarId
      let typeNew ← k.inferType
      eraseCode k
      eraseParam auxParam
      return .unreach typeNew
    | .oset (k := k) ..| .sset (k := k) .. | .uset (k := k) .. | .inc (k := k) .. | .dec (k := k) ..
    | .del (k := k) .. | .setTag (k := k) .. =>
      return c.updateCont! (← go k)

instance : MonadCodeBind CompilerM where
  codeBind := CompilerM.codeBind

instance [MonadCodeBind m] : MonadCodeBind (ReaderT ρ m) where
  codeBind c f ctx := c.bind fun fvarId => f fvarId ctx

instance [STWorld ω m] [MonadCodeBind m] : MonadCodeBind (StateRefT' ω σ m) where
  codeBind c f sref := c.bind fun fvarId => f fvarId sref

/--
Create new parameters for the given arrow type.
Example: if `type` is `Nat → Bool → Int`, the result is
an array containing two new parameters with types `Nat` and `Bool`.
-/
partial def mkNewParams (type : Expr) : CompilerM (Array (Param pu)) :=
  go type #[] #[]
where
  go (type : Expr) (xs : Array Expr) (ps : Array (Param pu)) : CompilerM (Array (Param pu)) := do
    match type with
    | .forallE _ d b _ =>
      let d := d.instantiateRev xs
      let p ← mkAuxParam d (isMarkedBorrowed d)
      go b (xs.push (.fvar p.fvarId)) (ps.push p)
    | _ =>
      let type := type.instantiateRev xs
      let type' := type.headBeta
      if type' != type then
        go type' #[] ps
      else
        return ps

def isEtaExpandCandidateCore (type : Expr) (params : Array (Param .pure)) : Bool :=
  let typeArity := getArrowArity type
  let valueArity := params.size
  typeArity > valueArity

abbrev FunDecl.isEtaExpandCandidate (decl : FunDecl .pure) : Bool :=
  isEtaExpandCandidateCore decl.type decl.params

def etaExpandCore (type : Expr) (params : Array (Param .pure)) (value : Code .pure) :
    CompilerM (Array (Param .pure) × Code .pure) := do
  let valueType ← instantiateForall type (params.map (mkFVar ·.fvarId))
  let psNew ← mkNewParams valueType
  let params := params ++ psNew
  let xs := psNew.map fun p => .fvar p.fvarId
  let value ← value.bind fun fvarId => do
    let auxDecl ← mkAuxLetDecl (.fvar fvarId xs)
    return .let auxDecl (.return auxDecl.fvarId)
  return (params, value)

def etaExpandCore? (type : Expr) (params : Array (Param .pure)) (value : Code .pure) : CompilerM (Option (Array (Param .pure) × Code .pure)) := do
  if isEtaExpandCandidateCore type params then
    etaExpandCore type params value
  else
    return none

def FunDecl.etaExpand (decl : FunDecl .pure) : CompilerM (FunDecl .pure) := do
  let some (params, value) ← etaExpandCore? decl.type decl.params decl.value | return decl
  decl.update decl.type params value

def Decl.etaExpand (decl : Decl .pure) : CompilerM (Decl .pure) := do
  match decl.value with
  | .code code =>
    let some (params, newCode) ← etaExpandCore? decl.type decl.params code | return decl
    return { decl with params, value := .code newCode}
  | .extern .. => return decl

end Lean.Compiler.LCNF
