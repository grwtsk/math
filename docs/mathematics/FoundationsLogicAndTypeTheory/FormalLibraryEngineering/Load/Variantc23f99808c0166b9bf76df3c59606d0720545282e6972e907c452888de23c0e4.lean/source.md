# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Load.Variantc23f99808c0166b9bf76df3c59606d0720545282e6972e907c452888de23c0e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ab74c6c671f11dbc7defb5e3859f5c00ccbf051` · SHA-256 `c23f99808c0166b9bf76df3c59606d0720545282e6972e907c452888de23c0e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lean.Parser.Types
public import Lake.Toml.Data.Value
import Lake.Toml.Elab
import Lake.Util.Message
import Std.Do

open Lean Parser

namespace Lake.Toml

/-- Load a TOML table from some input. -/
public def loadToml (ictx : InputContext) : EIO MessageLog Table := do
  let env ←
    match (← mkEmptyEnvironment.toBaseIO) with
    | .ok env => pure env
    | .error e => throw <| MessageLog.empty.add <| mkMessageNoPos ictx <|
      m!"failed to initialize TOML environment: {e}"
  let s := toml.fn.run ictx { env, options := {} } {} (mkParserState ictx.inputString)
  if let some errorMsg := s.errorMsg then
    throw <|  MessageLog.empty.add <| mkParserErrorMessage ictx s errorMsg
  else if ictx.atEnd s.pos then
    let act := elabToml ⟨s.stxStack.back⟩
    match (← act.run {fileName := ictx.fileName, fileMap := ictx.fileMap} {env} |>.toBaseIO) with
    | .ok (t, s) =>
      if s.messages.hasErrors then
        throw s.messages
      else
        return t
    | .error e =>
      throw <| MessageLog.empty.add <| mkExceptionMessage ictx e
  else
    throw <| MessageLog.empty.add <| mkParserErrorMessage ictx s {expected := ["end of input"]}
```
