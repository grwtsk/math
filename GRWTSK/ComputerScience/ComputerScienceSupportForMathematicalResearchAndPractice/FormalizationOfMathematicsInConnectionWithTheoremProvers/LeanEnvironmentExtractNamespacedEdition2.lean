-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RawImportRecord.Variant123d5a26af6ba46c8ca0e53bc8c4deed0c29e2b07b283c34b73f56526989dcfb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"123d5a26af6ba46c8ca0e53bc8c4deed0c29e2b07b283c34b73f56526989dcfb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.RawImportRecord.Variant123d5a26af6ba46c8ca0e53bc8c4deed0c29e2b07b283c34b73f56526989dcfb","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"123d5a26af6ba46c8ca0e53bc8c4deed0c29e2b07b283c34b73f56526989dcfb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/native-source-intake/relocation-review/aug10-consumers/active-packages/2771b9ffb3fa677967093849d56e47c4f1699805385cd737c37d32438da50ebd/src/tools/LeanEnvironmentExtract.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","late_preamble_command","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
import Lean
import tools.LeanSource.SourceLocations

/-!
# Version-pinned compiled Lean environment extractor

This executable is the version-specific adapter for Lean `v4.32.0`.  It loads
selected modules independently, enumerates their compiled declarations from
`Environment.header.moduleData`, emits structural expression encodings, exact
constant occurrences with structural paths, generated-declaration metadata,
effective imports, observed axiom closures, and disclosures for undecoded
environment extensions.

The output is a raw adapter product.  `tools/environment/cli.py extract`
canonicalizes, hashes, merges, and verifies it into the stable ledger layout.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RawImportRecord.Variant123d5a26af6ba46c8ca0e53bc8c4deed0c29e2b07b283c34b73f56526989dcfb

open Lean System

namespace MathematicsLeanEnvironmentExtract

structure RawImportRecord where
  module : String
  importAll : Bool
  isExported : Bool
  isMeta : Bool
  direct : Bool
  hasData : Option Bool := none
  irPhases : Option String := none
  deriving ToJson

structure RawExtensionRecord where
  name : String
  entryCount : Nat
  status : String
  authority : String
  deriving ToJson

structure RawOccurrence where
  constant : String
  path : Array Nat
  deriving ToJson

structure RawExpression where
  semanticEncoding : String
  presentationEncoding : String
  metadataPayloads : Array String
  hasFreeVariables : Bool
  hasMetavariables : Bool
  constantOccurrences : Array RawOccurrence
  deriving ToJson

structure RawInductiveData where
  numParams : Nat
  numIndices : Nat
  mutualMembers : Array String
  constructors : Array String
  numNested : Nat
  isRecursive : Bool
  isUnsafe : Bool
  isReflexive : Bool
  deriving ToJson

structure RawConstructorData where
  inductiveType : String
  constructorIndex : Nat
  numParams : Nat
  numFields : Nat
  isUnsafe : Bool
  deriving ToJson

structure RawRecursorRule where
  constructor : String
  numFields : Nat
  rhs : RawExpression
  deriving ToJson

structure RawRecursorData where
  mutualInductives : Array String
  numParams : Nat
  numIndices : Nat
  numMotives : Nat
  numMinors : Nat
  supportsK : Bool
  isUnsafe : Bool
  rules : Array RawRecursorRule
  deriving ToJson

structure RawQuotientData where
  kind : String
  deriving ToJson

structure RawDeclarationRecord where
  name : String
  ownerModule : String
  kind : String
  authority : String
  isPrivateName : Bool
  isInternalDetail : Bool
  visibility : String
  origin : String
  levelParams : Array String
  typeExpr : RawExpression
  valueExpr : Option RawExpression
  valueRole : Option String
  hasStoredValue : Bool
  isUnsafe : Bool
  isPartial : Bool
  safety : String
  reducibility : String
  regularityHeight : Option Nat
  mutualBlock : Array String
  inductiveData : Option RawInductiveData
  constructorData : Option RawConstructorData
  recursorData : Option RawRecursorData
  quotientData : Option RawQuotientData
  observedAxioms : Array String
  diagnostics : Array String
  deriving ToJson

structure RawModuleShard where
  module : String
  checkerVersion : String
  trustLevel : Nat
  directImports : Array RawImportRecord
  effectiveImports : Array RawImportRecord
  declarations : Array RawDeclarationRecord
  extraConstants : Array String
  extensions : Array RawExtensionRecord
  visibleConstantCount : Nat
  ownedConstantCount : Nat
  deriving ToJson

