# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attr.Variantf6a3ab15c9eace05dbcc4d88e6059d51d250e5e4f1270d180b22d01136dc9281

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6f078d27f7b7526c2c278ca1da617dce8619129` · SHA-256 `f6a3ab15c9eace05dbcc4d88e6059d51d250e5e4f1270d180b22d01136dc9281`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Init
public import Aesop.Frontend
public import Aesop.Frontend.Basic

/-!
# Aesop rule set for finsets

This file defines `finsetNonempty`, an aesop rule set to prove that a given finset is nonempty.
-/

-- `finsetNonempty` rules try to prove that a given finset is nonempty,
-- for use in positivity extensions.
declare_aesop_rule_sets [finsetNonempty] (default := true)
```
