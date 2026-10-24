# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hashing.Variantc26d7d8c0c87d40efaa4632de32a3e2d0320205af733d98c46301e865664f79b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c93e6663c203ac3bcc2b672e4831ab5b68d1f68` · SHA-256 `1202cfac6efbec0c46755fe27724d3b395e0668ae7d259813066e5dda4398671`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HashMemo.Variant9fb4773ae235eb515261ccbe0a132f23152d6a825e065542e72fb6830b81b590","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9fb4773ae235eb515261ccbe0a132f23152d6a825e065542e72fb6830b81b590","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.HashMemo.Variant9fb4773ae235eb515261ccbe0a132f23152d6a825e065542e72fb6830b81b590","mathematical_subject":"Computation.DataStructures","original_sha256":"9fb4773ae235eb515261ccbe0a132f23152d6a825e065542e72fb6830b81b590","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Cache/Hashing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Arthur Paulino. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arthur Paulino
-/

import Cache.IO
import Lean.Elab.ParseImportsFast
import Lake.Build.Trace


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HashMemo.Variant9fb4773ae235eb515261ccbe0a132f23152d6a825e065542e72fb6830b81b590

namespace Cache.Hashing

open System IO

structure HashMemo where
  rootHash : UInt64
  depsMap  : Lean.HashMap FilePath (Array FilePath) := {}
  cache    : Lean.HashMap FilePath (Option UInt64) := {}
  hashMap  : HashMap := {}
  deriving Inhabited

partial def insertDeps (hashMap : HashMap) (path : FilePath) (hashMemo : HashMemo) : HashMap :=
  if hashMap.contains path then hashMap else
  match (hashMemo.depsMap.find? path, hashMemo.hashMap.find? path) with
  | (some deps, some hash) => deps.foldl (insertDeps · · hashMemo) (hashMap.insert path hash)
  | _ => hashMap

/--
Filters the `HashMap` of a `HashMemo` so that it only contains key/value pairs such that every key:
* Belongs to the given list of file paths or
* Corresponds to a file that's imported (transitively of not) by some file in the list of file paths
-/
def HashMemo.filterByFilePaths (hashMemo : HashMemo) (filePaths : List FilePath) : IO HashMap := do
  let mut hashMap := default
  for filePath in filePaths do
    if hashMemo.hashMap.contains filePath then
      hashMap := insertDeps hashMap filePath hashMemo
    else IO.println s!"{filePath} is not covered by the olean cache."
  return hashMap

/-- We cache the hash of each file and their dependencies for later lookup -/
abbrev HashM := StateT HashMemo IO

/-- Gets the file paths to Mathlib files imported on a Lean source -/
def getFileImports (source : String) (pkgDirs : PackageDirs) : Array FilePath :=
  let s := Lean.ParseImports.main source (Lean.ParseImports.whitespace source {})
  let imps := s.imports.map (·.module.components |> .map toString)
    |>.filter fun parts => match parts.head? with
      | some head => pkgDirs.contains head
      | none => false
  imps.map (mkFilePath · |>.withExtension "lean")

/-- Computes a canonical hash of a file's contents. -/
def hashFileContents (contents : String) : UInt64 :=
  -- revert potential file transformation by git's `autocrlf`
  let contents := Lake.crlf2lf contents
  hash contents

/--
Computes the root hash, which mixes the hashes of the content of:
* `lakefile.lean`
* `lean-toolchain`
* `lake-manifest.json`
-/
def getRootHash : IO UInt64 := do
  let rootFiles : List FilePath := ["lakefile.lean", "lean-toolchain", "lake-manifest.json"]
  let isMathlibRoot ← isMathlibRoot
  hash <$> rootFiles.mapM fun path =>
    hashFileContents <$> IO.FS.readFile (if isMathlibRoot then path else mathlibDepPath / path)

/--
Computes the hash of a file, which mixes:
* The root hash
* The hash of its relative path (inside its package directory)
* The hash of its content
* The hashes of the imported files that are part of `Mathlib`
-/
partial def getFileHash (filePath : FilePath) : HashM $ Option UInt64 := do
  let stt ← get
  match stt.cache.find? filePath with
  | some hash? => return hash?
  | none =>
    let fixedPath := (← IO.getPackageDir filePath) / filePath
    if !(← fixedPath.pathExists) then
      IO.println s!"Warning: {fixedPath} not found. Skipping all files that depend on it"
      set { stt with cache := stt.cache.insert filePath none }
      return none
    let content ← IO.FS.readFile fixedPath
    let fileImports := getFileImports content pkgDirs
    let mut importHashes := #[]
    for importHash? in ← fileImports.mapM getFileHash do
      match importHash? with
      | some importHash => importHashes := importHashes.push importHash
      | none =>
        set { stt with cache := stt.cache.insert filePath none }
        return none
    let rootHash := (← get).rootHash
    let pathHash := hash filePath.components
    let fileHash := hash $ rootHash :: pathHash :: hashFileContents content :: importHashes.toList
    modifyGet fun stt =>
      (some fileHash, { stt with
        hashMap := stt.hashMap.insert filePath fileHash
        cache   := stt.cache.insert   filePath (some fileHash)
        depsMap := stt.depsMap.insert filePath fileImports })

/-- Files to start hashing from. -/
def roots : Array FilePath := #["Mathlib.lean", "MathlibExtras.lean"]

/-- Main API to retrieve the hashes of the Lean files -/
def getHashMemo : IO HashMemo :=
  return (← StateT.run (roots.mapM getFileHash) { rootHash := ← getRootHash }).2

end Cache.Hashing
```
