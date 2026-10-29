-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ModelTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Config.Variant59dea58c7b2082e03f9fdddb3cc62150236a9bf34f2de1e1fc5d4349987e2f6e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"59dea58c7b2082e03f9fdddb3cc62150236a9bf34f2de1e1fc5d4349987e2f6e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ModelTheory.SourceCorpus.Config.Variant59dea58c7b2082e03f9fdddb3cc62150236a9bf34f2de1e1fc5d4349987e2f6e","mathematical_subject":"Logic.ModelTheory","original_sha256":"59dea58c7b2082e03f9fdddb3cc62150236a9bf34f2de1e1fc5d4349987e2f6e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:1d3eee06cbcaa3b7058edba7/workspace/tools/SurfaceSyntaxExportMain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean
import Lean.Parser.Module
import Lean.Util.Path

/-!
# Canonical Lean structural exporter

This executable loads the requested module into Lean's environment and parses
its exact source with Lean's own header/command parser.  It emits one bounded,
compact JSON control object; the Rust importer converts that object plus the
separately supplied exact source bytes into `SurfaceStructuralPacketV1`.

The output is a canonical-parser/environment observation.  It is not a proof
of the declarations in the file and it is not a general Lean parser in Rust.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Config.Variant59dea58c7b2082e03f9fdddb3cc62150236a9bf34f2de1e1fc5d4349987e2f6e

open Lean Parser

namespace SurfaceSyntaxExport

def exportSchema := "surface.syntax.lean-export.v1"
def normalizationSchema := "surface.structural-packet.normalization.v1"
def implementationId := "lean4-canonical-parser-exporter"
def dialect := "lean4"
def u32Modulus : Nat := 2 ^ 32
def maxSourceBytes : UInt64 := 16 * 1024 * 1024
def maxNodes : Nat := 1_000_000
def maxTokens : Nat := 2_000_000
def maxDeclarations : Nat := 250_000

structure Config where
  moduleName : String := ""
  repositoryRevision : String := ""
  contractHash : String := ""

structure ByteSpan where
  startByte : Nat
  endByte : Nat
deriving Repr, DecidableEq, Inhabited

structure RawToken where
  tokenKind : Nat
  flags : Nat
  text : String
  span : ByteSpan
deriving Repr

structure RawNode where
  kind : String
  span : ByteSpan
  children : List RawNode
deriving Repr

structure FlatNode where
  kind : String
  span : ByteSpan
  parentIndex : Option Nat
  firstChildIndex : Option Nat := none
  nextSiblingIndex : Option Nat := none
deriving Repr, Inhabited

structure Edge where
  parentIndex : Nat
  childIndex : Nat
  ordinal : Nat
deriving Repr

structure Builder where
  nodes : IO.Ref (Array FlatNode)
  edges : IO.Ref (Array Edge)
  bracketBits : IO.Ref (Array Bool)
  openNodeIndices : IO.Ref (Array Nat)

def hashJson (hex : String) : Json :=
  Json.mkObj [("algorithm", toJson "sha256"), ("hex", toJson hex)]

def optionNatJson : Option Nat → Json
  | none => Json.null
  | some value => toJson value

def spanJson (span : ByteSpan) : Json :=
  Json.mkObj [
    ("startByte", toJson span.startByte),
    ("endByte", toJson span.endByte)
  ]

def validLowerHash (value : String) : Bool :=
  value.length = 64 && value.toList.all fun character =>
    character.isDigit || ('a' ≤ character && character ≤ 'f')

def parseArgs : List String → Except String Config
  | args => go args {}
where
  go : List String → Config → Except String Config
    | [], config =>
        if config.moduleName.isEmpty then throw "--module is required"
        else if config.repositoryRevision.isEmpty then
          throw "--revision is required"
        else if config.contractHash.isEmpty then
          throw "--contract-hash is required"
        else pure config
    | "--module" :: value :: remaining, config =>
        if config.moduleName.isEmpty then
          go remaining { config with moduleName := value }
        else throw "--module may be supplied only once"
    | "--revision" :: value :: remaining, config =>
        if config.repositoryRevision.isEmpty then
          go remaining { config with repositoryRevision := value }
        else throw "--revision may be supplied only once"
    | "--contract-hash" :: value :: remaining, config =>
        if config.contractHash.isEmpty then
          go remaining { config with contractHash := value }
        else throw "--contract-hash may be supplied only once"
    | option :: _, _ => throw s!"unknown or incomplete option: {option}"

