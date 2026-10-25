# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant41f5039e088a968cf5244536b1a7dedae5989dfced182b1293d3c4cd7263745f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff7e9c09d6b9ddd9c6327be2f4000f4e3f2c9734` · SHA-256 `41f5039e088a968cf5244536b1a7dedae5989dfced182b1293d3c4cd7263745f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Lean.Meta.Basic

/-!
# Additions to `Lean.Meta.Basic`

Likely these already exist somewhere. Pointers welcome.
-/

set_option autoImplicit true

/--
Restore the metavariable context after execution.
-/
def Lean.Meta.preservingMCtx (x : MetaM α) : MetaM α := do
  let mctx ← getMCtx
  try x finally setMCtx mctx
```
