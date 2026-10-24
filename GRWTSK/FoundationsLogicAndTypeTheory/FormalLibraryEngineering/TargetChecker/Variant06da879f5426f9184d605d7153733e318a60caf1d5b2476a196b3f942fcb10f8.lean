-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Item.Variantd21c21249fbb8350d8737ec82a2d9c120ef16ca6420ec673f90f1eb1ee24f858","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d21c21249fbb8350d8737ec82a2d9c120ef16ca6420ec673f90f1eb1ee24f858","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Item.Variantd21c21249fbb8350d8737ec82a2d9c120ef16ca6420ec673f90f1eb1ee24f858","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d21c21249fbb8350d8737ec82a2d9c120ef16ca6420ec673f90f1eb1ee24f858","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/protocol-cleanup/scripts/state/TargetChecker.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean

/-! Standalone checker for explicit closed proposition projections. It adds no
declarations and is never imported by the mathematical corpus. Python validates
the canonical projection before this tool decodes it and asks the Lean kernel. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Item.Variantd21c21249fbb8350d8737ec82a2d9c120ef16ca6420ec673f90f1eb1ee24f858

open Lean

namespace StateTargetChecker

def item (xs : Array Json) (i : Nat) : Except String Json :=
  match xs[i]? with
  | some j => pure j
  | none => throw "missing constructor argument"

def exactLength (xs : Array Json) (n : Nat) : Except String Unit :=
  if xs.size == n then pure () else throw "wrong constructor arity"

partial def decodeName (j : Json) : Except String Name := do
  let xs ← j.getArr?
  match ← (← item xs 0).getStr? with
  | "anonymous" => exactLength xs 1; return .anonymous
  | "str" =>
    exactLength xs 3
    return .str (← decodeName (← item xs 1)) (← (← item xs 2).getStr?)
  | "num" =>
    exactLength xs 3
    return .num (← decodeName (← item xs 1)) (← (← item xs 2).getNat?)
  | _ => throw "unknown name constructor"

def parameter (i : Nat) : Name := .num `stateTargetUniverse i

partial def decodeLevel (arity : Nat) (j : Json) : Except String Level := do
  let xs ← j.getArr?
  match ← (← item xs 0).getStr? with
  | "zero" => exactLength xs 1; return .zero
  | "succ" => exactLength xs 2; return .succ (← decodeLevel arity (← item xs 1))
  | "max" =>
    exactLength xs 3
    return .max (← decodeLevel arity (← item xs 1)) (← decodeLevel arity (← item xs 2))
  | "imax" =>
    exactLength xs 3
    return .imax (← decodeLevel arity (← item xs 1)) (← decodeLevel arity (← item xs 2))
  | "param" =>
    exactLength xs 2
    let i ← (← item xs 1).getNat?
    unless i < arity do throw "undeclared universe parameter"
    return .param (parameter i)
  | _ => throw "unknown universe constructor"

def decodeBinder (j : Json) : Except String BinderInfo := do
  match ← j.getStr? with
  | "default" => return .default
  | "implicit" => return .implicit
  | "strictImplicit" => return .strictImplicit
  | "instImplicit" => return .instImplicit
  | _ => throw "unknown binder annotation"

def prior (decoded : Array Expr) (j : Json) : Except String Expr := do
  let i ← j.getNat?
  match decoded[i]? with
  | some e => pure e
  | none => throw "expression child must precede its parent"

def decodeExpr (arity : Nat) (j : Json) : Except String Expr := do
  let nodes ← (← j.getObjVal? "nodes").getArr?
  let root ← (← j.getObjVal? "root").getNat?
  unless nodes.size > 0 && nodes.size ≤ 2000000 && root + 1 == nodes.size do
    throw "invalid finite expression root"
  let mut decoded : Array Expr := #[]
  for node in nodes do
    let xs ← node.getArr?
    let arg :=  item xs
    let expression ← match ← (← arg 0).getStr? with
      | "bvar" => exactLength xs 2; pure <| .bvar (← (← arg 1).getNat?)
      | "sort" => exactLength xs 2; pure <| .sort (← decodeLevel arity (← arg 1))
      | "const" => do
        exactLength xs 3
        let levels ← (← (← arg 2).getArr?).toList.mapM (decodeLevel arity)
        pure <| .const (← decodeName (← arg 1)) levels
      | "app" => do
        exactLength xs 3
        pure <| .app (← prior decoded (← arg 1)) (← prior decoded (← arg 2))
      | "lam" => do
        exactLength xs 4
        pure <| .lam `bound (← prior decoded (← arg 1)) (← prior decoded (← arg 2))
          (← decodeBinder (← arg 3))
      | "forallE" => do
        exactLength xs 4
        pure <| .forallE `bound (← prior decoded (← arg 1)) (← prior decoded (← arg 2))
          (← decodeBinder (← arg 3))
      | "letE" => do
        exactLength xs 5
        pure <| .letE `bound (← prior decoded (← arg 1)) (← prior decoded (← arg 2))
          (← prior decoded (← arg 3)) (← (← arg 4).getBool?)
      | "natVal" => do
        exactLength xs 2
        let some n := (← (← arg 1).getStr?).toNat? | throw "invalid natural literal"
        pure <| .lit (.natVal n)
      | "strVal" => exactLength xs 2; pure <| .lit (.strVal (← (← arg 1).getStr?))
      | "proj" => do
        exactLength xs 4
        pure <| .proj (← decodeName (← arg 1)) (← (← arg 2).getNat?) (← prior decoded (← arg 3))
      | _ => throw "unknown expression constructor"
    decoded := decoded.push expression
  let expression := decoded[root]!
  if expression.hasLooseBVars || expression.hasFVar || expression.hasMVar then
    throw "target is not closed"
  return expression

