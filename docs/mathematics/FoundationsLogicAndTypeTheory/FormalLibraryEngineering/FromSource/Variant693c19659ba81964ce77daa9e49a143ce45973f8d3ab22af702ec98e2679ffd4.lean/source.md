# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FromSource.Variant693c19659ba81964ce77daa9e49a143ce45973f8d3ab22af702ec98e2679ffd4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5f9275dcaed624ce5164ec95e77d402822ca4de` · SHA-256 `a8a9003912739e42bba04380f51a1463ca86acccef745627e1fd8279c25a4de0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParseImports.Variant6cf93908cf6ce106a0a8c37098f8f6a074b7651cba561f2fbc9660cdd6779542","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6cf93908cf6ce106a0a8c37098f8f6a074b7651cba561f2fbc9660cdd6779542","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.ParseImports.Variant6cf93908cf6ce106a0a8c37098f8f6a074b7651cba561f2fbc9660cdd6779542","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"6cf93908cf6ce106a0a8c37098f8f6a074b7651cba561f2fbc9660cdd6779542","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/importGraph/ImportGraph/Imports/FromSource.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Thomas R. Murrills
-/
module

public import Lean.Elab.ParseImportsFast

/-!
# Source-File-Based Import Analysis

This module provides functions for analyzing imports by parsing source files directly,
as an alternative to `Environment`-based analysis (e.g. in `ImportGraph.Imports`) Specifically:

- `ImportGraph.parseImports?`, `System.FilePath.parseImports'`: Parse direct imports from a single
  string or file
- `parseCurrentHeader`: parse the imports of the current file from the `FileMap`
- `modToRelFilePath`: like `modToFilePath`, but does not insert a leading file separator
- `findTransitiveImportsFromSource`: Compute a nameset of the transitive closure of imports from
  source files. Note, however, that this does not respect the module system.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParseImports.Variant6cf93908cf6ce106a0a8c37098f8f6a074b7651cba561f2fbc9660cdd6779542

public section

open Lean System

namespace ImportGraph

-- TODO: consider returning `prelude`. `parseImports'` translates a `prelude` into `Init` imports.
/-- Like `parseImports'`, but pure. Instead of returning the `fileName:pos <msg>` error of
`parseImports'` of `parseImports'`, returns `(fileMap, pos, <msg>)`. -/
def parseImports? (input : String) : Except (FileMap × Position × String) ModuleHeader := do
  let s := ParseImports.main input (ParseImports.whitespace input {})
  let some err := s.error?
    | return { s with }
  let fileMap := input.toFileMap
  let pos := fileMap.toPosition s.pos
  throw (fileMap, pos, err)

/--
Parse all imports in a source file at `path` and return their module names.

This is a thin wrapper around `Lean.parseImports'` which:
- Reads the file from disk
- Parses the import statements

Note that it does not filter out `Init` modules. See `ModuleHeader.filterInit`.
-/
def System.FilePath.parseImports' (path : System.FilePath) : IO ModuleHeader := do
  Lean.parseImports' (← IO.FS.readFile path) path.toString

/-- Removes `Init` imports from `ModuleHeader`. -/
def Lean.ModuleHeader.filterInit (m : ModuleHeader) : ModuleHeader :=
  { m with imports := m.imports.filter fun imp => !(`Init).isPrefixOf imp.module }

/--
Parses the header of the current file via the source string present in the ambient `FileMap`.
-/
def parseCurrentHeader {m} [Monad m] [MonadLog m] [MonadLiftT IO m] :
    m (TSyntax `Lean.Parser.Module.header × Parser.ModuleParserState × MessageLog) := do
  Parser.parseHeader (Parser.mkInputContext (← getFileMap).source (← getFileName))

/--
Parse all imports in a source file at `path` and return their module names.

This is a thin wrapper around `Lean.parseImports'` that:
- Reads the file from disk
- Parses the import statements
- Filters out `Init` (part of the prelude)

Note: This only sees syntactic imports in the source file.
It does not account for what declarations are actually used.
-/
@[deprecated "Use `ImportGraph.System.FilePath.parseImports'` and `ImportGraph.Lean.ModuleHeader.filterInit` instead"
  (since := "2026-09-13")]
public def findImportsFromSource (path : System.FilePath) : IO (Array Name) := do
  -- Note: we use `filter` rather than `erase`, since module-system files may contain
  -- both an implicit `public import Init` and a `meta import Init`, so `Init` can
  -- appear more than once in the parsed imports.
  return (← Lean.parseImports' (← IO.FS.readFile path) path.toString).imports
    |>.map (·.module) |>.filter (· != `Init)

/-- Like `modToFilePath`, but does not demand `base`. Example: `modToRelFilePath A.B.C "lean"`
results in `A/B/C.lean`. (Note that `modToFilePath "" mod ext` inserts a leading file separator,
and would result in `/A/B/C.lean`.) -/
def modToRelFilePath (mod : Name) (ext : String) : FilePath :=
  go mod |>.addExtension ext
where
  go : Name → FilePath
  | Name.str .anonymous h => h
  | Name.str p h => go p / h
  | _ => panic! "ill-formed import"

open ImportGraph in
/--
Compute the transitive closure of imports starting from a source file.

Returns a `NameSet` of all modules that are transitively imported by the given file,
by recursively parsing source files.

**Example:**
```lean
-- Get all transitive Mathlib imports
let imports ← findTransitiveImportsFromSource "Mathlib/Algebra/Ring/Basic.lean" (some `Mathlib)

-- Get all transitive imports regardless of namespace
let allImports ← findTransitiveImportsFromSource "MyFile.lean"
```
-/
def findTransitiveImportsFromSource (startPath : System.FilePath)
    (rootFilter : Option Name := none) : IO NameSet := do
  let mut visited : NameSet := {}
  let mut queue := #[]

  -- Initialize with direct imports from the start file
  for imp in (← startPath.parseImports').filterInit.imports do
    match rootFilter with
    | some root => if imp.module.getRoot == root then queue := queue.push imp.module
    | none => queue := queue.push imp.module

  -- Process queue with DFS
  while h : queue.size > 0 do
    let module := queue.back
    queue := queue.pop

    if visited.contains module then continue
    visited := visited.insert module

    -- Convert module name to file path; assume findable from current search ref
    let path := modToRelFilePath module "lean"
    if ← path.pathExists then
      for imp in (← path.parseImports').filterInit.imports do
        -- If `rootFilter := none`, `matchesRoot = true`.
        let matchesRoot := rootFilter.elim true (imp.module.getRoot == ·)
        if matchesRoot && !visited.contains imp.module then
            queue := queue.push imp.module

  return visited
````
