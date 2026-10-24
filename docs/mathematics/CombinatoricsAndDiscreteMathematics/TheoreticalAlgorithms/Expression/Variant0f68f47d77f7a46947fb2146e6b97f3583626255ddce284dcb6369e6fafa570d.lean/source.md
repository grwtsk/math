# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Expression.Variant0f68f47d77f7a46947fb2146e6b97f3583626255ddce284dcb6369e6fafa570d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a46e53a8638a48e5c113f788a23ad4d76f4fb8e` · SHA-256 `eba1d7cbeed88eef753d3c816eeb4ecabf84ab39a6a868b8e644f9b83bc6310d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExpressionView.Variant1115e23ff18020f2f1b50c357778570ecea0d954a42234eb59d9bad86cce0418","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1115e23ff18020f2f1b50c357778570ecea0d954a42234eb59d9bad86cce0418","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ExpressionView.Variant1115e23ff18020f2f1b50c357778570ecea0d954a42234eb59d9bad86cce0418","mathematical_subject":"Computation.DataStructures","original_sha256":"1115e23ff18020f2f1b50c357778570ecea0d954a42234eb59d9bad86cce0418","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/tools/LeanEnvironmentExtractElements/Expression.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import tools.LeanEnvironmentExtractElements.Event

/-!
# Element-sized expression emission

Expressions are traversed in post-order.  Every emitted node refers only to
earlier local handles, so the router can hash and persist it immediately.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExpressionView.Variant1115e23ff18020f2f1b50c357778570ecea0d954a42234eb59d9bad86cce0418

open Lean

namespace MathematicsLeanEnvironmentExtractElements

inductive ExpressionView where
  | semantic
  | presentation
  deriving DecidableEq

structure ExpressionReference where
  handle : Nat
  semanticRoot : Nat
  presentationRoot : Nat
  metadataRoot : Nat
  metadataPayloadCount : Nat
  hasFreeVariables : Bool
  hasMetavariables : Bool

private def binderInfoName : BinderInfo → String
  | .default => "default"
  | .implicit => "implicit"
  | .strictImplicit => "strictImplicit"
  | .instImplicit => "instanceImplicit"

private def parameterPosition? (parameters : List Name) (target : Name) : Option Nat :=
  let rec visit : List Name → Nat → Option Nat
    | [], _ => none
    | head :: tail, index =>
        if head = target then some index else visit tail (index + 1)
  visit parameters 0

private partial def emitLevel
    (emitter : EventEmitter) (parameters : List Name) : Level → IO Nat
  | .zero => emitter.node "zero"
  | .succ level => do
      let child ← emitLevel emitter parameters level
      emitter.node "succ" #[childField child]
  | .max left right => do
      let leftHandle ← emitLevel emitter parameters left
      let rightHandle ← emitLevel emitter parameters right
      emitter.node "max" #[childField leftHandle, childField rightHandle]
  | .imax left right => do
      let leftHandle ← emitLevel emitter parameters left
      let rightHandle ← emitLevel emitter parameters right
      emitter.node "imax" #[childField leftHandle, childField rightHandle]
  | .param name => do
      match parameterPosition? parameters name with
      | some position =>
          emitter.node "param" #[← emitter.scalarField (toString position)]
      | none =>
          emitter.node "unresolvedParam" #[← emitter.scalarField name.toString]
  | .mvar identifier => do
      emitter.node "levelMVar" #[← emitter.scalarField (reprStr identifier)]

private def emitLevels
    (emitter : EventEmitter) (parameters : List Name) (levels : List Level) : IO Nat := do
  let mut fields := #[]
  for level in levels do
    fields := fields.push (childField (← emitLevel emitter parameters level))
  emitter.node "levels" fields

