# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindSorry.Variant08c681a0e2c1eccde0c84bf0c3f6202ea1315ebf2d3099181a4fdc8eb8c5d1d8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41fb85abbf64682eb609ed3f3faa218ea1d3f996` · SHA-256 `a9d7902cda5bb6bd4e708bea870d05ddf3224e61c23a803440cb9f09fa3ce454`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AllConstantsWithSorry.Variant14dbc4e0e1b4061d0a72e24c9d61f68c3fb646cd6cd764e1270924cd4914fccd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"14dbc4e0e1b4061d0a72e24c9d61f68c3fb646cd6cd764e1270924cd4914fccd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AllConstantsWithSorry.Variant14dbc4e0e1b4061d0a72e24c9d61f68c3fb646cd6cd764e1270924cd4914fccd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"14dbc4e0e1b4061d0a72e24c9d61f68c3fb646cd6cd764e1270924cd4914fccd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/importGraph/ImportGraph/Util/FindSorry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Jon Eugster. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jon Eugster
-/
module

public import Lean.Environment
import Lean.Util.Sorry
import ImportGraph.Lean.Environment


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AllConstantsWithSorry.Variant14dbc4e0e1b4061d0a72e24c9d61f68c3fb646cd6cd764e1270924cd4914fccd

namespace ImportGraph

open Lean

/--
Array of all constant names which contain a `sorry`.
-/
public def allConstantsWithSorry (env : Environment) : NameSet :=
  env.constants.fold (init := ∅) fun acc name info =>
    match info with
    | .thmInfo val => if val.value.hasSorry then acc.insert name else acc
    | .defnInfo val => if val.value.hasSorry then acc.insert name else acc
    | .opaqueInfo val => if val.value.hasSorry then acc.insert name else acc
    | .axiomInfo _ => acc
    | .quotInfo _ => acc
    | .inductInfo  _ => acc
    | .ctorInfo _ => acc
    | .recInfo _ => acc

/--
Array of all module names of modules containing at least one `sorry`.
-/
public def allModulesWithSorry (env : Environment) : NameSet :=
  (allConstantsWithSorry env).foldl (init := ∅) fun acc n => match env.getModuleFor? n with
    | some module => acc.insert module
    | none => acc -- TODO: should there be a warning/error if module cannot be found?
```
