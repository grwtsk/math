# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equiv.Variant8aa2bc8d7f50a853d622384687627d42d5223fe180aa53eafbf57732d99dab15

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0a31fe21546234c473da8270f4c81a8356a5ee20` · SHA-256 `8aa2bc8d7f50a853d622384687627d42d5223fe180aa53eafbf57732d99dab15`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Ralf Stephan, Neil Strickland, Ruben Van de Velde
-/
import Mathlib.Data.PNat.Defs
import Mathlib.Logic.Equiv.Defs

/-!
# The equivalence between `ℕ+` and `ℕ`
-/

/-- An equivalence between `ℕ+` and `ℕ` given by `PNat.natPred` and `Nat.succPNat`. -/
@[simps -fullyApplied]
def _root_.Equiv.pnatEquivNat : ℕ+ ≃ ℕ where
  toFun := PNat.natPred
  invFun := Nat.succPNat
  left_inv := PNat.succPNat_natPred
  right_inv := Nat.natPred_succPNat
```
