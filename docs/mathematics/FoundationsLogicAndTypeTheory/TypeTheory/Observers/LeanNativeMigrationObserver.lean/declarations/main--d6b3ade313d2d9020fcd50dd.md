# main

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d864056dc650d44f06e80ee6b3ed57c551196ca6f0575a4d2e6514f6d3a214a",
  "kind": "def",
  "lexical_name": "main",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "main--d6b3ade313d2d9020fcd50dd",
  "source": {
    "blob": "364289f4ac8efc32062eb8ce9d4518422b2602ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 237,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Observers/LeanNativeMigrationObserver.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6b3ade313d2d9020fcd50dd581ca8b7df8984a64292e0e2ca70944648d82848",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Observers/LeanNativeMigrationObserver.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d864056dc650d44f06e80ee6b3ed57c551196ca6f0575a4d2e6514f6d3a214a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def main (args : List String) : IO UInt32 := do
  if Lean.versionString != "4.33.0" then
    IO.eprintln "BLOCKED_TOOLCHAIN: helper requires Lean 4.33.0"
    return 3
  let [source, output, moduleName, setupPath, selectionPath] := args | do
    IO.eprintln "usage: lake env lean --run LeanTypingOriginal.lean SOURCE OUTPUT MODULE LAKE_SETUP_JSON SELECTED_ROOT_NAMES_JSON"
    return 2
  let selectedJson ← IO.ofExcept (Lean.Json.parse (← IO.FS.readFile selectionPath))
  let selected : Array String ← IO.ofExcept (Lean.fromJson? selectedJson)
  let roots := selected.map String.toName
  if roots.isEmpty then throw <| IO.userError "EMPTY_SELECTION_UNSUPPORTED"
  Lean.initSearchPath (← Lean.findSysroot)
  Lean.enableInitializersExecution
  let input ← IO.FS.readFile source
  let inputCtx := Lean.Parser.mkInputContext input source
  let (header, parserState, messages) ← Lean.Parser.parseHeader inputCtx
  let module := moduleName.toName
  let setup ← Lean.ModuleSetup.load setupPath
  if setup.name != module then throw <| IO.userError "SETUP_MODULE_MISMATCH"
  if !setup.dynlibs.isEmpty || !setup.plugins.isEmpty || setup.imports?.isSome then
    throw <| IO.userError "UNSUPPORTED_SETUP_OVERRIDE"
  let lakeOptions := setup.options
  let opts := Lean.internal.cmdlineSnapshots.setIfNotSet lakeOptions.toOptions false
  let opts := Lean.Elab.async.setIfNotSet opts true
  let (env, messages) ← Lean.Elab.processHeaderCore (Lean.Elab.HeaderSyntax.startPos header) (Lean.Elab.headerToImports header)
    (Lean.Elab.HeaderSyntax.isModule header) opts messages inputCtx (trustLevel := 0) (mainModule := module)
    (package? := setup.package?) (arts := setup.importArts) (headerStx? := header)
  let opts ← Lean.Language.Lean.reparseOptions opts
  let dir : System.FilePath := output
  IO.FS.createDirAll (dir / "artifacts")
  let h ← IO.FS.Handle.mk (dir / "observations.jsonl") .write
  if messages.hasErrors then
    let mut diagnostics : Array String := #[]
    for message in messages.toList do
      diagnostics := diagnostics.push (← message.toString)
    LeanTyping.emit h <| LeanTyping.obj [("schema_version", LeanTyping.nat 1),
      ("record_type", LeanTyping.str "FailureObservation"), ("status", LeanTyping.str "UNAVAILABLE"),
      ("reason", LeanTyping.str "BLOCKED_ENVIRONMENT_IMPORT"), ("diagnostics", toJson diagnostics),
      ("mathematical_refutation", toJson false)]
    h.flush
    return 1
  LeanTyping.emit h <| LeanTyping.obj [("schema_version", LeanTyping.nat 1),
    ("record_type", LeanTyping.str "LeanCommand"), ("status", LeanTyping.str "KNOWN_PARTIAL"),
    ("provenance_origin", LeanTyping.str "compiler_observation"),
    ("command_index", LeanTyping.nat 0), ("start_byte", LeanTyping.nat 0),
    ("end_byte", LeanTyping.nat parserState.pos.byteIdx), ("syntax_kind", LeanTyping.str "module_header"),
    ("declarations", toJson (#[] : Array String)),
    ("imports", toJson (Lean.Elab.headerToImports header |>.map fun i => i.module.toString)),
    ("loaded_modules", toJson (env.header.moduleNames.map toString)),
    ("import_observation", LeanTyping.str "REQUIRES_HOST_ORIGINAL_CONTEXT_REPLAY_BINDING"),
    ("lake_options", Lean.toJson lakeOptions),
    ("import_artifacts", Lean.toJson setup.importArts),
    ("trust_level", LeanTyping.nat 0),
    ("observer_option_override", LeanTyping.str "NATIVE_CLI_ASYNC_DEFAULT_EXACT_LAKE_SETUP_FULL_SNAPSHOT_RETENTION"), ("module", LeanTyping.str module.toString)]
  let st : Lean.Elab.Frontend.State := {
    commandState := Lean.Elab.Command.mkState env messages opts
    parserState := parserState
    cmdPos := parserState.pos }
  try
    let (_, _) ← (LeanTyping.extract dir h roots).run { inputCtx } |>.run st
    h.flush
    return 0
  catch e =>
    LeanTyping.emit h <| LeanTyping.obj [("schema_version", LeanTyping.nat 1),
      ("record_type", LeanTyping.str "FailureObservation"), ("status", LeanTyping.str "UNAVAILABLE"),
      ("reason", LeanTyping.str e.toString), ("mathematical_refutation", toJson false)]
    h.flush
    return 1
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Observers/LeanNativeMigrationObserver.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Observers/LeanNativeMigrationObserver.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `364289f4ac8efc32062eb8ce9d4518422b2602ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
