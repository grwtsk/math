-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RawRange.Variant71f99c7c6d5031a3026fe6b403eb796381ab96cd7acb8fd12be36425e17b8bf0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"71f99c7c6d5031a3026fe6b403eb796381ab96cd7acb8fd12be36425e17b8bf0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RawRange.Variant71f99c7c6d5031a3026fe6b403eb796381ab96cd7acb8fd12be36425e17b8bf0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"71f99c7c6d5031a3026fe6b403eb796381ab96cd7acb8fd12be36425e17b8bf0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/tools/LeanSource/Frontend.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Lean.Elab.Frontend
public import Lean.DeclarationRange
public import tools.LeanSource.EnvironmentDelta
public import tools.LeanSource.Providers


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RawRange.Variant71f99c7c6d5031a3026fe6b403eb796381ab96cd7acb8fd12be36425e17b8bf0

public section

/-! # Sequential parsing and elaboration with one record per top-level command -/

open Lean

namespace MathematicsLeanSource

private def rawRange (fallbackStart fallbackStop : String.Pos.Raw)
    (range? : Option Syntax.Range) : RawRange :=
  match range? with
  | some range => { start := range.start.byteIdx, stop := range.stop.byteIdx }
  | none => { start := fallbackStart.byteIdx, stop := fallbackStop.byteIdx }

private def rawPosition (position : Position) : RawPosition :=
  { line := position.line, column := position.column }

private def messageCount (messages : MessageLog) : Nat := Id.run do
  return messages.toList.length

