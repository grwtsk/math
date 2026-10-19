import tools.LeanEnvironmentExtractElements.Declaration

/-!
# Intrinsic module boundary

One invocation emits one compiled module.  This makes a module certificate the
atomic invalidation unit while expressions remain smaller content-addressed
elements shared across module boundaries.
-/

open Lean

namespace MathematicsLeanEnvironmentExtractElements

private def directImport (entry : Import) : Json :=
  Json.mkObj [
    ("direct", toJson true),
    ("event", toJson "import"),
    ("hasCompiledData", Json.null),
    ("importAll", toJson entry.importAll),
    ("isExported", toJson entry.isExported),
    ("isMeta", toJson entry.isMeta),
    ("module", toJson entry.module.toString)
  ]

private def extension (entry : Name × Array EnvExtensionEntry) : Json :=
  Json.mkObj [
    ("authority", toJson "environmentExtension"),
    ("entryCount", toJson entry.2.size),
    ("event", toJson "extension"),
    ("name", toJson entry.1.toString),
    ("status", toJson "registered-but-not-decoded")
  ]

def emitModule
    (emitter : EventEmitter) (moduleName scopeName : Name) : IO Unit := do
  let request : Import := { module := scopeName, importAll := true }
  let environment ← importModules #[request] {}
  let some index := environment.getModuleIdx? moduleName
    | throw <| IO.userError s!"compiled environment omitted requested module {moduleName}"
  let some data := environment.header.moduleData[index]?
    | throw <| IO.userError s!"compiled environment has no module data for {moduleName}"
  let owned := data.constants.filter fun information =>
    environment.getModuleIdxFor? information.name == some index
  emitter.emit <| Json.mkObj [
    ("adapterVersion", toJson "lean-v4.32.0-element-adapter/1"),
    ("checkerVersion", toJson Lean.versionString),
    ("directImportCount", toJson data.imports.size),
    ("event", toJson "module"),
    ("extensionCount", toJson data.entries.size),
    ("extraConstantCount", toJson data.extraConstNames.size),
    ("extractorVersion", toJson "mathematics-lean-element-stream/1.0.0"),
    ("module", toJson moduleName.toString),
    ("ownedConstantCount", toJson owned.size),
    ("schemaVersion", toJson "mathematics.lean-element-stream/1"),
    ("scopeModule", toJson scopeName.toString),
    ("trustLevel", toJson environment.header.trustLevel.toNat)
  ]
  for entry in data.imports do
    emitter.emit (directImport entry)
  for entry in data.entries do
    emitter.emit (extension entry)
  for name in data.extraConstNames do
    emitter.emit <| Json.mkObj [
      ("event", toJson "extra-constant"),
      ("name", toJson name.toString)
    ]
  for information in owned.qsort fun left right => Name.quickLt left.name right.name do
    emitDeclaration emitter environment moduleName information
  emitter.emit <| Json.mkObj [
    ("declarationCount", toJson owned.size),
    ("event", toJson "end"),
    ("module", toJson moduleName.toString)
  ]

end MathematicsLeanEnvironmentExtractElements
