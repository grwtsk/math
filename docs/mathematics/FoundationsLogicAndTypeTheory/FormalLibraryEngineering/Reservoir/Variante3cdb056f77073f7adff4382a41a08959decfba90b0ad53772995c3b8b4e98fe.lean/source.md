# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reservoir.Variante3cdb056f77073f7adff4382a41a08959decfba90b0ad53772995c3b8b4e98fe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab19b5e5c7927835ee6565fdfc6a755e2de0ea1f` · SHA-256 `e3cdb056f77073f7adff4382a41a08959decfba90b0ad53772995c3b8b4e98fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Util.JsonObject

open Lean

namespace Lake

public def Reservoir.lakeHeaders : Array String := #[
  "X-Reservoir-Api-Version:1.0.0",
  "X-Lake-Registry-Api-Version:0.1.0"
]

/-- A Reservoir API response object. -/
public inductive ReservoirResp (α : Type u)
| data (a : α)
| error (status : Nat) (message : String)

public protected def ReservoirResp.fromJson? [FromJson α] (val : Json) : Except String (ReservoirResp α) := do
  if let .ok obj := JsonObject.fromJson? val then
    if let some (err : JsonObject) ← obj.get? "error" then
      let status ← err.get "status"
      let message ← err.get "message"
      return .error status message
    else if let some (val : Json) ← obj.get? "data" then
      .data <$> fromJson? val
    else
      .data <$> fromJson? val
  else
    .data <$> fromJson? val

public instance [FromJson α] : FromJson (ReservoirResp α) := ⟨ReservoirResp.fromJson?⟩
```
