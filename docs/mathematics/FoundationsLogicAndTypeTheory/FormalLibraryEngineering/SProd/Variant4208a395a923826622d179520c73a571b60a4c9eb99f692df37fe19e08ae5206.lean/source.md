# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SProd.Variant4208a395a923826622d179520c73a571b60a4c9eb99f692df37fe19e08ae5206

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91c4cd3eb86840df3f89dcaf2381bb1cc6d68cdc` · SHA-256 `4208a395a923826622d179520c73a571b60a4c9eb99f692df37fe19e08ae5206`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Miyahara Kō. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Miyahara Kō
-/

import Mathlib.Tactic.FBinop

/-!
# Set Product Notation
This file provides notation for a product of sets, and other similar types.

## Main Definitions

* `SProd α β γ` for a binary operation `(· ×ˢ ·) : α → β → γ`.

## Notation

We introduce the notation `x ×ˢ y` for the `sprod` of any `SProd` structure. Ideally, `x × y`
notation is desirable but this notation is defined in core for `Prod` so replacing `x ×ˢ y` with
`x × y` seems difficult.
-/

universe u v w

/-- Notation type class for the set product `×ˢ`. -/
class SProd (α : Type u) (β : Type v) (γ : outParam (Type w)) where
  /-- The cartesian product `s ×ˢ t` is the set of `(a, b)` such that `a ∈ s` and `b ∈ t`. -/
  sprod : α → β → γ

-- This notation binds more strongly than (pre)images, unions and intersections.
@[inherit_doc SProd.sprod] infixr:82 " ×ˢ " => SProd.sprod
macro_rules | `($x ×ˢ $y)   => `(fbinop% SProd.sprod $x $y)
```
