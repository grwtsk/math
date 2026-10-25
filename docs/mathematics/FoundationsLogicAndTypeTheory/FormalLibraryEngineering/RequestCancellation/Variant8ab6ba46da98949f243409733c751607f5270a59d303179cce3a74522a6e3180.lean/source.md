# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RequestCancellation.Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9b4f3730cfbeaf20054a2f9889c00c1aeafb207` · SHA-256 `71e832bfd099b500b70cdd7ef5521aa8a43d6533718b83285048b900477e49f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RequestCancellationToken.Variant694b93724681e0a373644ecf5dc18258bfe5688a49fa48a89644625510f5163c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"694b93724681e0a373644ecf5dc18258bfe5688a49fa48a89644625510f5163c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RequestCancellationToken.Variant694b93724681e0a373644ecf5dc18258bfe5688a49fa48a89644625510f5163c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"694b93724681e0a373644ecf5dc18258bfe5688a49fa48a89644625510f5163c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Server/RequestCancellation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RequestCancellationToken.Variant694b93724681e0a373644ecf5dc18258bfe5688a49fa48a89644625510f5163c

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