def dottedName (value : String) : Except String Name := do
  if value.toUTF8.size > 512 then
    throw "module name exceeds the 512-byte bound"
  let components := value.splitOn "."
  let validComponent := fun component : String =>
    match component.toList with
    | [] => false
    | first :: remaining => isIdFirst first && remaining.all isIdRest
  if components.isEmpty || components.any (fun component =>
      component.toUTF8.size > 128 || !validComponent component) then
    throw "module must be a dotted Lean name"
  pure <| components.foldl (fun name component => Name.str name component)
    Name.anonymous

def canonicalRevision (value : String) : Except String Nat := do
  let some revision := value.toNat?
    | throw "revision must be a canonical unsigned decimal"
  if toString revision != value then
    throw "revision must be a canonical unsigned decimal"
  if revision < u32Modulus then pure revision
  else throw "revision exceeds the unsigned 32-bit bound"

def syntaxSpan (sourceBytes : Nat) (stx : Syntax) : ByteSpan :=
  match stx.getRange? (canonicalOnly := true) with
  | none => ⟨0, 0⟩
  | some range =>
      ⟨min range.start.byteIdx sourceBytes, min range.stop.byteIdx sourceBytes⟩

/-- Preserve the original aggregate node range rather than reconstructing the
node with source-info erased. -/
partial def rawNodeFromSyntax? (sourceBytes : Nat) (stx : Syntax) : Option RawNode :=
  match stx with
  | .node _ kind arguments =>
      some {
        kind := kind.toString
        span := syntaxSpan sourceBytes stx
        children := arguments.toList.filterMap (rawNodeFromSyntax? sourceBytes) }
  | _ => none

def delimiterToken (value : String) : Bool :=
  ["(", ")", "[", "]", "{", "}", ",", ";", ":", ":=", "=>", "|"].contains value

def literalToken (value : String) : Bool :=
  value.startsWith "\"" || value.startsWith "'" || value.toNat?.isSome