structure RawExtraction where
  schemaVersion : Nat
  extractorVersion : String
  adapterVersion : String
  checkerVersion : String
  scope : String
  selectedModules : Array String
  modules : Array RawModuleShard
  diagnostics : Array String
  deriving ToJson

private def distinctSortedStrings (values : Array String) : Array String :=
  values.qsort (fun left right => left < right) |>.foldl (init := #[]) fun result value =>
    if result.back? == some value then result else result.push value

private def distinctSortedNames (values : Array Name) : Array Name :=
  values.qsort Name.quickLt |>.foldl (init := #[]) fun result value =>
    if result.back? == some value then result else result.push value

private def frame (value : String) : String :=
  s!"{value.length}:{value}"

private def node (tag : String) (fields : Array String := #[]) : String :=
  "(" ++ frame tag ++ String.join (fields.toList.map frame) ++ ")"

private def binderInfoEncoding : BinderInfo → String
  | .default => "default"
  | .implicit => "implicit"
  | .strictImplicit => "strictImplicit"
  | .instImplicit => "instanceImplicit"

private def parameterPosition? (params : List Name) (target : Name) : Option Nat :=
  let rec go : List Name → Nat → Option Nat
    | [], _ => none
    | head :: tail, index => if head = target then some index else go tail (index + 1)
  go params 0

private partial def levelEncoding (params : List Name) : Level → String
  | .zero => node "zero"
  | .succ level => node "succ" #[levelEncoding params level]
  | .max left right => node "max" #[levelEncoding params left, levelEncoding params right]
  | .imax left right => node "imax" #[levelEncoding params left, levelEncoding params right]
  | .param name =>
      match parameterPosition? params name with
      | some position => node "param" #[toString position]
      | none => node "unresolvedParam" #[name.toString]
  | .mvar id => node "levelMVar" #[reprStr id]

private def levelArrayEncoding (params : List Name) (levels : List Level) : String :=
  node "levels" (levels.toArray.map (levelEncoding params))

private partial def semanticExprEncoding (params : List Name) : Expr → String
  | .bvar index => node "bvar" #[toString index]
  | .fvar id => node "invalidFVar" #[reprStr id]
  | .mvar id => node "invalidMVar" #[reprStr id]
  | .sort level => node "sort" #[levelEncoding params level]
  | .const name levels => node "const" #[name.toString, levelArrayEncoding params levels]
  | .app fn arg => node "app" #[semanticExprEncoding params fn, semanticExprEncoding params arg]
  | .lam _ type body binderInfo =>
      node "lam" #[binderInfoEncoding binderInfo,
        semanticExprEncoding params type, semanticExprEncoding params body]
  | .forallE _ type body binderInfo =>
      node "forall" #[binderInfoEncoding binderInfo,
        semanticExprEncoding params type, semanticExprEncoding params body]
  | .letE _ type value body nondep =>
      node "let" #[toString nondep, semanticExprEncoding params type,
        semanticExprEncoding params value, semanticExprEncoding params body]
  | .lit literal => node "lit" #[reprStr literal]
  | .mdata _ body => semanticExprEncoding params body
  | .proj typeName fieldIndex object =>
      node "proj" #[typeName.toString, toString fieldIndex,
        semanticExprEncoding params object]

private partial def presentationExprEncoding (params : List Name) : Expr → String
  | .bvar index => node "bvar" #[toString index]
  | .fvar id => node "invalidFVar" #[reprStr id]
  | .mvar id => node "invalidMVar" #[reprStr id]
  | .sort level => node "sort" #[levelEncoding params level]
  | .const name levels => node "const" #[name.toString, levelArrayEncoding params levels]
  | .app fn arg => node "app" #[presentationExprEncoding params fn, presentationExprEncoding params arg]
  | .lam name type body binderInfo =>
      node "lam" #[name.toString, binderInfoEncoding binderInfo,
        presentationExprEncoding params type, presentationExprEncoding params body]
  | .forallE name type body binderInfo =>
      node "forall" #[name.toString, binderInfoEncoding binderInfo,
        presentationExprEncoding params type, presentationExprEncoding params body]
  | .letE name type value body nondep =>
      node "let" #[name.toString, toString nondep,
        presentationExprEncoding params type,
        presentationExprEncoding params value,
        presentationExprEncoding params body]
  | .lit literal => node "lit" #[reprStr literal]
  | .mdata metadata body =>
      node "mdata" #[reprStr metadata, presentationExprEncoding params body]
  | .proj typeName fieldIndex object =>
      node "proj" #[typeName.toString, toString fieldIndex,
        presentationExprEncoding params object]

