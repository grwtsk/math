# Complete source: GRWTSK.Algebra.GroupTheory.Basic.Variantf2bcb1faac9d92cc807d3aef10ab80b0c993754ae7d6b2f2cb68175281d7def1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63effb64e5756778ad7e0b30c766ab2b79cb2f47` · SHA-256 `f2bcb1faac9d92cc807d3aef10ab80b0c993754ae7d6b2f2cb68175281d7def1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Mario Carneiro
-/
module

public import Mathlib.Algebra.Group.Action.Defs
public import Mathlib.Algebra.Group.End
public import Mathlib.Tactic.Common
public import Mathlib.Data.Set.Function

/-!
# Extra lemmas about permutations

This file proves miscellaneous lemmas about `Equiv.Perm`.

## TODO

Most of the content of this file was moved to `Mathlib/Algebra/Group/End.lean` in
https://github.com/leanprover-community/mathlib4/pull/22141.
It would be good to merge the remaining lemmas with other files, e.g.
`GroupTheory.Perm.ViaEmbedding` looks like it could benefit from such a treatment (splitting into
the algebra and non-algebra parts).
-/

public section


universe u v

namespace Equiv

variable {α : Type u} {β : Type v}

section Swap

variable [DecidableEq α]

@[simp]
theorem swap_smul_self_smul [MulAction (Perm α) β] (i j : α) (x : β) :
    swap i j • swap i j • x = x := by simp [smul_smul]

theorem swap_smul_involutive [MulAction (Perm α) β] (i j : α) :
    Function.Involutive (swap i j • · : β → β) := swap_smul_self_smul i j

end Swap
end Equiv

open Equiv

namespace Set
variable {α : Type*} {f : Perm α} {s : Set α}

lemma BijOn.perm_inv (hf : BijOn f s s) : BijOn ↑(f⁻¹) s s := hf.symm f.invOn

lemma MapsTo.perm_pow : MapsTo f s s → ∀ n : ℕ, MapsTo (f ^ n) s s := by
  simp_rw [Equiv.Perm.coe_pow]; exact MapsTo.iterate
lemma SurjOn.perm_pow : SurjOn f s s → ∀ n : ℕ, SurjOn (f ^ n) s s := by
  simp_rw [Equiv.Perm.coe_pow]; exact SurjOn.iterate
lemma BijOn.perm_pow : BijOn f s s → ∀ n : ℕ, BijOn (f ^ n) s s := by
  simp_rw [Equiv.Perm.coe_pow]; exact BijOn.iterate

lemma BijOn.perm_zpow (hf : BijOn f s s) : ∀ n : ℤ, BijOn (f ^ n) s s
  | Int.ofNat n => hf.perm_pow n
  | Int.negSucc n => (hf.perm_pow (n + 1)).perm_inv

end Set
```
