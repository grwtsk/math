# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lock.Variante41f9a5b34cb425553ce6c9af377f4f89b85f8f6f8d8299c570b195b7d7e927d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78f109574faedcfedd6d142ed51b5b700082aa63` · SHA-256 `e41f9a5b34cb425553ce6c9af377f4f89b85f8f6f8d8299c570b195b7d7e927d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone, Gabriel Ebner, Sebastian Ullrich
-/
module

prelude
public import Init.System.IO
import Init.Data.ToString.Macro

/-! # Lock File Utilities

This module defines utilities to use a file to ensure mutual exclusions
between processes manipulating some shared resource. Such a file is termed
a "lock file".

Lake does not currently use a lock file. Previously, Lake used one for builds,
but this was removed in [lean4#2445][1]. Without an API for catching `Ctrl-C`
during a build, the lock file was deemed too disruptive for users.

[1]: https://github.com/leanprover/lean4/pull/2445
-/

open System
namespace Lake

@[inline] public partial def busyAcquireLockFile (lockFile : FilePath) : IO PUnit := do
  busyLoop true
where
  busyLoop firstTime :=
    try
      if let some dir := lockFile.parent then
        IO.FS.createDirAll dir
      -- Remark: fail if already exists
      -- (not part of POSIX, but supported on all our platforms)
      let h ← IO.FS.Handle.mk lockFile .writeNew
      h.putStrLn <| toString <| ← IO.Process.getPID
    catch
      | .alreadyExists .. => do
        if firstTime then
          let stderr ← IO.getStderr
          stderr.putStrLn s!"\
            warning: waiting for prior `lake build` invocation to finish... \
            (remove '{lockFile}' if stuck)"
          stderr.flush
        IO.sleep (ms := 300)
        busyLoop false
      | e => throw e

/-- Busy wait to acquire the lock of `lockFile`, run `act`, and then release the lock. -/
@[inline] public def withLockFile
  [Monad m] [MonadFinally m] [MonadLiftT IO m] (lockFile : FilePath) (act : m α)
: m α := do
  try
    busyAcquireLockFile lockFile; act
  finally show IO _ from do
    try
      IO.FS.removeFile lockFile
    catch
      | .noFileOrDirectory .. => IO.eprintln <|
        s!"warning: `{lockFile}` was deleted before the lock was released"
      | e => throw e
```
