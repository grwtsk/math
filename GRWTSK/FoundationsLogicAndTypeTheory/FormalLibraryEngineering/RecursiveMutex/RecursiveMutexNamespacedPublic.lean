-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecursiveMutex.Variant5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.RecursiveMutex.Variant5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Sync/RecursiveMutex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Sync.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecursiveMutex.Variant5fb88d9dd7c8034a1c9ae54a60395f0c2648db1ecb97c7cb3bcb6d16ca5c4f40

public section

namespace Std

private opaque RecursiveMutexImpl : NonemptyType.{0}

/--
Recursive (or reentrant) exclusion primitive.

If you want to guard shared state, use `RecursiveMutex α` instead.
-/
def BaseRecursiveMutex : Type := RecursiveMutexImpl.type

instance : Nonempty BaseRecursiveMutex := by exact RecursiveMutexImpl.property

/-- Creates a new `BaseRecursiveMutex`. -/
@[extern "lean_io_baserecmutex_new"]
opaque BaseRecursiveMutex.new : BaseIO BaseRecursiveMutex

/--
Locks a `BaseRecursiveMutex`. Waits until no other thread has locked the mutex.
If the current thread already holds the mutex this function doesn't block.
-/
@[extern "lean_io_baserecmutex_lock"]
opaque BaseRecursiveMutex.lock (mutex : @& BaseRecursiveMutex) : BaseIO Unit

/--
Attempts to lock a `BaseRecursiveMutex`. If the mutex is not available return `false`, otherwise
lock it and return `true`.

This function does not block. Furthermore the same thread may acquire the lock multiple times
through this function.
-/
@[extern "lean_io_baserecmutex_try_lock"]
opaque BaseRecursiveMutex.tryLock (mutex : @& BaseRecursiveMutex) : BaseIO Bool

/--
Unlocks a `BaseRecursiveMutex`. The owning thread must make as many `unlock` calls as `lock` and
`tryLock` calls in order to fully relinquish ownership of the mutex.

The current thread must have already locked the mutex at least once.
Unlocking an unlocked mutex is undefined behavior (inherited from the C++ implementation).
-/
@[extern "lean_io_baserecmutex_unlock"]
opaque BaseRecursiveMutex.unlock (mutex : @& BaseRecursiveMutex) : BaseIO Unit

/--
Recursive (or reentrant) mutual exclusion primitive (lock) guarding shared state of type `α`.

The type `RecursiveMutex α` is similar to `IO.Ref α`, except that concurrent accesses are guarded
by a mutex instead of atomic pointer operations and busy-waiting. Additionally locking a
`RecursiveMutex` multiple times from the same thread does not block, unlike `Mutex`.
-/
structure RecursiveMutex (α : Type) where private mk ::
  private ref : IO.Ref α
  mutex : BaseRecursiveMutex
deriving Nonempty

instance : CoeOut (RecursiveMutex α) BaseRecursiveMutex where coe := RecursiveMutex.mutex

/-- Creates a new recursive mutex. -/
def RecursiveMutex.new (a : α) : BaseIO (RecursiveMutex α) :=
  return { ref := ← IO.mkRef a, mutex := ← BaseRecursiveMutex.new }

/--
`mutex.atomically k` runs `k` with access to the mutex's state while locking the mutex.

Calling `mutex.atomically` while already holding the underlying `BaseRecursiveMutex` in the same
thread does not block.
-/
def RecursiveMutex.atomically [Monad m] [MonadLiftT BaseIO m] [MonadFinally m]
    (mutex : RecursiveMutex α) (k : AtomicT α m β) : m β := do
  try
    mutex.mutex.lock
    k mutex.ref
  finally
    mutex.mutex.unlock

/--
`mutex.tryAtomically k` tries to lock `mutex` and runs `k` on it if it succeeds. On success the
return value of `k` is returned as `some`, on failure `none` is returned.

This function does not block on the `mutex`. Additionally `mutex.tryAtomically`, while already
holding the underlying `BaseRecursiveMutex` in the same thread, does not block.
-/
def RecursiveMutex.tryAtomically [Monad m] [MonadLiftT BaseIO m] [MonadFinally m]
    (mutex : RecursiveMutex α) (k : AtomicT α m β) : m (Option β) := do
  if ← mutex.mutex.tryLock then
    try
      some <$> k mutex.ref
    finally
      mutex.mutex.unlock
  else
    return none

end Std
