# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantf188f67845f3e1047265918f5929a90af8c0972b8727239582a883129c92c75b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a075952e3b0b51365576f4aabccb8d287c59f08e` · SHA-256 `f188f67845f3e1047265918f5929a90af8c0972b8727239582a883129c92c75b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

prelude
public import Init.Data.Int.Basic
public import Init.Data.Nat.Bitwise.Basic

public section

namespace Int

/-! ## bit operations -/

/--
Bitwise not, usually accessed via the `~~~` prefix operator.

Interprets the integer as an infinite sequence of bits in two's complement and complements each bit.

Examples:
 * `~~~(0 : Int) = -1`
 * `~~~(1 : Int) = -2`
 * `~~~(-1 : Int) = 0`
-/
protected def not : Int → Int
  | Int.ofNat n => Int.negSucc n
  | Int.negSucc n => Int.ofNat n

instance : Complement Int := ⟨.not⟩

/--
Bitwise right shift, usually accessed via the `>>>` operator.

Interprets the integer as an infinite sequence of bits in two's complement and shifts the value to
the right.

Examples:
* `( 0b0111 : Int) >>> 1 =  0b0011`
* `( 0b1000 : Int) >>> 1 =  0b0100`
* `(-0b1000 : Int) >>> 1 = -0b0100`
* `(-0b0111 : Int) >>> 1 = -0b0100`
-/
@[expose, implicit_reducible]
protected def shiftRight : Int → Nat → Int
  | Int.ofNat n, s => Int.ofNat (n >>> s)
  | Int.negSucc n, s => Int.negSucc (n >>> s)

instance : HShiftRight Int Nat Int := ⟨.shiftRight⟩

/--
Bitwise left shift, usually accessed via the `<<<` operator.

Examples:
 * `1 <<< 2 = 4`
 * `1 <<< 3 = 8`
 * `0 <<< 3 = 0`
 * `0xf1 <<< 4 = 0xf10`
 * `(-1) <<< 3 = -8`
-/
@[expose]
protected def shiftLeft : Int → Nat → Int
  | Int.ofNat n, s => Int.ofNat (n <<< s)
  | Int.negSucc n, s => Int.negSucc (((n + 1) <<< s) - 1)

instance : HShiftLeft Int Nat Int := ⟨.shiftLeft⟩

end Int
```
