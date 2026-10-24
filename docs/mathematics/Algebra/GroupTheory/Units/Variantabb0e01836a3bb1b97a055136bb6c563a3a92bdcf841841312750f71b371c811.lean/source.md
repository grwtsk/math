# Complete source: GRWTSK.Algebra.GroupTheory.Units.Variantabb0e01836a3bb1b97a055136bb6c563a3a92bdcf841841312750f71b371c811

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `902f23b7d3a64d103cbf6afa1b0fd51600618ffa` · SHA-256 `abb0e01836a3bb1b97a055136bb6c563a3a92bdcf841841312750f71b371c811`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2014 Floris van Doorn (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Leonardo de Moura, Jeremy Avigad, Mario Carneiro
-/
module

public import Mathlib.Algebra.Group.Nat.Defs
public import Mathlib.Algebra.Group.Units.Defs
public import Mathlib.Basic.Unique

/-!
# The unit of the natural numbers
-/

public section

assert_not_exists MonoidWithZero DenselyOrdered

namespace Nat

/-! #### Units -/

lemma units_eq_one (u : ℕˣ) : u = 1 := Units.ext <| Nat.eq_one_of_dvd_one ⟨u.inv, u.val_inv.symm⟩

lemma addUnits_eq_zero (u : AddUnits ℕ) : u = 0 :=
  AddUnits.ext <| (Nat.eq_zero_of_add_eq_zero u.val_neg).1

instance unique_units : Unique ℕˣ where
  default := 1
  uniq := Nat.units_eq_one

instance unique_addUnits : Unique (AddUnits ℕ) where
  default := 0
  uniq := Nat.addUnits_eq_zero

/-- Alias of `isUnit_iff_eq_one` for discoverability. -/
protected lemma isUnit_iff {n : ℕ} : IsUnit n ↔ n = 1 := isUnit_iff_eq_one

/-- Alias of `isAddUnit_iff_eq_zero` for discoverability. -/
protected lemma isAddUnit_iff {n : ℕ} : IsAddUnit n ↔ n = 0 := isAddUnit_iff_eq_zero

end Nat
```
