# Complete source: GRWTSK.Algebra.UniversalAlgebra.Pi.Variantd3605d6a52386a8270e2f5858ad940f64470698cfdd33129bfb7605a193de8f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74e63cd6a573011a7e8f19234646c530e1e60a61` · SHA-256 `d3605d6a52386a8270e2f5858ad940f64470698cfdd33129bfb7605a193de8f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
module

public import Mathlib.Algebra.CharP.Defs
public import Mathlib.Algebra.Ring.Pi

/-!
# Characteristic of semirings of functions
-/

public section

section
variable {ι : Type*} {α : ι → Type*}

theorem CharZero.pi (i : ι) [Π i, AddMonoidWithOne (α i)] [CharZero (α i)] :
    CharZero (Π i, α i) where
  cast_injective _ _ h := Nat.cast_injective congr($h i)

variable [Nonempty ι]

/-- Strictly this only needs any one component to be char-zero, but this is awkward to express. -/
instance Pi.instCharZero [Π i, AddMonoidWithOne (α i)] [∀ i, CharZero (α i)] :
    CharZero (Π i, α i) := by
  inhabit ι
  exact CharZero.pi default

instance Pi.instCharP [Π i, AddMonoidWithOne (α i)] (p : ℕ) [∀ i, CharP (α i) p] :
    CharP (Π i, α i) p where
  cast_eq_zero_iff x := by simp [funext_iff, CharP.cast_eq_zero_iff _ p x]

instance Pi.instExpChar [Π i, AddMonoidWithOne (α i)] (p : ℕ) [∀ i, ExpChar (α i) p] :
    ExpChar (Π i, α i) p := by
  inhabit ι
  obtain hp | rfl := expChar_is_prime_or_one (α default) p
  · simp only [expChar_prime_iff, hp] at *
    infer_instance
  · simp only [expChar_one_iff] at *
    infer_instance

end
```
