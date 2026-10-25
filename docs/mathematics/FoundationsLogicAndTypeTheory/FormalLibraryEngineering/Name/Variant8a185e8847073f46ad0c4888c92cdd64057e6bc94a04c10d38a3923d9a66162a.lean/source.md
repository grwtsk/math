# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Name.Variant8a185e8847073f46ad0c4888c92cdd64057e6bc94a04c10d38a3923d9a66162a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3427a8ab8ef77a098030911795d0b5ae485ee122` · SHA-256 `8a185e8847073f46ad0c4888c92cdd64057e6bc94a04c10d38a3923d9a66162a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/

namespace Lean.Name

/-- Returns true if the name has any numeric components. -/
def hasNum : Name → Bool
  | .anonymous => false
  | .str p _ => p.hasNum
  | .num _ _ => true

/-- The frontend does not allow user declarations to start with `_` in any of its parts.
   We use name parts starting with `_` internally to create auxiliary names (e.g., `_private`). -/
def isInternalOrNum : Name → Bool
  | .str p s => s.get 0 == '_' || isInternalOrNum p
  | .num _ _ => true
  | _       => false

/--
Returns true if this a part of name that is internal or dynamically
generated so that it may easily be changed.

Generally, user code should not explicitly use internal names.
-/
def isInternalDetail : Name → Bool
  | .str p s     =>
    s.startsWith "_"
      || s.startsWith "match_"
      || s.startsWith "proof_"
      || p.isInternalOrNum
  | .num _ _     => true
  | p            => p.isInternalOrNum
```