private partial def metadataPayloads : Expr → Array String
  | .app fn arg => metadataPayloads fn ++ metadataPayloads arg
  | .lam _ type body _ => metadataPayloads type ++ metadataPayloads body
  | .forallE _ type body _ => metadataPayloads type ++ metadataPayloads body
  | .letE _ type value body _ => metadataPayloads type ++ metadataPayloads value ++ metadataPayloads body
  | .mdata metadata body => #[reprStr metadata] ++ metadataPayloads body
  | .proj _ _ object => metadataPayloads object
  | _ => #[]

private partial def containsFVar : Expr → Bool
  | .fvar _ => true
  | .app fn arg => containsFVar fn || containsFVar arg
  | .lam _ type body _ => containsFVar type || containsFVar body
  | .forallE _ type body _ => containsFVar type || containsFVar body
  | .letE _ type value body _ => containsFVar type || containsFVar value || containsFVar body
  | .mdata _ body => containsFVar body
  | .proj _ _ object => containsFVar object
  | _ => false

private partial def containsMVar : Expr → Bool
  | .mvar _ => true
  | .app fn arg => containsMVar fn || containsMVar arg
  | .lam _ type body _ => containsMVar type || containsMVar body
  | .forallE _ type body _ => containsMVar type || containsMVar body
  | .letE _ type value body _ => containsMVar type || containsMVar value || containsMVar body
  | .mdata _ body => containsMVar body
  | .proj _ _ object => containsMVar object
  | _ => false

