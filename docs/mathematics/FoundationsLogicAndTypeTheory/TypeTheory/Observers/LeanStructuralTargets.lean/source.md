# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TypeTheory.Observers.LeanStructuralTargets

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `756e10e0c66ded61cb663774310f2c589f064265` · SHA-256 `1973797d45e30f57430215afab19ac7237a9b5b4b258245da68b7f023e2ae6da`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LeanCompiledTyping

/-! Exact structural selectors for a separately captured compiled environment.
The host must qualify the explicit artifact map before accepting observations.
No source command, kernel replay, provenance or migration admission is inferred. -/
open Lean LeanCompiledTyping
namespace LeanStructuralTargets

def profile := "STRUCTURAL-TARGET-OBSERVATION/v1"

def fields (j : Json) (keys : List String) : Except String Unit := do
  let o ← j.getObj?
  if o.size != keys.length then throw "STRUCTURAL_FIELDS"
  for key in keys do discard <| j.getObjVal? key

def decodeName (j : Json) (fuel : Nat := 65) : Except String Name := do
  match fuel with
  | 0 => throw "RESOURCE_BOUNDED_NAME_DEPTH_64"
  | fuel + 1 =>
    let tag ← j.getObjValAs? String "tag"
    match tag with
    | "anonymous" => fields j ["tag"]; return .anonymous
    | "str" =>
      fields j ["tag", "prefix", "value"]
      let value ← j.getObjValAs? String "value"
      if value.utf8ByteSize > 1024 then throw "RESOURCE_BOUNDED_NAME_COMPONENT_1024"
      return .str (← decodeName (← j.getObjVal? "prefix") fuel) value
    | "num" =>
      fields j ["tag", "prefix", "value"]
      let value ← (← j.getObjVal? "value").getNat?
      if value > 18446744073709551615 then throw "RESOURCE_BOUNDED_NAME_NUM_U64"
      return .num (← decodeName (← j.getObjVal? "prefix") fuel) value
    | _ => throw "UNSUPPORTED_NAME_TAG"

def structures (values : Array Name) := toJson (values.map nameJson)

def family (ci : ConstantInfo) : Json := match ci with
  | .ctorInfo v => obj [("status", str "KNOWN"), ("owner", nameJson v.induct), ("role", str "constructor")]
  | .recInfo v => obj [("status", str "KNOWN"), ("owners", structures v.all.toArray), ("role", str "recursor")]
  | .inductInfo v => obj [("status", str "KNOWN"), ("owners", structures v.all.toArray),
      ("constructors", structures v.ctors.toArray), ("role", str "inductive")]
  | _ => obj [("status", str "KNOWN_PARTIAL"), ("role_status", str "UNAVAILABLE_WITHOUT_COMMAND_OBSERVATION")]

def expressionArtifact (dir : System.FilePath) (index : Nat) (suffix : String) (e : Expr)
    : IO (Json × Json) := do
  try return (str (← artifact dir index suffix e), str "KNOWN")
  catch error => return (Json.null, obj [("status", str "UNAVAILABLE"), ("reason", str error.toString)])

def observe (dir : System.FilePath) (targets : Array Name) (env : Environment) : IO Unit := do
  IO.FS.createDirAll (dir / "artifacts")
  let h ← IO.FS.Handle.mk (dir / "observations.jsonl") .write
  let graph := buildAxiomGraph env targets
  let mut available := 0
  for index in [:targets.size] do
    let name := targets[index]!
    let base := [("profile", str profile), ("record_type", str "StructuralTargetObservation"),
      ("name_structure", nameJson name), ("printed_name", str name.toString),
      ("status", str "KNOWN_PARTIAL"), ("origin", str "compiler_artifact_observation"),
      ("source_commands", str "NOT_OBSERVED"), ("complete_context", str "UNAVAILABLE"),
      ("generated_family_completeness", str "UNAVAILABLE"), ("provenance", str "UNKNOWN"),
      ("independent_replay", str "NOT_RUN"), ("proof_acceptance", str "NOT_CLAIMED"),
      ("local_ownership", str "NOT_INFERRED"), ("migration_admission", str "NOT_CLAIMED")]
    let definingModule := (env.getModuleIdxFor? name).bind fun idx => env.header.moduleNames[idx.toNat]?
    match env.find? name with
    | none =>
      emit h <| obj <| base ++ [("resolution", str "UNAVAILABLE"), ("constant_info", str "UNAVAILABLE"),
        ("defining_module", definingModule.map nameJson |>.getD Json.null),
        ("reason", str "EXACT_NAME_HAS_NO_CONSTANTINFO"), ("type_status", str "UNAVAILABLE"),
        ("body_status", str "UNAVAILABLE"), ("axiom_status", str "UNAVAILABLE"),
        ("type_artifact", Json.null), ("body_artifact", Json.null), ("type_references", Json.null),
        ("body_references", Json.null), ("proof_references", Json.null), ("axioms", Json.null)]
    | some ci =>
      available := available + 1
      let (typeFile, typeStatus) ← expressionArtifact dir index "type" ci.type
      let (bodyFile, bodyStatus) ← match ci.value? true with
        | some e => expressionArtifact dir index "body" e
        | none => pure (Json.null, str "NOT_APPLICABLE")
      let typeRefs := ci.type.getUsedConstants.qsort Name.lt
      let bodyRefs := (ci.value? true).map Expr.getUsedConstants |>.map (·.qsort Name.lt)
      let (axioms, unavailable) := observedAxioms graph name
      emit h <| obj <| base ++ [("resolution", str "KNOWN"), ("constant_info", str "KNOWN"),
        ("defining_module", definingModule.map nameJson |>.getD Json.null),
        ("module_status", str (if definingModule.isSome then "KNOWN" else "UNAVAILABLE")),
        ("module_origin", str "LEAN_GET_MODULE_IDX_FOR"), ("declaration_kind", str (kind ci)),
        ("visibility", str (if isPrivateName name then "private" else "public")),
        ("universe_parameters", structures ci.levelParams.toArray), ("generated_family", family ci),
        ("type_artifact", typeFile), ("type_status", typeStatus),
        ("body_artifact", bodyFile), ("body_status", bodyStatus),
        ("type_references", structures typeRefs),
        ("body_references", bodyRefs.map structures |>.getD Json.null),
        ("proof_references", if kind ci == "theorem" then bodyRefs.map structures |>.getD Json.null else Json.null),
        ("axioms", structures axioms), ("axiom_unavailable_constants", structures unavailable),
        ("axiom_status", str (if unavailable.isEmpty then "KNOWN" else "KNOWN_PARTIAL")),
        ("axiom_method", str "PRIVATE_COMPILED_CONSTANT_GRAPH_CACHED_EDGES"),
        ("contains_sorry_ax", toJson (axioms.contains ``sorryAx)),
        ("unsafe", toJson ci.isUnsafe), ("partial_definition", toJson ci.isPartial)]
    h.flush
  emit h <| obj [("profile", str profile), ("record_type", str "StructuralTargetCoverage"),
    ("targets_total", nat targets.size), ("constant_info_available", nat available),
    ("constant_info_unavailable", nat (targets.size - available)), ("complete_context", str "UNAVAILABLE"),
    ("independent_replay", str "NOT_RUN"), ("migration_admission", str "NOT_CLAIMED")]
  h.flush

