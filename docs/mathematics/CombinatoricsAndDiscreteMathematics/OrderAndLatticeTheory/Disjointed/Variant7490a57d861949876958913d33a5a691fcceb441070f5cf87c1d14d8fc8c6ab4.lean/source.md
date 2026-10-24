# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Disjointed.Variant7490a57d861949876958913d33a5a691fcceb441070f5cf87c1d14d8fc8c6ab4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d65197cb1c8a1a710dd94d72decc4029f7c876f` · SHA-256 `7490a57d861949876958913d33a5a691fcceb441070f5cf87c1d14d8fc8c6ab4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 David Loeffler. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Loeffler
-/
import Mathlib.Algebra.Order.PartialSups
import Mathlib.Data.Nat.SuccPred
import Mathlib.Order.Disjointed

/-!
# `Disjointed` for functions on a `SuccAddOrder`

This file contains material excised from `Mathlib/Order/Disjointed.lean` to avoid import
dependencies from `Mathlib.Algebra.Order` into `Mathlib.Order`.

## TODO

Find a useful statement of `disjointedRec_succ`.
-/

open Order

variable {α ι : Type*} [GeneralizedBooleanAlgebra α]

section SuccAddOrder

variable [LinearOrder ι] [LocallyFiniteOrderBot ι] [Add ι] [One ι] [SuccAddOrder ι]

theorem disjointed_add_one [NoMaxOrder ι] (f : ι → α) (i : ι) :
    disjointed f (i + 1) = f (i + 1) \ partialSups f i := by
  simpa only [succ_eq_add_one] using disjointed_succ f (not_isMax i)

protected lemma Monotone.disjointed_add_one_sup {f : ι → α} (hf : Monotone f) (i : ι) :
    disjointed f (i + 1) ⊔ f i = f (i + 1) := by
  simpa only [succ_eq_add_one i] using hf.disjointed_succ_sup i

protected lemma Monotone.disjointed_add_one [NoMaxOrder ι]  {f : ι → α} (hf : Monotone f) (i : ι) :
    disjointed f (i + 1) = f (i + 1) \ f i := by
  rw [← succ_eq_add_one, hf.disjointed_succ]
  exact not_isMax i

end SuccAddOrder

section Nat

/-- A recursion principle for `disjointed`. To construct / define something for `disjointed f i`,
it's enough to construct / define it for `f n` and to able to extend through diffs.

Note that this version allows an arbitrary `Sort*`, but requires the domain to be `Nat`, while
the root-level `disjointedRec` allows more general domains but requires `p` to be `Prop`-valued. -/
def Nat.disjointedRec {f : ℕ → α} {p : α → Sort*} (hdiff : ∀ ⦃t i⦄, p t → p (t \ f i)) :
    ∀ ⦃n⦄, p (f n) → p (disjointed f n)
  | 0 => fun h₀ ↦ disjointed_zero f ▸ h₀
  | n + 1 => fun h => by
    suffices H : ∀ k, p (f (n + 1) \ partialSups f k) from disjointed_add_one f n ▸ H n
    intro k
    induction k with
    | zero => exact hdiff h
    | succ k ih => simpa only [partialSups_add_one, ← sdiff_sdiff_left] using hdiff ih

@[simp]
theorem disjointedRec_zero {f : ℕ → α} {p : α → Sort*}
    (hdiff : ∀ ⦃t i⦄, p t → p (t \ f i)) (h₀ : p (f 0)) :
    Nat.disjointedRec hdiff h₀ = (disjointed_zero f ▸ h₀) :=
  rfl

-- TODO: Find a useful statement of `disjointedRec_succ`.

end Nat
```
