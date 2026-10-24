# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variant1eaac1c205aed7650a09bd5104ec24f0cbf25820854aacd0e6a193db9c7f1c2d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5a65c7096bb02e20f78ddc1c5e3886e23ae061c` · SHA-256 `1eaac1c205aed7650a09bd5104ec24f0cbf25820854aacd0e6a193db9c7f1c2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Logic.Small.Basic
import Mathlib.Data.Vector.Basic

/-!
# Instances for `Small (List α)` and `Small (Vector α)`.

These must not be in `Logic.Small.Basic` as this is very low in the import hierarchy,
and is used by category theory files which do not need everything imported by `Data.Vector.Basic`.
-/


universe u v

open Mathlib

instance smallVector {α : Type v} {n : ℕ} [Small.{u} α] : Small.{u} (List.Vector α n) :=
  small_of_injective (Equiv.vectorEquivFin α n).injective

instance smallList {α : Type v} [Small.{u} α] : Small.{u} (List α) := by
  let e : (Σn, List.Vector α n) ≃ List α := Equiv.sigmaFiberEquiv List.length
  exact small_of_surjective e.surjective
```
