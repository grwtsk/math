# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Environment.Variant487d996a12f9e3ee0aa04ef9cce7858c9beef9450bf8acd912c586402f6e74b2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ca5123fc456102d02055dbd23f58dbbda69c8c2` · SHA-256 `487d996a12f9e3ee0aa04ef9cce7858c9beef9450bf8acd912c586402f6e74b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Lean.Environment

namespace Lean

/-- Return the name of the module in which a declaration was defined. -/
public def Environment.getModuleFor? (env : Environment) (declName : Name) : Option Name :=
  match env.getModuleIdxFor? declName with
  | none =>
    if env.constants.map₂.contains declName then
      env.header.mainModule
    else
      none
  | some idx => env.header.moduleNames[idx.toNat]!

end Lean
```
