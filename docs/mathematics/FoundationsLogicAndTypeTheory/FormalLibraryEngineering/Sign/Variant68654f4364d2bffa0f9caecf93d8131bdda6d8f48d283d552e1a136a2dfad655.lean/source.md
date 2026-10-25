# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sign.Variant68654f4364d2bffa0f9caecf93d8131bdda6d8f48d283d552e1a136a2dfad655

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb380232178cbb8e89d37fd9aab060a1d408ba3d` · SHA-256 `68654f4364d2bffa0f9caecf93d8131bdda6d8f48d283d552e1a136a2dfad655`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia M. Himmel
-/
module

prelude
public import Init.Data.Int.Basic
public import Init.Data.BitVec.Basic
public import Init.Data.Repr
public import Init.Data.Ord.Basic

-- This file is part of the logical model for floats which authors of float libraries
-- need to rely on.
@[expose] public section

namespace Float.Model.UnpackedFloat

/--
Inductive with two constructors `negative` and `positive` for representing sign bits in
floating-point models. This is not a general-purpose sign type like mathlib's `SignType`,
which also includes a `zero` case.
-/
inductive Sign where
  /-- Negative (`-`) sign. -/
  | negative : Sign
  /-- Positive (`+`) sign. -/
  | positive : Sign
deriving Repr, BEq

namespace Sign

instance : Mul Sign where
  mul
    | .negative, .negative => .positive
    | .negative, .positive => .negative
    | .positive, .negative => .negative
    | .positive, .positive => .positive

instance : Div Sign where
  div
    | .negative, .negative => .positive
    | .negative, .positive => .negative
    | .positive, .negative => .negative
    | .positive, .positive => .positive

instance : Neg Sign where
  neg
    | .negative => .positive
    | .positive => .negative

instance : Ord Sign where
  compare
    | .negative, .negative => .eq
    | .negative, .positive => .lt
    | .positive, .negative => .gt
    | .positive, .positive => .eq

/--
Apply the given sign to the given integer.
-/
def apply (s : Sign) (n : Int) : Int :=
  match s with
  | .negative => -n
  | .positive => n

/--
Converts the sign to a bitvector, with positive sign denoted by `0`.
-/
def toBitVec : Sign → BitVec 1
  | .negative => 1#1
  | .positive => 0#1

/--
Constructs a sign from a bitvector, with positive sign denoted by `0`.
-/
def ofBitVec (b  : BitVec 1) : Sign :=
  if b = 0#1 then .positive else .negative

end Sign

end Float.Model.UnpackedFloat
```
