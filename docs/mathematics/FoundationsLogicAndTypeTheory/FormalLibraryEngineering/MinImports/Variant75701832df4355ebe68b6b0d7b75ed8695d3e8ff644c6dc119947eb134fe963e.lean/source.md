# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MinImports.Variant75701832df4355ebe68b6b0d7b75ed8695d3e8ff644c6dc119947eb134fe963e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f09596d6b0be4886fae4a09b67df228c621e9e5` · SHA-256 `9c8323803d86b6eadc74027bb1d2a88f9052c92c24f2107506a7de0e84489f28`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanEnvironmentMinimalRequiredModules.Varianta7bb006c2b46530be71b094281569121d57dceba39c89b48f62f1d35e436544d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a7bb006c2b46530be71b094281569121d57dceba39c89b48f62f1d35e436544d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LeanEnvironmentMinimalRequiredModules.Varianta7bb006c2b46530be71b094281569121d57dceba39c89b48f62f1d35e436544d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a7bb006c2b46530be71b094281569121d57dceba39c89b48f62f1d35e436544d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/importGraph/ImportGraph/Tools/MinImports.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Paul Lezeau
-/
module

public meta import Lean.Elab.Command
public meta import Lean.Widget.UserWidget
public meta import ImportGraph.Imports.RequiredModules
public meta import ImportGraph.Imports.Redundant


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanEnvironmentMinimalRequiredModules.Varianta7bb006c2b46530be71b094281569121d57dceba39c89b48f62f1d35e436544d

public meta section

open Lean

/--
Return the names of the modules in which constants used in the current file were defined,
with modules already transitively imported removed.

Note that this will *not* account for tactics and syntax used in the file,
so the results may not suffice as imports.
-/
def Lean.Environment.minimalRequiredModules (env : Environment) : Array Name :=
  let required := env.requiredModules.toArray.erase env.header.mainModule
  let redundant := findRedundantImports env required
  required.filter fun n => ¬ redundant.contains n

/--
Try to compute a minimal set of imports for this file,
by analyzing the declarations.

This must be run at the end of the file,
and is not aware of syntax and tactics,
so the results will likely need to be adjusted by hand.
-/
elab "#min_imports" : command => do
  let imports := (← getEnv).minimalRequiredModules.qsort (·.toString < ·.toString)
    |>.toList.map (fun n => "public import " ++ n.toString)
  logInfo <| Format.joinSep imports "\n"

-- deprecated since 2024-07-06
elab "#minimize_imports" : command => do
  logWarning m!"'#minimize_imports' is deprecated: please use '#min_imports'"
  Elab.Command.elabCommand (← `(command| #min_imports))
```
