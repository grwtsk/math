# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FromSource.Variant454f31891bb1c2daa26c510d383aa970add06e6fa7fada03b427bf6d2233a6a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2191a7fe1441a3cb62f870b3ae1fffa99bfd326` · SHA-256 `22f408df18f2cf31dab7c552f3b8fa90efcb1f14a949b890a775f5bbc4cac075`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindImportsFromSource.Variant946b40de8f9d065a4ea58ae3985ddb31e9da4e22df4aeb58b719c573f5500609","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"946b40de8f9d065a4ea58ae3985ddb31e9da4e22df4aeb58b719c573f5500609","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FindImportsFromSource.Variant946b40de8f9d065a4ea58ae3985ddb31e9da4e22df4aeb58b719c573f5500609","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"946b40de8f9d065a4ea58ae3985ddb31e9da4e22df4aeb58b719c573f5500609","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/importGraph/ImportGraph/Imports/FromSource.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Lean.Elab.ParseImportsFast

/-!
# Source-File-Based Import Analysis

This module provides functions for analyzing imports by parsing source files directly,
as an alternative to the Environment-based functions in `ImportGraph.Imports`.

## Functions

- `findImportsFromSource`: Parse direct imports from a single file
- `findTransitiveImportsFromSource`: Compute transitive closure of imports from source files
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindImportsFromSource.Variant946b40de8f9d065a4ea58ae3985ddb31e9da4e22df4aeb58b719c573f5500609

open Lean System

/--
Parse all imports in a source file at `path` and return their module names.

This is a thin wrapper around `Lean.parseImports'` that:
- Reads the file from disk
- Parses the import statements
- Filters out `Init` (part of the prelude)

Note: This only sees syntactic imports in the source file.
It does not account for what declarations are actually used.
-/
public def findImportsFromSource (path : System.FilePath) : IO (Array Name) := do
  -- Note: we use `filter` rather than `erase`, since module-system files may contain
  -- both an implicit `public import Init` and a `meta import Init`, so `Init` can
  -- appear more than once in the parsed imports.
  return (← Lean.parseImports' (← IO.FS.readFile path) path.toString).imports
    |>.map (·.module) |>.filter (· != `Init)

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
public def findTransitiveImportsFromSource
  (startPath : System.FilePath)
  (rootFilter : Option Name := none)
  : IO NameSet := do
  let mut visited : NameSet := {}
  let mut queue := #[]

  -- Initialize with direct imports from the start file
  for imp in ← findImportsFromSource startPath do
    match rootFilter with
    | some root => if imp.getRoot == root then queue := queue.push imp
    | none => queue := queue.push imp

  -- Process queue with BFS
  while h : queue.size > 0 do
    let module := queue[0]
    queue := queue.eraseIdx 0

    if visited.contains module then continue
    visited := visited.insert module

    -- Convert module name to file path
    let path := System.mkFilePath (module.components.map (·.toString)) |>.addExtension "lean"

    if ← path.pathExists then
      for imp in ← findImportsFromSource path do
        match rootFilter with
        | some root =>
          if imp.getRoot == root && !visited.contains imp then
            queue := queue.push imp
        | none =>
          if !visited.contains imp then
            queue := queue.push imp

  return visited
````
