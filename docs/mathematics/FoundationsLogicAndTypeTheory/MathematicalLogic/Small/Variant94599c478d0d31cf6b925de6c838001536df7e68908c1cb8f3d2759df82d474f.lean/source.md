# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Small.Variant94599c478d0d31cf6b925de6c838001536df7e68908c1cb8f3d2759df82d474f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0fb07d8ba1fc89af2eb4322e067cf9ac38e5ece8` · SHA-256 `94599c478d0d31cf6b925de6c838001536df7e68908c1cb8f3d2759df82d474f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Sophie. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sophie Morel, Antoine Chambert-Loir
-/
import Mathlib.Data.Finsupp.ToDFinsupp
import Mathlib.Data.DFinsupp.Defs
import Mathlib.Logic.Small.Basic

/-!
# Smallness of the `DFinsupp` type

Let `π : ι → Type v`. If `ι` and all the `π i` are `w`-small, this provides a `Small.{w}`
instance on `DFinsupp π`.

As an application, `σ →₀ R` has a `Small.{v}` instance if `σ` and `R` have one.
-/

universe u v w

variable {ι : Type u} {π : ι → Type v} [∀ i, Zero (π i)]

section Small

instance DFinsupp.small [Small.{w} ι] [∀ (i : ι), Small.{w} (π i)] :
    Small.{w} (DFinsupp π) :=
  small_of_injective (f := fun x j ↦ x j) (fun f f' eq ↦ by ext j; exact congr_fun eq j)

instance Finsupp.small {σ : Type*} {R : Type*} [Zero R]
    [Small.{u} R] [Small.{u} σ] :
    Small.{u} (σ →₀ R) := by
  classical
  exact small_map finsuppEquivDFinsupp

end Small
```
