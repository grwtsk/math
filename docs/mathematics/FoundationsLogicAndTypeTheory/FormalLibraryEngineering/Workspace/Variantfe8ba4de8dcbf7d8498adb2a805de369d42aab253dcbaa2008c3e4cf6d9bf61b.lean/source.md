# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Workspace.Variantfe8ba4de8dcbf7d8498adb2a805de369d42aab253dcbaa2008c3e4cf6d9bf61b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbe312565dd8958d38f333642d839fb5874faa0f` · SHA-256 `fe8ba4de8dcbf7d8498adb2a805de369d42aab253dcbaa2008c3e4cf6d9bf61b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Wojciech Nawrocki. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Wojciech Nawrocki
-/
module

prelude
public import Lean.Data.Lsp.Basic

public section

namespace Lean
namespace Lsp

open Json

structure WorkspaceFolder where
  uri : DocumentUri
  name : String
  deriving ToJson, FromJson

-- TODO(WN):
-- WorkspaceFoldersServerCapabilities,
-- DidChangeWorkspaceFoldersParams,
-- WorkspaceFoldersChangeEvent

structure FileSystemWatcher where
  globPattern : String
  kind? : Option Nat := none
  deriving FromJson, ToJson

namespace FileSystemWatcher

-- Bit flags for `FileSystemWatcher.kind`
def create := 1
def change := 2
def delete := 4

end FileSystemWatcher

structure DidChangeWatchedFilesRegistrationOptions where
  watchers : Array FileSystemWatcher
  deriving FromJson, ToJson

inductive FileChangeType
  | Created
  | Changed
  | Deleted

instance : FromJson FileChangeType where
  fromJson? j := do
    match (← fromJson? j : Nat) with
      | 1 => return FileChangeType.Created
      | 2 => return FileChangeType.Changed
      | 3 => return FileChangeType.Deleted
      | _ => throw s!"expected 1, 2, or 3, got {j}"

instance : ToJson FileChangeType where
  toJson
    | FileChangeType.Created => toJson 1
    | FileChangeType.Changed => toJson 2
    | FileChangeType.Deleted => toJson 3

structure FileEvent where
  uri : DocumentUri
  type : FileChangeType
  deriving FromJson, ToJson

structure DidChangeWatchedFilesParams where
  changes : Array FileEvent
  deriving FromJson, ToJson

end Lsp
end Lean
```
