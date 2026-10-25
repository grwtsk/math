# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CancellationContext.Variantb1338b6e333adba2059b86ffcb1b405b56bba9d098069cf159ef7e0e00be010a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b5ecc29c3f8cac782895de0c83572e43b06e618` · SHA-256 `4bdfd059e4c9fa6db60b9ca95ebe0806b22acfde1e08d7d6f7f2c30d92db64e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CancellationContextState.Variant83ea4f7e5ea604ff0f44c04a6a57b6c1ecb0304ed37d15963df147742f5435cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"83ea4f7e5ea604ff0f44c04a6a57b6c1ecb0304ed37d15963df147742f5435cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.CancellationContextState.Variant83ea4f7e5ea604ff0f44c04a6a57b6c1ecb0304ed37d15963df147742f5435cd","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"83ea4f7e5ea604ff0f44c04a6a57b6c1ecb0304ed37d15963df147742f5435cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Sync/CancellationContext.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Sync.CancellationToken
public import Init.Data.Ord.UInt


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CancellationContextState.Variant83ea4f7e5ea604ff0f44c04a6a57b6c1ecb0304ed37d15963df147742f5435cd

public section

/-!
This module provides a tree-structured cancellation context called `CancellationToken` where cancelling a parent
automatically cancels all child contexts.
-/

namespace Std
open Std.Async

structure CancellationContext.State where
  /--
  Map of token IDs to optional tokens and their children.
  -/
  tokens : TreeMap UInt64 (CancellationToken × Array UInt64) := .empty

  /--
  Next available ID
  -/
  id : UInt64 := 1

/--
A cancellation context that allows multiple consumers to wait until cancellation is requested. Forms
a tree structure where cancelling a parent cancels all children.
-/
structure CancellationContext where
  state : Std.Mutex CancellationContext.State
  token : CancellationToken
  id : UInt64

namespace CancellationContext

/--
Creates a new root cancellation context.
-/
def new : BaseIO CancellationContext := do
  let token ← Std.CancellationToken.new
  return {
    state := ← Std.Mutex.new { tokens := .empty |>.insert 0 (token, #[]) },
    token,
    id := 0
  }

/--
Forks a child context from a parent. If the parent is already cancelled, returns the parent context.
Otherwise, creates a new child that will be cancelled when the parent is cancelled.
-/
def fork (root : CancellationContext) : BaseIO CancellationContext := do
  root.state.atomically do
    if ← root.token.isCancelled then
      return root

    let token ← Std.CancellationToken.new

    let st ← get
    let newId := st.id

    set { st with
      id := newId + 1,
      tokens := st.tokens.insert newId (token, #[])
        |>.modify root.id (.map (·) (.push · newId))
    }

    return { state := root.state, token, id := newId }

/--
Recursively cancels a context and all its children with the given reason.
-/
private partial def cancelChildren (state : CancellationContext.State) (id : UInt64) (reason : CancellationReason) : BaseIO CancellationContext.State := do
  let mut state := state

  let some (token, children) := state.tokens.get? id
    | return state

  for tokenId in children do
    state ← cancelChildren state tokenId reason

  token.cancel reason

  pure { state with tokens := state.tokens.erase id }

/--
Cancels this context and all child contexts with the given reason.
-/
def cancel (x : CancellationContext) (reason : CancellationReason) : BaseIO Unit := do
  if ← x.token.isCancelled then
    return

  x.state.atomically do
    let st ← get
    let st ← cancelChildren st x.id reason
    set st

/--
Checks if the context is cancelled.
-/
@[inline]
def isCancelled (x : CancellationContext) : BaseIO Bool := do
  x.token.isCancelled

/--
Returns the cancellation reason if the context is cancelled.
-/
@[inline]
def getCancellationReason (x : CancellationContext) : BaseIO (Option CancellationReason) := do
  x.token.getCancellationReason

/--
Waits for cancellation. Returns a task that completes when the context is cancelled.
-/
@[inline]
def done (x : CancellationContext) : IO (AsyncTask Unit) :=
  x.token.wait

/--
Creates a selector that waits for cancellation.
-/
@[inline]
def doneSelector (x : CancellationContext) : Selector Unit :=
  x.token.selector

private partial def countAliveTokensRec (state : CancellationContext.State) (id : UInt64) : Nat :=
  match state.tokens.get? id with
  | none => 0
  | some (_, children) => 1 + children.foldl (fun acc childId => acc + countAliveTokensRec state childId) 0

/--
Counts the number of alive (non-cancelled) tokens in the context tree, including
this context and all its descendants.
-/
def countAliveTokens (x : CancellationContext) : BaseIO Nat := do
  x.state.atomically do
    let st ← get
    return countAliveTokensRec st x.id

end CancellationContext
end Std
```