partial def collectTokens (sourceBytes : Nat) (stx : Syntax)
    (tokens : Array RawToken := #[]) : Array RawToken :=
  match stx with
  | .missing => tokens
  | .node _ _ arguments =>
      arguments.foldl (fun current child => collectTokens sourceBytes child current) tokens
  | .atom _ value =>
      let flags := if delimiterToken value then 8 else if literalToken value then 2 else 0
      tokens.push {
        tokenKind := 2
        flags
        text := value
        span := syntaxSpan sourceBytes stx }
  | .ident _ rawValue _ _ =>
      tokens.push {
        tokenKind := 1
        flags := 1
        text := rawValue.toString
        span := syntaxSpan sourceBytes stx }

def tokenLess (left right : RawToken) : Bool :=
  left.span.startByte < right.span.startByte ||
    (left.span.startByte = right.span.startByte &&
      left.span.endByte < right.span.endByte)

partial def flattenNode (builder : Builder) (raw : RawNode)
    (parentIndex : Option Nat) : IO Nat := do
  let nodes ← builder.nodes.get
  let nodeIndex := nodes.size
  builder.nodes.set <| nodes.push {
    kind := raw.kind
    span := raw.span
    parentIndex }
  builder.bracketBits.modify (·.push true)
  builder.openNodeIndices.modify (·.push nodeIndex)
  let mut firstChildIndex : Option Nat := none
  let mut previousChildIndex : Option Nat := none
  for child in raw.children do
    let childIndex ← flattenNode builder child (some nodeIndex)
    let ordinal := (← builder.edges.get).foldl
      (fun count edge => if edge.parentIndex = nodeIndex then count + 1 else count) 0
    builder.edges.modify (·.push { parentIndex := nodeIndex, childIndex, ordinal })
    if firstChildIndex.isNone then firstChildIndex := some childIndex
    if let some previous := previousChildIndex then
      let currentNodes ← builder.nodes.get
      let previousNode := currentNodes[previous]!
      builder.nodes.set <| currentNodes.set! previous
        { previousNode with nextSiblingIndex := some childIndex }
    previousChildIndex := some childIndex
  let currentNodes ← builder.nodes.get
  builder.nodes.set <| currentNodes.set! nodeIndex
    { currentNodes[nodeIndex]! with firstChildIndex }
  builder.bracketBits.modify (·.push false)
  pure nodeIndex

def packBracketWords (bits : Array Bool) : Array Nat := Id.run do
  let mut words := Array.replicate ((bits.size + 63) / 64) 0
  for index in [:bits.size] do
    if bits[index]! then
      let wordIndex := index / 64
      words := words.set! wordIndex
        (words[wordIndex]! + 2 ^ (index % 64))
  return words

def stringTable (nodes : Array FlatNode) (tokens : List RawToken)
    (declarationNames importNames : List String) : List String :=
  ([implementationId, Lean.versionString, normalizationSchema, dialect] ++
    nodes.toList.map FlatNode.kind ++ tokens.map RawToken.text ++
    declarationNames ++ importNames).eraseDups

def stringIndex (strings : List String) (value : String) : Nat :=
  let rec find : List String → Nat → Nat
    | [], _ => 0
    | candidate :: remaining, index =>
        if candidate = value then index else find remaining (index + 1)
  find strings 0

def normalizedCategory (kind : String) : Nat :=
  if kind = "sourceFile" then 0
  else if kind.contains "namespace" then 2
  else if kind.contains "import" then 3
  else if kind.contains "declaration" || kind.contains "command" then 4
  else if kind.contains "fun" || kind.contains "def" || kind.contains "theorem" then 5
  else if kind.contains "struct" || kind.contains "inductive" || kind.contains "class" then 7
  else if kind.contains "block" || kind.contains "do" then 9
  else if kind.contains "term" || kind.contains "expr" then 11
  else if kind.contains "attr" then 12
  else 14

def tokenBounds (tokens : List RawToken) (span : ByteSpan) : Nat × Nat :=
  let startToken := (tokens.takeWhile fun token =>
    token.span.endByte ≤ span.startByte).length
  let endToken := (tokens.takeWhile fun token =>
    token.span.startByte < span.endByte).length
  (startToken, max startToken endToken)

def nodeJson (strings : List String) (tokens : List RawToken)
    (index : Nat) (node : FlatNode) : Json :=
  let (startToken, endToken) := tokenBounds tokens node.span
  Json.mkObj [
    ("nodeId", toJson index),
    ("languageKind", toJson (stringIndex strings node.kind)),
    ("category", toJson (normalizedCategory node.kind)),
    ("flags", toJson (0 : Nat)),
    ("parentIndex", optionNatJson node.parentIndex),
    ("firstChildIndex", optionNatJson node.firstChildIndex),
    ("nextSiblingIndex", optionNatJson node.nextSiblingIndex),
    ("sourceSpan", spanJson node.span),
    ("tokenSpan", Json.mkObj [
      ("startToken", toJson startToken), ("endToken", toJson endToken)]),
    ("nameIndex", Json.null),
    ("declarationIndex", Json.null),
    ("semanticAnchorIndex", Json.null)
  ]

def tokenJson (strings : List String) (token : RawToken) : Json :=
  Json.mkObj [
    ("tokenKind", toJson token.tokenKind),
    ("flags", toJson token.flags),
    ("trivia", toJson (0 : Nat)),
    ("sourceSpan", spanJson token.span),
    ("stringIndex", toJson (stringIndex strings token.text))
  ]

def declarationModule (environment : Environment) (name : Name) : Name :=
  match environment.getModuleIdxFor? name with
  | none => environment.mainModule
  | some index => environment.header.moduleNames[index.toNat]!

def moduleDeclarations (environment : Environment) (moduleName : Name) : List ConstantInfo :=
  environment.constants.toList.map Prod.snd
    |>.filter (fun info => declarationModule environment info.name = moduleName)
    |>.mergeSort (fun left right => Name.quickLt left.name right.name)

partial def declarationRanges? (environment : Environment) (name : Name) :
    Option DeclarationRanges :=
  let direct :=
    Lean.declRangeExt.find? (level := .exported) environment name <|>
      Lean.declRangeExt.find? (level := .server) environment name
  match direct with
  | some ranges => some ranges
  | none =>
      if name.isAnonymous then none
      else declarationRanges? environment name.getPrefix

def declarationSourceSpan (environment : Environment) (fileMap : FileMap)
    (sourceBytes : Nat) (name : Name) : ByteSpan :=
  match declarationRanges? environment name with
  | none => ⟨0, sourceBytes⟩
  | some ranges =>
      let startByte := (fileMap.ofPosition ranges.range.pos).byteIdx
      let endByte := (fileMap.ofPosition ranges.range.endPos).byteIdx
      ⟨min startByte sourceBytes, min (max startByte endByte) sourceBytes⟩

unsafe def hasTagConstant (environment : Environment) (attributeConstant name : Name) : Bool :=
  match environment.evalConst Lean.TagAttribute {} attributeConstant (checkMeta := false) with
  | .ok tag => tag.hasTag environment name
  | .error _ => false

unsafe def declarationFlags (environment : Environment) (name : Name) : Nat :=
  (if hasTagConstant environment `Surface.Core.surfaceNovelAttr name then 4 else 0) +
  (if hasTagConstant environment `Surface.Core.surfaceCandidateAttr name then 8 else 0) +
  (if hasTagConstant environment `Surface.Core.surfacePublishedAttr name then 16 else 0) +
  (if hasTagConstant environment `Surface.Core.surfaceCertificateAttr name then 32 else 0)

def containingNodeIndex (nodes : Array FlatNode) (span : ByteSpan) : Nat := Id.run do
  let mut selected := 0
  let mut selectedLength := nodes[0]!.span.endByte - nodes[0]!.span.startByte
  for index in [:nodes.size] do
    let node := nodes[index]!
    if node.span.startByte ≤ span.startByte && span.endByte ≤ node.span.endByte then
      let length := node.span.endByte - node.span.startByte
      if length ≤ selectedLength then
        selected := index
        selectedLength := length
  return selected

unsafe def declarationJson (environment : Environment) (strings : List String)
    (nodes : Array FlatNode) (fileMap : FileMap) (sourceBytes : Nat)
    (index : Nat) (info : ConstantInfo) : Json :=
  let sourceSpan := declarationSourceSpan environment fileMap sourceBytes info.name
  Json.mkObj [
    ("declarationId", toJson index),
    ("kind", toJson (15 : Nat)),
    ("flags", toJson (declarationFlags environment info.name)),
    ("nodeIndex", toJson (containingNodeIndex nodes sourceSpan)),
    ("nameIndex", toJson (stringIndex strings info.name.toString)),
    ("moduleIndex", Json.null),
    ("sourceSpan", spanJson sourceSpan),
    ("attributeStart", toJson (0 : Nat)),
    ("attributeCount", toJson (0 : Nat))
  ]

def importJson (strings : List String) (nodes : Array FlatNode)
    (moduleName : String) (span : ByteSpan) : Json :=
  Json.mkObj [
    ("nodeIndex", toJson (containingNodeIndex nodes span)),
    ("specifierIndex", toJson (stringIndex strings moduleName)),
    ("resolvedModuleIndex", Json.null),
    ("kind", toJson (1 : Nat)),
    ("flags", toJson (0 : Nat)),
    ("sourceSpan", spanJson span)
  ]

def sourceHash (path : System.FilePath) : IO String := do
  let output ← IO.Process.output {
    cmd := "/usr/bin/shasum"
    args := #["-a", "256", path.toString] }
  if output.exitCode != 0 then
    throw <| IO.userError "shasum failed while hashing exact source bytes"
  let digest := (output.stdout.splitOn " ").head?.getD ""
  if validLowerHash digest then pure digest
  else throw <| IO.userError "shasum returned a noncanonical SHA-256 digest"

def messageSummary (messages : MessageLog) : IO String := do
  let rendered ← messages.toList.mapM (fun message => message.toString)
  pure <| String.intercalate "\n" rendered

partial def commandSyntaxes (snapshot : Lean.Language.Lean.CommandParsedSnapshot)
    (commands : Array Syntax := #[]) : Array Syntax :=
  let commands := if Parser.isTerminalCommand snapshot.stx then commands
    else commands.push snapshot.stx
  match snapshot.nextCmdSnap? with
  | none => commands
  | some next => commandSyntaxes next.task.get commands

def parseModuleSource (moduleName : Name) (path : System.FilePath)
    (source : String) : IO (Environment × Syntax × Array Syntax × List (String × ByteSpan)) := do
  let inputContext := Parser.mkInputContext source path.toString
  -- `internal.cmdlineSnapshots = true` deliberately erases nonterminal command
  -- syntax to minimize the command-line snapshot payload.  A structural
  -- exporter needs the opposite contract: retain every canonical command
  -- tree while still allowing the normal asynchronous frontend pipeline.
  let options := Lean.Elab.async.setIfNotSet
    (Lean.internal.cmdlineSnapshots.set {} false) true
  let context : Lean.Language.ProcessingContext := { inputContext with }
  let setup (header : Lean.Elab.HeaderSyntax) := do
    return .ok {
      mainModuleName := moduleName
      isModule := Lean.Elab.HeaderSyntax.isModule header
      imports := Lean.Elab.HeaderSyntax.imports header
      opts := options
      : Lean.Language.Lean.SetupImportsResult }
  -- Use the same language processor as the Lean command-line frontend. Its
  -- snapshots retain the exact command syntax after each preceding command has
  -- advanced parser scopes/extensions; a context-free second parse would not.
  let snapshot ← Lean.Language.Lean.process setup none context
  let snapshotTree := Lean.Language.toSnapshotTree snapshot
  let messages := snapshotTree.getAll.foldl
    (init := (.empty : MessageLog)) (fun current item => current ++ item.diagnostics.msgLog)
  if messages.hasErrors then
    throw <| IO.userError s!"Lean canonical frontend failed:\n{(← messageSummary messages)}"
  let some finalCommandState := Lean.Language.Lean.waitForFinalCmdState? snapshot
    | throw <| IO.userError "Lean canonical frontend produced no final command state"
  let some parsedHeaderState := snapshot.result?
    | throw <| IO.userError "Lean canonical frontend did not parse the module header"
  let processedHeader := parsedHeaderState.processedSnap.task.get
  let some processedHeaderState := processedHeader.result?
    | throw <| IO.userError "Lean canonical frontend did not process module imports"
  let commands := commandSyntaxes processedHeaderState.firstCmdSnap.task.get
  let header := snapshot.stx
  let imports := header[2]!.getArgs.toList.filterMap fun stx =>
    match stx with
    | `(Parser.Module.import| $[public%$_]? $[meta%$_]? import $[all%$_]? $identifier) =>
        some (identifier.getId.toString, syntaxSpan source.toUTF8.size stx)
    | _ => none
  pure (finalCommandState.env, header, commands, imports)

def fallbackModulePath (moduleText : String) : System.FilePath :=
  System.FilePath.mk <| "lib/" ++ moduleText.replace "." "/" ++ ".lean"

def findSourcePath (moduleName : Name) (moduleText : String) : IO System.FilePath := do
  let searchPath ← Lean.getSrcSearchPath
  match ← searchPath.findModuleWithExt "lean" moduleName with
  | some path => pure path
  | none =>
      let fallback := fallbackModulePath moduleText
      if ← fallback.pathExists then pure fallback
      else throw <| IO.userError s!"source file not found for module {moduleText}"

unsafe def main (args : List String) : IO UInt32 := do
  let config ← match parseArgs args with
    | .ok config => pure config
    | .error message =>
        IO.eprintln s!"surface_syntax_export: {message}"
        IO.eprintln "usage: surface_syntax_export --module MODULE --revision U32 --contract-hash LOWER_SHA256"
        return 64
  let moduleName ← match dottedName config.moduleName with
    | .ok name => pure name
    | .error message => IO.eprintln s!"surface_syntax_export: {message}"; return 64
  let repositoryRevision ← match canonicalRevision config.repositoryRevision with
    | .ok revision => pure revision
    | .error message => IO.eprintln s!"surface_syntax_export: {message}"; return 64
  if !validLowerHash config.contractHash then
    IO.eprintln "surface_syntax_export: contract hash must be 64 lowercase hexadecimal characters"
    return 64

  try
    initSearchPath (← findSysroot) [".lake/build/lib/lean"]
    -- Canonical command parsing must load the imported modules' parser and
    -- elaborator extensions. Lean requires this process-wide gate before any
    -- `importModules (loadExts := true)` call.
    Lean.enableInitializersExecution
    let path ← findSourcePath moduleName config.moduleName
    let metadata ← path.metadata
    match metadata.type with
    | .file => pure ()
    | _ => throw <| IO.userError "module source is not a regular file"
    if metadata.byteSize > maxSourceBytes then
      throw <| IO.userError "module source exceeds the 16 MiB exporter bound"
    let source ← IO.FS.readFile path
    let sourceBytes := source.toUTF8.size
    let sourceSnapshotHash ← sourceHash path
    let (environment, header, commands, imports) ←
      parseModuleSource moduleName path source

    let syntaxRoots := header :: commands.toList
    let rawChildren := syntaxRoots.filterMap (rawNodeFromSyntax? sourceBytes)
    let rawRoot : RawNode := {
      kind := "sourceFile"
      span := ⟨0, sourceBytes⟩
      children := rawChildren }
    let nodeRef ← IO.mkRef #[]
    let edgeRef ← IO.mkRef #[]
    let bracketRef ← IO.mkRef #[]
    let openRef ← IO.mkRef #[]
    let builder : Builder := {
      nodes := nodeRef, edges := edgeRef,
      bracketBits := bracketRef, openNodeIndices := openRef }
    let _rootIndex ← flattenNode builder rawRoot none
    let nodes ← nodeRef.get
    let edges ← edgeRef.get
    let bracketBits ← bracketRef.get
    let openNodeIndices ← openRef.get

    let tokens := syntaxRoots.foldl
      (fun current stx => collectTokens sourceBytes stx current) #[]
      |>.toList.mergeSort tokenLess
    let declarations := moduleDeclarations environment moduleName
    if nodes.size > maxNodes then
      throw <| IO.userError "canonical syntax tree exceeds the node-count bound"
    if tokens.length > maxTokens then
      throw <| IO.userError "canonical syntax tree exceeds the token-count bound"
    if declarations.length > maxDeclarations then
      throw <| IO.userError "loaded environment exceeds the declaration-count bound"
    let declarationNames := declarations.map (·.name.toString)
    let importNames := imports.map Prod.fst
    let strings := stringTable nodes tokens declarationNames importNames

    let fileMap := source.toFileMap
    let declarationJsons := declarations.zipIdx.map fun (info, index) =>
      declarationJson environment strings nodes fileMap sourceBytes index info
    let importJsons := imports.map fun (name, span) =>
      importJson strings nodes name span
    let output := Json.mkObj [
      ("schema", toJson exportSchema),
      ("repositoryRevision", toJson repositoryRevision),
      ("language", toJson (1 : Nat)),
      ("sourceByteLength", toJson sourceBytes),
      ("sourceSnapshotHash", hashJson sourceSnapshotHash),
      ("contractHash", hashJson config.contractHash),
      ("fingerprint", Json.mkObj [
        ("language", toJson (1 : Nat)),
        ("authority", toJson (1 : Nat)),
        ("implementationId", toJson (stringIndex strings implementationId)),
        ("implementationVersion", toJson (stringIndex strings Lean.versionString)),
        ("normalizationSchema", toJson (stringIndex strings normalizationSchema)),
        ("featureFlags", toJson (0 : Nat)),
        ("dialectOrEdition", toJson (stringIndex strings dialect))]),
      ("strings", toJson strings),
      ("nodes", Json.arr <| nodes.toList.zipIdx.map
        (fun (node, index) => nodeJson strings tokens index node) |>.toArray),
      ("edges", Json.arr <| edges.map fun edge => Json.mkObj [
        ("parentIndex", toJson edge.parentIndex),
        ("childIndex", toJson edge.childIndex),
        ("ordinal", toJson edge.ordinal)]),
      ("tokens", Json.arr <| tokens.map (tokenJson strings) |>.toArray),
      ("declarations", Json.arr declarationJsons.toArray),
      ("references", Json.arr #[]),
      ("imports", Json.arr importJsons.toArray),
      ("bracketWords", toJson (packBracketWords bracketBits).toList),
      ("openNodeIndices", toJson openNodeIndices.toList),
      ("diagnostics", Json.arr #[])
    ]
    IO.println output.compress
    pure 0
  catch error =>
    IO.eprintln s!"surface_syntax_export: {error}"
    pure 1

end SurfaceSyntaxExport

def workerEnvironmentKey := "SURFACE_SYNTAX_EXPORT_CANONICAL_WORKER"

unsafe def main (args : List String) : IO UInt32 := do
  if (← IO.getEnv workerEnvironmentKey) == some "1" then
    SurfaceSyntaxExport.main args
  else
    -- A native Lake executable does not carry the same live elaborator
    -- environment as the Lean command-line frontend. Re-enter this exact Lean
    -- source through `lean --run`, with inherited stdout/stderr, so canonical
    -- command snapshots come from the real frontend rather than a weakened
    -- handwritten parser. The finite process bounds fail closed.
    let lake := (← IO.getEnv "LAKE").getD "lake"
    let workerArgs :=
      #["env", "lean", "--memory=8192", "--timeout=8000000", "--threads=1", "--run",
        "tools/SurfaceSyntaxExportMain.lean"] ++ args.toArray
    let child ← IO.Process.spawn {
      cmd := lake
      args := workerArgs
      stdin := .null
      stdout := .inherit
      stderr := .inherit
      env := #[(workerEnvironmentKey, some "1")] }
    child.wait