private partial def constantOccurrences (expression : Expr) (path : Array Nat := #[]) : Array RawOccurrence :=
  match expression with
  | .const name _ => #[{ constant := name.toString, path := path }]
  | .app fn arg =>
      constantOccurrences fn (path.push 0) ++ constantOccurrences arg (path.push 1)
  | .lam _ type body _ =>
      constantOccurrences type (path.push 0) ++ constantOccurrences body (path.push 1)
  | .forallE _ type body _ =>
      constantOccurrences type (path.push 0) ++ constantOccurrences body (path.push 1)
  | .letE _ type value body _ =>
      constantOccurrences type (path.push 0) ++
      constantOccurrences value (path.push 1) ++
      constantOccurrences body (path.push 2)
  | .mdata _ body => constantOccurrences body (path.push 0)
  | .proj _ _ object => constantOccurrences object (path.push 0)
  | _ => #[]

private def rawExpression (params : List Name) (expression : Expr) : RawExpression :=
  {
    semanticEncoding := semanticExprEncoding params expression
    presentationEncoding := presentationExprEncoding params expression
    metadataPayloads := metadataPayloads expression
    hasFreeVariables := containsFVar expression
    hasMetavariables := containsMVar expression
    constantOccurrences := constantOccurrences expression
  }

private def constantKind : ConstantInfo → String
  | .axiomInfo _ => "axiom"
  | .defnInfo _ => "definition"
  | .thmInfo _ => "theorem"
  | .opaqueInfo _ => "opaque"
  | .quotInfo _ => "quotient"
  | .inductInfo _ => "inductive"
  | .ctorInfo _ => "constructor"
  | .recInfo _ => "recursor"

private def constantValue? : ConstantInfo → Option Expr
  | .defnInfo value => some value.value
  | .thmInfo value => some value.value
  | .opaqueInfo value => some value.value
  | _ => none

private def valueRole : ConstantInfo → Option String
  | .thmInfo _ => some "theoremProof"
  | .defnInfo _ => some "definitionValue"
  | .opaqueInfo _ => some "opaqueValue"
  | _ => none

private def safetyEncoding : ConstantInfo → String
  | .defnInfo value =>
      match value.safety with
      | .safe => "safe"
      | .unsafe => "unsafe"
      | .partial => "partial"
  | info => if info.isUnsafe then "unsafe" else "notApplicable"

private def reducibilityEncoding : ConstantInfo → String × Option Nat
  | .defnInfo value =>
      match value.hints with
      | .opaque => ("opaque", none)
      | .abbrev => ("abbreviation", none)
      | .regular height => ("regular", some height.toNat)
  | _ => ("notApplicable", none)

private def quotientKindEncoding : QuotKind → String
  | .type => "type"
  | .ctor => "constructor"
  | .lift => "lift"
  | .ind => "induction"

private def observedAxioms (env : Environment) (name : Name) : IO (Array String) := do
  let context : Core.Context :=
    { fileName := "<lean-environment-extract>"
      fileMap := default
      options := {}
      maxHeartbeats := 0 }
  let state : Core.State := { env := env }
  let (axioms, _) ← Core.CoreM.toIO (collectAxioms name) context state
  return distinctSortedStrings (axioms.map Name.toString)

private def declarationRecord
    (env : Environment) (ownerModule : Name) (info : ConstantInfo) : IO RawDeclarationRecord := do
  let params := info.levelParams
  let value? := constantValue? info
  let (reducibility, regularityHeight) := reducibilityEncoding info
  let inductiveData := match info with
    | .inductInfo value => some {
        numParams := value.numParams
        numIndices := value.numIndices
        mutualMembers := value.all.toArray.map Name.toString
        constructors := value.ctors.toArray.map Name.toString
        numNested := value.numNested
        isRecursive := value.isRec
        isUnsafe := value.isUnsafe
        isReflexive := value.isReflexive
      }
    | _ => none
  let constructorData := match info with
    | .ctorInfo value => some {
        inductiveType := value.induct.toString
        constructorIndex := value.cidx
        numParams := value.numParams
        numFields := value.numFields
        isUnsafe := value.isUnsafe
      }
    | _ => none
  let recursorData := match info with
    | .recInfo value => some {
        mutualInductives := value.all.toArray.map Name.toString
        numParams := value.numParams
        numIndices := value.numIndices
        numMotives := value.numMotives
        numMinors := value.numMinors
        supportsK := value.k
        isUnsafe := value.isUnsafe
        rules := value.rules.toArray.map fun rule => {
          constructor := rule.ctor.toString
          numFields := rule.nfields
          rhs := rawExpression params rule.rhs
        }
      }
    | _ => none
  let quotientData := match info with
    | .quotInfo value => some { kind := quotientKindEncoding value.kind }
    | _ => none
  let origin := match info with
    | .ctorInfo _ | .recInfo _ => "kernelGenerated"
    | _ => "unknown"
  let diagnostics :=
    let typeRaw := rawExpression params info.type
    let valueRaw? := value?.map (rawExpression params)
    let result := if typeRaw.hasFreeVariables || valueRaw?.any (·.hasFreeVariables) then
      #["closed compiled declaration unexpectedly contains a free variable"]
    else
      #[]
    if typeRaw.hasMetavariables || valueRaw?.any (·.hasMetavariables) then
      result.push "closed compiled declaration unexpectedly contains a metavariable"
    else
      result
  return {
    name := info.name.toString
    ownerModule := ownerModule.toString
    kind := constantKind info
    authority := "kernel"
    isPrivateName := isPrivateName info.name
    isInternalDetail := info.name.isInternalDetail
    visibility := if isPrivateName info.name then "privateName" else "public"
    origin := origin
    levelParams := params.toArray.map Name.toString
    typeExpr := rawExpression params info.type
    valueExpr := value?.map (rawExpression params)
    valueRole := valueRole info
    hasStoredValue := value?.isSome
    isUnsafe := info.isUnsafe
    isPartial := info.isPartial
    safety := safetyEncoding info
    reducibility := reducibility
    regularityHeight := regularityHeight
    mutualBlock := info.all.toArray.map Name.toString
    inductiveData := inductiveData
    constructorData := constructorData
    recursorData := recursorData
    quotientData := quotientData
    observedAxioms := ← observedAxioms env info.name
    diagnostics := diagnostics
  }

private def directImportRecord (entry : Import) : RawImportRecord :=
  {
    module := entry.module.toString
    importAll := entry.importAll
    isExported := entry.isExported
    isMeta := entry.isMeta
    direct := true
  }

private def effectiveImportRecord (entry : EffectiveImport) : RawImportRecord :=
  {
    module := entry.module.toString
    importAll := entry.importAll
    isExported := entry.isExported
    isMeta := entry.isMeta
    direct := false
    hasData := some entry.hasData
    irPhases := some (reprStr entry.irPhases)
  }

private def extensionRecord (entry : Name × Array EnvExtensionEntry) : RawExtensionRecord :=
  {
    name := entry.1.toString
    entryCount := entry.2.size
    status := "registered-but-not-decoded"
    authority := "environmentExtension"
  }

private def loadModuleShard (env : Environment) (moduleName : Name) : IO RawModuleShard := do
  let some index := env.getModuleIdx? moduleName
    | throw <| IO.userError s!"compiled environment omitted requested module {moduleName}"
  let some data := env.header.moduleData[index]?
    | throw <| IO.userError s!"compiled environment has no module data for {moduleName}"
  -- Module payloads can retain a shadowed compiler-generated name.  Lean's
  -- `const2ModIdx` table is the authority for the active declaration owner.
  let ownedConstants := data.constants.filter fun info =>
    env.getModuleIdxFor? info.name == some index
  let declarations ← ownedConstants.mapM (declarationRecord env moduleName)
  let visibleConstantCount := env.header.moduleData.foldl (init := 0) fun count moduleData =>
    count + moduleData.constants.size
  return {
    module := moduleName.toString
    checkerVersion := Lean.versionString
    trustLevel := env.header.trustLevel.toNat
    directImports := data.imports.map directImportRecord
    effectiveImports := env.header.modules.map effectiveImportRecord
    declarations := declarations.qsort fun left right => left.name < right.name
    extraConstants := distinctSortedStrings (data.extraConstNames.map Name.toString)
    extensions := data.entries.map extensionRecord |>.qsort fun left right => left.name < right.name
    visibleConstantCount := visibleConstantCount
    ownedConstantCount := ownedConstants.size
  }

private partial def collectLeanModules (root directory : FilePath) : IO (Array Name) := do
  let mut modules := #[]
  for entry in ← directory.readDir do
    if entry.fileName == ".lake" || entry.fileName == ".surface" || entry.fileName == ".mathematics" then
      continue
    if ← entry.path.isDir then
      modules := modules ++ (← collectLeanModules root entry.path)
    else if entry.path.extension == some "lean" then
      modules := modules.push (← moduleNameOfFileName entry.path (some root))
  return modules

structure CliConfig where
  modules : Array Name := #[]
  sourceRoot : Option FilePath := none
  failOnModuleError : Bool := true
  deriving Inhabited

private def parseModuleName (value : String) : Name :=
  value.splitOn "." |>.foldl (init := Name.anonymous) fun result part =>
    Name.str result part

private partial def parseArgs (args : List String) (config : CliConfig := {}) : IO CliConfig := do
  match args with
  | [] => return config
  | "--module" :: value :: tail =>
      parseArgs tail { config with modules := config.modules.push (parseModuleName value) }
  | "--source-root" :: value :: tail =>
      parseArgs tail { config with sourceRoot := some ⟨value⟩ }
  | "--diagnostic" :: tail =>
      parseArgs tail { config with failOnModuleError := false }
  | "--help" :: _ =>
      IO.println "usage: surface_lean_env_extract [--module Module.Name]* [--source-root PATH] [--diagnostic]"
      IO.Process.exit 0
  | unknown :: _ =>
      throw <| IO.userError s!"unknown argument: {unknown}"

private def runExtraction (config : CliConfig) : IO RawExtraction := do
  let root ← config.sourceRoot.getDM IO.currentDir
  let discovered ← if config.modules.isEmpty then
      match ← FormalSourceLocations.leanFiles root with
      | none => collectLeanModules root root
      | some files => do
          let files := files.filter fun file => !(file.components.any fun part =>
            part == ".lake" || part == ".surface" || part == ".mathematics")
          files.mapM fun file => FormalSourceLocations.logicalModuleName root file
    else pure config.modules
  let modules := distinctSortedNames discovered
  let importRequests := modules.map fun moduleName =>
    { module := moduleName, importAll := true : Import }
  let env ← try
      importModules importRequests {}
    catch error =>
      throw <| IO.userError s!"failed to load selected compiled modules: {error}"
  let mut records := #[]
  let mut diagnostics := #[]
  for moduleName in modules do
    try
      records := records.push (← loadModuleShard env moduleName)
    catch error =>
      if config.failOnModuleError then
        throw <| IO.userError s!"failed to load {moduleName}: {error}"
      else
        diagnostics := diagnostics.push s!"failed to load {moduleName}: {error}"
  return {
    schemaVersion := 7
    extractorVersion := "surface-lean-environment-extractor/0.8.0"
    adapterVersion := "lean-v4.32.0-adapter/2"
    checkerVersion := Lean.versionString
    scope := if config.modules.isEmpty then "project-source-modules" else "selected-modules"
    selectedModules := modules.map Name.toString
    modules := records.qsort fun left right => left.module < right.module
    diagnostics := diagnostics
  }

end MathematicsLeanEnvironmentExtract

private def mainAction (args : List String) : IO Unit := do
  Lean.initSearchPath (← Lean.findSysroot)
  let config ← MathematicsLeanEnvironmentExtract.parseArgs args
  let output ← MathematicsLeanEnvironmentExtract.runExtraction config
  IO.println (toJson output).compress

def main (args : List String) : IO Unit := mainAction args
