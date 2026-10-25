# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Notation.Variant886832ebb71fe5b687e565c21ed9c3a96e25ed7fa1a08c8a55000ddd34b5e732

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ffb3097c7ba7369421f32a4369e41d70605341a2` · SHA-256 `886832ebb71fe5b687e565c21ed9c3a96e25ed7fa1a08c8a55000ddd34b5e732`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
import Mathlib.Tactic.TypeStar
import Mathlib.Tactic.ToAdditive

/-!
# Notations for operations involving order and algebraic structure

## Notations

* `a⁺ᵐ = a ⊔ 1`: *Positive component* of an element `a` of a multiplicative lattice ordered group
* `a⁻ᵐ = a⁻¹ ⊔ 1`: *Negative component* of an element `a` of a multiplicative lattice ordered group
* `a⁺ = a ⊔ 0`: *Positive component* of an element `a` of a lattice ordered group
* `a⁻ = (-a) ⊔ 0`: *Negative component* of an element `a` of a lattice ordered group
-/

/-- A notation class for the *positive part* function: `a⁺`. -/
class PosPart (α : Type*) where
  /-- The *positive part* of an element `a`. -/
  posPart : α → α

/-- A notation class for the *positive part* function (multiplicative version): `a⁺ᵐ`. -/
@[to_additive]
class OneLePart (α : Type*) where
  /-- The *positive part* of an element `a`. -/
  oneLePart : α → α

/-- A notation class for the *negative part* function: `a⁻`. -/
class NegPart (α : Type*) where
  /-- The *negative part* of an element `a`. -/
  negPart : α → α

/-- A notation class for the *negative part* function (multiplicative version): `a⁻ᵐ`. -/
@[to_additive]
class LeOnePart (α : Type*) where
  /-- The *negative part* of an element `a`. -/
  leOnePart : α → α

export OneLePart (oneLePart)
export LeOnePart (leOnePart)
export PosPart (posPart)
export NegPart (negPart)

@[inherit_doc] postfix:max "⁺ᵐ " => OneLePart.oneLePart
@[inherit_doc] postfix:max "⁻ᵐ" => LeOnePart.leOnePart
@[inherit_doc] postfix:max "⁺" => PosPart.posPart
@[inherit_doc] postfix:max "⁻" => NegPart.negPart
```
