# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pickle.Variant28213b38cf02a7f64b0e450e2599e47dedbcf2793a468b963080096a0b6b9427

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d687128363c79efc2078284d9fe82a08a656df9d` · SHA-256 `f66fad41baee5c199df27ff27e97b20bd36f4ce10b35fd7c2ca19cbad3b2f132`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pickle.Variantd5100ed14cd843922d92ef39b52f520a2271e6a66af239bd097f084368c8adb3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d5100ed14cd843922d92ef39b52f520a2271e6a66af239bd097f084368c8adb3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Pickle.Variantd5100ed14cd843922d92ef39b52f520a2271e6a66af239bd097f084368c8adb3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d5100ed14cd843922d92ef39b52f520a2271e6a66af239bd097f084368c8adb3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Util/Pickle.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Lean.Environment


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pickle.Variantd5100ed14cd843922d92ef39b52f520a2271e6a66af239bd097f084368c8adb3

@[expose] public section

/-!
# Pickling and unpickling objects

By abusing `saveModuleData` and `readModuleData` we can pickle and unpickle objects to disk.
-/

open Lean System

/--
Save an object to disk.
If you need to write multiple objects from within a single declaration,
you will need to provide a unique `key` for each.
-/
def pickle {α : Type} (path : FilePath) (x : α) (key : Name := by exact decl_name%) : IO Unit :=
  saveModuleData path key (unsafe unsafeCast x)

/--
Load an object from disk.
Note: The returned `CompactedRegion` can be used to free the memory behind the value
of type `α`, using `CompactedRegion.free` (which is only safe once all references to the `α` are
released). Ignoring the `CompactedRegion` results in the data being leaked.
Use `withUnpickle` to call `CompactedRegion.free` automatically.

This function is unsafe because the data being loaded may not actually have type `α`, and this
may cause crashes or other bad behavior.
-/
unsafe def unpickle (α : Type) (path : FilePath) : IO (α × CompactedRegion) := do
  let (x, region) ← readModuleData path
  pure (unsafeCast x, region)

/-- Load an object from disk and run some continuation on it, freeing memory afterwards. -/
unsafe def withUnpickle [Monad m] [MonadLiftT IO m] {α β : Type}
    (path : FilePath) (f : α → m β) : m β := do
  let (x, region) ← unpickle α path
  let r ← f x
  region.free
  pure r
```
