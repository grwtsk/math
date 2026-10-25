# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Message.Variantde1271d470071d8ba95875973cb9065afb29ab5186efdbc6c858b6f35d8f9208

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e18d3582798e8a95a8c97626cf5b8da8b7b364f` · SHA-256 `c4ffbe55eb4355be066e376ac865577c937f792c1051ff5963b2505c4a8279d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkParserErrorMessage.Variant70a360390ca1ea49b0ee243474587a2a94112ae03a092894b4f41479e8e00341","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"70a360390ca1ea49b0ee243474587a2a94112ae03a092894b4f41479e8e00341","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.MkParserErrorMessage.Variant70a360390ca1ea49b0ee243474587a2a94112ae03a092894b4f41479e8e00341","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"70a360390ca1ea49b0ee243474587a2a94112ae03a092894b4f41479e8e00341","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Util/Message.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lean.Parser.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkParserErrorMessage.Variant70a360390ca1ea49b0ee243474587a2a94112ae03a092894b4f41479e8e00341

open Lean Parser

namespace Lake

public def mkParserErrorMessage (ictx : InputContext) (s : ParserState) (e : Parser.Error) : Message where
  fileName := ictx.fileName
  pos := ictx.fileMap.toPosition s.pos
  endPos := none
  keepFullRange := true
  data := toString e

public def mkExceptionMessage (ictx : InputContext) (e : Exception) : Message where
  fileName := ictx.fileName
  pos := ictx.fileMap.toPosition <| e.getRef.getPos?.getD 0
  endPos := ictx.fileMap.toPosition <$> e.getRef.getTailPos?
  data := e.toMessageData

public def mkMessageNoPos (ictx : InputContext) (data : MessageData) (severity := MessageSeverity.error) : Message where
  fileName := ictx.fileName
  pos := ictx.fileMap.toPosition 0
  endPos := none
  severity := severity
  data := data

public def mkMessageStringCore
  (severity : MessageSeverity)
  (fileName caption body : String)
  (pos : Position) (endPos? : Option Position := none)
  (infoWithPos := false)
: String := Id.run do
  let mut str := body
  unless caption == "" do
    str := caption ++ ":\n" ++ str
  match severity with
  | .information =>
    if infoWithPos then
      str := mkErrorStringWithPos fileName pos (endPos := endPos?) "info: " ++ str
  | .warning =>
    str := mkErrorStringWithPos fileName pos (endPos := endPos?) "warning: " ++ str
  | .error =>
    str := mkErrorStringWithPos fileName pos (endPos := endPos?) "error: " ++ str
  if str.isEmpty || str.back != '\n' then
    str := str ++ "\n"
  return str

public def mkMessageString (msg : Message) (includeEndPos := false) (infoWithPos := false) : BaseIO String := do
  let endPos? := if includeEndPos then msg.endPos else none
  let s ← msg.data.toString
  return mkMessageStringCore msg.severity msg.fileName msg.caption s msg.pos endPos? infoWithPos

public def mkMessageLogString (log : MessageLog) : BaseIO String :=
  log.toList.foldlM (init := "") fun s m => do
    return s ++ (← mkMessageString m (infoWithPos := true))
```
