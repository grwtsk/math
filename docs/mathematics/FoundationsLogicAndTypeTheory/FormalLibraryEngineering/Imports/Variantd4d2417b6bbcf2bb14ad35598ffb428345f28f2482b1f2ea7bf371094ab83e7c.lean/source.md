# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Imports.Variantd4d2417b6bbcf2bb14ad35598ffb428345f28f2482b1f2ea7bf371094ab83e7c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e86a578947d95f6576b34bcc85706138be24c6f` · SHA-256 `4f0820a2191090ba9b6dc4e3f66c4534e7cf7a2c2acdda9945c6e34e5e21dfde`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ImportTest.Variant98c7803eca0a7ef9e9cff54623610e3eb3ca53fe7fc34c1ad1be2176e28708b0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"98c7803eca0a7ef9e9cff54623610e3eb3ca53fe7fc34c1ad1be2176e28708b0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ImportTest.Variant98c7803eca0a7ef9e9cff54623610e3eb3ca53fe7fc34c1ad1be2176e28708b0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"98c7803eca0a7ef9e9cff54623610e3eb3ca53fe7fc34c1ad1be2176e28708b0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/importGraph/ImportGraphTest/Imports.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ImportGraph.Imports.RequiredModules
import ImportGraphTest.Used
import ImportGraph.Tools
import ImportGraph.Imports.Unused


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ImportTest.Variant98c7803eca0a7ef9e9cff54623610e3eb3ca53fe7fc34c1ad1be2176e28708b0

open Lean

def importTest : CoreM Unit := do
  let x ← redundantImports
  logInfo s!"{x.toArray}"

/--
info: Found the following transitively redundant imports:
ImportGraph.Imports.RequiredModules
-/
#guard_msgs in
#redundant_imports

/-- info: public import ImportGraph.Imports.Redundant -/
#guard_msgs in
#min_imports

/-- info: [ImportGraph.Imports.Redundant] -/
#guard_msgs in
#find_home importTest

open Elab Command


/--
Reports unused transitive imports amongst the specified modules.
-/
elab "#unused_transitive_imports" names:ident* : command => do
  let imports := (names.map Syntax.getId).toList
  let unused ← Elab.Command.liftCoreM (unusedTransitiveImports imports)
  for (n, u) in unused do
    if !u.isEmpty then
    logInfo <| s!"Transitively unused imports of {n}:\n{"\n".intercalate (u.map (fun i => s!"  {i}"))}"

/--
info: Transitively unused imports of Init.System.IO:
  Init.Control.StateRef
  Init.Control.Reader
-/
#guard_msgs in
#unused_transitive_imports Init.Control.StateRef Init.System.IO Init.Control.Reader Init.Control.Basic

/--
info: Transitively unused imports of ImportGraphTest.Used:
  ImportGraphTest.Unused
-/
#guard_msgs in
#unused_transitive_imports ImportGraphTest.Used ImportGraphTest.Unused Init.Control.Reader

elab "#transitivelyRequiredModules_test" : command => do
  let env ← getEnv
  let unused ← liftCoreM <| env.transitivelyRequiredModules `ImportGraph.Imports.RequiredModules
  logInfo s!"{unused.contains `Init.Data.Option.Lemmas}"

/-- info: true -/
#guard_msgs in
#transitivelyRequiredModules_test

elab "#my_test" : command => do
  -- functionality of `#redundant_imports`
  let expected := #[`ImportGraph.Imports.RequiredModules]
  let ri ← liftCoreM redundantImports
  if (ri.toArray != expected) then
    logError s!"Failed: `redundantImports` returned {ri.toArray} instead of {expected}"

  -- functionality of `#find_home`
  let expected := #[`ImportGraph.Imports.Redundant]
  let mi ← liftCoreM <| Lean.Name.findHome `importTest none
  if (mi.toArray != expected) then
      logError s!"Failed: `findHome` returned {mi.toArray} instead of {expected}"

  -- functionality of `#find_home!`
  let expected := #[`ImportGraph.Imports.Redundant]
  let mi! ← liftCoreM <| Lean.Name.findHome `importTest (← getEnv)
  if (mi!.toArray != expected) then
      logError s!"Failed: `findHome (!)` returned {mi!.toArray} instead of {expected}"

  logInfo s!"{mi.toArray}"
  pure ()

/-- info: #[ImportGraph.Imports.Redundant] -/
#guard_msgs in
#my_test
```
