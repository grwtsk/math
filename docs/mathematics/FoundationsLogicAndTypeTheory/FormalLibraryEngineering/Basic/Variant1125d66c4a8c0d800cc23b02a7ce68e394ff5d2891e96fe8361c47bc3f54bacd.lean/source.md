# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant1125d66c4a8c0d800cc23b02a7ce68e394ff5d2891e96fe8361c47bc3f54bacd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `289875005f4cf0451887383795fd3440348d158f` · SHA-256 `1125d66c4a8c0d800cc23b02a7ce68e394ff5d2891e96fe8361c47bc3f54bacd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Basic

public section

namespace Std
open Std.Iterators

/--
Induction principle for finite monadic iterators: One can define a function `f` that maps every
iterator `it` to an element of `motive it` by defining `f it` in terms of the values of `f` on
the plausible successors of `it'.
-/
@[specialize]
def IterM.inductSteps {α m β} [Iterator α m β] [Finite α m]
  (motive : IterM (α := α) m β → Sort x)
  (step : (it : IterM (α := α) m β) →
    (ih_yield : ∀ {it' : IterM (α := α) m β} {out : β},
      it.IsPlausibleStep (.yield it' out) → motive it') →
    (ih_skip : ∀ {it' : IterM (α := α) m β}, it.IsPlausibleStep (.skip it') → motive it') →
    motive it)
  (it : IterM (α := α) m β) : motive it :=
  step it
    (fun {it' _} _ => inductSteps motive step it')
    (fun {it'} _ => inductSteps motive step it')
termination_by it.finitelyManySteps

/--
Induction principle for productive monadic iterators: One can define a function `f` that maps every
iterator `it` to an element of `motive it` by defining `f it` in terms of the values of `f` on
the plausible skip successors of `it'.
-/
@[specialize]
def IterM.inductSkips {α m β} [Iterator α m β] [Productive α m]
  (motive : IterM (α := α) m β → Sort x)
  (step : (it : IterM (α := α) m β) →
    (ih_skip : ∀ {it' : IterM (α := α) m β}, it.IsPlausibleStep (.skip it') → motive it') →
    motive it)
  (it : IterM (α := α) m β) : motive it :=
  step it (fun {it'} _ => inductSkips motive step it')
termination_by it.finitelyManySkips

end Std
```
