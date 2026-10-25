# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CurrentModule.Variantf8bed16fb217fd4e2b5daafd59f621bea378a97cf032a474591ea141c54f76e7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7cc8f5865ded78caea4d223f36e3175253912e24` · SHA-256 `2509aed4130f5fb96dbdb27175904e1fb47b033fbfd35459b1f325614309da64`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetCurrentModule.Varianta5933b2b0b05d52d73b32d22266f4a1d0d3c05e5bb0877895a0ec43878ddbb19","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a5933b2b0b05d52d73b32d22266f4a1d0d3c05e5bb0877895a0ec43878ddbb19","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.GetCurrentModule.Varianta5933b2b0b05d52d73b32d22266f4a1d0d3c05e5bb0877895a0ec43878ddbb19","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"a5933b2b0b05d52d73b32d22266f4a1d0d3c05e5bb0877895a0ec43878ddbb19","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/importGraph/ImportGraph/Util/CurrentModule.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jon Eugster. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jon Eugster
-/
module

import Lake.Load.Manifest


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetCurrentModule.Varianta5933b2b0b05d52d73b32d22266f4a1d0d3c05e5bb0877895a0ec43878ddbb19

open Lean (Name)

namespace ImportGraph

/-- Read the name of the main module from the `lake-manifest`. -/
public def getCurrentModule : IO Name := do

  match (← Lake.Manifest.load? ⟨"lake-manifest.json"⟩) with
  | none =>
    throw <| IO.userError "import-graph: lake-manifest.json not found; run from a Lake package root"
  | some manifest =>
    -- TODO: This assumes that the `package` and the default `lean_lib`
    -- have the same name up to capitalisation.
    -- Would be better to read the `.defaultTargets` from the
    -- `← getRootPackage` from `Lake`, but I can't make that work with the monads involved.
    return manifest.name.capitalize
```
