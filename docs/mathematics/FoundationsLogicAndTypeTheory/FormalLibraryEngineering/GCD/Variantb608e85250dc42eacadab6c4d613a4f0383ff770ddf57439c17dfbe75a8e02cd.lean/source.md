# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Gcd.Variantb608e85250dc42eacadab6c4d613a4f0383ff770ddf57439c17dfbe75a8e02cd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c95ccd70f3670b138e5a752eda40795efa2b9fe2` · SHA-256 `b608e85250dc42eacadab6c4d613a4f0383ff770ddf57439c17dfbe75a8e02cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2014 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro
-/
module

public import Batteries.Tactic.Alias

@[expose] public section

/-!
# Definitions and properties of `coprime`
-/

namespace Nat

@[deprecated (since := "2025-08-04")]
alias Coprime.mul := Coprime.mul_left
```
