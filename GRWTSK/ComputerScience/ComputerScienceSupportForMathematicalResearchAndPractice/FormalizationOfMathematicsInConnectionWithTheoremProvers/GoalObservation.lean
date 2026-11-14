/-
Copyright (c) 2026 grwtsk contributors. Development provenance: AI-assisted.
SOURCE CANDIDATE ONLY: Lean elaboration and execution NOT_RUN.
This tactic observes elaborated Lean Expr trees; it does not prove or admit
anything and does not change the current tactic goals.
The external source state, target, and state digest are caller-supplied claims.
-/
import Lean

open Lean Elab Tactic Meta

namespace GRWTSK.ComputerScience.ComputerScienceSupportForMathematicalResearchAndPractice.FormalizationOfMathematicsInConnectionWithTheoremProvers.GoalObservation

private def isHex64 (s : String) : Bool :=
  s.length == 64 && s.toList.all (fun c => "0123456789abcdef".contains c)

private def encodeHex (s : String) : String := Id.run do
  if s.isEmpty then return "-"
  let digits := "0123456789abcdef".toList.toArray
  let mut out := ""
  for byte in s.toUTF8 do
    out := out.push digits[byte.toNat / 16]!
    out := out.push digits[byte.toNat % 16]!
  return out

private partial def levelText : Level → Except String String
  | .zero => .ok "zero"
  | .succ u => return "succ(" ++ (← levelText u) ++ ")"
  | .max a b => return "max(" ++ (← levelText a) ++ "," ++ (← levelText b) ++ ")"
  | .imax a b => return "imax(" ++ (← levelText a) ++ "," ++ (← levelText b) ++ ")"
  | .param n => return "param(" ++ toString n ++ ")"
  | .mvar _ => .error "unresolved universe metavariable in inspected goal"

private def binderName : BinderInfo → String
  | .default => "explicit"
  | .implicit => "implicit"
  | .strictImplicit => "strict"
  | .instImplicit => "instance"

/-- Preorder Lean Expr constructors. Children are determined by the tag arity.
    This is a feature observation, not a lossless proof-term serialization:
    expression metadata is labeled but not interpreted. -/
private partial def exprAtoms : Expr → Except String (Array (String × String))
  | .bvar n => .ok #[( "bvar", toString n )]
  | .fvar _ => .error "unabstracted local variable in inspected goal"
  | .mvar _ => .error "unresolved metavariable in inspected goal"
  | .sort u => do return #[( "sort", ← levelText u )]
  | .const n us => do
      let mut name := toString n
      for u in us do
        name := name ++ "|" ++ (← levelText u)
      return #[( "const", name )]
  | .app f a => do
      return #[( "app", "" )] ++ (← exprAtoms f) ++ (← exprAtoms a)
  | .lam n t b info => do
      return #[( "lam", toString n ++ "|" ++ binderName info )] ++
        (← exprAtoms t) ++ (← exprAtoms b)
  | .forallE n t b info => do
      return #[( "forall", toString n ++ "|" ++ binderName info )] ++
        (← exprAtoms t) ++ (← exprAtoms b)
  | .letE n t val body nonDep => do
      return #[( "let", toString n ++ "|" ++ (if nonDep then "1" else "0") )] ++
        (← exprAtoms t) ++ (← exprAtoms val) ++ (← exprAtoms body)
  | .lit (.natVal n) => .ok #[( "nat", toString n )]
  | .lit (.strVal s) => .ok #[( "string", s )]
  | .proj n i b => do
      return #[( "proj", toString n ++ "|" ++ toString i )] ++ (← exprAtoms b)
  | .mdata _ b => do
      return #[( "mdata", "present" )] ++ (← exprAtoms b)

/-- Observe source-bound elaborated proof goals in a disposable Lean proof file.
    Usage inside `by`:
      observe_goals source "<64hex>" target "lean:Namespace.target"
        semantic "<64hex>" state "<64hex>" to "new-file.goal"
    Do not use these caller claims as authentication or mathematical acceptance.
    The consumer must independently bind observations to its checkout and worker.
-/
elab "observe_goals " source:str " target " target:str
    " semantic " semantic:str " state " state:str " to " output:str : tactic => do
  if Lean.versionString != "4.34.1" then
    throwError "Lean goal observation requires the pinned 4.34.1 toolchain"
  unless isHex64 source.getString && isHex64 semantic.getString &&
      isHex64 state.getString && target.getString.startsWith "lean:" do
    throwError "invalid source, target, semantic or state binding"
  let goals ← getUnsolvedGoals
  if goals.isEmpty || goals.length > 128 then
    throwError "goal observation needs 1 to 128 live goals"
  let mut content := "LEAN_GOAL_AST_V1\n" ++
    "source_binding_digest " ++ source.getString ++ "\n" ++
    "target_id_hex " ++ encodeHex target.getString ++ "\n" ++
    "target_semantic_hash " ++ semantic.getString ++ "\n" ++
    "state_digest " ++ state.getString ++ "\n" ++
    "goals " ++ toString goals.length ++ "\n"
  let mut total : Nat := 0
  for goal in goals do
    let goalType ← goal.withContext do
      let ty ← instantiateMVars (← goal.getType)
      let vars := (← getLCtx).getFVarIds.map Expr.fvar
      mkForallFVars vars ty
    if goalType.hasMVar then
      throwError "goal observation contains unresolved expression metavariables"
    let atoms ← match exprAtoms goalType with
      | .ok as => pure as
      | .error error => throwError "{error}"
    total := total + atoms.size
    if atoms.isEmpty || total > 100000 then
      throwError "goal expression observation exceeds atom budget"
    content := content ++ "goal " ++ toString atoms.size ++ "\n"
    for (tag, value) in atoms do
      content := content ++ "atom " ++ tag ++ " " ++ encodeHex value ++ "\n"
  content := content ++ "END\n"
  let path : System.FilePath := output.getString
  if ← path.pathExists then throwError "refusing to overwrite goal observation"
  liftIO <| IO.FS.writeFile path content
  logInfo "Goal AST observation written (not verified mathematical evidence)"

end GRWTSK.ComputerScience.ComputerScienceSupportForMathematicalResearchAndPractice.FormalizationOfMathematicsInConnectionWithTheoremProvers.GoalObservation
