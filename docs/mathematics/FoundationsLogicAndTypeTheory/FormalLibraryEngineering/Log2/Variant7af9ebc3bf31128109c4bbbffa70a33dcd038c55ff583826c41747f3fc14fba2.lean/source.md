# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Log2.Variant7af9ebc3bf31128109c4bbbffa70a33dcd038c55ff583826c41747f3fc14fba2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e793cc247a5fea9331a3218d2bf5317a34efaf4` · SHA-256 `7af9ebc3bf31128109c4bbbffa70a33dcd038c55ff583826c41747f3fc14fba2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Henrik Böving. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Init.Prelude
import Init.Data.Fin.Log2
import Init.Data.UInt.BasicAux

public section

/--
Base-two logarithm of 8-bit unsigned integers. Returns `⌊max 0 (log₂ a)⌋`.

This function is overridden at runtime with an efficient implementation. This definition is
the logical model.

Examples:
 * `UInt8.log2 0 = 0`
 * `UInt8.log2 1 = 0`
 * `UInt8.log2 2 = 1`
 * `UInt8.log2 4 = 2`
 * `UInt8.log2 7 = 2`
 * `UInt8.log2 8 = 3`
-/
@[extern "lean_uint8_log2"]
def UInt8.log2 (a : UInt8) : UInt8 := ⟨⟨Fin.log2 a.toFin⟩⟩

/--
Base-two logarithm of 16-bit unsigned integers. Returns `⌊max 0 (log₂ a)⌋`.

This function is overridden at runtime with an efficient implementation. This definition is
the logical model.

Examples:
 * `UInt16.log2 0 = 0`
 * `UInt16.log2 1 = 0`
 * `UInt16.log2 2 = 1`
 * `UInt16.log2 4 = 2`
 * `UInt16.log2 7 = 2`
 * `UInt16.log2 8 = 3`
-/
@[extern "lean_uint16_log2"]
def UInt16.log2 (a : UInt16) : UInt16 := ⟨⟨Fin.log2 a.toFin⟩⟩

/--
Base-two logarithm of 32-bit unsigned integers. Returns `⌊max 0 (log₂ a)⌋`.

This function is overridden at runtime with an efficient implementation. This definition is
the logical model.

Examples:
 * `UInt32.log2 0 = 0`
 * `UInt32.log2 1 = 0`
 * `UInt32.log2 2 = 1`
 * `UInt32.log2 4 = 2`
 * `UInt32.log2 7 = 2`
 * `UInt32.log2 8 = 3`
-/
@[extern "lean_uint32_log2"]
def UInt32.log2 (a : UInt32) : UInt32 := ⟨⟨Fin.log2 a.toFin⟩⟩

/--
Base-two logarithm of 64-bit unsigned integers. Returns `⌊max 0 (log₂ a)⌋`.

This function is overridden at runtime with an efficient implementation. This definition is
the logical model.

Examples:
 * `UInt64.log2 0 = 0`
 * `UInt64.log2 1 = 0`
 * `UInt64.log2 2 = 1`
 * `UInt64.log2 4 = 2`
 * `UInt64.log2 7 = 2`
 * `UInt64.log2 8 = 3`
-/
@[extern "lean_uint64_log2"]
def UInt64.log2 (a : UInt64) : UInt64 := ⟨⟨Fin.log2 a.toFin⟩⟩

/--
Base-two logarithm of word-sized unsigned integers. Returns `⌊max 0 (log₂ a)⌋`.

This function is overridden at runtime with an efficient implementation. This definition is
the logical model.

Examples:
 * `USize.log2 0 = 0`
 * `USize.log2 1 = 0`
 * `USize.log2 2 = 1`
 * `USize.log2 4 = 2`
 * `USize.log2 7 = 2`
 * `USize.log2 8 = 3`
-/
@[extern "lean_usize_log2"]
def USize.log2 (a : USize) : USize := ⟨⟨Fin.log2 a.toFin⟩⟩
```
