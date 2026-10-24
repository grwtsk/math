# Complete source: GRWTSK.Algebra.BigOperators.Variant0e5bc2917a9058b600bea2dedf98a74cd8bf3db8518151efac6f6d851805155c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df62761a2f22a00c961bed73423ebe6403e69eb6` · SHA-256 `0e5bc2917a9058b600bea2dedf98a74cd8bf3db8518151efac6f6d851805155c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau, Chris Hughes, Mario Carneiro
-/
module

public import Mathlib.Algebra.Module.Submodule.Basic
public import Mathlib.RingTheory.Ideal.Defs

/-!

# Big operators for ideals

This contains some results on the big operators `∑` and `∏` interacting with the `Ideal` type.
-/

public section


universe u v w

variable {α : Type u}

namespace Ideal

variable [Semiring α] (I : Ideal α) {a : α}

theorem sum_mem (I : Ideal α) {ι : Type*} {t : Finset ι} {f : ι → α} :
    (∀ c ∈ t, f c ∈ I) → (∑ i ∈ t, f i) ∈ I :=
  Submodule.sum_mem I

end Ideal
```
