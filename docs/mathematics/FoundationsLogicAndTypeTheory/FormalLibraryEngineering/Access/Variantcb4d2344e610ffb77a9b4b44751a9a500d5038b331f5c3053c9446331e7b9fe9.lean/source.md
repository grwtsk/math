# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Access.Variantcb4d2344e610ffb77a9b4b44751a9a500d5038b331f5c3053c9446331e7b9fe9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43bd0f8c9ddc77695e850a3ee2302320b4bce326` · SHA-256 `cb4d2344e610ffb77a9b4b44751a9a500d5038b331f5c3053c9446331e7b9fe9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Consumers.Access

namespace Std.Iter
open Std.Iterators

public theorem atIdxSlow?_eq_match [Iterator α Id β] [Productive α Id]
    {n : Nat} {it : Iter (α := α) β} :
    it.atIdxSlow? n =
      (match it.step.val with
      | .yield it' out =>
        match n with
        | 0 => some out
        | n + 1 => it'.atIdxSlow? n
      | .skip it' => it'.atIdxSlow? n
      | .done => none) := by
  induction n, it using Iter.atIdxSlow?.induct_unfolding <;> simp_all

end Std.Iter
```
