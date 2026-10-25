# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Card.Variant07c5bd60723e8fa90ca8e8cb4faea85f1ace44096b55c01dd3e6385e7cfb0cd7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3941ffd972d1d78964ccd54782bcd970f0634d8b` · SHA-256 `07c5bd60723e8fa90ca8e8cb4faea85f1ace44096b55c01dd3e6385e7cfb0cd7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
import Mathlib.Algebra.NoZeroSMulDivisors.Basic
import Mathlib.SetTheory.Cardinal.Basic

/-!
# Cardinality of a module

This file proves that the cardinality of a module without zero divisors is at least the cardinality
of its base ring.
-/

open Function

universe u v

namespace Cardinal

/-- The cardinality of a nontrivial module over a ring is at least the cardinality of the ring if
there are no zero divisors (for instance if the ring is a field) -/
theorem mk_le_of_module (R : Type u) (E : Type v)
    [AddCommGroup E] [Ring R] [Module R E] [Nontrivial E] [NoZeroSMulDivisors R E] :
    Cardinal.lift.{v} (#R) ≤ Cardinal.lift.{u} (#E) := by
  obtain ⟨x, hx⟩ : ∃ (x : E), x ≠ 0 := exists_ne 0
  have : Injective (fun k ↦ k • x) := smul_left_injective R hx
  exact lift_mk_le_lift_mk_of_injective this

end Cardinal
```