private partial def emitExpressionView
    (emitter : EventEmitter) (parameters : List Name) (view : ExpressionView) :
    Expr → IO Nat
  | .bvar index => do
      emitter.node "bvar" #[← emitter.scalarField (toString index)]
  | .fvar identifier => do
      emitter.node "invalidFVar" #[← emitter.scalarField (reprStr identifier)]
  | .mvar identifier => do
      emitter.node "invalidMVar" #[← emitter.scalarField (reprStr identifier)]
  | .sort level => do
      let levelHandle ← emitLevel emitter parameters level
      emitter.node "sort" #[childField levelHandle]
  | .const name levels => do
      let levelHandle ← emitLevels emitter parameters levels
      emitter.node "const" #[
        ← emitter.scalarField name.toString,
        childField levelHandle
      ]
  | .app function argument => do
      let functionHandle ← emitExpressionView emitter parameters view function
      let argumentHandle ← emitExpressionView emitter parameters view argument
      emitter.node "app" #[childField functionHandle, childField argumentHandle]
  | .lam name type body binderInfo => do
      let typeHandle ← emitExpressionView emitter parameters view type
      let bodyHandle ← emitExpressionView emitter parameters view body
      let mut fields := #[]
      if view = .presentation then
        fields := fields.push (← emitter.scalarField name.toString)
      fields := fields.push (← emitter.scalarField (binderInfoName binderInfo))
      fields := fields.push (childField typeHandle)
      fields := fields.push (childField bodyHandle)
      emitter.node "lam" fields
  | .forallE name type body binderInfo => do
      let typeHandle ← emitExpressionView emitter parameters view type
      let bodyHandle ← emitExpressionView emitter parameters view body
      let mut fields := #[]
      if view = .presentation then
        fields := fields.push (← emitter.scalarField name.toString)
      fields := fields.push (← emitter.scalarField (binderInfoName binderInfo))
      fields := fields.push (childField typeHandle)
      fields := fields.push (childField bodyHandle)
      emitter.node "forall" fields
  | .letE name type value body nondependent => do
      let typeHandle ← emitExpressionView emitter parameters view type
      let valueHandle ← emitExpressionView emitter parameters view value
      let bodyHandle ← emitExpressionView emitter parameters view body
      let mut fields := #[]
      if view = .presentation then
        fields := fields.push (← emitter.scalarField name.toString)
      fields := fields.push (← emitter.scalarField (toString nondependent))
      fields := fields.push (childField typeHandle)
      fields := fields.push (childField valueHandle)
      fields := fields.push (childField bodyHandle)
      emitter.node "let" fields
  | .lit literal => do
      emitter.node "lit" #[← emitter.scalarField (reprStr literal)]
  | .mdata metadata body => do
      let bodyHandle ← emitExpressionView emitter parameters view body
      match view with
      | .semantic => return bodyHandle
      | .presentation =>
          emitter.node "mdata" #[
            ← emitter.scalarField (reprStr metadata),
            childField bodyHandle
          ]
  | .proj typeName fieldIndex object => do
      let objectHandle ← emitExpressionView emitter parameters view object
      emitter.node "proj" #[
        ← emitter.scalarField typeName.toString,
        ← emitter.scalarField (toString fieldIndex),
        childField objectHandle
      ]

private partial def metadataPayloads : Expr → Array String
  | .app function argument => metadataPayloads function ++ metadataPayloads argument
  | .lam _ type body _ => metadataPayloads type ++ metadataPayloads body
  | .forallE _ type body _ => metadataPayloads type ++ metadataPayloads body
  | .letE _ type value body _ =>
      metadataPayloads type ++ metadataPayloads value ++ metadataPayloads body
  | .mdata metadata body => #[reprStr metadata] ++ metadataPayloads body
  | .proj _ _ object => metadataPayloads object
  | _ => #[]

private partial def containsFreeVariable : Expr → Bool
  | .fvar _ => true
  | .app function argument => containsFreeVariable function || containsFreeVariable argument
  | .lam _ type body _ => containsFreeVariable type || containsFreeVariable body
  | .forallE _ type body _ => containsFreeVariable type || containsFreeVariable body
  | .letE _ type value body _ =>
      containsFreeVariable type || containsFreeVariable value || containsFreeVariable body
  | .mdata _ body => containsFreeVariable body
  | .proj _ _ object => containsFreeVariable object
  | _ => false

private partial def containsMetavariable : Expr → Bool
  | .mvar _ => true
  | .app function argument => containsMetavariable function || containsMetavariable argument
  | .lam _ type body _ => containsMetavariable type || containsMetavariable body
  | .forallE _ type body _ => containsMetavariable type || containsMetavariable body
  | .letE _ type value body _ =>
      containsMetavariable type || containsMetavariable value || containsMetavariable body
  | .mdata _ body => containsMetavariable body
  | .proj _ _ object => containsMetavariable object
  | _ => false

private def emitMetadata
    (emitter : EventEmitter) (payloads : Array String) : IO Nat := do
  let mut sequence ← emitter.node "metadataNil"
  for payload in payloads.reverse do
    let value ← emitter.node "metadataPayload" #[← emitter.scalarField payload]
    sequence ← emitter.node "metadataCons" #[childField value, childField sequence]
  return sequence

def emitExpression
    (emitter : EventEmitter) (parameters : List Name) (expression : Expr) :
    IO ExpressionReference := do
  let semanticRoot ← emitExpressionView emitter parameters .semantic expression
  let presentationRoot ← emitExpressionView emitter parameters .presentation expression
  let payloads := metadataPayloads expression
  let metadataRoot ← emitMetadata emitter payloads
  let handle ← emitter.fresh
  let hasFreeVariables := containsFreeVariable expression
  let hasMetavariables := containsMetavariable expression
  emitter.emit <| Json.mkObj [
    ("event", toJson "expression"),
    ("handle", toJson handle),
    ("hasFreeVariables", toJson hasFreeVariables),
    ("hasMetavariables", toJson hasMetavariables),
    ("legacyPrettyPrinted", toJson false),
    ("metadataPayloadCount", toJson payloads.size),
    ("metadataRootHandle", toJson metadataRoot),
    ("presentationRootHandle", toJson presentationRoot),
    ("semanticRootHandle", toJson semanticRoot)
  ]
  return {
    handle
    semanticRoot
    presentationRoot
    metadataRoot
    metadataPayloadCount := payloads.size
    hasFreeVariables
    hasMetavariables
  }

end MathematicsLeanEnvironmentExtractElements
```
