# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Coe.Variant224fd2735dc569d591b817d8b67c186a61262d75eb63a9e63a7c85473516d73f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0907aa7a8f70b6c3f32fc11078e2364e694ae65` · SHA-256 `224fd2735dc569d591b817d8b67c186a61262d75eb63a9e63a7c85473516d73f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Mario Carneiro
-/
module

prelude
public import Init.Coe

public section

/-!
In this file, we define the coercion `α → Option α`.

The use of this coercion is **banned** in `Init` and `Std` (but allowed everywhere else). For this
reason, we define it in this file, which must not be imported anywhere in `Init` or `Std` (this
is enforced by the test `importStructure.lean`).
-/

instance optionCoe {α : Type u} : Coe α (Option α) where
  coe := some
```
