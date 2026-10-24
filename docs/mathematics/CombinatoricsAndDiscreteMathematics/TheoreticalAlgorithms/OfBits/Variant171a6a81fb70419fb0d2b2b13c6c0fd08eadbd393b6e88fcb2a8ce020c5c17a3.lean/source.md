# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OfBits.Variant171a6a81fb70419fb0d2b2b13c6c0fd08eadbd393b6e88fcb2a8ce020c5c17a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0b83bfb0996d5fef2045fb4c7fd9848839d512e7` · SHA-256 `171a6a81fb70419fb0d2b2b13c6c0fd08eadbd393b6e88fcb2a8ce020c5c17a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 François G. Dorais. All rights reserved.
Released under Apache 2. license as described in the file LICENSE.
Authors: François G. Dorais
-/
module

public import Batteries.Data.Nat.Lemmas

@[expose] public section

namespace Fin

/--
Construct an element of `Fin (2 ^ n)` from a sequence of bits (little endian).
-/
abbrev ofBits (f : Fin n → Bool) : Fin (2 ^ n) := ⟨Nat.ofBits f, Nat.ofBits_lt_two_pow f⟩

@[simp] theorem val_ofBits (f : Fin n → Bool) : (ofBits f).val = Nat.ofBits f := rfl
```
