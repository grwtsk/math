# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CancelToken.Variant09fbdbc1a1e154a3d15d9db1550012f4a5940803995c42ab8e1bc47086b53c7e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6dfe26590bbb00096439f53405694882c311350a` · SHA-256 `09fbdbc1a1e154a3d15d9db1550012f4a5940803995c42ab8e1bc47086b53c7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich
-/
module

prelude
public import Init.System.Promise

public section

set_option linter.missingDocs true

namespace IO

/--
Cancellation token for cooperative task cancellation: request cancellation with
`CancelToken.set` and check for it with `CancelToken.isSet`. To react to cancellation without
polling, register a callback with `CancelToken.onSet`.

This is a more flexible alternative to `Task.cancel` as the token can be shared between multiple
tasks.

Note: the underlying `Promise` and the task it produces are kept private. If a future change
exposes the underlying task (or the promise) publicly, the `set` implementation must be
audited for races between resolving the promise and writing `setRef`: callers observing
`isSet = true` and then waiting on the task currently rely on the order chosen in `set`, and
that ordering interacts with the cheap `Bool` fast path read by the C++ runtime.
-/
structure CancelToken where
  private promise : IO.Promise Unit
  /-- Plain `Bool` flag set after `promise.resolve` so that observing `isSet = true` implies the
      promise has already fired (and thus any `onSet` callback has already run). Read by the cheap
      `isSet` fast path (e.g. on the hot `Core.checkInterrupted` C++ path) without walking the
      promise. -/
  private setRef : IO.Ref Bool
deriving Nonempty

namespace CancelToken

/--
Creates a new cancellation token.

Note: cannot be called from `initialize` blocks because the underlying task manager is not yet
running at that point. Construct lazily on first use instead.
-/
def new : BaseIO CancelToken := do
  let promise ← IO.Promise.new
  let setRef ← IO.mkRef false
  return { promise, setRef }

/--
Activates a cancellation token. Idempotent.

Resolves the underlying promise *before* setting the `Bool` flag, so that observing `isSet = true`
implies that any synchronously-chained `onSet` callbacks have already run. The reverse implication
does not hold: a callback running synchronously inside `set` may briefly observe `isSet = false`.
-/
def set (tk : CancelToken) : BaseIO Unit := do
  tk.promise.resolve ()
  tk.setRef.set true

/-- Checks whether the cancellation token has been activated. -/
def isSet (tk : CancelToken) : BaseIO Bool :=
  tk.setRef.get

/--
Registers a callback to run when the cancellation token is set or dropped. The callback runs as a
synchronous task dependency, so it executes inline on the thread that calls `set` (or on the
finalizer thread if the token is dropped). If the token is already set when `onSet` is called,
the callback runs immediately.
-/
def onSet (tk : CancelToken) (action : BaseIO Unit) : BaseIO Unit :=
  BaseIO.chainTask tk.promise.result? (sync := true) fun _ => action

-- separate definition as otherwise no unboxed version is generated
@[export lean_io_cancel_token_is_set]
private def isSetExport := @isSet

end CancelToken
```
