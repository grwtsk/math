# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Maximizable.Variantb428600f08a67bda4cf8149a2cbf3b82bcd41b0d35d51103edd25e7c29f56c7d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1adff7e331f36f0f0f97717e2cb9b121e806c831` · SHA-256 `b428600f08a67bda4cf8149a2cbf3b82bcd41b0d35d51103edd25e7c29f56c7d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Nawrocki
-/

module

public import ProofWidgets.Component.Basic

open ProofWidgets

public meta section
open Lean

structure MaximizableProps where
  deriving ToJson, FromJson

/-- Wraps its children in a `<div>` that can be maximized to take up the whole viewport
by clicking a button in the top-right corner. -/
@[widget_module]
def Maximizable : Component MaximizableProps where
  javascript := include_str ".." / ".." / "widget" / "js" / "maximizable.js"
```
