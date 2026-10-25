# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Div.Variant4fd8b6fe0e1ed2af045899b543dff69e4fa95c873522eed8c77632066db499b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `92b2141d6acd2948a991f81f6a8b168be539cd3e` · SHA-256 `4fd8b6fe0e1ed2af045899b543dff69e4fa95c873522eed8c77632066db499b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia M. Himmel
-/
module

prelude
public import Init.Data.Float.Model.Unpacked.Round

-- This file is part of the logical model for floats which authors of float libraries
-- need to rely on.
@[expose] public section

namespace Float.Model.UnpackedFloat

/--
Returns the accuracy corresponding to the point `y + (num/den)ulp`.

Assumes `num < den`.
-/
def accuracyOfFraction (num den : Nat) : Accuracy :=
  if num = 0 then
    .exact
  else
    .inexact (compare (2 * num) den)

/--
Computes a `(mantissa, exponent)` pair for the quotient with enough bits to populate the mantissa
for the given specification. Also returns an `Accuracy` stating how the returned pair relates to
the infinitely precise quotient.
-/
def divCore (spec : Format) (m₁ : Nat) (e₁ : Int) (m₂ : Nat) (e₂ : Int) : Nat × Int × Accuracy :=
  -- Strategy: decrease the exponent here far enough so that we definitely get enough bits in the
  -- quotient `m / m₂`. We take the `min` because we don't want to increase the exponent; this happens
  -- later in the rounding step.
  let targetExponent := min (e₁ - e₂) (spec.targetExponent (totalExponent m₁ e₁ - totalExponent m₂ e₂))
  let shiftAmount := (e₁ - e₂ - targetExponent).toNat
  let m := m₁ <<< shiftAmount
  (m / m₂, targetExponent, accuracyOfFraction (m % m₂) m₂)

/--
Computes the quotient of two floating point numbers and rounds the result according to
the given specification.
-/
def div (spec : Format) : UnpackedFloat → UnpackedFloat → UnpackedFloat
  | .notANumber, _ => .notANumber
  | _, .notANumber => .notANumber
  | .infinity _, .infinity _ => .notANumber
  | .infinity sign₁, .finite sign₂ .. => .infinity (sign₁ / sign₂)
  | .finite sign₁ .., .infinity sign₂ => .zero (sign₁ / sign₂)
  | .infinity sign₁, .zero sign₂ => .infinity (sign₁ / sign₂)
  | .zero sign₁, .infinity sign₂ => .zero (sign₁ / sign₂)
  | .finite sign₁ .., .zero sign₂ => .infinity (sign₁ / sign₂)
  | .zero sign₁, .finite sign₂ .. => .zero (sign₁ / sign₂)
  | .zero _, .zero _ => .notANumber
  | .finite s₁ m₁ e₁ _, .finite s₂ m₂ e₂ _ =>
    let (m, e, acc) := divCore spec m₁ e₁ m₂ e₂
    roundWithAccuracy spec (s₁ / s₂) m e acc

end Float.Model.UnpackedFloat
```
