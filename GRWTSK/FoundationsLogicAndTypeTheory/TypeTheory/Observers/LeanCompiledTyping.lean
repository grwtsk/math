import Lean

/-! Compiled-artifact observation after a host-bound source-validating Lake build.
Serialization is derived from the local S0 observer; no upstream declarations are
renamed. Command context/ownership require the separate instrumented observation.
A loaded artifact is not independent kernel replay or complete provenance. -/
open Lean Lean.Elab
namespace LeanCompiledTyping
def obj := Json.mkObj
def str (s : String) := toJson s
def nat (n : Nat) := toJson n
def names (ns : Array Name) := toJson (ns.map toString)
partial def nameJson : Name → Json
  | .anonymous => obj [("tag", str "anonymous")]
  | .str p s => obj [("tag", str "str"), ("prefix", nameJson p), ("value", str s)]
  | .num p n => obj [("tag", str "num"), ("prefix", nameJson p), ("value", nat n)]
partial def levelJson : Level → Json
  | .zero => obj [("tag", str "zero")]
  | .succ l => obj [("tag", str "succ"), ("level", levelJson l)]
  | .max a b => obj [("tag", str "max"), ("left", levelJson a), ("right", levelJson b)]
  | .imax a b => obj [("tag", str "imax"), ("left", levelJson a), ("right", levelJson b)]
  | .param n => obj [("tag", str "param"), ("name", nameJson n)]
  | .mvar n => obj [("tag", str "mvar"), ("name", nameJson n.name)]
def binderJson : BinderInfo → Json
  | .default => str "explicit"
  | .implicit => str "implicit"
  | .strictImplicit => str "strict_implicit"
  | .instImplicit => str "instance_implicit"
def dataJson : DataValue → Json
  | .ofString v => obj [("tag", str "string"), ("value", str v)]
  | .ofBool v => obj [("tag", str "bool"), ("value", toJson v)]
  | .ofName v => obj [("tag", str "name"), ("value", nameJson v)]
  | .ofNat v => obj [("tag", str "nat"), ("value", nat v)]
  | .ofInt v => obj [("tag", str "int"), ("value", toJson v)]
  | .ofSyntax v => obj [("tag", str "syntax_repr_lean_4_33_0"), ("value", str (reprStr v))]
partial def exprJson : Expr → Json
  | .bvar n => obj [("tag", str "bvar"), ("index", nat n)]
  | .fvar n => obj [("tag", str "fvar"), ("name", nameJson n.name)]
  | .mvar n => obj [("tag", str "mvar"), ("name", nameJson n.name)]
  | .sort l => obj [("tag", str "sort"), ("level", levelJson l)]
  | .const n ls => obj [("tag", str "const"), ("name", nameJson n), ("levels", toJson (ls.map levelJson))]
  | .app f a => obj [("tag", str "app"), ("function", exprJson f), ("argument", exprJson a)]
  | .lam n t b bi => obj [("tag", str "lam"), ("name", nameJson n), ("type", exprJson t), ("body", exprJson b), ("binder_info", binderJson bi)]
  | .forallE n t b bi => obj [("tag", str "forall"), ("name", nameJson n), ("type", exprJson t), ("body", exprJson b), ("binder_info", binderJson bi)]
  | .letE n t v b nd => obj [("tag", str "let"), ("name", nameJson n), ("type", exprJson t), ("value", exprJson v), ("body", exprJson b), ("non_dependent", toJson nd)]
  | .lit (.natVal n) => obj [("tag", str "literal_nat"), ("value", nat n)]
  | .lit (.strVal s) => obj [("tag", str "literal_string"), ("value", str s)]
  | .mdata m e => obj [("tag", str "metadata"), ("entries", toJson (m.entries.map fun (k,v) => obj [("key", nameJson k), ("value", dataJson v)])), ("expression", exprJson e)]
  | .proj n i e => obj [("tag", str "projection"), ("name", nameJson n), ("index", nat i), ("expression", exprJson e)]
def kind : ConstantInfo → String
  | .axiomInfo _ => "axiom" | .defnInfo _ => "definition" | .thmInfo _ => "theorem"
  | .opaqueInfo _ => "opaque" | .quotInfo _ => "quotient" | .inductInfo _ => "inductive"
  | .ctorInfo _ => "constructor" | .recInfo _ => "recursor"
