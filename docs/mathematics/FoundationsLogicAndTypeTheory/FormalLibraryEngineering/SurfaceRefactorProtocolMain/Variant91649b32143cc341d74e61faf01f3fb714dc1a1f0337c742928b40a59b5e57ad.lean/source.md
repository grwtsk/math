# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SurfaceRefactorProtocolMain.Variant91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31b3a9c47aed8b40851ff68b38a41a2aa52430cc` · SHA-256 `91649b32143cc341d74e61faf01f3fb714dc1a1f0337c742928b40a59b5e57ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean
import Lean.Util.CollectAxioms
import Lean.Util.FoldConsts
import Surface

/-!
# Surface refactor bridge protocol

Long-lived, line-delimited JSON bridge between the Rust supervisor and the
already-built Lean environment.  The bridge never invokes a model and never
writes project source.
-/

open Lean

namespace SurfaceRefactorProtocol

open Surface.Core

def requestSchema := "surface.refactor.bridge.request.v1"

def responseSchema := "surface.refactor.bridge.response.v1"

def protocolVersion : Nat := 1

structure Request where
  schema : String
  protocolVersion : Nat
  requestId : String
  sessionId : Option String := none
  operation : String
  payload : Option Json := none
deriving FromJson

structure ProtocolError where
  code : String
  message : String
  data : Json := Json.mkObj []

abbrev ProtocolM := ExceptT ProtocolError IO

def requestFieldOrEmpty (json : Json) (field : String) : String :=
  match json.getObjValAs? String field with
  | .ok value => value
  | .error _ => ""

def nameFromDottedString (value : String) : Name :=
  value.splitOn "." |>.foldl (fun name part => Name.str name part) Name.anonymous

def declarationModule (env : Environment) (name : Name) : Name :=
  match env.getModuleIdxFor? name with
  | none => env.mainModule
  | some index => env.header.moduleNames[index.toNat]!

def environmentFingerprint (env : Environment) : String :=
  toString <| digestString <| String.intercalate "\n" <|
    env.header.moduleNames.toList.map Name.toString

def constantKind : ConstantInfo → String
  | .axiomInfo _ => "axiom"
  | .defnInfo _ => "definition"
  | .thmInfo _ => "theorem"
  | .opaqueInfo _ => "opaque"
  | .quotInfo _ => "quotient"
  | .inductInfo _ => "inductive"
  | .ctorInfo _ => "constructor"
  | .recInfo _ => "recursor"

def classificationTags (env : Environment) (name : Name) : List String :=
  (if surfaceAdapterAttr.hasTag env name then ["surface_adapter"] else []) ++
  (if surfaceNovelAttr.hasTag env name then ["surface_novel"] else []) ++
  (if surfaceCandidateAttr.hasTag env name then ["surface_candidate"] else []) ++
  (if surfacePublishedAttr.hasTag env name then ["surface_published"] else []) ++
  (if surfaceCertificateAttr.hasTag env name then ["surface_certificate"] else [])

def positionJson (position : Position) : Json :=
  Json.mkObj [("line", toJson position.line), ("column", toJson position.column)]

def rangesJson : Option DeclarationRanges → Json
  | none => Json.null
  | some ranges => Json.mkObj [
      ("start", positionJson ranges.range.pos),
      ("end", positionJson ranges.range.endPos),
      ("selectionStart", positionJson ranges.selectionRange.pos),
      ("selectionEnd", positionJson ranges.selectionRange.endPos)
    ]

def errorJson (error : ProtocolError) : Json :=
  Json.mkObj [
    ("code", toJson error.code),
    ("message", toJson error.message),
    ("data", error.data)
  ]

def responseBase
    (requestId operation : String)
    (sessionId : Option String)
    (ok : Bool)
    (authority : String) : List (String × Json) := [
  ("schema", toJson responseSchema),
  ("protocolVersion", toJson protocolVersion),
  ("requestId", toJson requestId),
  ("sessionId", sessionId.map toJson |>.getD Json.null),
  ("operation", toJson operation),
  ("ok", toJson ok),
  ("elapsedMicros", toJson (0 : Nat)),
  ("authority", toJson authority)
]

