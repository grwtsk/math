# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bee89e566bb6789071274f30c98e2be2f388ed84d833060b9323b8a294afe152DependencyProbe.Variantbee89e566bb6789071274f30c98e2be2f388ed84d833060b9323b8a294afe152

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0bf555d68d68c959d5b143aedfb98b98a7c74c0` · SHA-256 `bee89e566bb6789071274f30c98e2be2f388ed84d833060b9323b8a294afe152`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean
import FormalResearch
open Lean Elab Command Meta
set_option maxRecDepth 16384
set_option maxHeartbeats 0
set_option pp.all true
set_option pp.universes true
set_option pp.fullNames true
set_option pp.maxSteps 10000000
private partial def stateCanonicalExpr : Expr → Expr
  | .app f a => .app (stateCanonicalExpr f) (stateCanonicalExpr a)
  | .lam _ t b i => .lam .anonymous (stateCanonicalExpr t) (stateCanonicalExpr b) i
  | .forallE _ t b i => .forallE .anonymous (stateCanonicalExpr t) (stateCanonicalExpr b) i
  | .letE _ t v b n => .letE .anonymous (stateCanonicalExpr t) (stateCanonicalExpr v) (stateCanonicalExpr b) n
  | .mdata _ e => stateCanonicalExpr e
  | .proj t i e => .proj t i (stateCanonicalExpr e)
  | e => e
private def stateKind : ConstantInfo → String
  | .axiomInfo _ => "axiom"
  | .defnInfo _ => "definition"
  | .thmInfo _ => "theorem"
  | .opaqueInfo _ => "opaque"
  | .quotInfo _ => "quotient"
  | .inductInfo _ => "inductive"
  | .ctorInfo _ => "constructor"
  | .recInfo _ => "recursor"
private def stateDependencies (info : ConstantInfo) : Array Name := Id.run do
  let mut names := info.getUsedConstantsAsSet
  match info with
  | .inductInfo i =>
      for n in i.all ++ i.ctors do names := names.insert n
  | .ctorInfo c => names := names.insert c.induct
  | .recInfo r =>
      for n in r.all do names := names.insert n
      for rule in r.rules do
        names := names.insert rule.ctor
        for n in rule.rhs.getUsedConstants do names := names.insert n
  | _ => pure ()
  return names.toArray.qsort Name.lt
run_cmd do
  let env ← getEnv
  let roots : Array Name := #[`FormalResearch.MathematicalTooling.Coverage.forall_on_of_finite_cover_and_tail]
  let mut pending := roots
  let mut seen : NameSet := {}
  while !pending.isEmpty do
    let name := pending.back!
    pending := pending.pop
    if seen.contains name then continue
    seen := seen.insert name
    let some info := env.checked.get.find? name | throwError "missing dependency: {name}"
    let dependencies := stateDependencies info
    pending := pending ++ dependencies
    let levels := info.levelParams.zipIdx.map fun (_, i) => Level.param (.str .anonymous ("u" ++ toString i))
    let normalize := fun e => reprStr (stateCanonicalExpr (e.instantiateLevelParams info.levelParams levels))
    let owner := match env.getModuleIdxFor? name with
      | some i => env.header.moduleNames[i.toNat]!.toString
      | none => "Lean.Kernel"
    let statement ← if roots.contains name then
      liftTermElabM do return (← PrettyPrinter.ppExpr info.type).pretty 100000
      else pure ""
    let payload := Json.mkObj [
      ("name", toJson name.toString), ("module", toJson owner),
      ("kind", toJson (stateKind info)), ("type_expr", toJson (normalize info.type)),
      ("body_expr", toJson ((info.value? (allowOpaque := true)).map normalize)),
      ("statement", toJson statement),
      ("dependencies", toJson (dependencies.map Name.toString))]
    liftIO <| IO.println ("FORMAL_STATE_DECLARATION=" ++ payload.compress)
  for root in roots do
    let axioms ← collectAxioms root
    liftIO <| IO.println ("FORMAL_STATE_AXIOMS=" ++ (Json.mkObj [
      ("name", toJson root.toString), ("axioms", toJson (axioms.map Name.toString))]).compress)
```
