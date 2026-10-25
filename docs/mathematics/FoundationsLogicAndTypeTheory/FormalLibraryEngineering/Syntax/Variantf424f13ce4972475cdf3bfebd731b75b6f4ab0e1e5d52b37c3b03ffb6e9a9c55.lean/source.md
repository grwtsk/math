# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Syntax.Variantf424f13ce4972475cdf3bfebd731b75b6f4ab0e1e5d52b37c3b03ffb6e9a9c55

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0bce270ab4e4be12b6ced88c25fa4339f6f9e0f` · SHA-256 `f424f13ce4972475cdf3bfebd731b75b6f4ab0e1e5d52b37c3b03ffb6e9a9c55`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Mario Carneiro
-/
module
prelude
public import Init.Prelude
import Init.Data.Array.Set
public section

/-!
# Helper functions for `Syntax`.

These are delayed here to allow some time to bootstrap `Array`.
-/

namespace Lean.Syntax

/--
Updates the argument list without changing the node kind.
Does nothing for non-`node` nodes.
-/
def setArgs (stx : Syntax) (args : Array Syntax) : Syntax :=
  match stx with
  | node info k _ => node info k args
  | stx           => stx

/--
Updates the `i`'th argument of the syntax.
Does nothing for non-`node` nodes, or if `i` is out of bounds of the node list.
-/
def setArg (stx : Syntax) (i : Nat) (arg : Syntax) : Syntax :=
  match stx with
  | node info k args => node info k (args.setIfInBounds i arg)
  | stx              => stx

end Lean.Syntax
```
