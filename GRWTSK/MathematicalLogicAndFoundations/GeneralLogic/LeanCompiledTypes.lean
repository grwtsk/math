import LeanCompiledTyping

/-! Local observer tooling for the separately selected COMPILED-TYPES-ONLY/v1
profile. The host pins the expression-writer dependency and source-validates the
research module. This profile never reads proof bodies or collects axioms. -/
open Lean
namespace LeanCompiledTypeOnly
open LeanCompiledTyping

def observe (module : Name) (dir : System.FilePath) (env : Environment) : IO Unit := do
  IO.FS.createDirAll (dir / "artifacts")
  let output ← IO.FS.Handle.mk (dir / "observations.jsonl") .write
  let some moduleIdx := env.getModuleIdx? module |
    throw <| IO.userError "TYPES_ONLY_IMPORTED_MODULE_UNAVAILABLE"
  -- Enumerate the selected module's compiled constant data directly. The full
  -- environment index also contains IR-only names; that separate inventory is
  -- deliberately unavailable here rather than scanning every imported package.
  let data := env.header.moduleData[moduleIdx.toNat]!
  let mut selected : NameSet := {}
  for name in data.constNames do
    if env.getModuleIdxFor? name == some moduleIdx then selected := selected.insert name
  let indexed := selected.toArray
  let mut observed := 0
  let mut missing := 0
  let mut typesAvailable := 0
  for name in indexed.qsort Name.lt do
    match env.find? name with
    | none =>
      missing := missing + 1
      emit output <| obj [("record_type", str "CompiledTypeOnlyModuleIndexNameObservation"),
        ("profile", str "COMPILED-TYPES-ONLY/v1"),
        ("name", str name.toString), ("defining_module", str module.toString),
        ("constant_info", str "UNAVAILABLE"), ("logical_declaration_kind", str "UNKNOWN"),
        ("proof_acceptance", str "NOT_CLAIMED")]
    | some ci =>
      let mut typeFile := Json.null
      let mut unavailableReason := Json.null
      try
        typeFile := str (← artifact dir observed "type" ci.type)
        typesAvailable := typesAvailable + 1
      catch error =>
        unavailableReason := str error.toString
      emit output <| obj [
        ("schema_version", nat 1), ("record_type", str "CompiledTypeOnlyObservation"),
        ("profile", str "COMPILED-TYPES-ONLY/v1"), ("status", str "KNOWN_PARTIAL"),
        ("name", str name.toString), ("name_structure", nameJson name),
        ("declaration_kind", str (kind ci)), ("defining_module", str module.toString),
        ("module_ownership", str "LEAN_CONST_TO_MODULE_INDEX"),
        ("visibility", str (if isPrivateName name then "private" else "public")),
        ("universe_parameters", toJson (ci.levelParams.map toString)),
        ("type_artifact", typeFile),
        ("type_status", str (if typeFile == Json.null then "UNAVAILABLE" else "KNOWN")),
        ("type_unavailable_reason", unavailableReason),
        ("type_references", names (ci.type.getUsedConstants.qsort Name.lt)),
        ("body_status", str "NOT_RUN_TYPES_ONLY_PROFILE"), ("body_artifact", Json.null),
        ("body_references", Json.null), ("axioms", Json.null), ("contains_sorry_ax", Json.null),
        ("axiom_status", str "NOT_RUN_TYPES_ONLY_PROFILE"),
        ("command_owner_status", str "UNAVAILABLE_REQUIRES_INSTRUMENTED_SOURCE_OBSERVATION"),
        ("generated_family", str "UNAVAILABLE_REQUIRES_SEPARATE_OWNERSHIP_OBSERVATION"),
        ("unsafe", toJson ci.isUnsafe), ("partial_definition", toJson ci.isPartial),
        ("complete_context", str "UNAVAILABLE"), ("provenance_status", str "UNKNOWN"),
        ("independent_replay", str "NOT_RUN"), ("proof_acceptance", str "NOT_CLAIMED")]
      observed := observed + 1
    output.flush
  emit output <| obj [("record_type", str "CompiledTypeOnlyModuleObservation"),
    ("profile", str "COMPILED-TYPES-ONLY/v1"), ("module", str module.toString),
    ("declarations_total", nat observed), ("types_available", nat typesAvailable),
    ("types_unavailable", nat (observed - typesAvailable)),
    ("selected_module_data_names_total", nat indexed.size),
    ("selected_module_data_names_without_constantinfo", nat missing),
    ("inventory_method", str "SELECTED_MODULE_DATA_CONSTNAMES_WITH_CONST_TO_MODULE_INDEX_CHECK"),
    ("index_only_generated_names", str "UNAVAILABLE_REQUIRES_SEPARATE_FULL_INDEX_OBSERVATION"),
    ("body_phase", str "NOT_RUN"), ("axiom_phase", str "NOT_RUN"),
    ("status", str "KNOWN_PARTIAL"), ("proof_acceptance", str "NOT_CLAIMED")]
  output.flush

unsafe def run (requestFile : System.FilePath) : IO Unit := do
  if Lean.versionString != "4.33.0" then
    throw <| IO.userError "BLOCKED_TOOLCHAIN: COMPILED-TYPES-ONLY/v1 requires Lean 4.33.0"
  Lean.initSearchPath (← Lean.findSysroot)
  Lean.enableInitializersExecution
  let request ← IO.ofExcept (Json.parse (← IO.FS.readFile requestFile))
  let entries ← IO.ofExcept request.getArr?
  if entries.isEmpty || entries.size > 32 then
    throw <| IO.userError "TYPES_ONLY_MODULE_BATCH_PROFILE"
  let mut selected : Array (Name × System.FilePath) := #[]
  for entry in entries do
    let name ← IO.ofExcept (entry.getObjValAs? String "module")
    let dir ← IO.ofExcept (entry.getObjValAs? String "output")
    selected := selected.push (name.toName, dir)
  let env ← Lean.importModules (selected.map fun (name, _) => { module := name }) {} (loadExts := false)
  for (name, dir) in selected do observe name dir env
end LeanCompiledTypeOnly
