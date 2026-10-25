# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sub.Variante64602636bcac4f3a9217ceca96e927fb69cd80631447098ee4f1dfca35a09fe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a3d0004b317f8b4de5fdef68389f7afde18c5f2` · SHA-256 `e64602636bcac4f3a9217ceca96e927fb69cd80631447098ee4f1dfca35a09fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
Computes the difference of two floating point numbers and rounds the result according to
the given specification.
-/
def sub (spec : Format) : UnpackedFloat → UnpackedFloat → UnpackedFloat
  | .notANumber, _ => .notANumber
  | _, .notANumber => .notANumber
  | .infinity sign₁, .infinity sign₂ =>
    if sign₁ == -sign₂ then .infinity sign₁ else .notANumber
  | .infinity s, _ => .infinity s
  | _, .infinity s => .infinity (-s)
  | .zero sign₁, .zero sign₂ =>
    if sign₁ == -sign₂ then .zero sign₁ else .zero .positive
  | .zero _, .finite sign mantissa exponent hm => .finite (-sign) mantissa exponent hm
  | x, .zero _ => x
  | .finite s₁ m₁ e₁ _, .finite s₂ m₂ e₂ _ =>
    let smallerExponent := min e₁ e₂
    let (m₁, _) := decreaseExponent m₁ e₁ smallerExponent
    let (m₂, _) := decreaseExponent m₂ e₂ smallerExponent
    let mantissa := s₁.apply m₁ - s₂.apply m₂
    normalize spec mantissa smallerExponent .positive

end Float.Model.UnpackedFloat
```
