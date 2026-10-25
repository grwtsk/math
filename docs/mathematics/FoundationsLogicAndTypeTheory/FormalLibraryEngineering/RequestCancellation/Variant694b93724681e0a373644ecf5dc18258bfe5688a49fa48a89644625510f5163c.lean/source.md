# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RequestCancellation.Variant694b93724681e0a373644ecf5dc18258bfe5688a49fa48a89644625510f5163c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58a78229d0f293737e1f0d8471148b69c9051366` · SHA-256 `694b93724681e0a373644ecf5dc18258bfe5688a49fa48a89644625510f5163c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Marc Huisinga
-/
module

prelude
public import Lean.Server.ServerTask
public import Init.System.Promise
public import Init.System.CancelToken

public section

namespace Lean.Server

structure RequestCancellationToken where
  cancelledByCancelRequest   : IO.CancelToken
  cancelledByEdit            : IO.CancelToken
  requestCancellationPromise : IO.Promise Unit
  editCancellationPromise    : IO.Promise Unit

namespace RequestCancellationToken

def new : BaseIO RequestCancellationToken := do
  return {
    cancelledByCancelRequest   := ← IO.CancelToken.new
    cancelledByEdit            := ← IO.CancelToken.new
    requestCancellationPromise := ← IO.Promise.new
    editCancellationPromise    := ← IO.Promise.new
  }

def cancelByCancelRequest (tk : RequestCancellationToken) : BaseIO Unit := do
  tk.cancelledByCancelRequest.set
  tk.requestCancellationPromise.resolve ()

def cancelByEdit (tk : RequestCancellationToken) : BaseIO Unit := do
  tk.cancelledByEdit.set
  tk.editCancellationPromise.resolve ()

def requestCancellationTask (tk : RequestCancellationToken): ServerTask Unit :=
  tk.requestCancellationPromise.resultD ()

def editCancellationTask (tk : RequestCancellationToken) : ServerTask Unit :=
  tk.editCancellationPromise.resultD ()

def cancellationTasks (tk : RequestCancellationToken) : List (ServerTask Unit) :=
  [tk.requestCancellationTask, tk.editCancellationTask]

def wasCancelledByCancelRequest (tk : RequestCancellationToken) : BaseIO Bool :=
  tk.cancelledByCancelRequest.isSet

def wasCancelledByEdit (tk : RequestCancellationToken) : BaseIO Bool :=
  tk.cancelledByEdit.isSet

def wasCancelled (tk : RequestCancellationToken) : BaseIO Bool := do
  return (← tk.wasCancelledByCancelRequest) || (← tk.wasCancelledByEdit)

end RequestCancellationToken

structure RequestCancellation where

def RequestCancellation.requestCancelled : RequestCancellation := {}

abbrev CancellableT m := ReaderT RequestCancellationToken (ExceptT RequestCancellation m)
abbrev CancellableM := CancellableT IO

def CancellableT.run (tk : RequestCancellationToken) (x : CancellableT m α) :
    m (Except RequestCancellation α) :=
  x tk

def CancellableM.run (tk : RequestCancellationToken) (x : CancellableM α) :
    IO (Except RequestCancellation α) :=
  CancellableT.run tk x

def CancellableT.checkCancelled [Monad m] [MonadLiftT BaseIO m] : CancellableT m Unit := do
  let tk ← read
  if ← tk.wasCancelledByCancelRequest then
    throw .requestCancelled

def CancellableM.checkCancelled : CancellableM Unit :=
  CancellableT.checkCancelled

class MonadCancellable (m : Type → Type v) where
  checkCancelled : m PUnit

instance (m n) [MonadLift m n] [MonadCancellable m] : MonadCancellable n where
  checkCancelled := liftM (MonadCancellable.checkCancelled : m PUnit)

instance [Monad m] [MonadLiftT BaseIO m] : MonadCancellable (CancellableT m) where
  checkCancelled := CancellableT.checkCancelled

def RequestCancellation.check [MonadCancellable m] : m Unit :=
  MonadCancellable.checkCancelled
```