def optionJson (opts : Options) : Json := Id.run do
  let mut result : Array Json := #[]
  for (k,v) in opts do
    result := result.push (obj [("name", str k.toString), ("value", dataJson v)])
  return toJson result
def openJson : OpenDecl → Json
  | .simple n exceptions => obj [("namespace", str n.toString), ("exceptions", toJson (exceptions.map toString))]
  | .explicit n d => obj [("alias", str n.toString), ("declaration", str d.toString)]
def scopeJson (s : Command.Scope) : Json := obj [
  ("header", str s.header), ("namespace", str s.currNamespace.toString),
  ("universe_names", toJson (s.levelNames.map toString)),
  ("variables", toJson (s.varDecls.map fun v => reprStr v.raw)),
  ("variable_ids", toJson (s.varUIds.map toString)),
  ("included_variables", toJson (s.includedVars.map toString)),
  ("omitted_variables", toJson (s.omittedVars.map toString)),
  ("open_declarations", toJson (s.openDecls.map openJson)),
  ("options", optionJson s.opts),
  ("section_attributes", toJson (s.attrs.map fun a => reprStr a.raw)),
  ("noncomputable", toJson s.isNoncomputable), ("public_section", toJson s.isPublic)]
def contextJson (s : Command.State) : Json := obj [
  ("status", str "KNOWN_PARTIAL"), ("scopes", toJson (s.scopes.map scopeJson)),
  ("unavailable", toJson (["local_notation_extension_inventory", "local_instance_priorities", "open_scopes_extension_inventory", "custom_command_effects", "imported_macro_tactic_inventory", "synchronous_observer_option_override"] : List String))]
def emit (h : IO.FS.Handle) (j : Json) : IO Unit := h.putStrLn j.compress

structure ExpressionWriter where
  handle : IO.FS.Handle
  bytes : IO.Ref Nat
  pending : IO.Ref (Array String)
  pendingBytes : IO.Ref Nat

def ExpressionWriter.flush (writer : ExpressionWriter) : IO Unit := do
  let fragments ← writer.pending.get
  if !fragments.isEmpty then
    writer.handle.putStr (String.join fragments.toList)
    writer.pending.set #[]
    writer.pendingBytes.set 0

def ExpressionWriter.put (writer : ExpressionWriter) (text : String) : IO Unit := do
  let total := (← writer.bytes.get) + text.utf8ByteSize
  if total > 1024 * 1024 * 1024 then
    throw <| IO.userError "RESOURCE_BOUNDED_EXPRESSION_BYTES_1_GIB"
  writer.bytes.set total
  writer.pending.modify (·.push text)
  let pendingBytes := (← writer.pendingBytes.get) + text.utf8ByteSize
  writer.pendingBytes.set pendingBytes
  if pendingBytes ≥ 64 * 1024 || (← writer.pending.get).size ≥ 512 then
    writer.flush

def ExpressionWriter.json (writer : ExpressionWriter) (json : Json) : IO Unit :=
  writer.put json.compress

