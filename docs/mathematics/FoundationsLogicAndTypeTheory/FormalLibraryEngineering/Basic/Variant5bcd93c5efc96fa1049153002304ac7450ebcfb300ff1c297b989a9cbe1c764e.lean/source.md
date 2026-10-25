# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant5bcd93c5efc96fa1049153002304ac7450ebcfb300ff1c297b989a9cbe1c764e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10be93cb4691565896f3588403c44990499a9b87` · SHA-256 `3ecb1c1e618f80648694c44240b2fe50ac93991f94be6fbb9e29e0d8f6196188`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Body.Variant9e5419b28495ad80764ac628fa67da3c17e230e2461a97a6dec52e28e17b0fff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9e5419b28495ad80764ac628fa67da3c17e230e2461a97a6dec52e28e17b0fff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Body.Variant9e5419b28495ad80764ac628fa67da3c17e230e2461a97a6dec52e28e17b0fff","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"9e5419b28495ad80764ac628fa67da3c17e230e2461a97a6dec52e28e17b0fff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Http/Data/Body/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Async
public import Std.Async.ContextAsync
public import Std.Http.Data.Chunk
public import Std.Http.Data.Headers
public import Std.Http.Data.Body.Length


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Body.Variant9e5419b28495ad80764ac628fa67da3c17e230e2461a97a6dec52e28e17b0fff

public section

/-!
# Body.Basic

This module defines the `Body` typeclass for HTTP body streams, and shared conversion types
`ToByteArray` and `FromByteArray` used for encoding and decoding body content.
-/

namespace Std.Http
open Std Async

set_option linter.all true

/--
Typeclass for values that can be read as HTTP body streams.
-/
class Body (α : Type) where
  /--
  Receives the next body chunk. Returns `none` at end-of-stream.
  -/
  recv : α → Async (Option Chunk)

  /--
  Closes the body stream.
  -/
  close : α → Async Unit

  /--
  Returns `true` when the body stream is closed.
  -/
  isClosed : α → Async Bool

  /--
  Selector that resolves when a chunk is available or EOF is reached.
  -/
  recvSelector : α → Selector (Option Chunk)

  /--
  Non-blocking receive attempt. Returns `none` if no chunk is immediately available,
  `some (some chunk)` when a chunk is ready, or `some none` at end-of-stream.
  -/
  tryRecv (body : α) : Async (Option (Option Chunk))

  /--
  Gets the declared size of the body.
  -/
  getKnownSize : α → Async (Option Body.Length)

  /--
  Sets the declared size of a body.
  -/
  setKnownSize : α → Option Body.Length → Async Unit
end Std.Http

namespace Std.Http.Body

/--
Typeclass for types that can be converted to a `ByteArray`.
-/
class ToByteArray (α : Type) where

  /--
  Transforms into a `ByteArray`.
  -/
  toByteArray : α → ByteArray

instance : ToByteArray ByteArray where
  toByteArray := id

instance : ToByteArray String where
  toByteArray := String.toUTF8

/--
Typeclass for types that can be decoded from a `ByteArray`. The conversion may fail with an error
message if the bytes are not valid for the target type.
-/
class FromByteArray (α : Type) where

  /--
  Attempts to decode a `ByteArray` into the target type, returning an error message on failure.
  -/
  fromByteArray : ByteArray → Except String α

instance : FromByteArray ByteArray where
  fromByteArray := .ok

instance : FromByteArray String where
  fromByteArray bs :=
    match String.fromUTF8? bs with
    | some s => .ok s
    | none => .error "invalid UTF-8 encoding"

end Std.Http.Body
```
