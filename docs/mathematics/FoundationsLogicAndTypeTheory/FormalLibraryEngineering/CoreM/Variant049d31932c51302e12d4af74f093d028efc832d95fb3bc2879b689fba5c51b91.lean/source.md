# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoreM.Variant049d31932c51302e12d4af74f093d028efc832d95fb3bc2879b689fba5c51b91

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43ef497ca79ed575eee5ec6b5fce0255846a3c44` · SHA-256 `0485d8bfd90a3c85ad83ae3e9c962df0d49bd61771bf74099effab1f30288693`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoreMWithImportModules.Variantfb7583f25fae38733565babf3935e16aa11d48933b6b3841ddce7ed93455604d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fb7583f25fae38733565babf3935e16aa11d48933b6b3841ddce7ed93455604d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CoreMWithImportModules.Variantfb7583f25fae38733565babf3935e16aa11d48933b6b3841ddce7ed93455604d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fb7583f25fae38733565babf3935e16aa11d48933b6b3841ddce7ed93455604d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Lean/CoreM.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Tactic.ToExpr

/-!
# Additional functions using `CoreM` state.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoreMWithImportModules.Variantfb7583f25fae38733565babf3935e16aa11d48933b6b3841ddce7ed93455604d

open Lean Core

/--
Run a `CoreM α` in a fresh `Environment` with specified `modules : List Name` imported.
-/
def CoreM.withImportModules {α : Type} (modules : Array Name) (run : CoreM α)
    (searchPath : Option SearchPath := none) (options : Options := {})
    (trustLevel : UInt32 := 0) (fileName := "") :
    IO α := unsafe do
  if let some sp := searchPath then searchPathRef.set sp
  Lean.withImportModules (modules.map ({ module := · })) options (trustLevel := trustLevel)
    fun env =>
      let ctx := {fileName, options, fileMap := default}
      let state := {env}
      Prod.fst <$> (CoreM.toIO · ctx state) do
        run
```
