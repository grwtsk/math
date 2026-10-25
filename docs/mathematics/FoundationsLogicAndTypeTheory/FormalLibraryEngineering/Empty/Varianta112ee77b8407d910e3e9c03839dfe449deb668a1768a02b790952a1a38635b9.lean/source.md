# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Empty.Varianta112ee77b8407d910e3e9c03839dfe449deb668a1768a02b790952a1a38635b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0647d71a909b854572e61f4df2e06677957a850` · SHA-256 `47361c8f65cc7b19d223f8bb19a588ecf6756be1b78febc1c50bdf40c90ebdf0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Empty.Variant57e0bc7246c82f05ad46c86a13bcd508a6296acc38789f00f74a0ed53b86f564","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"57e0bc7246c82f05ad46c86a13bcd508a6296acc38789f00f74a0ed53b86f564","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Empty.Variant57e0bc7246c82f05ad46c86a13bcd508a6296acc38789f00f74a0ed53b86f564","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"57e0bc7246c82f05ad46c86a13bcd508a6296acc38789f00f74a0ed53b86f564","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Http/Data/Body/Empty.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Http.Data.Request
public import Std.Http.Data.Response
public import Std.Http.Data.Body.Any


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Empty.Variant57e0bc7246c82f05ad46c86a13bcd508a6296acc38789f00f74a0ed53b86f564

public section

/-!
# Body.Empty

Represents an always-empty, already-closed body handle.
-/

namespace Std.Http.Body
open Std Async

set_option linter.all true

/--
An empty body handle.
-/
structure Empty where
deriving Inhabited, BEq

namespace Empty

/--
Receives from an empty body, always returning end-of-stream.
-/
@[inline]
def recv (_ : Empty) : Async (Option Chunk) :=
  pure none

/--
Closes an empty body (no-op).
-/
@[inline]
def close (_ : Empty) : Async Unit :=
  pure ()

/--
Empty bodies are always closed for reading.
-/
@[inline]
def isClosed (_ : Empty) : Async Bool :=
  pure true

/--
Non-blocking receive. Empty bodies are always at EOF.
-/
@[inline]
def tryRecv (_ : Empty) : Async (Option (Option Chunk)) :=
  pure (some none)

/--
Selector that immediately resolves with end-of-stream for an empty body.
-/
@[inline]
def recvSelector (_ : Empty) : Selector (Option Chunk) where
  tryFn := pure (some none)
  registerFn waiter := do
    let lose := pure ()
    let win promise := do
      promise.resolve (.ok none)
    waiter.race lose win
  unregisterFn := pure ()

end Empty

instance : Http.Body Empty where
  recv := Empty.recv
  close := Empty.close
  isClosed := Empty.isClosed
  recvSelector := Empty.recvSelector
  tryRecv := Empty.tryRecv
  getKnownSize _ := pure (some <| .fixed 0)
  setKnownSize _ _ := pure ()


instance : Coe Empty Any := ⟨Any.ofBody⟩

instance : Coe (Response Empty) (Response Any) where
  coe f := { f with }

instance : Coe (ContextAsync (Response Empty)) (ContextAsync (Response Any)) where
  coe action := do
    let response ← action
    pure (response : Response Any)

instance : Coe (Async (Response Empty)) (ContextAsync (Response Any)) where
  coe action := do
    let response ← action
    pure (response : Response Any)

end Body

namespace Request.Builder
open Async

/--
Builds a request with no body.
-/
def empty (builder : Builder) : Async (Request Body.Empty) :=
  pure <| builder.body {}

end Request.Builder

namespace Response.Builder
open Async

/--
Builds a response with no body.
-/
def empty (builder : Builder) : Async (Response Body.Empty) :=
  pure <| builder.body {}

end Response.Builder
```
