# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompiledEnvironmentExport.Variantf4fd05acf1697279e67ae9651cde0dcd21a33cabbf5599f5b5ffe4aa4a150b4a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5b60f369862b0867a9f0917010aa7bd54badf0c` · SHA-256 `f4fd05acf1697279e67ae9651cde0dcd21a33cabbf5599f5b5ffe4aa4a150b4a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean

/-!
# Compiled Lean environment export

This executable reads the pinned Lean frontend's compiled module metadata.  It
exports constants (including elaborator-generated constants), compiler-only
extra constant names, effective direct imports with their defining module,
pinned-frontend raw normalized declaration types, a recursively traversed
reducible weak-head-normalized type view, and the frontend-observed transitive
axiom closure of each declaration.  The checker version is recorded both
globally and on every declaration record so records remain self-describing
after downstream partitioning.

The export is executable evidence.  It is not a kernel theorem about ownership,
semantic re-exports, normalization equivalence, source identity, or the
correctness of the surrounding Rust checker.  Source spans, source digests, and
owners are intentionally supplied by later external enrichment.
-/

open Lean System

namespace CompiledEnvironmentExport

structure ImportRecord where
  module : String
  importAll : Bool
  isExported : Bool
  isMeta : Bool
  deriving ToJson

structure DeclarationRecord where
  name : String
  kind : String
  isPrivate : Bool
  isInternalDetail : Bool
  normalizedType : String
  reducibleType : String
  observedAxioms : Array String
  checkerVersion : String
  deriving ToJson

structure ModuleRecord where
  module : String
  imports : Array ImportRecord
  declarations : Array DeclarationRecord
  extraConstants : Array String
  deriving ToJson

structure Export where
  schemaVersion : Nat
  producer : String
  checkerVersion : String
  scope : String
  modules : Array ModuleRecord
  deriving ToJson

private def constantKind : ConstantInfo → String
  | .axiomInfo _ => "axiomatic_constant"
  | .defnInfo _ => "definition"
  | .thmInfo _ => "theorem"
  | .opaqueInfo _ => "opaque"
  | .quotInfo _ => "quotient"
  | .inductInfo _ => "inductive"
  | .ctorInfo _ => "constructor"
  | .recInfo _ => "recursor"

private def normalizationOptions : Options :=
  ({} : Options)
    |>.setBool `pp.universes true
    |>.setBool `pp.explicit true
    |>.setBool `pp.fullNames true
    |>.setBool `pp.proofs true

/--
Pretty-print a closed declaration type with explicit universes, arguments, and
fully qualified names.  This is pinned-frontend normalization, not a semantic
equivalence or source-level pretty-printing theorem.
-/
private def normalizedType (env : Environment) (info : ConstantInfo) : IO String := do
  let format ← PrettyPrinter.ppExprLegacy env {} {} normalizationOptions info.type
  return format.pretty

/--
Recursively expose reducible weak-head structure in both declaration results
and dependent binder domains. Local declarations are introduced before
descending under binders, avoiding loose-variable reconstruction.

This is pinned-frontend executable evidence. It unfolds only reducible
definitions (not semireducible, irreducible, or opaque definitions) and is not
a kernel theorem asserting semantic equivalence of the printed expressions.
-/
private partial def reducibleWhnfTree (expression : Expr) : MetaM Expr := do
  let expression ← Meta.whnf expression
  match expression with
  | .app function argument =>
      return .app (← reducibleWhnfTree function) (← reducibleWhnfTree argument)
  | .lam name domain body binderInfo =>
      let domain ← reducibleWhnfTree domain
      Meta.withLocalDecl name binderInfo domain fun localVar => do
        let body ← reducibleWhnfTree (body.instantiate1 localVar)
        Meta.mkLambdaFVars #[localVar] body
  | .forallE name domain body binderInfo =>
      let domain ← reducibleWhnfTree domain
      Meta.withLocalDecl name binderInfo domain fun localVar => do
        let body ← reducibleWhnfTree (body.instantiate1 localVar)
        Meta.mkForallFVars #[localVar] body
  | .letE name type value body nondep =>
      let type ← reducibleWhnfTree type
      let value ← reducibleWhnfTree value
      Meta.mapLetDecl name type value (nondep := nondep) fun localVar =>
        reducibleWhnfTree (body.instantiate1 localVar)
  | .mdata data body =>
      return .mdata data (← reducibleWhnfTree body)
  | .proj typeName index object =>
      return .proj typeName index (← reducibleWhnfTree object)
  | expression => return expression

private def reducibleType (env : Environment) (info : ConstantInfo) : IO String := do
  let coreContext : Core.Context :=
    { fileName := "<compiled-environment-export>"
      fileMap := default
      maxHeartbeats := 0 }
  let coreState : Core.State := { env := env }
  let action : MetaM Expr :=
    Meta.withTransparency .reducible <| reducibleWhnfTree info.type
  let (normalized, _, _) ← Meta.MetaM.toIO action coreContext coreState
  let format ← PrettyPrinter.ppExprLegacy env {} {} normalizationOptions normalized
  return format.pretty

