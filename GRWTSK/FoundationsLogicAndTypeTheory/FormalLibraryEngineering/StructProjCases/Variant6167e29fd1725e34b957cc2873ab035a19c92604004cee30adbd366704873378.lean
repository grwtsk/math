-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant5be7c6e6bd60d55eaf2b9762b3eb0f8dfaf99b01a8ac62e5011cfdc7fbb115e1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5be7c6e6bd60d55eaf2b9762b3eb0f8dfaf99b01a8ac62e5011cfdc7fbb115e1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.State.Variant5be7c6e6bd60d55eaf2b9762b3eb0f8dfaf99b01a8ac62e5011cfdc7fbb115e1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5be7c6e6bd60d55eaf2b9762b3eb0f8dfaf99b01a8ac62e5011cfdc7fbb115e1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/StructProjCases.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Cameron Zwarich
-/
module

prelude
public import Lean.Compiler.LCNF.PrettyPrinter
public import Lean.Compiler.LCNF.MonoTypes


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant5be7c6e6bd60d55eaf2b9762b3eb0f8dfaf99b01a8ac62e5011cfdc7fbb115e1

public section

namespace Lean.Compiler.LCNF
namespace StructProjCases

def findStructCtorInfo? (typeName : Name) : CoreM (Option ConstructorVal) := do
  let .inductInfo info ← getConstInfo typeName | return none
  let [ctorName] := info.ctors | return none
  let some (.ctorInfo ctorInfo) := (← getEnv).find? ctorName | return none
  return ctorInfo

def mkFieldParamsForCtorType (ctorType : Expr) (numParams : Nat) (numFields : Nat) :
    CompilerM (Array (Param .pure)) := do
  let mut type ← Meta.MetaM.run' <| toLCNFType ctorType
  type ← toMonoType type
  for _ in *...numParams do
    match type with
    | .forallE _ _ body _ =>
      type := body
    | _ => unreachable!
  let mut fields := Array.emptyWithCapacity numFields
  for _ in *...numFields do
    match type with
    | .forallE name fieldType body _ =>
      let param ← mkParam name fieldType false
      fields := fields.push param
      type := body
    | _ => unreachable!
  return fields

structure State where
  projMap : Std.HashMap FVarId (Array FVarId) := {}
  fvarMap : Std.HashMap FVarId FVarId := {}

abbrev M := StateRefT State CompilerM

def M.run (x : M α) : CompilerM α := do
  x.run' {}

def remapFVar (fvarId : FVarId) : M FVarId := do
  return (← get).fvarMap[fvarId]?.getD fvarId

mutual

partial def visitCode (code : Code .pure) : M (Code .pure) := do
  match code with
  | .let decl k =>
    match decl.value with
    | .proj typeName i base =>
      eraseLetDecl decl
      let base ← remapFVar base
      if let some projVars := (← get).projMap[base]? then
        modify fun s => { s with fvarMap := s.fvarMap.insert decl.fvarId projVars[i]! }
        visitCode k
      else
        let some ctorInfo ← findStructCtorInfo? typeName | panic! "expected struct constructor"
        let params ← mkFieldParamsForCtorType ctorInfo.type ctorInfo.numParams ctorInfo.numFields
        let fvars := params.map (·.fvarId)
        modify fun s => { s with projMap := s.projMap.insert base fvars,
                                 fvarMap := s.fvarMap.insert decl.fvarId fvars[i]! }
        let k ← visitCode k
        modify fun s => { s with projMap := s.projMap.erase base }
        let resultType ← toMonoType (← k.inferType)
        let alts := #[.alt ctorInfo.name params k]
        return .cases ⟨typeName, resultType, base, alts⟩
    | _ => return code.updateLet! (← decl.updateValue (← visitLetValue decl.value)) (← visitCode k)
  | .fun decl k =>
    let decl ← decl.updateValue (← visitCode decl.value)
    return code.updateFun! decl (← visitCode k)
  | .jp decl k =>
    let decl ← decl.updateValue (← visitCode decl.value)
    return code.updateFun! decl (← visitCode k)
  | .jmp fvarId args =>
    return code.updateJmp! (← remapFVar fvarId) (← args.mapM visitArg)
  | .cases cases =>
    let discr ← remapFVar cases.discr
    if let #[.alt ctorName params k] := cases.alts then
      if let some projVars := (← get).projMap[discr]? then
        assert! projVars.size == params.size
        for param in params, projVar in projVars do
          modify fun s => { s with fvarMap := s.fvarMap.insert param.fvarId projVar }
          eraseParam param
        visitCode k
      else
        let fvars := params.map (·.fvarId)
        modify fun s => { s with projMap := s.projMap.insert discr fvars }
        let k ← visitCode k
        modify fun s => { s with projMap := s.projMap.erase discr }
        -- TODO: This should preserve the .alt allocation, but binding it to
        -- a variable above while also destructuring an array doesn't work.
        return code.updateCases! cases.resultType discr #[.alt ctorName params k]
    else
      let alts ← cases.alts.mapMonoM (visitAlt ·)
      return code.updateCases! cases.resultType discr alts
  | .return fvarId => return code.updateReturn! (← remapFVar fvarId)
  | .unreach .. => return code

partial def visitLetValue (v : LetValue .pure) : M (LetValue .pure) := do
  match v with
  | .const _ _ args =>
    return v.updateArgs! (← args.mapM visitArg)
  | .fvar fvarId args =>
    return v.updateFVar! (← remapFVar fvarId) (← args.mapM visitArg)
  | .lit _ | .erased => return v
  -- Projections should be handled directly by `visitCode`.
  | .proj .. => unreachable!

partial def visitAlt (alt : Alt .pure) : M (Alt .pure) := do
  return alt.updateCode (← visitCode alt.getCode)

partial def visitArg (arg : Arg .pure) : M (Arg .pure) :=
  match arg with
  | .fvar fvarId => return arg.updateFVar! (← remapFVar fvarId)
  | .type _ | .erased => return arg

end

def visitDecl (decl : Decl .pure) : M (Decl .pure) := do
  let value ← decl.value.mapCodeM (visitCode ·)
  return { decl with value }

end StructProjCases

def structProjCases : Pass :=
  .mkPerDeclaration `structProjCases .mono (StructProjCases.visitDecl · |>.run)

builtin_initialize registerTraceClass `Compiler.structProjCases (inherited := true)

end Lean.Compiler.LCNF
