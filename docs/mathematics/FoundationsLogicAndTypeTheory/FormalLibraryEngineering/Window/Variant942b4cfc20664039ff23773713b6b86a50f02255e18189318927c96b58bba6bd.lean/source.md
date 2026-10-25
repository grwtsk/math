# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Window.Variant942b4cfc20664039ff23773713b6b86a50f02255e18189318927c96b58bba6bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57995a98f872e71fa9e8bd72e2499fea910db42f` · SHA-256 `942b4cfc20664039ff23773713b6b86a50f02255e18189318927c96b58bba6bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Marc Huisinga
-/
module

prelude
public import Lean.Data.Json.FromToJson.Basic

public section

open Lean

namespace Lean.Lsp

inductive MessageType where
  | error
  | warning
  | info
  | log

instance : FromJson MessageType where
  fromJson?
    | (1 : Nat) => .ok .error
    | (2 : Nat) => .ok .warning
    | (3 : Nat) => .ok .info
    | (4 : Nat) => .ok .log
    | _         => .error "Unknown MessageType ID"

instance : ToJson MessageType where
  toJson
    | .error   => 1
    | .warning => 2
    | .info    => 3
    | .log     => 4

structure ShowMessageParams where
  type    : MessageType
  message : String
  deriving FromJson, ToJson

structure MessageActionItem where
  title : String
  deriving FromJson, ToJson

structure ShowMessageRequestParams where
  type     : MessageType
  message  : String
  actions? : Option (Array MessageActionItem)
  deriving FromJson, ToJson

@[expose] def ShowMessageResponse := Option MessageActionItem
  deriving FromJson, ToJson

end Lean.Lsp
```
