# Complete source: GRWTSK.Algebra.UniversalAlgebra.Center.Variant32d8d6a3fbe66ab4d8ccfd9b86e0d2ab523df1717df64505019cb625abbc8f67

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ae164483c00d919b762e9db9657081fe7c61456` · SHA-256 `32d8d6a3fbe66ab4d8ccfd9b86e0d2ab523df1717df64505019cb625abbc8f67`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
import Mathlib.Algebra.Star.Basic
import Mathlib.GroupTheory.Subsemigroup.Center
import Mathlib.GroupTheory.Subsemigroup.Centralizer
import Mathlib.Algebra.Star.Pointwise

/-! # `Set.center`, `Set.centralizer` and the `star` operation -/

variable {R : Type*} [Mul R] [StarMul R] {a : R} {s : Set R}

theorem Set.star_mem_center (ha : a ∈ Set.center R) : star a ∈ Set.center R := by
  simpa only [star_mul, star_star] using fun g =>
    congr_arg star ((Set.mem_center_iff R).mp ha <| star g).symm

theorem Set.star_mem_centralizer' (h : ∀ a : R, a ∈ s → star a ∈ s) (ha : a ∈ Set.centralizer s) :
    star a ∈ Set.centralizer s := fun y hy => by simpa using congr_arg star (ha _ (h _ hy)).symm

open scoped Pointwise

theorem Set.star_mem_centralizer (ha : a ∈ Set.centralizer (s ∪ star s)) :
    star a ∈ Set.centralizer (s ∪ star s) :=
  Set.star_mem_centralizer'
    (fun _x hx => hx.elim (fun hx => Or.inr <| Set.star_mem_star.mpr hx) Or.inl) ha
```
