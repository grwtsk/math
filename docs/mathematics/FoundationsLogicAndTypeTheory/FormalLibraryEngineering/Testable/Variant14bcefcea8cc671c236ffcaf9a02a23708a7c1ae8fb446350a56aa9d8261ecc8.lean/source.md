# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Testable.Variant14bcefcea8cc671c236ffcaf9a02a23708a7c1ae8fb446350a56aa9d8261ecc8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5daa510be26586690407136da690d28b4d75adbd` · SHA-256 `14bcefcea8cc671c236ffcaf9a02a23708a7c1ae8fb446350a56aa9d8261ecc8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
import Plausible.Testable

open Plausible

structure MyType where
  x : Nat
  y : Nat
  h : x ≤ y
  deriving Repr

instance : Shrinkable MyType where
  shrink := fun ⟨x, y, _⟩ =>
    let proxy := Shrinkable.shrink (x, y - x)
    proxy.map (fun (fst, snd) => ⟨fst, fst + snd, by omega⟩)

instance : Arbitrary MyType :=
  ⟨do
    let x ← SampleableExt.interpSample Nat
    let xyDiff ← SampleableExt.interpSample Nat
    return ⟨x, x + xyDiff, by omega⟩⟩

/-- info: Unable to find a counter-example -/
#guard_msgs in
#eval Testable.check <| ∀ a b : MyType, a.y ≤ b.x → a.x ≤ b.y
```
