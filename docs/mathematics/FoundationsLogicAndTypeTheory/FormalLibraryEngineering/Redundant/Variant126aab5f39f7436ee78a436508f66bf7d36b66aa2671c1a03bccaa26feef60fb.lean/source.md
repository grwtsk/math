# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Redundant.Variant126aab5f39f7436ee78a436508f66bf7d36b66aa2671c1a03bccaa26feef60fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec798488ca7b4bd67c311cb587032646fbf26895` · SHA-256 `10645639a9e811106bff690c7e53c5e9ea2c4bd478463df34f5744f0059154ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindRedundantImports.Variant31b67ac1f7ad0de0380e659efdb0b1d3c018e572ed628386dd349b42eed74a7d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"31b67ac1f7ad0de0380e659efdb0b1d3c018e572ed628386dd349b42eed74a7d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FindRedundantImports.Variant31b67ac1f7ad0de0380e659efdb0b1d3c018e572ed628386dd349b42eed74a7d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"31b67ac1f7ad0de0380e659efdb0b1d3c018e572ed628386dd349b42eed74a7d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/importGraph/ImportGraph/Imports/Redundant.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Paul Lezeau
-/
module

public import Lean.Environment
public import Lean.Data.NameMap.Basic
public import Lean.CoreM
import ImportGraph.Imports.ImportGraph


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindRedundantImports.Variant31b67ac1f7ad0de0380e659efdb0b1d3c018e572ed628386dd349b42eed74a7d

open Lean

namespace Lean.Environment

/--
Return the redundant imports (i.e. those transitively implied by another import)
amongst a candidate list of imports.
-/
public partial def findRedundantImports (env : Environment) (imports : Array Name) : NameSet :=
  let run := visit env.importGraph imports
  let (_, seen) := imports.foldl (fun ⟨v, s⟩ n => run v s n) ({}, {})
  seen
where
  visit (Γ) (targets) (visited) (seen) (n) : NameSet × NameSet :=
    if visited.contains n then
      (visited, seen)
    else
      let imports := (Γ.find? n).getD #[]
      let (visited', seen') := imports.foldl (fun ⟨v, s⟩ t => visit Γ targets v s t) (visited, seen)
      (visited'.insert n,
        imports.foldl (fun s t => if targets.contains t then s.insert t else s) seen')

end Lean.Environment

/--
Return the redundant imports (i.e. those transitively implied by another import)
of a specified module (or the current module if `none` is specified).
-/
public def redundantImports (n? : Option Name := none) : CoreM NameSet := do
  let env ← getEnv
  let imports := env.importsOf (n?.getD (env.header.mainModule))
  return env.findRedundantImports imports
```
