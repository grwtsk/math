# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RBMap.Variantd247d22003c636878a5b4a24f55fefd5075965ff4afd830be9a57ee738995c7d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `945f83c4478abf4e140a1ebb19ee9f3e169f4ba9` · SHA-256 `d247d22003c636878a5b4a24f55fefd5075965ff4afd830be9a57ee738995c7d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 mathlib community. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Wojciech Nawrocki
-/
import Batteries.Data.RBMap.Basic
import Mathlib.Data.Tree.Basic

/-!
# Binary tree and RBMaps

In this file we define `Tree.ofRBNode`.
This definition was moved from the main file to avoid a dependency on `RBMap`.

## TODO

Implement a `Traversable` instance for `Tree`.

## References

<https://leanprover-community.github.io/archive/stream/113488-general/topic/tactic.20question.html>
-/

namespace Tree

universe u

variable {α : Type u}

open Batteries (RBNode)

/-- Makes a `Tree α` out of a red-black tree. -/
@[deprecated "Deprecated without replacement." (since := "2025-04-02")]
def ofRBNode : RBNode α → Tree α
  | RBNode.nil => nil
  | RBNode.node _color l key r => node key (ofRBNode l) (ofRBNode r)

end Tree
```
