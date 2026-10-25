# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bracket.Variant4cf4cebbb4172e77a139a93af84ab46fd561708ff839a8bb01880e9318641b43

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0026f0ec60df5ef186e1da04059f135601474350` · SHA-256 `4cf4cebbb4172e77a139a93af84ab46fd561708ff839a8bb01880e9318641b43`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Patrick Lutz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Lutz, Oliver Nash
-/
import Mathlib.Tactic.TypeStar

/-!
# Bracket Notation
This file provides notation which can be used for the Lie bracket, for the commutator of two
subgroups, and for other similar operations.

## Main Definitions

* `Bracket L M` for a binary operation that takes something in `L` and something in `M` and
  produces something in `M`.
  Defining an instance of this structure gives access to the notation `⁅ ⁆`

## Notation

We introduce the notation `⁅x, y⁆` for the `bracket` of any `Bracket` structure. Note that
these are the Unicode "square with quill" brackets rather than the usual square brackets.
-/

/-- The `Bracket` class has three intended uses:
  1. for certain binary operations on structures, like the product `⁅x, y⁆` of two elements
    `x`, `y` in a Lie algebra or the commutator of two elements `x` and `y` in a group.
  2. for certain actions of one structure on another, like the action `⁅x, m⁆` of an element `x`
    of a Lie algebra on an element `m` in one of its modules (analogous to `SMul` in the
    associative setting).
  3. for binary operations on substructures, like the commutator `⁅H, K⁆` of two subgroups `H` and
     `K` of a group. -/
class Bracket (L M : Type*) where
  /-- `⁅x, y⁆` is the result of a bracket operation on elements `x` and `y`.
  It is supported by the `Bracket` typeclass. -/
  bracket : L → M → M

@[inherit_doc] notation "⁅" x ", " y "⁆" => Bracket.bracket x y
```