/--
Sort and deduplicate serialized names by their JSON string representation.

`Name.lt` is an internal structural order and is not necessarily the same as
the lexicographic order consumed by downstream JSON validators.  Applying the
serialization boundary first makes the evidence contract explicit and stable.
-/
private def distinctSortedStrings (values : Array String) : Array String :=
  values.qsort (fun left right => left < right) |>.foldl (init := #[]) fun result value =>
    if result.back? == some value then result else result.push value

/-- Lexically sorted, duplicate-free transitive axiom closure from the pinned frontend. -/
private def observedAxioms (env : Environment) (name : Name) : IO (Array String) := do
  let context : Core.Context :=
    { fileName := "<compiled-environment-export>"
      fileMap := default
      maxHeartbeats := 0 }
  let state : Core.State := { env := env }
  let action : CoreM (Array Name) := collectAxioms name
  let (axioms, _) ← Core.CoreM.toIO action context state
  return distinctSortedStrings (axioms.map Name.toString)

private def declarationRecord
    (env : Environment) (info : ConstantInfo) : IO DeclarationRecord := do
  let name := info.name
  return {
    name := name.toString
    kind := constantKind info
    isPrivate := isPrivateName name
    isInternalDetail := name.isInternalDetail
    normalizedType := ← normalizedType env info
    reducibleType := ← reducibleType env info
    observedAxioms := ← observedAxioms env name
    checkerVersion := Lean.versionString
  }

private def moduleRecord (env : Environment) (moduleName : Name) : IO ModuleRecord := do
  let some index := env.getModuleIdx? moduleName
    | throw <| IO.userError s!"compiled environment omitted requested module {moduleName}"
  let some data := env.header.moduleData[index]?
    | throw <| IO.userError s!"compiled environment has no module data for {moduleName}"
  return {
    module := moduleName.toString
    imports := data.imports.map fun entry => {
      module := entry.module.toString
      importAll := entry.importAll
      isExported := entry.isExported
      isMeta := entry.isMeta
    }
    declarations := ← data.constants.mapM (declarationRecord env)
    extraConstants := data.extraConstNames.map (toString ·)
  }

private partial def collectLeanModules (root directory : FilePath) : IO (Array Name) := do
  let mut modules := #[]
  for entry in ← directory.readDir do
    if entry.fileName == ".lake" then
      continue
    if ← entry.path.isDir then
      modules := modules ++ (← collectLeanModules root entry.path)
    else if entry.path.extension == some "lean" then
      modules := modules.push (← moduleNameOfFileName entry.path (some root))
  return modules

private def importBatch (modules : Array Name) : IO (Array ModuleRecord) := do
  if modules.isEmpty then
    return #[]
  let imports := modules.map fun moduleName => ({ module := moduleName } : Import)
  let env ← importModules imports {}
  -- Each record is a read-only projection of the same immutable environment.
  -- Start all projections eagerly so Lean's task scheduler can use the host's
  -- available cores, then collect results in the original module order.  The
  -- final sort below therefore remains deterministic across scheduler orders.
  let tasks ← modules.mapM fun moduleName =>
    IO.asTask (moduleRecord env moduleName)
  tasks.mapM fun task =>
    IO.ofExcept task.get

private def recordLt (left right : ModuleRecord) : Bool :=
  left.module < right.module

private def distinctSortedModules (modules : Array Name) : Array Name :=
  modules.qsort Name.quickLt |>.foldl (init := #[]) fun result moduleName =>
    if result.back? == some moduleName then result else result.push moduleName

private def exportCompiledEnvironment : IO Export := do
  let root ← IO.currentDir
  let modules := distinctSortedModules (← collectLeanModules root root)
  let conflictModules : Array Name := #[`Main, `Tests, `Tools.CompiledEnvironmentExport]
  let ordinary := modules.filter fun moduleName => !conflictModules.contains moduleName
  let mut records ← importBatch ordinary
  for moduleName in conflictModules do
    if modules.contains moduleName then
      records := records ++ (← importBatch #[moduleName])
  let sortedRecords := records.qsort recordLt
  return {
    schemaVersion := 3
    producer := "pinned Lean Environment.header.moduleData + reducible Meta.whnf traversal + PrettyPrinter.ppExprLegacy + collectAxioms"
    checkerVersion := Lean.versionString
    scope := "all compiled modules corresponding to repository Lean source files; records are identified by defining-module plus declaration-name, declarations include private/internal flags, raw pinned-frontend normalized types, reducible-WHNF types recursively normalized through binder domains, sorted observed axiom closures, and checker version; reducible normalization is executable metadata rather than theorem authority and does not unfold semireducible, irreducible, or opaque definitions; extra compiler constant names are separate; owner, source digest, and source span are intentionally left to external enrichment"
    modules := sortedRecords
  }

end CompiledEnvironmentExport

def main : IO Unit := do
  Lean.initSearchPath (← Lean.findSysroot)
  let output ← CompiledEnvironmentExport.exportCompiledEnvironment
  IO.println (toJson output).pretty
```
