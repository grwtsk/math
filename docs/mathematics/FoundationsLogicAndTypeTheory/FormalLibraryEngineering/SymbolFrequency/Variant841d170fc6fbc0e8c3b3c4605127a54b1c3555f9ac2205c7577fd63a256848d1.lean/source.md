# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SymbolFrequency.Variant841d170fc6fbc0e8c3b3c4605127a54b1c3555f9ac2205c7577fd63a256848d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24fc7f18b334cfcbb87dc98028b0dc5e7c7f0f0a` · SHA-256 `9aae8ec6e9be5812c79646e99702bbd358aed3f72c1c0c4c52eeca624f28dfdb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LocalSymbolFrequencyMap.Variant4848875e94d6c79e9906d9e6ec325962c694ddca80e5750f5e436153fc921ace","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4848875e94d6c79e9906d9e6ec325962c694ddca80e5750f5e436153fc921ace","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LocalSymbolFrequencyMap.Variant4848875e94d6c79e9906d9e6ec325962c694ddca80e5750f5e436153fc921ace","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4848875e94d6c79e9906d9e6ec325962c694ddca80e5750f5e436153fc921ace","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/LibrarySuggestions/SymbolFrequency.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Lean.Meta.Basic
import Lean.LibrarySuggestions.Basic

/-!
# Symbol frequency

This module provides a persistent environment extension for computing the frequency of symbols in the environment.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LocalSymbolFrequencyMap.Variant4848875e94d6c79e9906d9e6ec325962c694ddca80e5750f5e436153fc921ace

namespace Lean.LibrarySuggestions

/--
Collect the frequencies for constants occurring in declarations defined in the current module,
skipping instance arguments and proofs.
-/
public def localSymbolFrequencyMap : MetaM (NameMap Nat) := do
  let env := (← getEnv)
  env.constants.map₂.foldlM (init := ∅) (fun acc m ci => do
    if isDeniedPremise env m || !wasOriginallyTheorem env m then
      pure acc
    else
      ci.type.foldRelevantConstants (init := acc) fun n' acc => return acc.alter n' fun i? => some (i?.getD 0 + 1))

/--
A global `IO.Ref` containing the local symbol frequency map. This is initialized on first use.
-/
builtin_initialize localSymbolFrequencyMapRef : IO.Ref (Option (NameMap Nat)) ← IO.mkRef none

/--
A cached version of the local symbol frequency map.

Note that the local symbol frequency map changes during elaboration of a file,
so if this is called at different times it may give the wrong result.
The intended use case is that it is only called by environment extension export functions,
i.e. after all declarations have been elaborated.
-/
def cachedLocalSymbolFrequencyMap : MetaM (NameMap Nat) := do
  match ← localSymbolFrequencyMapRef.get with
  | some map => return map
  | none =>
    let map ← localSymbolFrequencyMap
    localSymbolFrequencyMapRef.set (some map)
    return map

/--
Return the number of times a `Name` appears
in the signatures of (non-internal) theorems in the current module,
skipping instance arguments and proofs.

Note that this is cached, and so returns the frequency within theorems that had been elaborated
when the function is first called (with any argument).
-/
public def localSymbolFrequency (n : Name) : MetaM Nat := do
  return (← cachedLocalSymbolFrequencyMap) |>.getD n 0

/--
Helper function for running `MetaM` code during module export, when there is nothing but an `Environment` available.
Panics on errors.
-/
unsafe def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LocalSymbolFrequencyMap.Variant4848875e94d6c79e9906d9e6ec325962c694ddca80e5750f5e436153fc921ace.Lean.Environment.unsafeRunMetaM [Inhabited α] (env : Environment) (x : MetaM α) : α :=
   match unsafeEIO ((((withoutExporting x).run' {} {}).run'
    { fileName := "symbolFrequency", fileMap := default
      -- avoid triggering since limit cannot be raised here
      maxHeartbeats := 0 }
    { env })) with
   | Except.ok a => a
   | Except.error ex => panic! match unsafeIO ex.toMessageData.toString with
     | Except.ok s => s
     | Except.error ex => ex.toString

/--
The state is just an array of array of maps.
We don't assemble these on import for efficiency reasons: most modules will not query this extension.

Instead, we use an `IO.Ref` below so that within each module we can assemble the global `NameMap Nat` once.

Since we never modify the extension state except on export, the `IO.Ref` does not need updating after first access.
-/
builtin_initialize symbolFrequencyExt : PersistentEnvExtension (NameMap Nat) Empty (Array (Array (NameMap Nat))) ←
  registerPersistentEnvExtension {
    name            := `symbolFrequency
    mkInitial       := pure ∅
    addImportedFn   := fun mapss _ => pure mapss
    addEntryFn      := nofun
    exportEntriesFnEx := fun env _ => unsafe
      let ents := env.unsafeRunMetaM do return #[← cachedLocalSymbolFrequencyMap]
      .uniform ents
    statsFn         := fun _ => "symbol frequency extension"
  }

/-- A global `IO.Ref` containing the symbol frequency map. This is initialized on first use. -/
builtin_initialize symbolFrequencyMapRef : IO.Ref (Option (NameMap Nat)) ← IO.mkRef none

private local instance : Zero (NameMap Nat) := ⟨∅⟩
private local instance : Add (NameMap Nat) where
  add x y := y.foldl (init := x) fun x' n c => x'.insert n (x'.getD n 0 + c)

/-- The symbol frequency map for imported constants. This is initialized on first use. -/
public def symbolFrequencyMap : CoreM (NameMap Nat) := do
  match ← symbolFrequencyMapRef.get with
  | some map => return map
  | none =>
    let mapss := symbolFrequencyExt.getState (← getEnv)
    let map := mapss.foldl (init := 0) fun acc maps => maps.foldl (init := acc) fun acc map => acc + map
    symbolFrequencyMapRef.set (some map)
    return map

/--
Return the number of times a `Name` appears
in the signatures of (non-internal) theorems in the imported environment,
skipping instance arguments and proofs.
-/
public def symbolFrequency (n : Name) : CoreM Nat :=
  return (← symbolFrequencyMap) |>.getD n 0
```
