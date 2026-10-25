# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Message.Variant70a360390ca1ea49b0ee243474587a2a94112ae03a092894b4f41479e8e00341

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a2db675cf7930f9e3d7a45df7b03a31326d9379` · SHA-256 `70a360390ca1ea49b0ee243474587a2a94112ae03a092894b4f41479e8e00341`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lean.Parser.Basic

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
