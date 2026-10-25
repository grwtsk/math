# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PosFin.Variante0f34004b225e58be56e21b08d537572df137540bfd4eabec451289b51cdd880

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b789a9f489c656f63cadcedb4e9ee69e185d3d77` · SHA-256 `e0f34004b225e58be56e21b08d537572df137540bfd4eabec451289b51cdd880`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Josh Clune
-/
module

prelude
public import Init.Data.Hashable

@[expose] public section

namespace Std.Tactic.BVDecide
namespace LRAT
namespace Internal

@[implicit_reducible] def PosFin (n : Nat) := {x : Nat // 0 < x ∧ x < n}

instance : DecidableEq (PosFin n) :=
  inferInstanceAs (DecidableEq {x : Nat // 0 < x ∧ x < n})

instance : CoeOut (PosFin n) Nat where
  coe p := p.val

instance {n} : Hashable (PosFin n) where
  hash p := hash p.val

instance : ToString (PosFin n) where
  toString p := toString p.val

end Internal
end LRAT
end Std.Tactic.BVDecide
```
