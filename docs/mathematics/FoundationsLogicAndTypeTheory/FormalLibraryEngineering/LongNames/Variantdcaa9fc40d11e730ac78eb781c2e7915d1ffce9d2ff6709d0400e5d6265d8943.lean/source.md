# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LongNames.Variantdcaa9fc40d11e730ac78eb781c2e7915d1ffce9d2ff6709d0400e5d6265d8943

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f3697ac0405339a910637e9fb92859eb1196e59` · SHA-256 `cbdde3d0df849f833fcdb4dddd0611c6f2d2f4c6dce1daced267ec46350d8c8d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrintNameHashMap.Variant25d080e904212c38705ee4166778b782df6490fd8007e602bce682e6221748a6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"25d080e904212c38705ee4166778b782df6490fd8007e602bce682e6221748a6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PrintNameHashMap.Variant25d080e904212c38705ee4166778b782df6490fd8007e602bce682e6221748a6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"25d080e904212c38705ee4166778b782df6490fd8007e602bce682e6221748a6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Util/LongNames.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.Lean.Name
import Mathlib.Lean.Expr.Basic

/-!
# Commands `#long_names` and `#long_instances`

For finding declarations with excessively long names.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrintNameHashMap.Variant25d080e904212c38705ee4166778b782df6490fd8007e602bce682e6221748a6

open Lean Meta Elab

/-- Helper function for `#long_names` and `#long_instances`. -/
def printNameHashMap (h : Std.HashMap Name (Array Name)) : IO Unit :=
  for (m, names) in h.toList do
    IO.println "----"
    IO.println $ m.toString ++ ":"
    for n in names do
      IO.println n

/--
Lists all declarations with a long name, gathered according to the module they are defined in.
Use as `#long_names` or `#long_names 100` to specify the length.
-/
elab "#long_names " N:(num)? : command =>
  Command.runTermElabM fun _ => do
    let N := N.map TSyntax.getNat |>.getD 50
    let namesByModule ← allNamesByModule (fun n => n.toString.length > N)
    let namesByModule := namesByModule.filter fun m _ => m.getRoot.toString = "Mathlib"
    printNameHashMap namesByModule

/--
Lists all instances with a long name beginning with `inst`,
gathered according to the module they are defined in.
This is useful for finding automatically named instances with absurd names.

Use as `#long_names` or `#long_names 100` to specify the length.
-/
elab "#long_instances " N:(num)?: command =>
  Command.runTermElabM fun _ => do
    let N := N.map TSyntax.getNat |>.getD 50
    let namesByModule ← allNamesByModule
      (fun n => n.getString.startsWith "inst" && n.getString.length > N)
    let namesByModule := namesByModule.filter fun m _ => m.getRoot.toString = "Mathlib"
    printNameHashMap namesByModule
```
