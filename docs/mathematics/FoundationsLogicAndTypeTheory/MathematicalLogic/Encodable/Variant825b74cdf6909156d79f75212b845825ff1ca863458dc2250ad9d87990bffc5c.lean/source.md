# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Encodable.Variant825b74cdf6909156d79f75212b845825ff1ca863458dc2250ad9d87990bffc5c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d0d433cbf6aa7be61ce8627c127bb1f21759f67` · SHA-256 `825b74cdf6909156d79f75212b845825ff1ca863458dc2250ad9d87990bffc5c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Data.Finsupp.ToDFinsupp
import Mathlib.Data.DFinsupp.Encodable
/-!
# `Encodable` and `Countable` instances for `α →₀ β`

In this file we provide instances for `Encodable (α →₀ β)` and `Countable (α →₀ β)`.
-/

instance {α β : Type*} [Encodable α] [Encodable β] [Zero β] [∀ x : β, Decidable (x ≠ 0)] :
    Encodable (α →₀ β) :=
  letI : DecidableEq α := Encodable.decidableEqOfEncodable _
  .ofEquiv _ finsuppEquivDFinsupp

instance {α β : Type*} [Countable α] [Countable β] [Zero β] : Countable (α →₀ β) := by
  classical exact .of_equiv _ finsuppEquivDFinsupp.symm
```
