# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cancellable.Variantbf84fe3c11dcd968269912be5922cb614d2093aca694a51367bd411a47ab3e83

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37994657d4333e4fa4ecfc9f3cb87061131c664f` · SHA-256 `bb34b7c9c8b4bd13d4c145619517280bfd48d06509d1538e2a1dda53c6b34693`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CancellableTask.Variantc5403e8b2bc1fe9803d9046dedd5271ce305e1bbf14bea521aeea77eb08d4b07","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c5403e8b2bc1fe9803d9046dedd5271ce305e1bbf14bea521aeea77eb08d4b07","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CancellableTask.Variantc5403e8b2bc1fe9803d9046dedd5271ce305e1bbf14bea521aeea77eb08d4b07","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c5403e8b2bc1fe9803d9046dedd5271ce305e1bbf14bea521aeea77eb08d4b07","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/ProofWidgets/Cancellable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Lean.Server.Rpc.RequestHandling
public import ProofWidgets.Compat
public import ProofWidgets.Util

/-! # This file is DEPRECATED since v0.0.93 -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CancellableTask.Variantc5403e8b2bc1fe9803d9046dedd5271ce305e1bbf14bea521aeea77eb08d4b07

public meta section

/-! Experimental support for cancellable RPC requests.

Note: Cancellation should eventually become a feature of the core RPC protocol,
and the requests map should be stored in `RequestM`,
or somewhere in the server anyway. -/

namespace ProofWidgets
open Lean Server Meta Std

abbrev RequestId := Nat
structure CancellableTask where
  task : Task (Except RequestError (LazyEncodable Json))
  /- Note: we cannot just `IO.cancel task` because it is a result of `map`.
  See https://leanprover.zulipchat.com/#narrow/stream/270676-lean4/topic/Should.20cancelling.20a.20purely.20mapped.20task.20cancel.20the.20original.3F -/
  cancel : IO Unit

/-- Maps the ID of each currently executing request to its task. -/
initialize runningRequests :
    IO.Ref (RequestId × Std.HashMap RequestId CancellableTask) ←
  IO.mkRef (0, ∅)

/-- Transforms a request handler returning `β`
into one that returns immediately with a `RequestId`.

The ID uniquely identifies the running request:
its results can be retrieved using `checkRequest`,
and it can be cancelled using `cancelRequest`. -/
def mkCancellable [RpcEncodable β] (handler : α → RequestM (RequestTask β)) :
    α → RequestM (RequestTask RequestId) := fun a => do
  RequestM.asTask do
    let t ← handler a
    let t' := t.mapCheap (·.map rpcEncode)
    runningRequests.modifyGet fun (id, m) =>
      (id, (id+1, m.insert id ⟨t'.task, t.cancel⟩))

/-- Cancel the request with ID `rid`.
Does nothing if `rid` is invalid. -/
@[server_rpc_method]
def cancelRequest (rid : RequestId) : RequestM (RequestTask Unit) := do
  RequestM.asTask do
    let t? ← runningRequests.modifyGet fun (id, m) => (m[rid]?, (id, m.erase rid))
    if let some t := t? then
      t.cancel

/-- The status of a running cancellable request. -/
inductive CheckRequestResponse
  | running
  | done (result : LazyEncodable Json)
  deriving RpcEncodable

/-- Check whether a request has finished computing,
and return the response if so.
The request is removed from `runningRequests` the first time it is checked
and found to have finished.
Throws an error if the `rid` is invalid,
or if the request itself threw an error. -/
/- NOTE: a notification-based version would be better than this polling-based one.
But we cannot include RPC references in notifications atm;
another possible addition to the RPC protocol? -/
@[server_rpc_method]
def checkRequest (rid : RequestId) : RequestM (RequestTask CheckRequestResponse) := do
  RequestM.asTask do
    let (_, m) ← runningRequests.get
    match m[rid]? with
    | none =>
      throw $ RequestError.invalidParams
        s!"Request '{rid}' has already finished, or the ID is invalid."
    | some t =>
      if !(← IO.hasFinished t.task) then
        return .running
      runningRequests.modify fun (id, m) => (id, m.erase rid)
      match t.task.get with
      | .error e => throw e
      | .ok v    => return .done v

def cancellableSuffix : Name := `_cancellable

/-- Like `server_rpc_method`, but requests for this method can be cancelled.
The method should check for that using `IO.checkCanceled`.
Cancellable methods are invoked differently from JavaScript:
see `callCancellable` in `cancellable.ts`. -/
initialize
  registerBuiltinAttribute {
    name := `server_rpc_method_cancellable
    descr := "Like `server_rpc_method`, \
    but requests for this method can be cancelled. \
    The method should check for that using `IO.checkCanceled`. \
    Cancellable methods are invoked differently from JavaScript: \
    see `callCancellable` in `cancellable.ts`."
    applicationTime := AttributeApplicationTime.afterCompilation
    add := fun decl _ _ => Prod.fst <$> MetaM.run do
      logWarning "\
        This attribute is deprecated since ProofWidgets v0.0.93.\n\n\
        To migrate, replace `@[server_rpc_method_cancellable]` with `@[server_rpc_method]`,\n\
        and replace calls to `IO.checkCanceled` with `RequestM.checkCancelled`.\n\n\
        If the RPC method spawns `CoreM` computations,\n\
        it is also encouraged to pass `RequestContext.cancelTk.cancelledByCancelRequest`
        into `Core.Context`."

      let name := decl ++ cancellableSuffix
      let value ← mkAppM ``mkCancellable #[mkConst decl]
      addAndCompile $ .defnDecl {
        name
        levelParams := []
        type := ← inferType value
        value
        hints  := .opaque
        safety := .safe
      }
      registerRpcProcedure name
  }

end ProofWidgets
```
