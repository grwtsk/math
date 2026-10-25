# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mutex.Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e209810feb9faad79ac1d5c0d16428e1c8f6d610` · SHA-256 `f1d6c6d8c9f90f283aa9a78d968faf60a7f5b686e18518d5773f3ee6b20e6ddf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mutex.Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Mutex.Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"e7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Sync/Mutex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
module

prelude
public import Std.Sync.Basic
public import Init.While


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mutex.Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29

public section

namespace Std

private opaque BaseMutexImpl : NonemptyType.{0}

/--
Mutual exclusion primitive (a lock).

If you want to guard shared state, use `Mutex α` instead.
-/
def BaseMutex : Type := BaseMutexImpl.type

instance : Nonempty BaseMutex := by exact BaseMutexImpl.property

/-- Creates a new `BaseMutex`. -/
@[extern "lean_io_basemutex_new"]
opaque BaseMutex.new : BaseIO BaseMutex

/--
Locks a `BaseMutex`.  Waits until no other thread has locked the mutex.

The current thread must not have already locked the mutex.
Reentrant locking is undefined behavior (inherited from the C++ implementation).
If this is unavoidable in your code, consider using `BaseRecursiveMutex`.
-/
@[extern "lean_io_basemutex_lock"]
opaque BaseMutex.lock (mutex : @& BaseMutex) : BaseIO Unit

/--
Attempts to lock a `BaseMutex`. If the mutex is not available return `false`, otherwise lock it and
return `true`.

This function does not block.

The current thread must not have already locked the mutex.
Reentrant locking is undefined behavior (inherited from the C++ implementation).
If this is unavoidable in your code, consider using `BaseRecursiveMutex`.
-/
@[extern "lean_io_basemutex_try_lock"]
opaque BaseMutex.tryLock (mutex : @& BaseMutex) : BaseIO Bool

/--
Unlocks a `BaseMutex`.

The current thread must have already locked the mutex.
Unlocking an unlocked mutex is undefined behavior (inherited from the C++ implementation).
If this is unavoidable in your code, consider using `BaseRecursiveMutex`.
-/
@[extern "lean_io_basemutex_unlock"]
opaque BaseMutex.unlock (mutex : @& BaseMutex) : BaseIO Unit

private opaque CondvarImpl : NonemptyType.{0}

/--
Condition variable, a synchronization primitive to be used with a `BaseMutex` or `Mutex`.

The thread that wants to modify the shared variable must:
1. Lock the `BaseMutex` or `Mutex`
2. Work on the shared variable
3. Call `Condvar.notifyOne` or `Condvar.notifyAll` after it is done. Note that this may be done
   before or after the mutex is unlocked.

If working with a `Mutex` the thread that waits on the `Condvar` can use `Mutex.atomicallyOnce`
to wait until a condition is true. If working with a `BaseMutex` it must:
1. Lock the `BaseMutex`.
2. Do one of the following:
  - Use `Condvar.waitUntil` to (potentially repeatedly wait) on the condition variable until
     the condition is true.
  - Implement the waiting manually by:
    1. Checking the condition
    2. Calling `Condvar.wait` which releases the `BaseMutex` and suspends execution until the
       condition variable is notified.
    3. Check the condition and resume waiting if not satisfied.
-/
def Condvar : Type := CondvarImpl.type

instance : Nonempty Condvar := by exact CondvarImpl.property

/-- Creates a new condition variable. -/
@[extern "lean_io_condvar_new"]
opaque Condvar.new : BaseIO Condvar

/-- Waits until another thread calls `notifyOne` or `notifyAll`. -/
@[extern "lean_io_condvar_wait"]
opaque Condvar.wait (condvar : @& Condvar) (mutex : @& BaseMutex) : BaseIO Unit

/-- Wakes up a single other thread executing `wait`. -/
@[extern "lean_io_condvar_notify_one"]
opaque Condvar.notifyOne (condvar : @& Condvar) : BaseIO Unit

/-- Wakes up all other threads executing `wait`. -/
@[extern "lean_io_condvar_notify_all"]
opaque Condvar.notifyAll (condvar : @& Condvar) : BaseIO Unit

/-- Waits on the condition variable until the predicate is true. -/
def Condvar.waitUntil [Monad m] [MonadLiftT BaseIO m]
    (condvar : Condvar) (mutex : BaseMutex) (pred : m Bool) : m Unit := do
  while !(← pred) do
    condvar.wait mutex

/--
Mutual exclusion primitive (lock) guarding shared state of type `α`.

The type `Mutex α` is similar to `IO.Ref α`, except that concurrent accesses are guarded by a mutex
instead of atomic pointer operations and busy-waiting.
-/
structure Mutex (α : Type) where private mk ::
  private ref : IO.Ref α
  mutex : BaseMutex
deriving Nonempty

instance : CoeOut (Mutex α) BaseMutex where coe := Mutex.mutex

/-- Creates a new mutex. -/
def Mutex.new (a : α) : BaseIO (Mutex α) :=
  return { ref := ← IO.mkRef a, mutex := ← BaseMutex.new }

/--
`mutex.atomically k` runs `k` with access to the mutex's state while locking the mutex.

Calling `mutex.atomically` while already holding the underlying `BaseMutex` in the same thread
is undefined behavior. If this is unavoidable in your code, consider using `RecursiveMutex`.
-/
def Mutex.atomically [Monad m] [MonadLiftT BaseIO m] [MonadFinally m]
    (mutex : Mutex α) (k : AtomicT α m β) : m β := do
  try
    mutex.mutex.lock
    k mutex.ref
  finally
    mutex.mutex.unlock

/--
`mutex.tryAtomically k` tries to lock `mutex` and runs `k` on it if it succeeds. On success the
return value of `k` is returned as `some`, on failure `none` is returned.

This function does not block on the `mutex`. Additionally calling `mutex.tryAtomically` while
already holding the underlying `BaseMutex` in the same thread is undefined behavior. If this is
unavoidable in your code, consider using `RecursiveMutex`.
-/
def Mutex.tryAtomically [Monad m] [MonadLiftT BaseIO m] [MonadFinally m]
    (mutex : Mutex α) (k : AtomicT α m β) : m (Option β) := do
  if ← mutex.mutex.tryLock then
    try
      some <$> k mutex.ref
    finally
      mutex.mutex.unlock
  else
    return none

/--
`mutex.atomicallyOnce condvar pred k` runs `k`, waiting on `condvar` until `pred` returns true.
Both `k` and `pred` have access to the mutex's state.

Calling `mutex.atomicallyOnce` while already holding the underlying `BaseMutex` in the same thread
is undefined behavior. If this is unavoidable in your code, consider using `RecursiveMutex`.
-/
def Mutex.atomicallyOnce [Monad m] [MonadLiftT BaseIO m] [MonadFinally m]
    (mutex : Mutex α) (condvar : Condvar)
    (pred : AtomicT α m Bool) (k : AtomicT α m β) : m β :=
  let _ : MonadLift BaseIO (AtomicT α m) := ⟨liftM⟩
  mutex.atomically do
    condvar.waitUntil mutex pred
    k

end Std
```
