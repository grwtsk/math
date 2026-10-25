# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Declaration.Variantddf7acf4fc86a47d2bdee68e257a9850e0ed66dea36b5d76d4491316009cd5a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4d1b39226e47fb31b6f09cca9adb82a2a60f66d` · SHA-256 `ddf7acf4fc86a47d2bdee68e257a9850e0ed66dea36b5d76d4491316009cd5a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import tools.LeanEnvironmentExtractElements.Expression

/-!
# Compiled declaration events

Each declaration is emitted only after all expression elements it references.
No source text is promoted to semantic authority.
-/

open Lean

namespace MathematicsLeanEnvironmentExtractElements

private def constantKind : ConstantInfo → String
  | .axiomInfo _ => "axiom"
  | .defnInfo _ => "definition"
  | .thmInfo _ => "theorem"
  | .opaqueInfo _ => "opaque"
  | .quotInfo _ => "quotient"
  | .inductInfo _ => "inductive"
  | .ctorInfo _ => "constructor"
  | .recInfo _ => "recursor"

private def constantValue? : ConstantInfo → Option Expr
  | .defnInfo value => some value.value
  | .thmInfo value => some value.value
  | .opaqueInfo value => some value.value
  | _ => none

private def valueRole : ConstantInfo → Option String
  | .thmInfo _ => some "theoremProof"
  | .defnInfo _ => some "definitionValue"
  | .opaqueInfo _ => some "opaqueValue"
  | _ => none

private def safety : ConstantInfo → String
  | .defnInfo value =>
      match value.safety with
      | .safe => "safe"
      | .unsafe => "unsafe"
      | .partial => "partial"
  | information => if information.isUnsafe then "unsafe" else "notApplicable"

private def reducibility : ConstantInfo → String × Option Nat
  | .defnInfo value =>
      match value.hints with
      | .opaque => ("opaque", none)
      | .abbrev => ("abbreviation", none)
      | .regular height => ("regular", some height.toNat)
  | _ => ("notApplicable", none)

private def quotientKind : QuotKind → String
  | .type => "type"
  | .ctor => "constructor"
  | .lift => "lift"
  | .ind => "induction"

private def observedAxioms (environment : Environment) (name : Name) : IO (Array String) := do
  let context : Core.Context := {
    fileName := "<lean-environment-element-extract>"
    fileMap := default
    options := {}
    maxHeartbeats := 0
  }
  let state : Core.State := { env := environment }
  let (axioms, _) ← Core.CoreM.toIO (collectAxioms name) context state
  return axioms.map Name.toString |>.qsort (· < ·)

private def recursorData
    (emitter : EventEmitter) (parameters : List Name) : ConstantInfo → IO Json
  | .recInfo value => do
      let mut rules := #[]
      for rule in value.rules do
        let expression ← emitExpression emitter parameters rule.rhs
        rules := rules.push <| Json.mkObj [
          ("constructor", toJson rule.ctor.toString),
          ("numFields", toJson rule.nfields),
          ("rhsExpressionHandle", toJson expression.handle)
        ]
      return Json.mkObj [
        ("isUnsafe", toJson value.isUnsafe),
        ("mutualInductives", toJson (value.all.toArray.map Name.toString)),
        ("numIndices", toJson value.numIndices),
        ("numMinors", toJson value.numMinors),
        ("numMotives", toJson value.numMotives),
        ("numParams", toJson value.numParams),
        ("rules", toJson rules),
        ("supportsK", toJson value.k)
      ]
  | _ => return Json.null

private def inductiveData : ConstantInfo → Json
  | .inductInfo value =>
      Json.mkObj [
        ("constructors", toJson (value.ctors.toArray.map Name.toString)),
        ("isRecursive", toJson value.isRec),
        ("isReflexive", toJson value.isReflexive),
        ("isUnsafe", toJson value.isUnsafe),
        ("mutualMembers", toJson (value.all.toArray.map Name.toString)),
        ("numIndices", toJson value.numIndices),
        ("numNested", toJson value.numNested),
        ("numParams", toJson value.numParams)
      ]
  | _ => Json.null

private def constructorData : ConstantInfo → Json
  | .ctorInfo value =>
      Json.mkObj [
        ("constructorIndex", toJson value.cidx),
        ("inductiveType", toJson value.induct.toString),
        ("isUnsafe", toJson value.isUnsafe),
        ("numFields", toJson value.numFields),
        ("numParams", toJson value.numParams)
      ]
  | _ => Json.null

private def quotientData : ConstantInfo → Json
  | .quotInfo value => Json.mkObj [("kind", toJson (quotientKind value.kind))]
  | _ => Json.null

def emitDeclaration
    (emitter : EventEmitter) (environment : Environment) (owner : Name)
    (information : ConstantInfo) : IO Unit := do
  let parameters := information.levelParams
  let typeExpression ← emitExpression emitter parameters information.type
  let valueExpression : Option ExpressionReference ←
    match constantValue? information with
    | some value => do
        let reference ← emitExpression emitter parameters value
        pure (some reference)
    | none => pure none
  let (reducibilityName, regularityHeight) := reducibility information
  let origin := match information with
    | .ctorInfo _ | .recInfo _ => "kernelGenerated"
    | _ => "unknown"
  emitter.emit <| Json.mkObj [
    ("authority", toJson "kernel"),
    ("canonicalName", toJson information.name.toString),
    ("constructorData", constructorData information),
    ("diagnostics", toJson (#[] : Array String)),
    ("event", toJson "declaration"),
    ("inductiveData", inductiveData information),
    ("isInternalDetail", toJson information.name.isInternalDetail),
    ("isPartial", toJson information.isPartial),
    ("isPrivateName", toJson (isPrivateName information.name)),
    ("isUnsafe", toJson information.isUnsafe),
    ("kind", toJson (constantKind information)),
    ("mutualBlock", toJson (information.all.toArray.map Name.toString)),
    ("observedAxioms", toJson (← observedAxioms environment information.name)),
    ("origin", toJson origin),
    ("owningModule", toJson owner.toString),
    ("quotientData", quotientData information),
    ("recursorData", ← recursorData emitter parameters information),
    ("reducibility", toJson reducibilityName),
    ("regularityHeight", toJson regularityHeight),
    ("safety", toJson (safety information)),
    ("typeExpressionHandle", toJson typeExpression.handle),
    ("universeParams", toJson (parameters.toArray.map Name.toString)),
    ("valueExpressionHandle", toJson (valueExpression.map (·.handle))),
    ("valueRole", toJson (valueRole information)),
    ("visibility", toJson (if isPrivateName information.name then "privateName" else "public"))
  ]

end MathematicsLeanEnvironmentExtractElements
```
