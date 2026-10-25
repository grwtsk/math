# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Unused.Variant9472b95bf180296def39c426227d4e0876a82a808f8d233a997efe02c34e679e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eba8ab5df841a57df0c0eb068c80185f3165894c` · SHA-256 `7b9ef9fa0b087bad013e8e0e6b1d4e3361aa906226e4a389109a6ef31e9517d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnusedTransitiveImports.Variant63f8b279e5d26299112678f54d4cd4d968ed72207893bbabf80e609dd8eee162","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63f8b279e5d26299112678f54d4cd4d968ed72207893bbabf80e609dd8eee162","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.UnusedTransitiveImports.Variant63f8b279e5d26299112678f54d4cd4d968ed72207893bbabf80e609dd8eee162","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"63f8b279e5d26299112678f54d4cd4d968ed72207893bbabf80e609dd8eee162","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/importGraph/ImportGraph/Imports/Unused.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Paul Lezeau
-/
module

public import Lean.CoreM
import ImportGraph.Graph.TransitiveClosure
import ImportGraph.Imports.ImportGraph
import ImportGraph.Imports.RequiredModules


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnusedTransitiveImports.Variant63f8b279e5d26299112678f54d4cd4d968ed72207893bbabf80e609dd8eee162

open Lean

/--
Returns a `List (Name × List Name)` with a key for each module `n` in `amongst`,
whose corresponding value is the list of modules `m` in `amongst` which are transitively imported by `n`,
but no declaration in `n` makes use of a declaration in `m`.
-/
public def unusedTransitiveImports (amongst : List Name) (verbose : Bool := false) : CoreM (List (Name × List Name)) := do
  let env ← getEnv
  let transitiveImports := env.importGraph.transitiveClosure
  let transitivelyRequired ← env.transitivelyRequiredModules' amongst verbose
  amongst.mapM fun n => do return (n,
    let unused := (transitiveImports.find? n).getD {} \ (transitivelyRequired.find? n |>.getD {})
    amongst.filter (fun m => unused.contains m))
```