def success (request : Request) (_resultAuthority : String) (result : Json) : Json :=
  /- The bridge envelope is an environment observation. Any narrower authority
     for finite data is carried by the result artifact itself. -/
  Json.mkObj <| responseBase request.requestId request.operation request.sessionId true "environmentObserved" ++
    [("result", result)]

def failure
    (requestId operation : String)
    (sessionId : Option String)
    (error : ProtocolError) : Json :=
  Json.mkObj <| responseBase requestId operation sessionId false "environmentObserved" ++
    [("error", errorJson error)]

def payload (request : Request) : Json :=
  request.payload.getD (Json.mkObj [])

def requirePayloadString (request : Request) (field : String) : Except ProtocolError String := do
  let value ← (payload request).getObjValAs? String field |>.mapError fun message => {
    code := "INVALID_REQUEST"
    message := s!"payload.{field} must be a string"
    data := toJson message
  }
  if value.trimAscii.isEmpty then
    throw { code := "INVALID_REQUEST", message := s!"payload.{field} must not be empty" }
  pure value

def requireDeclaration
    (env : Environment)
    (request : Request) : Except ProtocolError (String × Name × ConstantInfo) := do
  let declaration ← requirePayloadString request "declaration"
  let name := nameFromDottedString declaration
  let some info := env.find? name
    | throw {
        code := "DECLARATION_NOT_FOUND"
        message := s!"declaration not found: {declaration}"
      }
  pure (declaration, name, info)

def inspectCore
    (env : Environment)
    (name : Name)
    (info : ConstantInfo) : IO (String × Array Name × Option DeclarationRanges) := do
  let action : CoreM (String × Array Name × Option DeclarationRanges) := do
    let normalizedType ← (do return toString (← Meta.ppExpr info.type)).run'
    let axioms ← Lean.collectAxioms name
    let ranges ← Lean.findDeclarationRanges? name
    pure (normalizedType, axioms, ranges)
  action.toIO'
    { fileName := "<surface_refactor_protocol>", fileMap := default }
    { env := env }

def declarationDescription (env : Environment) (request : Request) : ProtocolM Json := do
  let (declaration, name, info) ← ExceptT.mk <| pure <| requireDeclaration env request
  let (normalizedType, axioms, ranges) ← inspectCore env name info
  let constants := info.getUsedConstantsAsSet.toArray.toList
    |>.map Name.toString
    |>.mergeSort (· < ·)
  pure <| Json.mkObj [
    ("declaration", toJson declaration),
    ("module", toJson (declarationModule env name).toString),
    ("kind", toJson (constantKind info)),
    ("normalizedType", toJson normalizedType),
    ("typeHash", toJson (toString (digestString normalizedType))),
    ("declarationRange", rangesJson ranges),
    ("classificationTags", toJson (classificationTags env name)),
    ("directConstantsUsed", toJson constants),
    ("axiomClosure", toJson (axioms.toList.map Name.toString |>.mergeSort (· < ·))),
    ("proofStatus", toJson (if info.isTheorem then "kernelChecked" else "notTheorem")),
    ("environmentFingerprint", toJson (environmentFingerprint env))
  ]

