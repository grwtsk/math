# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sqrt.Variant3bc9816d17a3c8e36b63e15e2c906c7839c518723c6266a6b1ed7e9e3a57401a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f028d179a594963b39ba0a41f50e071020a12987` · SHA-256 `3bc9816d17a3c8e36b63e15e2c906c7839c518723c6266a6b1ed7e9e3a57401a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia M. Himmel
-/
module

prelude
public import Init.Data.Float.Model.Unpacked.Round
public import Init.Data.Nat.Sqrt.Basic

-- This file is part of the logical model for floats which authors of float libraries
-- need to rely on.
@[expose] public section

namespace Float.Model.UnpackedFloat

/--
Computes a `(mantissa, exponent)` pair for the square root with enough bits to populate the mantissa
for the given specification. Also returns an `Accuracy` stating how the returned pair relates to
the infinitely precise square root.
-/
def sqrtCore (spec : Format) (m : Nat) (e : Int) : Nat × Int × Accuracy :=
  -- Here we shift so that the input is represented as `m * 2 ^ (2 * targetExponent)`, where `m` has
  -- so many bits that `sqrt m` still has enough bits for the specified format.
  let targetExponent := min (e.ediv 2) (spec.targetExponent ((totalExponent m e + 1).ediv 2))
  let shiftAmount := (e - 2 * targetExponent).toNat
  let m := m <<< shiftAmount

  let root := Nat.sqrt m
  let rem := m - root * root

  -- Let x := Real.sqrt m. Then
  -- `x < root + 1/2` ↔ `x^2 < root^2 + root + 1/4` ↔ `rem < root + 1/4` ↔ `rem ≤ root`.
  -- `x = root + 1/2` is impossible.
  let accuracy : Accuracy := if rem = 0 then .exact else .inexact (if rem ≤ root then .lt else .gt)
  (root, targetExponent, accuracy)

/--
Computes the square root of a floating-point number and rounds the result according to the given
specification.
-/
def sqrt (spec : Format) : UnpackedFloat → UnpackedFloat
  | .notANumber => .notANumber
  | .infinity .positive => .infinity .positive
  | .infinity .negative => .notANumber
  | .finite .negative .. => .notANumber
  | .zero sign => .zero sign
  | .finite .positive m e _ =>
    let (m, e, acc) := sqrtCore spec m e
    roundWithAccuracy spec .positive m e acc

end Float.Model.UnpackedFloat
```
