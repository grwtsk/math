# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Log2.Variantbff592b9810663348dc5f62e10382c389a826c05a298187799a9ae03eee822d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b648d98604d7b870e55b9a44049c81fc3d882130` · SHA-256 `bff592b9810663348dc5f62e10382c389a826c05a298187799a9ae03eee822d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Henrik Böving. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Init.Prelude
import Init.Data.Nat.Log2

public section

set_option linter.missingDocs true

/--
Logarithm base 2 for bounded numbers.

The resulting value is the same as that computed by `Nat.log2`. In particular, the result for `0` is
`0`.

Examples:
 * `(8 : Fin 10).log2 = (3 : Fin 10)`
 * `(7 : Fin 10).log2 = (2 : Fin 10)`
 * `(4 : Fin 10).log2 = (2 : Fin 10)`
 * `(3 : Fin 10).log2 = (1 : Fin 10)`
 * `(1 : Fin 10).log2 = (0 : Fin 10)`
 * `(0 : Fin 10).log2 = (0 : Fin 10)`
-/
def Fin.log2 (n : Fin m) : Fin m := ⟨Nat.log2 n.val, Nat.lt_of_le_of_lt (Nat.log2_le_self n.val) n.isLt⟩
```
