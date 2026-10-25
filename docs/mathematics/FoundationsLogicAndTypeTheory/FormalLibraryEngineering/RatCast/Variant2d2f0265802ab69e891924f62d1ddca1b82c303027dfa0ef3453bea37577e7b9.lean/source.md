# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RatCast.Variant2d2f0265802ab69e891924f62d1ddca1b82c303027dfa0ef3453bea37577e7b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2df7c7304c219d3b812a2b800154d03007f9110` · SHA-256 `2d2f0265802ab69e891924f62d1ddca1b82c303027dfa0ef3453bea37577e7b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2014 Robert Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robert Lewis, Leonardo de Moura, Johannes Hölzl, Mario Carneiro, Gabriel Ebner
-/
module

@[expose] public section

/-- Type class for the canonical homomorphism `Rat → K`. -/
class RatCast (K : Type u) where
  /-- The canonical homomorphism `Rat → K`. -/
  protected ratCast : Rat → K

instance : RatCast Rat where ratCast n := n

/-- Canonical homomorphism from `Rat` to a division ring `K`.
This is just the bare function in order to aid in creating instances of `DivisionRing`. -/
@[coe, reducible, match_pattern] protected def Rat.cast {K : Type u} [RatCast K] : Rat → K :=
  RatCast.ratCast

-- see note [coercion into rings]
instance [RatCast K] : CoeTail Rat K where coe := Rat.cast

-- see note [coercion into rings]
instance [RatCast K] : CoeHTCT Rat K where coe := Rat.cast
```
