# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DummyLabelAttr.Variant968004de8ada80932a4198034e47cf9430c5342580fd515a9b1a865b735ca45f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d26584c57d7c0632630907726840d13ff553320` · SHA-256 `968004de8ada80932a4198034e47cf9430c5342580fd515a9b1a865b735ca45f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.Tactic.LabelAttr

/-! # Dummy label attribute, for tests

This has to be in a separate file from `Mathlib.Tactic.LabelAttr`, and also a separate file
from the files in `test/` that actually want to use it, so it ends up alone. This could be in
`test/` but the tests are set up for single file use only and can only import things from mathlib.
-/

/-- A dummy label attribute, to ease testing. -/
register_label_attr dummy_label_attr
```
