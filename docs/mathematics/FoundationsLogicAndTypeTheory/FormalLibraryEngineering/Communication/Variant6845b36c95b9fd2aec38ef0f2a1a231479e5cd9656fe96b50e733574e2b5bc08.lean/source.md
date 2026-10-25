# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Communication.Variant6845b36c95b9fd2aec38ef0f2a1a231479e5cd9656fe96b50e733574e2b5bc08

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ea41116f04e8d3fcdc066f8142bec8ace3d64cc` · SHA-256 `efa976f085d5f31c463fb22c48d848f4dfaef8950cb5f8f75564d4a4c42c1917`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParseHeaderField.Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ParseHeaderField.Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/Lsp/Communication.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Marc Huisinga. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Marc Huisinga, Wojciech Nawrocki
-/
module

prelude
public import Lean.Data.JsonRpc
import Init.Data.String.TakeDrop
import Init.Data.String.Search
import Init.Data.Iterators.Consumers.Collect


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParseHeaderField.Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33

public section

/-! Reading/writing LSP messages from/to IO handles. -/

open IO

namespace Lean.IO.FS.Stream

open Lean
open Lean.JsonRpc

section
  private def parseHeaderField (s : String) : Option (String × String) := do
    guard $ s ≠ "" ∧ s.takeEnd 2 == "\r\n".toSlice
    let xs := (s.dropEnd 2).split ": " |>.toList
    match xs with
    | []  => none
    | [_] => none
    | name :: value :: rest =>
      let value := ": ".toSlice.intercalate (value :: rest)
      some ⟨name.copy, value⟩

  /-- Returns true when the string is a Lean 3 request.
  This means that the user is running a Lean 3 language client that
  is not aware of Lean 4. In this case we should give a friendlier message. -/
  private def isLean3Request (s : String) : Bool :=
    let e : Except String Unit := (do
      let j ← Json.parse s
      let _ ← j.getObjVal? "command"
      let _ ← j.getObjVal? "seq_num"
      return ()
    )
    e.isOk

  private partial def readHeaderFields (h : FS.Stream) : IO (List (String × String)) := do
    let l ← h.getLine
    if l.isEmpty then
      throw $ userError "Stream was closed"
    if l = "\r\n" then
      pure []
    else
      match parseHeaderField l with
      | some hf =>
        let tail ← readHeaderFields h
        pure (hf :: tail)
      | none =>
        if isLean3Request l then
          throw $ userError s!"A Lean 3 request was received. Please ensure that your editor has a Lean 4 compatible extension installed. For VSCode, this is\n\n    https://github.com/leanprover/vscode-lean4 "
        else
          throw $ userError s!"Invalid header field: {repr l}"

  /-- Returns the Content-Length. -/
  private def readLspHeader (h : FS.Stream) : IO Nat := do
    let fields ← readHeaderFields h
    match fields.lookup "Content-Length" with
    | some length => match length.toNat? with
      | some n => pure n
      | none   => throw $ userError s!"Content-Length header field value '{length}' is not a Nat"
    | none => throw $ userError s!"No Content-Length field in header: {fields}"

  def readLspMessage (h : FS.Stream) : IO Message := do
    try
      let nBytes ← readLspHeader h
      h.readMessage nBytes
    catch e =>
      throw $ userError s!"Cannot read LSP message: {e}"

  def readLspMessageAsString (h : FS.Stream) : IO String := do
    try
      let nBytes ← readLspHeader h
      h.readUTF8 nBytes
    catch e =>
      throw $ userError s!"Cannot read LSP message: {e}"

  def readLspRequestAs (h : FS.Stream) (expectedMethod : String) (α) [FromJson α] : IO (Request α) := do
    try
      let nBytes ← readLspHeader h
      h.readRequestAs nBytes expectedMethod α
    catch e =>
      throw $ userError s!"Cannot read LSP request: {e}"

  def readLspNotificationAs (h : FS.Stream) (expectedMethod : String) (α) [FromJson α] : IO (Notification α) := do
    try
      let nBytes ← readLspHeader h
      h.readNotificationAs nBytes expectedMethod α
    catch e =>
      throw $ userError s!"Cannot read LSP notification: {e}"

  def readLspResponseAs (h : FS.Stream) (expectedID : RequestID) (α) [FromJson α] : IO (Response α) := do
    try
      let nBytes ← readLspHeader h
      h.readResponseAs nBytes expectedID α
    catch e =>
      throw $ userError s!"Cannot read LSP response: {e}"
end

section
  variable [ToJson α]

  def writeSerializedLspMessage (h : FS.Stream) (msg : String) : IO Unit := do
    let header := s!"Content-Length: {toString msg.utf8ByteSize}\r\n\r\n"
    -- inlined implementation instead of using jsonrpc's writeMessage
    -- to maintain the atomicity of putStr
    h.putStr (header ++ msg)
    h.flush

  def writeLspMessage (h : FS.Stream) (msg : Message) : IO Unit := do
    h.writeSerializedLspMessage (toJson msg).compress

  def writeLspRequest (h : FS.Stream) (r : Request α) : IO Unit :=
    h.writeLspMessage r

  def writeLspNotification (h : FS.Stream) (n : Notification α) : IO Unit :=
    h.writeLspMessage n

  def writeLspResponse (h : FS.Stream) (r : Response α) : IO Unit :=
    h.writeLspMessage r

  def writeLspResponseError (h : FS.Stream) (e : ResponseError Unit) : IO Unit :=
    h.writeLspMessage (Message.responseError e.id e.code e.message none)

  def writeLspResponseErrorWithData (h : FS.Stream) (e : ResponseError α) : IO Unit :=
    h.writeLspMessage e
end

end Lean.IO.FS.Stream
```
