-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SemaphoreState.Variant2f8b61c47e547864d9ac11511299cc9937b31bfbfb3be0e25b44d11d6e40999c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2f8b61c47e547864d9ac11511299cc9937b31bfbfb3be0e25b44d11d6e40999c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SemaphoreState.Variant2f8b61c47e547864d9ac11511299cc9937b31bfbfb3be0e25b44d11d6e40999c","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"2f8b61c47e547864d9ac11511299cc9937b31bfbfb3be0e25b44d11d6e40999c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Sync/Semaphore.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Init.Data.Queue
public import Init.System.Promise
public import Std.Sync.Mutex


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SemaphoreState.Variant2f8b61c47e547864d9ac11511299cc9937b31bfbfb3be0e25b44d11d6e40999c

public section

namespace Std

private structure SemaphoreState where
  permits : Nat
  waiters : Std.Queue (IO.Promise Unit) := ∅
deriving Nonempty

/--
Counting semaphore.

`Semaphore.acquire` returns a promise that is resolved once a permit is available.
If a permit is currently available, the returned promise is already resolved.
`Semaphore.release` either resolves one waiting promise or increments the available permits.
-/
structure Semaphore where private mk ::
  private lock : Mutex SemaphoreState

/--
Creates a resolved promise.
-/
private def mkResolvedPromise [Nonempty α] (a : α) : BaseIO (IO.Promise α) := do
  let promise ← IO.Promise.new
  promise.resolve a
  return promise

/--
Creates a new semaphore with `permits` initially available permits.
-/
def Semaphore.new (permits : Nat) : BaseIO Semaphore := do
  return { lock := ← Mutex.new { permits } }

/--
Requests one permit.
Returns a promise that resolves once the permit is acquired.
-/
def Semaphore.acquire (sem : Semaphore) : BaseIO (IO.Promise Unit) := do
  sem.lock.atomically do
    let st ← get
    if st.permits > 0 then
      set { st with permits := st.permits - 1 }
      mkResolvedPromise ()
    else
      let promise ← IO.Promise.new
      set { st with waiters := st.waiters.enqueue promise }
      return promise

/--
Tries to acquire a permit without blocking. Returns `true` on success.
-/
def Semaphore.tryAcquire (sem : Semaphore) : BaseIO Bool := do
  sem.lock.atomically do
    let st ← get
    if st.permits > 0 then
      set { st with permits := st.permits - 1 }
      return true
    else
      return false

/--
Releases one permit and resolves one waiting acquirer, if any.
-/
def Semaphore.release (sem : Semaphore) : BaseIO Unit := do
  let waiter? ← sem.lock.atomically do
    let st ← get
    match st.waiters.dequeue? with
    | some (waiter, waiters) =>
      set { st with waiters }
      return some waiter
    | none =>
      set { st with permits := st.permits + 1 }
      return none
  if let some waiter := waiter? then
    waiter.resolve ()

/--
Returns the number of currently available permits.
-/
def Semaphore.availablePermits (sem : Semaphore) : BaseIO Nat :=
  sem.lock.atomically do
    return (← get).permits

end Std
