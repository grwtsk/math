# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Stream.Variant83207364818a17e5d7a0511c5f0cf9d12fa4734746c1bdc45d34161486c8a3d6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5885700d611e7e5e1aa0db804dce9410b85c092` · SHA-256 `83207364818a17e5d7a0511c5f0cf9d12fa4734746c1bdc45d34161486c8a3d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Marc Huisinga. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Marc Huisinga
-/
module

prelude
public import Lean.Data.Json.Parser
public import Lean.Data.Json.Printer

public section

open IO

namespace Lean.IO.FS.Stream

open Lean

def readUTF8 (h : FS.Stream) (nBytes : Nat) : IO String := do
  let bytes ← h.read (USize.ofNat nBytes)
  let some s := String.fromUTF8? bytes | throw (IO.userError "invalid UTF-8")
  return s

/-- Consumes `nBytes` bytes from the stream, interprets the bytes as a utf-8 string and the string as a valid JSON object. -/
def readJson (h : FS.Stream) (nBytes : Nat) : IO Json := do
  let bytes ← h.read (USize.ofNat nBytes)
  let some s := String.fromUTF8? bytes | throw (IO.userError "invalid UTF-8")
  ofExcept (Json.parse s)

def writeJson (h : FS.Stream) (j : Json) : IO Unit := do
  h.putStr j.compress
  h.flush

end Lean.IO.FS.Stream
```
