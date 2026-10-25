# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SurfaceBridgeMain.Variant48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eccac469d4999b22149ae7ab846af35fc7c53b93` · SHA-256 `48f46c8f80262312969108c3979536a0a6305a8645ef68604652dab1df0453b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean
import Lean.Util.CollectAxioms
import Surface

open Lean

namespace SurfaceBridge

open Surface.Core

def requestSchema := "surface.lean-bridge-request.v1"

def responseSchema := "surface.lean-bridge-response.v1"

structure BridgeRequest where
  schema : String
  requestId : String
  operation : String
  declaration : Option String := none
  payload : Option Json := none
  deriving FromJson

structure BridgeError where
  code : String
  message : String
  data : Option Json := none

abbrev BridgeM := ExceptT BridgeError IO

def errorJson (error : BridgeError) : Json :=
  match error.data with
  | none =>
      Json.mkObj [
        ("code", toJson error.code),
        ("message", toJson error.message)
      ]
  | some data =>
      Json.mkObj [
        ("code", toJson error.code),
        ("message", toJson error.message),
        ("data", data)
      ]

def successResponse (request : BridgeRequest) (result : Json) : Json :=
  Json.mkObj [
    ("schema", toJson responseSchema),
    ("requestId", toJson request.requestId),
    ("operation", toJson request.operation),
    ("ok", toJson true),
    ("result", result)
  ]

def failureResponse
    (requestId : String)
    (operation : String)
    (error : BridgeError) : Json :=
  Json.mkObj [
    ("schema", toJson responseSchema),
    ("requestId", toJson requestId),
    ("operation", toJson operation),
    ("ok", toJson false),
    ("error", errorJson error)
  ]

def requestFieldOrEmpty (json : Json) (field : String) : String :=
  match json.getObjValAs? String field with
  | .ok value => value
  | .error _ => ""

def nameFromDottedString (value : String) : Name :=
  value.splitOn "." |>.foldl (fun acc part => Name.str acc part) Name.anonymous

def declarationModule (env : Environment) (declarationName : Name) : Name :=
  match env.getModuleIdxFor? declarationName with
  | none => env.mainModule
  | some idx => env.header.moduleNames[idx.toNat]!

def environmentFingerprint (env : Environment) : Digest :=
  let modules := env.header.moduleNames.toList.map Name.toString
  digestString <| String.intercalate "\n" modules

def inspectionReceiptHash
    (env : Environment)
    (declaration : String)
    (declarationName : Name)
    (normalizedType : String) : String :=
  let payload := String.intercalate "\n" [
    declaration,
    (declarationModule env declarationName).toString,
    normalizedType,
    toString (environmentFingerprint env)
  ]
  "surface-string-digest-noncryptographic.v1:" ++ toString (digestString payload)

def constantKind : ConstantInfo → String
  | .axiomInfo _ => "axiom"
  | .defnInfo _ => "definition"
  | .thmInfo _ => "theorem"
  | .opaqueInfo _ => "opaque"
  | .quotInfo _ => "quotient"
  | .inductInfo _ => "inductive"
  | .ctorInfo _ => "constructor"
  | .recInfo _ => "recursor"

def positionJson (position : Position) : Json :=
  Json.mkObj [
    ("line", toJson position.line),
    ("column", toJson position.column)
  ]

def declarationRangesJson : Option DeclarationRanges → Json
  | none => Json.null
  | some ranges =>
      Json.mkObj [
        ("start", positionJson ranges.range.pos),
        ("end", positionJson ranges.range.endPos),
        ("selectionStart", positionJson ranges.selectionRange.pos),
        ("selectionEnd", positionJson ranges.selectionRange.endPos)
      ]

def binderInfoName : BinderInfo → String
  | .default => "default"
  | .implicit => "implicit"
  | .strictImplicit => "strictImplicit"
  | .instImplicit => "instanceImplicit"