def run (requestFile : System.FilePath) : IO Unit := do
  if Lean.versionString != "4.33.0" then throw <| IO.userError "BLOCKED_TOOLCHAIN_4_33_REQUIRED"
  let request ← IO.ofExcept (Json.parse (← IO.FS.readFile requestFile))
  let mode ← IO.ofExcept (request.getObjValAs? String "mode")
  let targetJson ← IO.ofExcept ((← IO.ofExcept (request.getObjVal? "targets")).getArr?)
  if targetJson.size > 128 then throw <| IO.userError "RESOURCE_BOUNDED_TARGETS_128"
  let targets ← targetJson.mapM fun j => IO.ofExcept (decodeName j)
  let targets := targets.qsort Name.lt
  for i in [:targets.size - 1] do
    if targets[i]! == targets[i+1]! then throw <| IO.userError "DUPLICATE_STRUCTURAL_TARGET"
  if mode == "decode" then
    IO.println (structures targets).compress
    return
  if mode != "discover" && mode != "observe" then throw <| IO.userError "UNSUPPORTED_MODE"
  Lean.initSearchPath (← Lean.findSysroot)
  let importJson ← IO.ofExcept ((← IO.ofExcept (request.getObjVal? "imports")).getArr?)
  let imports ← importJson.mapM fun j => do
    let module ← IO.ofExcept (decodeName j)
    return ({ module } : Import)
  let artJson ← IO.ofExcept ((← IO.ofExcept (request.getObjVal? "import_artifacts")).getArr?)
  let mut arts : NameMap ImportArtifacts := {}
  for entry in artJson do
    let module ← IO.ofExcept (decodeName (← IO.ofExcept (entry.getObjVal? "module")))
    if arts.contains module then throw <| IO.userError "DUPLICATE_IMPORT_MODULE"
    let paths ← IO.ofExcept (fromJson? (← IO.ofExcept (entry.getObjVal? "paths")))
    arts := arts.insert module paths
  -- An absent map entry must fail before any search-path fallback can load it.
  Lean.searchPathRef.set []
  let env ← importModules imports {} (trustLevel := 0) (plugins := #[]) (loadExts := false)
    (level := .private) (arts := arts)
  let loaded := env.header.modules.map fun imp => obj [
    ("module", nameJson imp.module), ("has_data", toJson imp.hasData),
    ("ir_phases", str (reprStr imp.irPhases))]
  for imp in env.header.modules do
    if !arts.contains imp.module then throw <| IO.userError s!"UNBOUND_EFFECTIVE_IMPORT:{imp.module}"
  let output ← IO.ofExcept (request.getObjValAs? String "output")
  IO.FS.createDirAll output
  IO.FS.writeFile (System.FilePath.mk output / "loaded-modules.json")
    (obj [("profile", str profile), ("modules", toJson loaded),
      ("artifact_binding", str "EXPLICIT_IMPORT_ARTIFACT_MAP_REQUIRES_HOST_BYTE_QUALIFICATION"),
      ("source_replay", str "NOT_RUN"), ("bootstrap_runtime_closure", str "UNAVAILABLE")]).compress
  if mode == "observe" then observe output targets env
end LeanStructuralTargets
```
