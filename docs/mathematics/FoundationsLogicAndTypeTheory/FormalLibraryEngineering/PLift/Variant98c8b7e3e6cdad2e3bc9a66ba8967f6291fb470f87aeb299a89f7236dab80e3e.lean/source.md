# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PLift.Variant98c8b7e3e6cdad2e3bc9a66ba8967f6291fb470f87aeb299a89f7236dab80e3e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d911952b3e702b3792502f983ced883c189b8846` · SHA-256 `98c8b7e3e6cdad2e3bc9a66ba8967f6291fb470f87aeb299a89f7236dab80e3e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Init.Core

public section

deriving instance DecidableEq for PLift

instance [Subsingleton α] : Subsingleton (PLift α) where
  allEq := fun ⟨a⟩ ⟨b⟩ => congrArg PLift.up (Subsingleton.elim a b)
```