private partial def traceCommands
    (ordinal : Nat := 0) (records : Array RawCommand := #[]) :
    Elab.Frontend.FrontendM (Array RawCommand) := do
  Elab.Frontend.updateCmdPos
  let before ← Elab.Frontend.getCommandState
  let inputContext ← Elab.Frontend.getInputContext
  let parserBefore ← Elab.Frontend.getParserState
  let scope := before.scopes.head!
  let parserContext := {
    env := before.env
    options := scope.opts
    currNamespace := scope.currNamespace
    openDecls := scope.openDecls
  }
  let (commandStx, parserAfter, messages) :=
    Parser.parseCommand inputContext parserContext parserBefore before.messages
  Elab.Frontend.setParserState parserAfter
  Elab.Frontend.setMessages messages
  if Parser.isTerminalCommand commandStx then
    return records
  let canonicalSyntax := commandStx.reprint.getD ""
  Elab.Frontend.elabCommandAtFrontend commandStx
  let after ← Elab.Frontend.getCommandState
  if after.messages.hasErrors then
    let mut details := #[]
    for message in after.messages.toArray do
      details := details.push (← liftM message.toString)
    throw <| IO.Error.userError s!"command elaboration failed at byte {parserBefore.pos.byteIdx}:\n{String.intercalate "\n" details.toList}"
  let syntaxRange := rawRange parserBefore.pos parserAfter.pos commandStx.getRange?
  let trailingRange := rawRange parserBefore.pos parserAfter.pos commandStx.getRangeWithTrailing?
  let byteRange : RawRange := {
    start := min parserBefore.pos.byteIdx syntaxRange.start
    stop := max parserAfter.pos.byteIdx trailingRange.stop
  }
  let exactSource := inputContext.extract ⟨byteRange.start⟩ ⟨byteRange.stop⟩
  let startPosition := inputContext.fileMap.toPosition ⟨byteRange.start⟩
  let stopPosition := inputContext.fileMap.toPosition ⟨byteRange.stop⟩
  let record : RawCommand := {
    ordinal := ordinal
    byteRange := byteRange
    syntaxRange := syntaxRange
    trailingRange := trailingRange
    startPosition := rawPosition startPosition
    stopPosition := rawPosition stopPosition
    syntaxKind := commandStx.getKind.toString
    canonicalSyntax := canonicalSyntax
    exactSource := exactSource
    contextBefore := contextOf before
    contextAfter := contextOf after
    declarationsAdded := addedConstants before.env after.env
    localConstantCountBefore := localConstantCount before.env
    localConstantCountAfter := localConstantCount after.env
    providerKinds := providerKinds commandStx exactSource
    diagnosticCountBefore := messageCount before.messages
    diagnosticCountAfter := messageCount after.messages
  }
  traceCommands (ordinal + 1) (records.push record)

private def diagnostics (messages : MessageLog) : IO (Array String) := do
  let mut records := #[]
  for message in messages.toArray do
    records := records.push (← message.toString)
  return records

private def declarationRanges (environment : Environment) (moduleName : Name)
    (fileMap : FileMap) : Array RawDeclarationRange := Id.run do
  let some moduleIndex := environment.getModuleIdx? moduleName | return #[]
  let mut records := #[]
  for (name, value) in declRangeExt.getModuleEntries (level := .server) environment moduleIndex do
    records := records.push {
      declaration := name.toString
      range := {
        start := (fileMap.ofPosition value.range.pos).byteIdx
        stop := (fileMap.ofPosition value.range.endPos).byteIdx
      }
      selectionRange := {
        start := (fileMap.ofPosition value.selectionRange.pos).byteIdx
        stop := (fileMap.ofPosition value.selectionRange.endPos).byteIdx
      }
    }
  return records.qsort fun left right => left.declaration < right.declaration

def importTraceEnvironment (moduleNames : Array Name) : IO Environment := do
  let importRequests := moduleNames.map fun moduleName =>
    { module := moduleName, importAll := true : Import }
  importModules (loadExts := false) importRequests {}

def importFrontendEnvironment (imports : Array Import) : IO Environment := do
  unsafe enableInitializersExecution
  importModules (loadExts := true) imports {}

def sourceImports (file : System.FilePath) : IO (Array Import) := do
  let input ← IO.FS.readFile file
  let inputContext := Parser.mkInputContext input file.toString
  let (header, _, messages) ← Parser.parseHeader inputContext
  if messages.hasErrors then
    let details ← diagnostics messages
    throw <| IO.userError s!"source header parsing failed for {file}:\n{String.intercalate "\n" details.toList}"
  return Elab.headerToImports header

def traceFileIn (frontendEnvironment declarationEnvironment : Environment) (moduleName : Name)
    (file : System.FilePath) : IO RawFileTrace := do
  let input ← IO.FS.readFile file
  let inputContext := Parser.mkInputContext input file.toString
  let (header, parserState, headerMessages) ← Parser.parseHeader inputContext
  let options := ({} : Options).set `Elab.async false
  let environment := frontendEnvironment.setMainModule moduleName
  let messages := headerMessages
  let commandState := Elab.Command.mkState environment messages options
  let initialState : Elab.Frontend.State := {
    commandState := commandState
    parserState := parserState
    cmdPos := parserState.pos
  }
  let context : Elab.Frontend.Context := { inputCtx := inputContext }
  let (commands, finalState) ← (traceCommands.run context).run initialState
  let allDiagnostics ← diagnostics finalState.commandState.messages
  if finalState.commandState.messages.hasErrors then
    throw <| IO.userError s!"source tracing failed for {moduleName}:\n{String.intercalate "\n" allDiagnostics.toList}"
  return {
    moduleName := moduleName.toString
    file := file.toString
    headerRange := { start := 0, stop := parserState.pos.byteIdx }
    imports := Elab.headerToImports header |>.map fun imported => imported.module.toString
    commands := commands
    declarationRanges := declarationRanges declarationEnvironment moduleName inputContext.fileMap
    diagnostics := allDiagnostics
  }

def traceFile (moduleName : Name) (file : System.FilePath) : IO RawFileTrace := do
  let declarationEnvironment ← importTraceEnvironment #[moduleName]
  let frontendEnvironment ← importFrontendEnvironment (← sourceImports file)
  traceFileIn frontendEnvironment declarationEnvironment moduleName file

end MathematicsLeanSource
