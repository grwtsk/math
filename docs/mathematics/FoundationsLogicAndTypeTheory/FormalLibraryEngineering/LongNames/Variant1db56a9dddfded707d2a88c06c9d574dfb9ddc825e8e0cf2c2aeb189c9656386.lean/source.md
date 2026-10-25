# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LongNames.Variant1db56a9dddfded707d2a88c06c9d574dfb9ddc825e8e0cf2c2aeb189c9656386

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78fbfaf8546d36dd03dfd9a20c1b2a33d47f89cd` · SHA-256 `7e3ec3995c74ad5e5784c9c334498671dbbcbc250198a798c9cfe3a1f2fa9001`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrintNameHashMap.Variant18663aea25a1da8483980c0d44eaf84c49c210875d077fee577cbe210545afdb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"18663aea25a1da8483980c0d44eaf84c49c210875d077fee577cbe210545afdb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PrintNameHashMap.Variant18663aea25a1da8483980c0d44eaf84c49c210875d077fee577cbe210545afdb","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"18663aea25a1da8483980c0d44eaf84c49c210875d077fee577cbe210545afdb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Util/LongNames.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Lean.Name
import Mathlib.Lean.Expr.Basic
import Lean.Elab.Command

/-!
# Commands `#long_names` and `#long_instances`

For finding declarations with excessively long names.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrintNameHashMap.Variant18663aea25a1da8483980c0d44eaf84c49c210875d077fee577cbe210545afdb

open Lean Meta Elab

/-- Helper function for `#long_names` and `#long_instances`. -/
def printNameHashMap (h : Std.HashMap Name (Array Name)) : IO Unit :=
  for (m, names) in h.toList do
    IO.println "----"
    IO.println <| m.toString ++ ":"
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
      (fun n => n.lastComponentAsString.startsWith "inst" && n.lastComponentAsString.length > N)
    let namesByModule := namesByModule.filter fun m _ => m.getRoot.toString = "Mathlib"
    printNameHashMap namesByModule
```
