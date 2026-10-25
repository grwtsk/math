# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Request.Variant5a286c65a219073d02a5ff5153e21e1a961141527158d970465690df73b0c957

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20ea0e027cb39b80dbb816ef7e325f844a8e1916` · SHA-256 `0224fb4c31472d54e8359362e3684127cba037346aaa39e4b07059ac931a2f28`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RequestHead.Variant48316811d7098f1b0e1f7b79a53ca450c0116529c9f4383ee9de3541db9e3cdc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"48316811d7098f1b0e1f7b79a53ca450c0116529c9f4383ee9de3541db9e3cdc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.RequestHead.Variant48316811d7098f1b0e1f7b79a53ca450c0116529c9f4383ee9de3541db9e3cdc","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"48316811d7098f1b0e1f7b79a53ca450c0116529c9f4383ee9de3541db9e3cdc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Http/Data/Request.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Http.Data.Extensions
public import Std.Http.Data.Method
public import Std.Http.Data.Version
public import Std.Http.Data.Headers
public import Std.Http.Data.URI


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RequestHead.Variant48316811d7098f1b0e1f7b79a53ca450c0116529c9f4383ee9de3541db9e3cdc

public section

/-!
# Request

This module provides the `Request` type, which represents an HTTP request. It also defines ways
to build a `Request` using functions that make it easier.

References:
* https://httpwg.org/specs/rfc9112.html#request.line
-/

namespace Std.Http

set_option linter.all true

/--
The main parts of a request containing the HTTP method, version, and request target URI.

Reference: https://httpwg.org/specs/rfc9112.html#request.line
-/
structure Request.Head where
  /--
  The HTTP method (GET, POST, PUT, DELETE, etc.) for the request

  Reference: https://httpwg.org/specs/rfc9112.html#rfc.section.3.1
  -/
  method : Method

  /--
  The HTTP protocol version for the request (e.g. HTTP/1.1, HTTP/2.0, HTTP/3.0).

  Reference: https://httpwg.org/specs/rfc9112.html#http.version
  -/
  version : Version

  /--
  The raw request-target string (commonly origin-form path/query, `"*"`, or authority-form).
  -/
  uri : RequestTarget := .asteriskForm

  /--
  Collection of HTTP headers for the request (Content-Type, Authorization, etc.).
  -/
  headers : Headers := .empty
deriving Inhabited, Repr

/--
HTTP request structure parameterized by body type.
-/
structure Request (t : Type) where
  /--
  The request line information (`method`, `version`, and request-target `uri`).
  -/
  line : Request.Head

  /--
  The request body content of type t.
  -/
  body : t

  /--
  Optional dynamic metadata attached to the request.
  -/
  extensions : Extensions := .empty
deriving Inhabited

/--
Builds an HTTP Request.
-/
structure Request.Builder where
  /--
  The request-line of an HTTP request.
  -/
  line : Head := { method := .get, version := .v11, uri := .asteriskForm }

  /--
  Optional dynamic metadata attached to the request.
  -/
  extensions : Extensions := .empty

namespace Request

instance : ToString Head where
  toString req :=
    toString req.method ++ " " ++
    toString req.uri ++ " " ++
    toString req.version ++
    "\r\n" ++
    toString req.headers ++
    "\r\n"

open Std.Http.Internal in
instance : Encode .v11 Head where
  encode buffer req :=
    let buffer := Encode.encode (v := .v11) buffer req.method
    let buffer := buffer.writeChar ' '
    let buffer := Encode.encode (v := .v11) buffer req.uri
    let buffer := buffer.writeChar ' '
    let buffer := Encode.encode (v := .v11) buffer req.version
    let buffer := buffer.writeString "\r\n"
    let buffer := Encode.encode (v := .v11) buffer req.headers
    buffer.writeString "\r\n"

/--
Creates a new HTTP request builder with the default head
(method: GET, version: HTTP/1.1, target: `*`).
-/
def new : Builder := { }

namespace Builder

/--
Sets the HTTP method for the request being built.
-/
def method (builder : Builder) (method : Method) : Builder :=
  { builder with line := { builder.line with method := method } }

/--
Sets the HTTP version for the request being built.
-/
def version (builder : Builder) (version : Version) : Builder :=
  { builder with line := { builder.line with version := version } }

/--
Sets the request target/URI for the request being built.
-/
def uri (builder : Builder) (uri : RequestTarget) : Builder :=
  { builder with line := { builder.line with uri := uri } }

/--
Sets the request target/URI for the request being built
-/
def uri! (builder : Builder) (uri : String) : Builder :=
  let uri := RequestTarget.parse! uri
  { builder with line := { builder.line with uri } }

/--
Sets the headers for the request being built
-/
def headers (builder : Builder) (headers : Headers) : Builder :=
  { builder with line := { builder.line with headers } }

/--
Adds a single header to the request being built.
-/
def header (builder : Builder) (key : Header.Name) (value : Header.Value) : Builder :=
  { builder with line := { builder.line with headers := builder.line.headers.insert key value } }

/--
Adds a single header to the request being built, panics if the header is invalid.
-/
def header! (builder : Builder) (key : String) (value : String) : Builder :=
  let key := Header.Name.ofString! key
  let value := Header.Value.ofString! value
  { builder with line := { builder.line with headers := builder.line.headers.insert key value } }

/--
Adds a single header to the request being built.
Returns `none` if the header name or value is invalid.
-/
def header? (builder : Builder) (key : String) (value : String) : Option Builder := do
  let key ← Header.Name.ofString? key
  let value ← Header.Value.ofString? value
  pure <| { builder with line := { builder.line with headers := builder.line.headers.insert key value } }

/--
Adds a header to the request being built only if the Option Header.Value is some.
-/
def headerOpt (builder : Builder) (key : Header.Name) (value : Option Header.Value) : Builder :=
  match value with
  | some v => builder.header key v
  | none => builder

/--
Inserts a typed extension value into the request being built.
-/
def extension (builder : Builder) [TypeName α] (data : α) : Builder :=
  { builder with extensions := builder.extensions.insert data }

/--
Builds and returns the final HTTP Request with the specified body.
-/
def body (builder : Builder) (body : t) : Request t :=
  { line := builder.line, body := body, extensions := builder.extensions }

end Builder

/--
Creates a new HTTP GET Request with the specified URI.
-/
def get (uri : RequestTarget) : Builder :=
  new
  |>.method .get
  |>.uri uri

/--
Creates a new HTTP POST Request builder with the specified URI.
-/
def post (uri : RequestTarget) : Builder :=
  new
  |>.method .post
  |>.uri uri

/--
Creates a new HTTP PUT Request builder with the specified URI.
-/
def put (uri : RequestTarget) : Builder :=
  new
  |>.method .put
  |>.uri uri

/--
Creates a new HTTP DELETE Request builder with the specified URI.
-/
def delete (uri : RequestTarget) : Builder :=
  new
  |>.method .delete
  |>.uri uri

/--
Creates a new HTTP PATCH Request builder with the specified URI.
-/
def patch (uri : RequestTarget) : Builder :=
  new
  |>.method .patch
  |>.uri uri

/--
Creates a new HTTP HEAD Request builder with the specified URI.
-/
def head (uri : RequestTarget) : Builder :=
  new
  |>.method .head
  |>.uri uri

/--
Creates a new HTTP OPTIONS Request builder with the specified URI.
Use `Request.options (RequestTarget.asteriskForm)` for server-wide OPTIONS.
-/
def options (uri : RequestTarget) : Builder :=
  new
  |>.method .options
  |>.uri uri

/--
Creates a new HTTP CONNECT Request builder with the specified URI.
Typically used with `RequestTarget.authorityForm` for tunneling.
-/
def connect (uri : RequestTarget) : Builder :=
  new
  |>.method .connect
  |>.uri uri

/--
Creates a new HTTP TRACE Request builder with the specified URI.
-/
def trace (uri : RequestTarget) : Builder :=
  new
  |>.method .trace
  |>.uri uri

end Std.Http.Request
```