def kernelResult (value : Except Kernel.Exception α) : Except String α :=
  value.mapError fun _ => "Lean kernel rejected target or resolution"

def check (env : Environment) (input : Json) : Except String Json := do
  let targetJson ← input.getObjVal? "target"
  let arity ← (← targetJson.getObjVal? "universe_arity").getNat?
  let target ← decodeExpr arity (← targetJson.getObjVal? "expression")
  let targetType ← kernelResult (Kernel.check env {} target)
  unless ← kernelResult (Kernel.isDefEq env {} targetType (.sort .zero)) do
    throw "target does not have type Prop"
  let resolution ← input.getObjVal? "resolution"
  if resolution != Json.null then
    let name ← decodeName (← resolution.getObjVal? "name")
    let levels ← (← (← resolution.getObjVal? "universe_levels").getArr?).toList.mapM (decodeLevel arity)
    let proof := Expr.const name levels
    let proofType ← kernelResult (Kernel.check env {} proof)
    unless ← kernelResult (Kernel.isDefEq env {} proofType target) do
      throw "resolution declaration does not prove the exact target"
  return Json.mkObj [("schema_version", toJson (1 : Nat)),
    ("target_is_proposition", toJson true), ("resolution_checked", toJson (resolution != Json.null))]

end StateTargetChecker

unsafe def main (args : List String) : IO UInt32 := do
  unless args.length == 1 do throw <| IO.userError "usage: TargetChecker.lean INPUT_PATH"
  let input ← IO.ofExcept <| Json.parse (← IO.FS.readFile args[0]!)
  let root ← IO.ofExcept <| (← IO.ofExcept (input.getObjVal? "root_module")).getStr?
  initSearchPath (← findSysroot)
  enableInitializersExecution
  let env ← importModules #[{module := root.toName, importAll := true}] {}
    (trustLevel := 0) (loadExts := true) (level := .private)
  let result ← IO.ofExcept <| StateTargetChecker.check (env.setExporting false) input
  (← IO.getStdout).putStrLn result.compress
  return 0
