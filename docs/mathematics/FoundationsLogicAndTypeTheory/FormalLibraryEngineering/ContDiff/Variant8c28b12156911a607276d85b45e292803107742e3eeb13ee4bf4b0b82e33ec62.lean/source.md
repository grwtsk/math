# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ContDiff.Variant8c28b12156911a607276d85b45e292803107742e3eeb13ee4bf4b0b82e33ec62

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1f3827971f0b452e6b95520954e3e914bb884c1` · SHA-256 `8c28b12156911a607276d85b45e292803107742e3eeb13ee4bf4b0b82e33ec62`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Tomáš Skřivan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Tomáš Skřivan
-/
import Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Analysis.SpecialFunctions.Log.Deriv


import Mathlib.Tactic.FunProp
import Mathlib.Tactic.FunProp.Differentiable

deprecated_module
  "fun_prop knows about ContDiff(At/On) directly; no need to import this file any more"
  (since := "2025-05-13")
```
