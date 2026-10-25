# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cardinality.Variant1adaf0d416c934deafa85780b5408ccd028a253be485511535d7b1c76e9d0265

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76744495c19c1b2866f67609d4d125d6e21357b9` · SHA-256 `1adaf0d416c934deafa85780b5408ccd028a253be485511535d7b1c76e9d0265`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Violeta Hernández Palacios. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Violeta Hernández Palacios
-/
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Real.Cardinality

/-!
# The cardinality of the complex numbers

This file shows that the complex numbers have cardinality continuum, i.e. `#ℂ = 𝔠`.
-/

open Cardinal Set

open Cardinal

/-- The cardinality of the complex numbers, as a type. -/
@[simp]
theorem Cardinal.mk_complex : #ℂ = 𝔠 := by
  rw [mk_congr Complex.equivRealProd, mk_prod, lift_id, mk_real, continuum_mul_self]

@[deprecated Cardinal.mk_complex (since := "2025-03-13")] alias mk_complex := Cardinal.mk_complex

/-- The cardinality of the complex numbers, as a set. -/
theorem Cardinal.mk_univ_complex : #(Set.univ : Set ℂ) = 𝔠 := by rw [mk_univ, mk_complex]

@[deprecated Cardinal.mk_univ_complex (since := "2025-03-13")]
alias mk_univ_complex := Cardinal.mk_univ_complex

/-- The complex numbers are not countable. -/
theorem not_countable_complex : ¬(Set.univ : Set ℂ).Countable := by
  rw [← le_aleph0_iff_set_countable, not_le, Cardinal.mk_univ_complex]
  apply cantor
```
