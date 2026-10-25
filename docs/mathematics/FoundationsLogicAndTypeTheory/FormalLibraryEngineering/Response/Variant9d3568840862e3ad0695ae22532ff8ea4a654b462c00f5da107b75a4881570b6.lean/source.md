# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Response.Variant9d3568840862e3ad0695ae22532ff8ea4a654b462c00f5da107b75a4881570b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `911e7a1403870d8d67c58681dbbc732a0e1ea394` · SHA-256 `6614c3b62b78f00ea0ee7b3e35d097c7270ba83e1374c15138937e9d9b6329e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResponseHead.Variant36583c4da25a044835b6a04efaa7e1bafa34e862123385e0f806a6a3aa87ef93","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"36583c4da25a044835b6a04efaa7e1bafa34e862123385e0f806a6a3aa87ef93","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ResponseHead.Variant36583c4da25a044835b6a04efaa7e1bafa34e862123385e0f806a6a3aa87ef93","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"36583c4da25a044835b6a04efaa7e1bafa34e862123385e0f806a6a3aa87ef93","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Http/Data/Response.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Http.Data.Extensions
public import Std.Http.Data.Status
public import Std.Http.Data.Version
public import Std.Http.Data.Headers


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResponseHead.Variant36583c4da25a044835b6a04efaa7e1bafa34e862123385e0f806a6a3aa87ef93

public section

/-!
# Response

This module provides the `Response` type, which represents an HTTP response. It also defines
builder functions for constructing responses and selecting common HTTP status codes.
-/

namespace Std.Http

set_option linter.all true

/--
The main parts of a response.
-/
structure Response.Head where
  /--
  The HTTP status for the response.
  -/
  status : Status := .ok

  /--
  The HTTP protocol version used in the response, e.g. `HTTP/1.1`.
  -/
  version : Version := .v11

  /--
  The set of response headers, providing metadata such as `Content-Type`,
  `Content-Length`, and caching directives.
  -/
  headers : Headers := .empty
deriving Inhabited, Repr

/--
HTTP response structure parameterized by body type.
-/
structure Response (t : Type) where
  /--
  The response status-line information.
  -/
  line : Response.Head := {}

  /--
  The content of the response.
  -/
  body : t

  /--
  Optional dynamic metadata attached to the response.
  -/
  extensions : Extensions := .empty
deriving Inhabited

/--
Builds an HTTP Response.
-/
structure Response.Builder where
  /--
  The response status-line information.
  -/
  line : Head := {}

  /--
  Optional dynamic metadata attached to the response.
  -/
  extensions : Extensions := .empty

namespace Response

instance : ToString Head where
  toString r :=
    toString r.version ++ " " ++
    toString r.status.toCode ++ " " ++
    r.status.reasonPhrase ++ "\r\n" ++
    toString r.headers ++
    "\r\n"

open Std.Http.Internal in
instance : Encode .v11 Head where
  encode buffer r :=
    let buffer := Encode.encode (v := .v11) buffer r.version
    let buffer := buffer.writeChar ' '
    let buffer := buffer.writeString (toString r.status.toCode)
    let buffer := buffer.writeChar ' '
    let buffer := buffer.writeString r.status.reasonPhrase
    let buffer := buffer.writeString "\r\n"
    let buffer := Encode.encode (v := .v11) buffer r.headers
    buffer.writeString "\r\n"

/--
Creates a new HTTP Response builder with default head (status: 200 OK, version: HTTP/1.1).
-/
def new : Builder := { }

namespace Builder

/--
Creates a new HTTP Response builder with default head (status: 200 OK, version: HTTP/1.1).
-/
def new : Builder := { }

/--
Sets the HTTP status code for the response being built.
-/
def status (builder : Builder) (status : Status) : Builder :=
  { builder with line := { builder.line with status := status } }

/--
Sets the headers for the response being built.
-/
def headers (builder : Builder) (headers : Headers) : Builder :=
  { builder with line := { builder.line with headers } }

/--
Adds a single header to the response being built.
-/
def header (builder : Builder) (key : Header.Name) (value : Header.Value) : Builder :=
  { builder with line := { builder.line with headers := builder.line.headers.insert key value } }

/--
Adds a single header to the response being built, panics if the header is invalid.
-/
def header! (builder : Builder) (key : String) (value : String) : Builder :=
  let key := Header.Name.ofString! key
  let value := Header.Value.ofString! value
  { builder with line := { builder.line with headers := builder.line.headers.insert key value } }

/--
Adds a single header to the response being built.
Returns `none` if the header name or value is invalid.
-/
def header? (builder : Builder) (key : String) (value : String) : Option Builder := do
  let key ← Header.Name.ofString? key
  let value ← Header.Value.ofString? value
  pure <| { builder with line := { builder.line with headers := builder.line.headers.insert key value } }

/--
Inserts a typed extension value into the response being built.
-/
def extension (builder : Builder) [TypeName α] (data : α) : Builder :=
  { builder with extensions := builder.extensions.insert data }

/--
Builds and returns the final HTTP Response with the specified body.
-/
def body (builder : Builder) (body : t) : Response t :=
  { line := builder.line, body := body, extensions := builder.extensions }

/--
Builds and returns the final HTTP Response with an empty body (`{}`).
Requires an `EmptyCollection` instance for the response body type.
-/
def build [EmptyCollection t] (builder : Builder) : Response t :=
  { line := builder.line, body := {}, extensions := builder.extensions }

end Builder

/--
Creates a new HTTP Response builder with the 200 status code.
-/
def ok : Builder :=
  .new |>.status .ok

/--
Creates a new HTTP Response builder with the provided status.
-/
def withStatus (status : Status) : Builder :=
  .new |>.status status

/--
Creates a new HTTP Response builder with the 404 status code.
-/
def notFound : Builder :=
  .new |>.status .notFound

/--
Creates a new HTTP Response builder with the 500 status code.
-/
def internalServerError : Builder :=
  .new |>.status .internalServerError

/--
Creates a new HTTP Response builder with the 400 status code.
-/
def badRequest : Builder :=
  .new |>.status .badRequest

/--
Creates a new HTTP Response builder with the 201 status code.
-/
def created : Builder :=
  .new |>.status .created

/--
Creates a new HTTP Response builder with the 202 status code.
-/
def accepted : Builder :=
  .new |>.status .accepted

/--
Creates a new HTTP Response builder with the 401 status code.
-/
def unauthorized : Builder :=
  .new |>.status .unauthorized

/--
Creates a new HTTP Response builder with the 403 status code.
-/
def forbidden : Builder :=
  .new |>.status .forbidden

/--
Creates a new HTTP Response builder with the 409 status code.
-/
def conflict : Builder :=
  .new |>.status .conflict

/--
Creates a new HTTP Response builder with the 503 status code.
-/
def serviceUnavailable : Builder :=
  .new |>.status .serviceUnavailable

end Response
```