def canonicalDeclarations (env : Environment) : List ConstantInfo :=
  env.constants.fold (init := #[]) (fun declarations name info =>
      if (`Surface).isPrefixOf name then declarations.push info
      else declarations)
    |>.toList
    |>.mergeSort (fun left right => Name.quickLt left.name right.name)

def projectDescription (env : Environment) : Json :=
  Json.mkObj [
    ("packageRoot", toJson "."),
    ("entryModule", toJson "Surface"),
    ("leanVersion", toJson Lean.versionString),
    ("environmentFingerprint", toJson (environmentFingerprint env)),
    ("moduleCount", toJson env.header.moduleNames.size),
    ("declarationCount", toJson (canonicalDeclarations env).length),
    ("canonical", toJson true)
  ]

def projectIndex (env : Environment) : Json :=
  let declarations := canonicalDeclarations env |>.map fun info =>
    Json.mkObj [
      ("name", toJson info.name.toString),
      ("module", toJson (declarationModule env info.name).toString),
      ("kind", toJson (constantKind info)),
      ("typeHash", toJson (toString (digestString (toString info.type)))),
      ("classifications", toJson (classificationTags env info.name))
    ]
  Json.mkObj [
    ("schema", toJson "surface.refactor.environment-index.v1"),
    ("environmentFingerprint", toJson (environmentFingerprint env)),
    ("declarations", Json.arr declarations.toArray)
  ]

def publicApiSnapshot (env : Environment) : Json :=
  let declarations := canonicalDeclarations env |>.map fun info =>
    Json.mkObj [
      ("name", toJson info.name.toString),
      ("module", toJson (declarationModule env info.name).toString),
      ("normalizedType", toJson (toString info.type)),
      ("typeHash", toJson (toString (digestString (toString info.type)))),
      ("classificationTags", toJson (classificationTags env info.name))
    ]
  Json.mkObj [
    ("schema", toJson "surface.refactor.public-api-snapshot.v1"),
    ("declarations", Json.arr declarations.toArray)
  ]

def patchEnvelopeValidation (request : Request) : Json :=
  let bundle := match (payload request).getObjVal? "patchBundle" with
    | .ok value => value
    | .error _ => Json.null
  let schema := match bundle.getObjValAs? String "schema" with
    | .ok value => value
    | .error _ => ""
  let authority := match bundle.getObjValAs? String "authority" with
    | .ok value => value
    | .error _ => ""
  let operationCount := match bundle.getObjVal? "operations" with
    | .ok value => match value.getArr? with
      | .ok operations => operations.size
      | .error _ => 0
    | .error _ => 0
  let valid := schema = "surface.lean-patch-bundle.v1" &&
    authority = "modelProposed" && operationCount > 0 && operationCount ≤ 3
  Json.mkObj [
    ("schema", toJson "surface.refactor.patch-validation.v1"),
    ("valid", toJson valid),
    ("statementImmutable", toJson valid),
    ("operationBoundSatisfied", toJson (operationCount > 0 && operationCount ≤ 3)),
    ("authority", toJson "deterministic")
  ]

def dispatch (env : Environment) (request : Request) : ProtocolM (Json × String) := do
  if request.schema != requestSchema then
    throw {
      code := "INVALID_SCHEMA"
      message := s!"expected {requestSchema}"
      data := Json.mkObj [("received", toJson request.schema)]
    }
  if request.protocolVersion != protocolVersion then
    throw {
      code := "UNSUPPORTED_PROTOCOL_VERSION"
      message := "only protocol version 1 is supported"
      data := Json.mkObj [("supported", toJson protocolVersion)]
    }
  if request.requestId.trimAscii.isEmpty then
    throw { code := "INVALID_REQUEST", message := "requestId must not be empty" }
  match request.operation with
  | "surface.hello" => pure (Json.mkObj [
      ("protocolVersion", toJson protocolVersion),
      ("leanVersion", toJson Lean.versionString),
      ("operations", toJson [
        "surface.hello", "project.describe", "project.index",
        "project.publicApiSnapshot", "project.axiomSnapshot",
        "project.dependencyClosure", "declaration.describe",
        "declaration.patterns", "task.create", "request.render",
        "patch.validate", "overlay.elaborate",
        "diagnostics.projectGoalGraph", "receipt.emit",
        "session.inspect", "session.cancel"])
    ], "environmentObserved")
  | "project.describe" => pure (projectDescription env, "environmentObserved")
  | "project.index" => pure (projectIndex env, "environmentObserved")
  | "project.publicApiSnapshot" => pure (publicApiSnapshot env, "environmentObserved")
  | "project.axiomSnapshot" =>
      pure (Json.mkObj [
        ("schema", toJson "surface.refactor.axiom-snapshot.v1"),
        ("declaration", ← declarationDescription env request)
      ], "environmentObserved")
  | "project.dependencyClosure" =>
      pure (Json.mkObj [
        ("schema", toJson "surface.refactor.dependency-closure.v1"),
        ("root", ← declarationDescription env request)
      ], "environmentObserved")
  | "declaration.describe" => pure (← declarationDescription env request, "environmentObserved")
  | "declaration.patterns" =>
      pure (Json.mkObj [
        ("schema", toJson "surface.refactor.pattern-cards.v1"),
        ("target", ← declarationDescription env request),
        ("cards", Json.arr #[])
      ], "deterministic")
  | "task.create" =>
      let description ← declarationDescription env request
      let declaration ← ExceptT.mk <| pure <| requirePayloadString request "declaration"
      pure (Json.mkObj [
        ("schema", toJson "surface.refactor.task.v1"),
        ("taskId", toJson ("task:" ++ toString (digestString declaration))),
        ("intent", toJson "refactor"),
        ("target", description),
        ("statementImmutable", toJson true),
        ("authority", toJson "deterministic")
      ], "deterministic")
  | "request.render" =>
      pure (Json.mkObj [
        ("schema", toJson "surface.refactor.rendered-request.v1"),
        ("requestAst", payload request),
        ("authorityCeiling", toJson "modelProposed")
      ], "deterministic")
  | "patch.validate" => pure (patchEnvelopeValidation request, "deterministic")
  | "overlay.elaborate" =>
      pure (Json.mkObj [
        ("schema", toJson "surface.refactor.overlay-elaboration.v1"),
        ("delegatedToRustSupervisor", toJson true),
        ("overlaySourceEvaluated", toJson false),
        ("acceptanceClaim", toJson false),
        ("note", toJson "the Rust foundry invokes Lean on the isolated source and owns the resulting receipt")
      ], "deterministic")
  | "diagnostics.projectGoalGraph" =>
      pure (Json.mkObj [
        ("schema", toJson "surface.refactor.goal-graph.v1"),
        ("goals", Json.arr #[]),
        ("edges", Json.arr #[]),
        ("authority", toJson "environmentObserved")
      ], "environmentObserved")
  | "receipt.emit" =>
      pure (Json.mkObj [
        ("schema", toJson "surface.refactor.kernel-observation-receipt.v1"),
        ("declaration", ← declarationDescription env request),
        ("exposesProposition", toJson false)
      ], "environmentObserved")
  | "session.inspect" =>
      pure (Json.mkObj [
        ("owner", toJson "rust"),
        ("sessionId", request.sessionId.map toJson |>.getD Json.null)
      ], "environmentObserved")
  | "session.cancel" =>
      pure (Json.mkObj [
        ("owner", toJson "rust"),
        ("stateChanged", toJson false),
        ("delegatedToRustSupervisor", toJson true),
        ("sessionId", request.sessionId.map toJson |>.getD Json.null)
      ], "deterministic")
  | operation => throw {
      code := "UNKNOWN_OPERATION"
      message := s!"unknown operation: {operation}"
    }

def processLine (env : Environment) (line : String) : IO Json := do
  match Json.parse line with
  | .error message =>
      pure <| failure "" "" none {
        code := "INVALID_SCHEMA"
        message := "request is not valid JSON"
        data := toJson message
      }
  | .ok json =>
      match fromJson? json with
      | .error message =>
          pure <| failure
            (requestFieldOrEmpty json "requestId")
            (requestFieldOrEmpty json "operation")
            none {
              code := "INVALID_REQUEST"
              message := "request does not match the v1 envelope"
              data := toJson message
            }
      | .ok request =>
          try
            match ← (dispatch env request).run with
            | .ok (result, authority) => pure (success request authority result)
            | .error error => pure (failure request.requestId request.operation request.sessionId error)
          catch exception =>
            pure <| failure request.requestId request.operation request.sessionId {
              code := "INTERNAL_ERROR"
              message := "Lean protocol operation failed"
              data := toJson (toString exception)
            }

partial def serve (env : Environment) (stdin stdout : IO.FS.Stream) : IO UInt32 := do
  let line ← stdin.getLine
  if line.isEmpty then
    pure 0
  else
    stdout.putStrLn (← processLine env line).compress
    stdout.flush
    serve env stdin stdout

def main (args : List String) : IO UInt32 := do
  if !args.isEmpty then
    IO.eprintln "usage: surface_refactor_protocol"
    return 64
  initSearchPath (← findSysroot) [".lake/build/lib/lean"]
  /- Generated candidates remain outside the canonical `Surface` import graph.
     The operational bridge may inspect the explicitly built quarantine target. -/
  let env ← importModules #[
    { module := `Surface },
    { module := `Generated.RefactorFixture }
  ] {}
  serve env (← IO.getStdin) (← IO.getStdout)

end SurfaceRefactorProtocol

def main (args : List String) : IO UInt32 :=
  SurfaceRefactorProtocol.main args
```
