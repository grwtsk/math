# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pickle.Variantd5100ed14cd843922d92ef39b52f520a2271e6a66af239bd097f084368c8adb3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d7ef1fd9de312429a62a5b2e137403f241b1d0b` · SHA-256 `d5100ed14cd843922d92ef39b52f520a2271e6a66af239bd097f084368c8adb3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Lean.Environment

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
