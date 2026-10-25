# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GRewrite.Variant4ae980934c9cb839ec09cd12cb6b4edb0019e496a64aecf925828c928d799d00

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `60382f589406c02da180bb4e684456452e9fad0f` · SHA-256 `4ae980934c9cb839ec09cd12cb6b4edb0019e496a64aecf925828c928d799d00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Sebastian Zimmer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Zimmer, Mario Carneiro, Heather Macbeth, Jovan Gerbscheid
-/
module

public import Mathlib.Tactic.GCongr
public import Mathlib.Tactic.GRewrite.Elab

/-!

# The generalized rewriting tactic

The `grw`/`grewrite` tactic is a generalization of the `rewrite` tactic that works with relations
other than equality. The core implementation of `grewrite` is in the file
`Mathlib/Tactic/GRewrite/Core.lean`

-/

public meta section
```
