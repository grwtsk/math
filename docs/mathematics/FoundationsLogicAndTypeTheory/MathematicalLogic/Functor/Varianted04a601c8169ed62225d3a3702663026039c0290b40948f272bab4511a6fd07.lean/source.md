# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Functor.Varianted04a601c8169ed62225d3a3702663026039c0290b40948f272bab4511a6fd07

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26175821ad86210b238c5c50d24743aa842e3504` · SHA-256 `ed04a601c8169ed62225d3a3702663026039c0290b40948f272bab4511a6fd07`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2019 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Simon Hudon, Scott Morrison
-/

import Mathlib.Control.Basic
import Mathlib.Logic.Equiv.Defs

/-!

# Functors can be applied to `Equiv`s.

```
def Functor.mapEquiv (f : Type u → Type v) [functor f] [LawfulFunctor f] :
  α ≃ β → f α ≃ f β
```

-/

set_option autoImplicit true

open Equiv

namespace Functor

variable (f : Type u → Type v) [Functor f] [LawfulFunctor f]

/-- Apply a functor to an `Equiv`. -/
def map_equiv (h : α ≃ β) : f α ≃ f β where
  toFun    := map h
  invFun   := map h.symm
  left_inv x := by simp [map_map]
  right_inv x := by simp [map_map]

@[simp]
lemma map_equiv_apply (h : α ≃ β) (x : f α) :
  (map_equiv f h : f α ≃ f β) x = map h x := rfl

@[simp]
lemma map_equiv_symm_apply (h : α ≃ β) (y : f β) :
  (map_equiv f h : f α ≃ f β).symm y = map h.symm y := rfl

end Functor
````