/- Stream the same sorted-key JSON grammar as exprJson. The proof expression
itself remains shared Lean data; no full expanded Json tree/string is built. -/
partial def writeExpression (w : ExpressionWriter) (e : Expr) (depth : Nat := 0) : IO Unit := do
  if depth > 256 then throw <| IO.userError "UNSUPPORTED_EXPRESSION_PRODUCER_DEPTH_256"
  let sub (e : Expr) := writeExpression w e (depth + 1)
  match e with
  | .bvar n => w.put "{\"index\":"; w.json (nat n); w.put ",\"tag\":\"bvar\"}"
  | .fvar n => w.put "{\"name\":"; w.json (nameJson n.name); w.put ",\"tag\":\"fvar\"}"
  | .mvar n => w.put "{\"name\":"; w.json (nameJson n.name); w.put ",\"tag\":\"mvar\"}"
  | .sort l => w.put "{\"level\":"; w.json (levelJson l); w.put ",\"tag\":\"sort\"}"
  | .const n ls =>
    w.put "{\"levels\":"; w.json (toJson (ls.map levelJson)); w.put ",\"name\":"
    w.json (nameJson n); w.put ",\"tag\":\"const\"}"
  | .app f a => w.put "{\"argument\":"; sub a; w.put ",\"function\":"; sub f; w.put ",\"tag\":\"app\"}"
  | .lam n t b bi | .forallE n t b bi =>
    w.put "{\"binder_info\":"; w.json (binderJson bi); w.put ",\"body\":"; sub b
    w.put ",\"name\":"; w.json (nameJson n)
    w.put (if e.isLambda then ",\"tag\":\"lam\",\"type\":" else ",\"tag\":\"forall\",\"type\":")
    sub t; w.put "}"
  | .letE n t v b nd =>
    w.put "{\"body\":"; sub b; w.put ",\"name\":"; w.json (nameJson n)
    w.put ",\"non_dependent\":"; w.json (toJson nd); w.put ",\"tag\":\"let\",\"type\":"
    sub t; w.put ",\"value\":"; sub v; w.put "}"
  | .lit (.natVal n) => w.put "{\"tag\":\"literal_nat\",\"value\":"; w.json (nat n); w.put "}"
  | .lit (.strVal s) => w.put "{\"tag\":\"literal_string\",\"value\":"; w.json (str s); w.put "}"
  | .mdata m e =>
    w.put "{\"entries\":"
    w.json (toJson (m.entries.map fun (k,v) => obj [("key", nameJson k), ("value", dataJson v)]))
    w.put ",\"expression\":"; sub e; w.put ",\"tag\":\"metadata\"}"
  | .proj n i e =>
    w.put "{\"expression\":"; sub e; w.put ",\"index\":"; w.json (nat i)
    w.put ",\"name\":"; w.json (nameJson n); w.put ",\"tag\":\"projection\"}"