partial def exprJson (expression : Expr) (depth : Nat := 0) : Json :=
  if depth ≥ 64 then
    Json.mkObj [("kind", toJson "depthLimit")]
  else
    let child := fun expression => exprJson expression (depth + 1)
    match expression with
    | .bvar index =>
        Json.mkObj [("kind", toJson "boundVariable"), ("index", toJson index)]
    | .fvar identifier =>
        Json.mkObj [
          ("kind", toJson "freeVariable"),
          ("name", toJson identifier.name.toString)
        ]
    | .mvar identifier =>
        Json.mkObj [
          ("kind", toJson "metavariable"),
          ("name", toJson identifier.name.toString)
        ]
    | .sort level =>
        Json.mkObj [("kind", toJson "sort"), ("level", toJson (toString level))]
    | .const name levels =>
        Json.mkObj [
          ("kind", toJson "constant"),
          ("name", toJson name.toString),
          ("levels", toJson (levels.map toString))
        ]
    | .app function argument =>
        Json.mkObj [
          ("kind", toJson "application"),
          ("children", Json.arr #[child function, child argument])
        ]
    | .lam name type body binderInfo =>
        Json.mkObj [
          ("kind", toJson "lambda"),
          ("name", toJson name.toString),
          ("binderInfo", toJson (binderInfoName binderInfo)),
          ("children", Json.arr #[child type, child body])
        ]
    | .forallE name domain body binderInfo =>
        Json.mkObj [
          ("kind", toJson "forall"),
          ("name", toJson name.toString),
          ("binderInfo", toJson (binderInfoName binderInfo)),
          ("children", Json.arr #[child domain, child body])
        ]
    | .letE name type value body nondep =>
        Json.mkObj [
          ("kind", toJson "let"),
          ("name", toJson name.toString),
          ("nondependent", toJson nondep),
          ("children", Json.arr #[child type, child value, child body])
        ]
    | .lit _ =>
        Json.mkObj [("kind", toJson "literal")]
    | .mdata _ body =>
        Json.mkObj [
          ("kind", toJson "metadata"),
          ("children", Json.arr #[child body])
        ]
    | .proj typeName index structureExpression =>
        Json.mkObj [
          ("kind", toJson "projection"),
          ("typeName", toJson typeName.toString),
          ("index", toJson index),
          ("children", Json.arr #[child structureExpression])
        ]

def requireDeclaration
    (env : Environment)
    (request : BridgeRequest) : Except BridgeError (String × Name × ConstantInfo) := do
  let some declaration := request.declaration
    | throw {
        code := "INVALID_REQUEST"
        message := "operation requires a top-level declaration string"
      }
  if declaration.trimAscii.isEmpty then
    throw {
      code := "INVALID_REQUEST"
      message := "declaration must not be empty"
    }
  let declarationName := nameFromDottedString declaration
  let some info := env.find? declarationName
    | throw {
        code := "DECLARATION_NOT_FOUND"
        message := s!"declaration not found: {declaration}"
      }
  pure (declaration, declarationName, info)

def inspectCore
    (env : Environment)
    (declarationName : Name)
    (info : ConstantInfo) : IO (String × Array Name × Option DeclarationRanges) := do
  let action : CoreM (String × Array Name × Option DeclarationRanges) := do
    let normalizedType ← (do
      return toString (← Meta.ppExpr info.type)).run'
    let axioms ← Lean.collectAxioms declarationName
    let ranges ← Lean.findDeclarationRanges? declarationName
    pure (normalizedType, axioms, ranges)
  action.toIO'
    { fileName := "<surface_bridge>", fileMap := default }
    { env := env }

def inspectDeclaration (env : Environment) (request : BridgeRequest) : BridgeM Json := do
  let (declaration, declarationName, info) ←
    ExceptT.mk <| pure <| requireDeclaration env request
  let (normalizedType, axioms, ranges) ← inspectCore env declarationName info
  pure <| Json.mkObj [
    ("declaration", toJson declaration),
    ("module", toJson (declarationModule env declarationName).toString),
    ("kind", toJson (constantKind info)),
    ("isTheorem", toJson info.isTheorem),
    ("normalizedType", toJson normalizedType),
    ("declarationRange", declarationRangesJson ranges),
    ("axiomClosure", toJson (axioms.toList.map Name.toString)),
    ("receiptHash", toJson <|
      inspectionReceiptHash env declaration declarationName normalizedType),
    ("typeDigest", toJson (toString (digestString normalizedType))),
    ("environmentFingerprint", toJson (toString (environmentFingerprint env)))
  ]

def getProjectedAst (env : Environment) (request : BridgeRequest) : BridgeM Json := do
  let (declaration, declarationName, info) ←
    ExceptT.mk <| pure <| requireDeclaration env request
  let (normalizedType, axioms, ranges) ← inspectCore env declarationName info
  pure <| Json.mkObj [
    ("schemaVersion", toJson "surface.lean-projected-ast.v1"),
    ("declaration", toJson declaration),
    ("module", toJson (declarationModule env declarationName).toString),
    ("authority", toJson (if info.isTheorem then "leanKernelChecked" else "unavailable")),
    ("normalizedType", toJson normalizedType),
    ("declarationRange", declarationRangesJson ranges),
    ("axiomClosure", toJson (axioms.toList.map Name.toString)),
    ("root", exprJson info.type)
  ]

def getGoalState (env : Environment) (request : BridgeRequest) : BridgeM Json := do
  let (declaration, declarationName, info) ←
    ExceptT.mk <| pure <| requireDeclaration env request
  if !info.isTheorem then
    throw {
      code := "NOT_A_THEOREM"
      message := s!"declaration is not a theorem: {declaration}"
    }
  let (normalizedType, axioms, ranges) ← inspectCore env declarationName info
  pure <| Json.mkObj [
    ("declaration", toJson declaration),
    ("status", toJson "closed"),
    ("openGoals", Json.arr #[]),
    ("normalizedTarget", toJson normalizedType),
    ("declarationRange", declarationRangesJson ranges),
    ("axiomClosure", toJson (axioms.toList.map Name.toString)),
    ("authority", toJson "leanKernelChecked")
  ]

def getProjectState (env : Environment) : Json :=
  Json.mkObj [
    ("schemaVersion", toJson "surface.lean-project-state.v1"),
    ("ready", toJson true),
    ("entryModule", toJson "Surface"),
    ("leanVersion", toJson Lean.versionString),
    ("moduleCount", toJson env.header.moduleNames.size),
    ("declarationCount", toJson env.constants.toList.length),
    ("environmentFingerprint", toJson (toString (environmentFingerprint env)))
  ]

def getDiagnostics : Json :=
  Json.mkObj [
    ("schemaVersion", toJson "surface.lean-diagnostics.v1"),
    ("scope", toJson "builtEnvironment"),
    ("messages", Json.arr #[]),
    ("hasErrors", toJson false),
    ("note", toJson
      "This bridge reports diagnostics for importing the built environment; live source diagnostics are provided by the supervised Lean language server.")
  ]

def dispatch (env : Environment) (request : BridgeRequest) : BridgeM (Json × Bool) := do
  if request.schema != requestSchema then
    throw {
      code := "UNSUPPORTED_SCHEMA"
      message := s!"unsupported schema: {request.schema}"
      data := some <| Json.mkObj [("supported", toJson requestSchema)]
    }
  if request.requestId.trimAscii.isEmpty then
    throw {
      code := "INVALID_REQUEST_ID"
      message := "requestId must not be empty"
    }
  match request.operation with
  | "ping" =>
      pure (Json.mkObj [
        ("pong", toJson true),
        ("leanVersion", toJson Lean.versionString)
      ], false)
  | "getProjectState" => pure (getProjectState env, false)
  | "inspectDeclaration" => pure (← inspectDeclaration env request, false)
  | "getProjectedAst" => pure (← getProjectedAst env request, false)
  | "getGoalState" => pure (← getGoalState env request, false)
  | "getDiagnostics" => pure (getDiagnostics, false)
  | "shutdown" => pure (Json.mkObj [("shuttingDown", toJson true)], true)
  | operation =>
      throw {
        code := "UNKNOWN_OPERATION"
        message := s!"unknown bridge operation: {operation}"
      }

def processLine (env : Environment) (line : String) : IO (Json × Bool) := do
  match Json.parse line with
  | .error message =>
      pure (failureResponse "" "" {
        code := "MALFORMED_JSON"
        message := "request is not valid JSON"
        data := some (toJson message)
      }, false)
  | .ok json =>
      match fromJson? json with
      | .error message =>
          pure (failureResponse
            (requestFieldOrEmpty json "requestId")
            (requestFieldOrEmpty json "operation") {
              code := "INVALID_REQUEST"
              message := "request does not match the bridge envelope"
              data := some (toJson message)
            }, false)
      | .ok request =>
          try
            match ← (dispatch env request).run with
            | .ok (result, shouldShutdown) =>
                pure (successResponse request result, shouldShutdown)
            | .error error =>
                pure (failureResponse
                  request.requestId
                  request.operation
                  error, false)
          catch exception =>
            pure (failureResponse
              request.requestId
              request.operation {
                code := "INTERNAL_ERROR"
                message := "Lean bridge operation failed"
                data := some (toJson (toString exception))
              }, false)

partial def serve (env : Environment) (stdin stdout : IO.FS.Stream) : IO UInt32 := do
  let line ← stdin.getLine
  if line.isEmpty then
    pure 0
  else
    let (response, shouldShutdown) ← processLine env line
    stdout.putStrLn response.compress
    stdout.flush
    if shouldShutdown then pure 0 else serve env stdin stdout

def main (_args : List String) : IO UInt32 := do
  initSearchPath (← findSysroot) [".lake/build/lib/lean"]
  let env ← importModules #[{ module := `Surface }] {}
  serve env (← IO.getStdin) (← IO.getStdout)

end SurfaceBridge

def main (args : List String) : IO UInt32 :=
  SurfaceBridge.main args
```
