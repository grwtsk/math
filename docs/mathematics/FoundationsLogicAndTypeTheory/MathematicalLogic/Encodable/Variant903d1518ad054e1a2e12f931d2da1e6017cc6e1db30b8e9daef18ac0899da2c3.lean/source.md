# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Encodable.Variant903d1518ad054e1a2e12f931d2da1e6017cc6e1db30b8e9daef18ac0899da2c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `15ec482cb9a8665e30cd1d42d0eafe019b8769aa` · SHA-256 `903d1518ad054e1a2e12f931d2da1e6017cc6e1db30b8e9daef18ac0899da2c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Data.DFinsupp.Defs
import Mathlib.Logic.Encodable.Pi
/-!
# `Encodable` and `Countable` instances for `Π₀ i, α i`

In this file we provide instances for `Encodable (Π₀ i, α i)` and `Countable (Π₀ i, α i)`.
-/

variable {ι : Type*} {α : ι → Type*} [∀ i, Zero (α i)]

instance [Encodable ι] [∀ i, Encodable (α i)] [∀ i (x : α i), Decidable (x ≠ 0)] :
    Encodable (Π₀ i, α i) :=
  letI : DecidableEq ι := Encodable.decidableEqOfEncodable _
  letI : ∀ s : Finset ι, Encodable (∀ i : s, {x : α i // x ≠ 0}) := fun _ ↦
    .ofEquiv _ <| .piCongrLeft' _ Encodable.fintypeEquivFin
  .ofEquiv _ DFinsupp.sigmaFinsetFunEquiv

instance [Countable ι] [∀ i, Countable (α i)] : Countable (Π₀ i, α i) := by
  classical
    let _ := Encodable.ofCountable ι
    let _ := fun i ↦ Encodable.ofCountable (α i)
    infer_instance
```