def artifact (dir : System.FilePath) (index : Nat) (suffix : String) (e : Expr) : IO String := do
  let path := s!"artifacts/{index}-{suffix}.json"
  let h ← IO.FS.Handle.mk (dir / path) .write
  let bytes ← IO.mkRef 0
  let pending ← IO.mkRef (#[] : Array String)
  let pendingBytes ← IO.mkRef 0
  let writer : ExpressionWriter := { handle := h, bytes, pending, pendingBytes }
  writer.put "{\"expression\":"
  writeExpression writer e
  writer.put ",\"format\":\"lean-expr-json-v1\",\"lean_version\":\"4.33.0\",\"schema_version\":1}\n"
  writer.flush
  h.flush
  return path

def serializationControls (dir : System.FilePath) : IO Unit := do
  IO.FS.createDirAll dir
  let t := Expr.sort (.param `u)
  let sample := Expr.app (.const `Nat.succ []) (.lit (.natVal 3))
  let mut samples : Array Expr := #[
    .bvar 1, .fvar ⟨`local⟩, .mvar ⟨`hole⟩, t, .const `Nat [.zero, .max (.param `u) (.succ .zero)],
    sample, .lam `x t (.bvar 0) .implicit, .forallE `x t (.bvar 0) .instImplicit,
    .letE `x t sample (.bvar 0) true, .lit (.strVal "quoted\"\nλ"),
    .mdata (KVMap.empty.setBool `flag true) sample, .proj `Prod 0 sample]
  samples := samples.push (.lit (.strVal (String.ofList (List.replicate (64 * 1024 + 3) 'λ'))))
  let mut shared := sample
  for _ in [:10] do shared := .app shared shared
  samples := samples.push shared
  for i in [:samples.size] do
    let path := dir / s!"{i}.json"
    let h ← IO.FS.Handle.mk path .write
    let bytes ← IO.mkRef 0
    let pending ← IO.mkRef (#[] : Array String)
    let pendingBytes ← IO.mkRef 0
    let writer : ExpressionWriter := { handle := h, bytes, pending, pendingBytes }
    writeExpression writer samples[i]!
    writer.flush
    h.flush
    if (← IO.FS.readFile path) != (exprJson samples[i]!).compress then
      throw <| IO.userError s!"STREAM_GRAMMAR_MISMATCH:{i}"
  IO.println s!"STREAM_GRAMMAR_CONTROLS_PASSED:{samples.size}"

structure AxiomGraph where
  edges : Std.HashMap Name (Array Name) := {}
  axioms : NameSet := {}
  unavailable : NameSet := {}

def buildAxiomGraph (env : Environment) (starts : Array Name) : AxiomGraph := Id.run do
  let mut pending := starts
  let mut seen : Std.HashSet Name := {}
  let mut graph : AxiomGraph := {}
  while !pending.isEmpty do
    let name := pending.back!
    pending := pending.pop
    if seen.contains name then continue
    seen := seen.insert name
    match env.find? name with
    | none => graph := { graph with unavailable := graph.unavailable.insert name }
    | some ci =>
      if kind ci == "axiom" then graph := { graph with axioms := graph.axioms.insert name }
      let mut references := ci.type.getUsedConstants
      if let some body := ci.value? true then
        references := references ++ body.getUsedConstants
      if let .inductInfo value := ci then
        references := references ++ value.ctors.toArray
      graph := { graph with edges := graph.edges.insert name references }
      pending := pending ++ references.filter (fun reference => !seen.contains reference)
  return graph

def observedAxioms (graph : AxiomGraph) (start : Name) : Array Name × Array Name := Id.run do
  let mut pending := #[start]
  let mut seen : Std.HashSet Name := {}
  let mut axioms : NameSet := {}
  let mut unavailable : NameSet := {}
  while !pending.isEmpty do
    let name := pending.back!
    pending := pending.pop
    if seen.contains name then continue
    seen := seen.insert name
    if graph.axioms.contains name then axioms := axioms.insert name
    if graph.unavailable.contains name then unavailable := unavailable.insert name
    pending := pending ++ graph.edges[name]?.getD #[]
  return (axioms.toArray.qsort Name.lt, unavailable.toArray.qsort Name.lt)

def compiled (module : Name) (dir : System.FilePath) (env : Environment) : IO Unit := do
  IO.FS.createDirAll (dir / "artifacts")
  let h ← IO.FS.Handle.mk (dir / "observations.jsonl") .write
  let moduleNames := env.header.moduleNames
  let indexedNames := env.const2ModIdx.toArray.filterMap fun (name, idx) =>
    if moduleNames[idx.toNat]! == module then some name else none
  let mut unavailableNames := 0
  for name in indexedNames.qsort Name.lt do
    if (env.find? name).isNone then
      unavailableNames := unavailableNames + 1
      emit h <| obj [("record_type", str "CompiledModuleIndexNameObservation"),
        ("name", str name.toString), ("defining_module", str module.toString),
        ("constant_info", str "UNAVAILABLE"), ("logical_declaration_kind", str "UNKNOWN"),
        ("reason", str "MODULE_NAME_INDEX_ENTRY_HAS_NO_CONSTANTINFO; NATIVE_OR_GENERATED_ROLE_NOT_INFERRED_FROM_NAME"),
        ("type_status", str "UNAVAILABLE"), ("body_status", str "UNAVAILABLE"),
        ("generated_owner", str "UNAVAILABLE_REQUIRES_SOURCE_OR_IR_OWNERSHIP_RECORD"),
        ("proof_acceptance", str "NOT_CLAIMED")]
      h.flush
  let selected := env.const2ModIdx.toArray.filterMap fun (name, idx) =>
    if moduleNames[idx.toNat]! == module then env.find? name |>.map (name, ·) else none
  let selected := selected.qsort (fun a b => Name.lt a.1 b.1)
  let mut index := 0
  for (name, ci) in selected do
    let typeFile ← artifact dir index "type" ci.type
    let bodyFile ← match ci.value? true with
      | some e => artifact dir index "body" e
      | none => pure ""
    let typeReferences := ci.type.getUsedConstants |>.qsort Name.lt
    let bodyReferences := (ci.value? true).map Expr.getUsedConstants |>.getD #[] |>.qsort Name.lt
    let family := match ci with
      | .ctorInfo v => obj [("status", str "KNOWN"), ("owner", str v.induct.toString), ("role", str "constructor")]
      | .recInfo v => obj [("status", str "KNOWN"), ("owners", toJson (v.all.map toString)), ("role", str "recursor")]
      | .inductInfo v => obj [("status", str "KNOWN"), ("owners", toJson (v.all.map toString)), ("constructors", toJson (v.ctors.map toString)), ("role", str "inductive")]
      | _ => obj [("status", str "KNOWN_PARTIAL"), ("role_status", str "UNAVAILABLE_WITHOUT_COMMAND_OBSERVATION")]
    emit h <| obj [
      ("schema_version", nat 1), ("record_type", str "CompiledDeclarationObservation"),
      ("provenance_origin", str "compiler_artifact_observation"), ("status", str "KNOWN_PARTIAL"),
      ("name", str name.toString), ("name_structure", nameJson name), ("declaration_kind", str (kind ci)),
      ("defining_module", str module.toString), ("module_ownership", str "LEAN_CONST_TO_MODULE_INDEX"),
      ("visibility", str (if isPrivateName name then "private" else "public")),
      ("universe_parameters", toJson (ci.levelParams.map toString)), ("generated_family", family),
      ("command_owner_status", str "UNAVAILABLE_REQUIRES_INSTRUMENTED_SOURCE_OBSERVATION"),
      ("type_artifact", str typeFile), ("type_status", str "KNOWN"),
      ("contract_complete", toJson true), ("contract_format", str "lean-expr-json-v1"),
      ("body_artifact", if bodyFile.isEmpty then Json.null else str bodyFile),
      ("body_status", str (if bodyFile.isEmpty then "NOT_APPLICABLE" else "KNOWN")),
      ("type_references", names typeReferences), ("body_references", names bodyReferences),
      ("proof_references", if kind ci == "theorem" then names bodyReferences else Json.null),
      ("axioms", Json.null), ("contains_sorry_ax", Json.null),
      ("axiom_observation_method", str "REQUIRES_SEPARATE_COMPILED_AXIOM_OBSERVATION"),
      ("axiom_closure_status", str "UNAVAILABLE_PENDING_AXIOM_PHASE"),
      ("unavailable_dependency_constants", Json.null),
      ("unsafe", toJson ci.isUnsafe), ("partial_definition", toJson ci.isPartial),
      ("freshness", str "REQUIRES_HOST_SOURCE_VALIDATING_BUILD_AND_ARTIFACT_BINDING"),
      ("independent_replay", str "NOT_RUN"), ("complete_context", str "UNAVAILABLE"),
      ("provenance_status", str "UNKNOWN"), ("proof_acceptance", str "NOT_CLAIMED")]
    h.flush
    index := index + 1
  emit h <| obj [("schema_version", nat 1), ("record_type", str "CompiledModuleObservation"),
    ("status", str "KNOWN_PARTIAL"), ("module", str module.toString),
    ("declarations_total", nat index), ("commands", str "NOT_OBSERVED"),
    ("module_index_names_total", nat indexedNames.size),
    ("module_index_names_without_constantinfo", nat unavailableNames),
    ("independent_replay", str "NOT_RUN"), ("complete_context", str "UNAVAILABLE")]
  h.flush

def axiomObservations (module : Name) (dir : System.FilePath) (env : Environment) (graph : AxiomGraph) : IO Unit := do
  let h ← IO.FS.Handle.mk (dir / "observations.jsonl") .append
  let selected := env.const2ModIdx.toArray.filterMap fun (name, idx) =>
    if env.header.moduleNames[idx.toNat]! == module && (env.find? name).isSome then some name else none
  let selected := selected.qsort Name.lt
  for name in selected do
    let (axioms, unavailableConstants) := observedAxioms graph name
    emit h <| obj [("schema_version", nat 1), ("record_type", str "CompiledAxiomObservation"),
      ("name", str name.toString), ("defining_module", str module.toString),
      ("axioms", names axioms), ("contains_sorry_ax", toJson (axioms.contains ``sorryAx)),
      ("axiom_observation_method", str "PRIVATE_COMPILED_CONSTANT_GRAPH_CACHED_EDGES"),
      ("axiom_closure_status", str (if unavailableConstants.isEmpty then "KNOWN" else "KNOWN_PARTIAL")),
      ("unavailable_dependency_constants", names unavailableConstants),
      ("proof_acceptance", str "NOT_CLAIMED")]
    h.flush
  emit h <| obj [("record_type", str "CompiledAxiomModuleObservation"),
    ("module", str module.toString), ("declarations_total", nat selected.size),
    ("independent_replay", str "NOT_RUN")]
  h.flush

/- A separately selected profile: Lean's standard collector can use the axiom
cache exported in imported oleans. This requires loaded extensions and does not
reconstruct the full dependency graph or certify its availability. -/
def guardedStandardAxioms (env : Environment) (name : Name) : IO (Array Name) := do
  -- collectAxioms returns an empty set for a missing name; refuse that case.
  if (env.checked.get.find? name).isNone then
    throw <| IO.userError s!"STANDARD_AXIOM_COLLECTOR_CONSTANT_UNAVAILABLE:{name}"
  (Lean.collectAxioms name : CoreM (Array Name)).toIO'
    { fileName := "compiled-axiom-observation", fileMap := FileMap.ofString "" } { env }

def exportedAxiomObservations (module : Name) (dir : System.FilePath) (env : Environment) : IO Unit := do
  let h ← IO.FS.Handle.mk (dir / "observations.jsonl") .append
  let selected := env.const2ModIdx.toArray.filterMap fun (name, idx) =>
    if env.header.moduleNames[idx.toNat]! == module && (env.find? name).isSome then some name else none
  for name in selected.qsort Name.lt do
    let axioms ← guardedStandardAxioms env name
    emit h <| obj [("schema_version", nat 1), ("record_type", str "CompiledAxiomObservation"),
      ("name", str name.toString), ("defining_module", str module.toString),
      ("axioms", names (axioms.qsort Name.lt)), ("contains_sorry_ax", toJson (axioms.contains ``sorryAx)),
      ("axiom_observation_method", str "LEAN_4_33_STANDARD_COLLECTOR_EXPORTED_AXIOM_CACHE"),
      ("axiom_closure_status", str "STANDARD_COLLECTOR_REPORT_DEPENDENCY_COMPLETENESS_UNAVAILABLE"),
      ("unavailable_dependency_constants", Json.null),
      ("proof_acceptance", str "NOT_CLAIMED")]
    h.flush
  emit h <| obj [("record_type", str "CompiledAxiomModuleObservation"),
    ("module", str module.toString), ("declarations_total", nat selected.size),
    ("axiom_observation_method", str "LEAN_4_33_STANDARD_COLLECTOR_EXPORTED_AXIOM_CACHE"),
    ("dependency_completeness", str "UNAVAILABLE"), ("independent_replay", str "NOT_RUN")]
  h.flush
end LeanCompiledTyping

unsafe def main (args : List String) : IO UInt32 := do
  if Lean.versionString != "4.33.0" then
    IO.eprintln "BLOCKED_TOOLCHAIN: helper requires Lean 4.33.0"
    return 3
  if let ["--serialization-controls", out] := args then
    LeanCompiledTyping.serializationControls out
    return 0
  let exportedAxioms := args.head? == some "--exported-axioms"
  let args := if exportedAxioms then args.drop 1 else args
  let [requestFile] := args | do
    IO.eprintln "usage: lake env lean --run LeanCompiledTyping.lean REQUEST_JSON"
    return 2
  Lean.initSearchPath (← Lean.findSysroot)
  Lean.enableInitializersExecution
  try
    let request ← IO.ofExcept (Json.parse (← IO.FS.readFile requestFile))
    let entries ← IO.ofExcept request.getArr?
    if entries.size > 32 then
      throw <| IO.userError "RESOURCE_BOUNDED: maximum 32 modules per compiled observation"
    let mut selected : Array (Name × System.FilePath) := #[]
    for entry in entries do
      let name ← IO.ofExcept (entry.getObjValAs? String "module")
      let dir ← IO.ofExcept (entry.getObjValAs? String "output")
      selected := selected.push (name.toName, dir)
    -- Constant-graph mode omits extensions. Exported-axiom mode explicitly loads
    -- them for Lean's standard collector; neither profile observes source commands.
    let env ← Lean.importModules (selected.map fun (name, _) => { module := name }) {}
      (loadExts := exportedAxioms)
    let modules := selected.map Prod.fst
    let starts := env.const2ModIdx.toArray.filterMap fun (name, idx) =>
      if modules.contains env.header.moduleNames[idx.toNat]! && (env.find? name).isSome then some name else none
    for (name, dir) in selected do
      LeanCompiledTyping.compiled name dir env
    if exportedAxioms then
      for (name, dir) in selected do
        LeanCompiledTyping.exportedAxiomObservations name dir env
    else
      let graph := LeanCompiledTyping.buildAxiomGraph env starts
      for (name, dir) in selected do
        LeanCompiledTyping.axiomObservations name dir env graph
    return 0
  catch error =>
    IO.eprintln error.toString
    return 1
