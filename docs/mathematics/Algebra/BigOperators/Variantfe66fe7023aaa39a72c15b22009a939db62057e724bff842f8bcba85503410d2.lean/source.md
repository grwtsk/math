# Complete source: GRWTSK.Algebra.BigOperators.Variantfe66fe7023aaa39a72c15b22009a939db62057e724bff842f8bcba85503410d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1f292757e8160216e778627c38d7e18363adb7e` · SHA-256 `fe66fe7023aaa39a72c15b22009a939db62057e724bff842f8bcba85503410d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau, Chris Hughes, Mario Carneiro
-/
import Mathlib.Algebra.Module.Submodule.Basic
import Mathlib.RingTheory.Ideal.Defs

/-!

# Big operators for ideals

This contains some results on the big operators `∑` and `∏` interacting with the `Ideal` type.
-/


universe u v w

variable {α : Type u} {β : Type v} {F : Type w}

namespace Ideal

variable [Semiring α] (I : Ideal α) {a b : α}

theorem sum_mem (I : Ideal α) {ι : Type*} {t : Finset ι} {f : ι → α} :
    (∀ c ∈ t, f c ∈ I) → (∑ i ∈ t, f i) ∈ I :=
  Submodule.sum_mem I

end Ideal

```
