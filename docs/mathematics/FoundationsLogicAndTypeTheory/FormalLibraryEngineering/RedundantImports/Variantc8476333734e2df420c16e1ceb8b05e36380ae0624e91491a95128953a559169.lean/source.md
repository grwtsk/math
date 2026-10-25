# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RedundantImports.Variantc8476333734e2df420c16e1ceb8b05e36380ae0624e91491a95128953a559169

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5e19aa8fc18eabf33d88a8eb8611686af7b4dc4` · SHA-256 `11879d677f6461154991223d854237a61ce6ab26c275c64fa74419898ce47dcb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant800d3a7811bfff89b4fa45cbd79a0c5ac3503589d81b71265e882bce2a84b1a3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"800d3a7811bfff89b4fa45cbd79a0c5ac3503589d81b71265e882bce2a84b1a3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant800d3a7811bfff89b4fa45cbd79a0c5ac3503589d81b71265e882bce2a84b1a3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"800d3a7811bfff89b4fa45cbd79a0c5ac3503589d81b71265e882bce2a84b1a3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/importGraph/ImportGraph/Tools/RedundantImports.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Paul Lezeau
-/
module

public meta import Lean.Elab.Command
public meta import Lean.Widget.UserWidget
public meta import ImportGraph.Imports.Redundant


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant800d3a7811bfff89b4fa45cbd79a0c5ac3503589d81b71265e882bce2a84b1a3

public meta section

open Lean

/--
List the imports in this file which can be removed
because they are transitively implied by another import.
-/
elab "#redundant_imports" : command => do
  let redundant := (← Elab.Command.liftCoreM do redundantImports)
  if redundant.isEmpty then
    logInfo "No transitively redundant imports found."
  else
    logInfo <| "Found the following transitively redundant imports:\n" ++
      m!"{Format.joinSep redundant.toList "\n"}"
```
